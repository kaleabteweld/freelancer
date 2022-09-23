using freelancer.Models;
using freelancer.Models.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace freelancer.Controllers
{
    public class AccountController : Controller

    {
        private readonly UserManager<UserModel> userManager;
        private readonly SignInManager<UserModel> signInManager;
        private readonly CollageServices collageServices;
        private readonly UserServices userServices;

        public AccountController(UserManager<UserModel> _userManager, SignInManager<UserModel> _signInManager, CollageServices _collageServices, UserServices _userServices)
        {
            userManager = _userManager;
            signInManager = _signInManager;
            collageServices = _collageServices;
            userServices = _userServices;
        }

        // user Register
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }
        public IActionResult RegisterCollage()
        {
            var CollageList = collageServices.getAllCollage();
            var selectCollageList = CollageList.Select(collage => new SelectListItem()
            {
                Text = collage.name,
                Value = collage.institutionId.ToString(),
                Selected = false
            });
            ViewBag.selectCollageList = selectCollageList;
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Register(RegisterUserModel newUser)
        {
            if (ModelState.IsValid)
            {
                var User = new UserModel { UserName = newUser.userName, Email = newUser.email, PhoneNumber = newUser.phone, fullName = newUser.fullName };
                var result = await userManager.CreateAsync(User, newUser.password);
                if (result.Succeeded)
                {
                    await signInManager.SignInAsync(User, isPersistent: false);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    foreach (var error in result.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }
                }
            }
            return View(newUser);
        }
        [HttpPost]
        public IActionResult RegisterCollage(RegisterUserCollageIdModel newCollage)
        {
            if (ModelState.IsValid)
            {
                var CollageList = collageServices.getAllCollage();
                var selectCollageList = CollageList.Select(collage => new SelectListItem()
                {
                    Text = collage.name,
                    Value = collage.institutionId.ToString(),
                    Selected = false
                });
                ViewBag.selectCollageList = selectCollageList;

                bool doesStudentExist = collageServices.doesStudentExist(int.Parse(newCollage.collageId), int.Parse(newCollage.studentId));
                if (!doesStudentExist)
                {
                    ModelState.AddModelError(string.Empty, "your id dose Exist");


                    return View();
                }
                Students? student = collageServices.getStudentFromCollages(int.Parse(newCollage.collageId), int.Parse(newCollage.studentId));
                Collage? collage = collageServices.getCollageByIdWithSubSets(int.Parse(newCollage.collageId));
                string? userId = signInManager.UserManager.GetUserId(HttpContext.User);

                userServices.addCollageToUser(collage, student, userId);

                //collageServices.addStudentToCollages(int.Parse(newCollage.collageId), stu);


                return RedirectToAction("Index", "Home");
            }

            return View();

        }


        // user login
        [HttpGet]
        public IActionResult LogIn()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> LogIn(LogInUserModel user)
        {

            if (ModelState.IsValid)
            {
                var result = await signInManager.PasswordSignInAsync(
                        user.email,
                        user.passWord,
                        user.rememberMe,
                        false);
                if (result.Succeeded)
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "check your email and/or password");
                }

            }
            return View(user);
        }

        [HttpPost]
        public async Task<IActionResult> LogOut()
        {
            await signInManager.SignOutAsync();
            return RedirectToAction("Index", "Home");
        }
    }
}
