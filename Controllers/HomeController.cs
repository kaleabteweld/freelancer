using freelancer.Models;
using freelancer.Models.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace freelancer.Controllers
{
    public class HomeController : Controller
    {
        private readonly JobServices _jobServices;
        private readonly UserManager<UserModel> userManager;
        private readonly SignInManager<UserModel> signInManager;
        private readonly UserServices userServices;
        private readonly SkillsServices skillsServices;
        private readonly OrganizionsServices organizionsServices;

        public HomeController(JobServices service, UserManager<UserModel> _userManager, SignInManager<UserModel> _signInManager, UserServices _userServices, SkillsServices _skillsServices,OrganizionsServices organizionsServices)
        {
            _jobServices = service;
            userManager = _userManager;
            signInManager = _signInManager;
            userServices = _userServices;
            skillsServices = _skillsServices;
            this.organizionsServices = organizionsServices;
        }

        public async Task<IActionResult> Index()
        {
            //Skills temp = new Skills { skillId = 1};
            //Skills temp2 = new Skills { skillId = 7 };

            //List<Skills> skills = new List<Skills>();
            //skills.Add(temp);
            //skills.Add(temp2);



            JobFilter initFilter = _jobServices.getFilterConfig();
            var selectSkillsList = initFilter.skills.Select(skill => new SelectListItem()
            {
                Text = skill.skillName,
                Value = skill.skillId.ToString(),
                Selected = false
            });
            ViewBag.selectSkillsList = selectSkillsList;
            ViewBag.initFilter = initFilter;

            
            if (!signInManager.IsSignedIn(HttpContext.User))
            {
                return RedirectToAction("LogIn", "Account", new { area = "" });
            }
            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);

            if (organizionsServices.isUserAnOrd(userId))
            {
                return RedirectToAction("index", "Organizions");

            }


            ViewBag.doseUserHaveCollage = userServices.doseUserHaveCollage(userId ?? "");
            List<PostJob> jobs = _jobServices.GetPostJobs();


            return View(jobs);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        [HttpPost]
        public IActionResult Index(JobFilterInput jobFilter)
        {
            JobFilter initFilter = _jobServices.getFilterConfig();
            var selectSkillsList = initFilter.skills.Select(skill => new SelectListItem()
            {
                Text = skill.skillName,
                Value = skill.skillId.ToString(),
                Selected = false
            });
            ViewBag.selectSkillsList = selectSkillsList;
            ViewBag.initFilter = initFilter;


            if (!signInManager.IsSignedIn(HttpContext.User))
            {
                return RedirectToAction("LogIn", "Account", new { area = "" });
            }


            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            ViewBag.doseUserHaveCollage = userServices.doseUserHaveCollage(userId ?? "");

            List<Skills> skillsList = new List<Skills>();
            if (jobFilter.skills != null)
            {
                Skills skills = skillsServices.getSkillById(int.Parse(jobFilter.skills));
                skillsList.Add(skills);
            }
            

            JobFilter jobFilter1 = new JobFilter(
                new Range(jobFilter.salary, 10000000),
                jobFilter.location,
                jobFilter.postDate,
                null,
                skillsList
                );

            List<PostJob> jobs = _jobServices.GetPostJobs(jobFilter1);
            return View(jobs);

        }
    }
}
