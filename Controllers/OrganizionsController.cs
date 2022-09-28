using freelancer.Models;
using freelancer.Models.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace freelancer.Controllers
{
    public class OrganizionsController : Controller
    {
        private readonly OrganizionsServices _organizionsServices;
        private readonly SignInManager<UserModel> _signInManager;

        public OrganizionsController(OrganizionsServices organizionsServices, SignInManager<UserModel> signInManager)
        {
            _organizionsServices = organizionsServices;
            _signInManager = signInManager;
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
    }
}
