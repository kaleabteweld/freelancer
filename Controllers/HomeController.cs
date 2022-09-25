﻿using freelancer.Models;
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
        private readonly JobServices _jobServices;
        private readonly UserManager<UserModel> userManager;
        SignInManager<UserModel> signInManager;

        public HomeController(JobServices service, UserManager<UserModel> _userManager, SignInManager<UserModel> _signInManager)
        {
            _jobServices = service;
            userManager = _userManager;
            signInManager = _signInManager;
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
            if (!signInManager.IsSignedIn(HttpContext.User))
            {
                return RedirectToAction("LogIn", "Account", new { area = "" });
            }

           


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
    }
}
