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
        private readonly ApplicantsServices applicantsServices;



        private readonly SignInManager<UserModel> signInManager;

        public JobController(JobServices jobServices, UserServices userServices, SignInManager<UserModel> signInManager, ApplicantsServices applicantsServices)
        {
            this.jobServices = jobServices;
            this.userServices = userServices;
            this.signInManager = signInManager;
            this.applicantsServices = applicantsServices;
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

        public IActionResult AppliedJobs()
        {
            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            if (userId == null)
            {
                return NotFound();
            }
            List<PostJob> appliedJobs = applicantsServices.getUserAppliedJobs(userId);
            return View(appliedJobs);
        }

        // later chage to post, with cv upload
        public IActionResult ApplyJob(int jobid)
        {
            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            var postJob = jobServices.GetJobById(jobid);
            if(postJob == null)
            {
                return NotFound();
            }
           if( applicantsServices.isApplyed(userId, postJob))
            {
                return RedirectToAction("Index", "Home");
            }
            applicantsServices.ApplyJob(userId, postJob);
            return RedirectToAction("Index", "Home");
        }
    }
}
 