using freelancer.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace freelancer.Controllers
{
    public class AccountController : Controller

    {
        private readonly UserManager<IdentityUser> userManager;
        private readonly SignInManager<IdentityUser> signInManager;

        public AccountController(UserManager<IdentityUser> _userManager,SignInManager<IdentityUser> _signInManager)
        {
            userManager = _userManager;
            signInManager = _signInManager;
        }

        // user Register
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }
        
        [HttpPost]
        public async Task<IActionResult> Register(RegisterUserModel newUser)
        {
            if (ModelState.IsValid)
            {
                var User = new IdentityUser { UserName = newUser.userName, Email = newUser.email, PhoneNumber = newUser.phone };
                var result = await userManager.CreateAsync(User,newUser.password);
                if (result.Succeeded)
                {
                    await signInManager.SignInAsync(User, isPersistent: false);
                    return RedirectToAction("Index", "Home");
                }else
                {
                    foreach (var error in result.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }
                }
            }
            return View(newUser);
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
                var result =  await signInManager.PasswordSignInAsync(
                        user.email,
                        user.passWord,
                        user.rememberMe,
                        false);
                if (result.Succeeded)
                {
                    return RedirectToAction("Index", "Home");
                }else
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
