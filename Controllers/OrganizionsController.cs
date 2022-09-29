using freelancer.Models;
using freelancer.Models.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace freelancer.Controllers
{
    public class OrganizionsController : Controller
    {
        private readonly OrganizionsServices _organizionsServices;
        private readonly ApplicantsServices _ApplicantsServices;
        private readonly SignInManager<UserModel> _signInManager;
        private readonly UserManager<UserModel> _userManager;

       

        public OrganizionsController(OrganizionsServices organizionsServices, SignInManager<UserModel> signInManager, UserManager<UserModel> userManager, ApplicantsServices applicantsServices)
        {
            _organizionsServices = organizionsServices;
            _signInManager = signInManager;
            _userManager = userManager;
            _ApplicantsServices = applicantsServices;
        }

        public IActionResult ListUserOrg()
        {
           
            string? userId = _signInManager.UserManager.GetUserId(HttpContext.User);
            if (userId == null)
            {
                return NotFound();
            }

            List<Organizion> organizions = _organizionsServices.getUserOrg(userId);
            return View(organizions);
        }

        public IActionResult ListOrg()
        {
            List<Organizion> organizions = _organizionsServices.getAllOrg();
            return View(organizions);
        }

        public IActionResult index()
        {
            if (!_signInManager.IsSignedIn(HttpContext.User))
            {
                return RedirectToAction("LogIn", "Account", new { area = "" });
            }
            string? userId = _signInManager.UserManager.GetUserId(HttpContext.User);
            if (userId == null)
            {
                return NotFound();
            }

            Organizion organizion = _organizionsServices.getLogInOrganizion(userId);
            List<ApplicantsModel> applicants = _ApplicantsServices.GetApplicant(organizion.institutionId);

            return View(applicants);
        }

        //[HttpGet]
        //public IActionResult Register()
        //{
        //    return View();
        //}

        //[HttpPost]
        //public async Task<IActionResult> Register(RegisterUserModel newUser)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        var User = new UserModel { UserName = newUser.userName, Email = newUser.email, PhoneNumber = newUser.phone, fullName = newUser.fullName };
        //        var result = await _userManager.CreateAsync(User, newUser.password);
        //        if (result.Succeeded)
        //        {
        //            await _signInManager.SignInAsync(User, isPersistent: false);
        //            return RedirectToAction("Organizions", "index");
        //        }
        //        else
        //        {
        //            foreach (var error in result.Errors)
        //            {
        //                ModelState.AddModelError(string.Empty, error.Description);
        //            }
        //        }
        //    }
        //    return View(newUser);
        //}


    }
}
