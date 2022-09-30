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
        private readonly ApplicantsServices applicantsServices;
        private readonly JobServices jobServices;

        public OrganizionsController(OrganizionsServices organizionsServices, SignInManager<UserModel> signInManager, ApplicantsServices applicantsServices, JobServices jobServices)
        {
            _organizionsServices = organizionsServices;
            _signInManager = signInManager;
            this.applicantsServices = applicantsServices;
            this.jobServices = jobServices;
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
            string? userId = _signInManager.UserManager.GetUserId(HttpContext.User);
            Organizion? organizion = _organizionsServices.getOrgFromUserId(userId);

            if (userId == null || organizion == null)
            {
                return NotFound();
            }
            ViewBag.organizion = organizion;
            List<ApplicantsModel> applicants = applicantsServices.GetApplicant(organizion.institutionId);
            return View(applicants);
        }

        public IActionResult info(int applicantId)
        {
            string? userId = _signInManager.UserManager.GetUserId(HttpContext.User);
            Organizion? organizion = _organizionsServices.getOrgFromUserId(userId);

            if (userId == null || organizion == null)
            {
                return NotFound();
            }
            ViewBag.organizion = organizion;
            ApplicantsModel applicantsModel = applicantsServices._GetApplicant(applicantId);
            return View(applicantsModel);  
        }
        public IActionResult accept(int applicantId)
        {
            applicantsServices.acceptApplicant(applicantId);
            return RedirectToAction("index", "Organizions");

        }

        public IActionResult ListEmployees()
        {
            string? userId = _signInManager.UserManager.GetUserId(HttpContext.User);
            Organizion? organizion = _organizionsServices.getOrgFromUserId(userId);

            if (userId == null || organizion == null)
            {
                return NotFound();
            }
            ViewBag.organizion = organizion;
            var Employees = jobServices.getEmployees(organizion.institutionId);
            return View(Employees);
        }
    }
}
