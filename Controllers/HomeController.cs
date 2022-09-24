using freelancer.Models;
using freelancer.Models.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
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
        private readonly JobServices jobServices;
        private readonly UserManager<UserModel> userManager;
        private readonly SignInManager<UserModel> signInManager;
        private readonly UserServices userServices;


        public HomeController(JobServices _jobServices, UserManager<UserModel> _userManager, SignInManager<UserModel> _signInManager,UserServices _userServices)
        {
            jobServices = _jobServices;
            userManager = _userManager;
            signInManager = _signInManager;
            userServices = _userServices;
        }

        public IActionResult Index()
        {
            //Skills temp = new Skills { skillId = 1};
            //Skills temp2 = new Skills { skillId = 7 };

            //List<Skills> skills = new List<Skills>();
            //skills.Add(temp);
            //skills.Add(temp2);


            //JobFilter initFilter = _jobServices.getFilterConfig();

            //JobFilter filter = new JobFilter(
            //    Range.StartAt(20),
            //    //null,
            //    //"any were",
            //    "hell",
            //    null,
            //    //DateTime.ParseExact("2021-01-01", "yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture),
            //    //null,
            //    null,
            //    skills
            //    );

            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            ViewBag.doseUserHaveCollage = userServices.doseUserHaveCollage(userId??"");

            List<PostJob> jobs = jobServices.GetPostJobs();
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
    }
}
