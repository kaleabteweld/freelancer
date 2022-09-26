using freelancer.Models;
using freelancer.Models.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace freelancer.Controllers
{
    
    public class JobController : Controller
    {
        private readonly JobServices jobServices;
        private readonly UserServices userServices;

        private readonly SignInManager<UserModel> signInManager;

        public JobController(JobServices jobServices, UserServices userServices, SignInManager<UserModel> signInManager)
        {
            this.jobServices = jobServices;
            this.userServices = userServices;
            this.signInManager = signInManager;
        }

        public IActionResult Book(int jobId)
        {
            var postJob = jobServices.GetJobById(jobId);
            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            if (postJob == null || userId == null)
            {
                return NotFound();
            }
            if(userServices.isBooked(jobId, userId))
            {
                userServices.unBook(userId, postJob);
            }
            else
            {
                userServices.bookJob(userId, postJob);
            }
            
            return RedirectToAction("Index", "Home");
        }

        public IActionResult BookJobs()
        {
            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            List<PostJob>? postJobs = userServices.userBookJobs(userId);
            if (postJobs == null)
            {
                return NotFound();
            }

            return View(postJobs);
        }

        public IActionResult MyJobs()
        {
            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            if (userId == null)
            {
                return NotFound();
            }

            List<WorkingJob> myJobs = userServices.GetWorkingJobs(userId);

            return View(myJobs);
        }
    }
}
