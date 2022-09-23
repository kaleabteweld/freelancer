using freelancer.Models;
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

        public HomeController(JobServices service, UserManager<UserModel> _userManager)
        {
            _jobServices = service;
            userManager = _userManager;
        }

        public IActionResult Index()
        {
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
