using freelancer.Models;
using freelancer.Models.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Hosting.Server;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;

namespace freelancer.Controllers
{
    
    public class JobController : Controller
    {
        private readonly JobServices jobServices;
        private readonly UserServices userServices;
        private readonly ApplicantsServices applicantsServices;
        private readonly IWebHostEnvironment env;




        private readonly SignInManager<UserModel> signInManager;

        public JobController(JobServices jobServices, UserServices userServices, SignInManager<UserModel> signInManager, ApplicantsServices applicantsServices, IWebHostEnvironment env)
        {
            this.jobServices = jobServices;
            this.userServices = userServices;
            this.signInManager = signInManager;
            this.applicantsServices = applicantsServices;
            this.env = env;

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

        [HttpPost]
        public IActionResult UploadCv(CvUploadInput cvUploadInput)
        {
            var postJobId = Request.Form["postJobId"][0];

            string uploadLoc = "UserCVs";
            uploadLoc = Path.Combine(Path.GetTempPath(), uploadLoc);
            
            if (Request.Form.Files != null)
            {
                foreach (IFormFile upload in Request.Form.Files)
                {
                    
                    uploadLoc += Guid.NewGuid().ToString() + upload.FileName;
                    FileStream fileStream = new FileStream(uploadLoc, FileMode.Create);
                    upload.CopyTo(fileStream);

                    string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
                    if (userId == null || postJobId == null)
                    {
                        return NotFound();
                    }

                    applicantsServices.addCv(userId, int.Parse(postJobId), uploadLoc);
                }
                return RedirectToAction("Index", "Home");

            }

            else
            {
                return Content("heyyy");
            }
        }

        public IActionResult JobDetai(int jobId)
        {

            string? userId = signInManager.UserManager.GetUserId(HttpContext.User);
            PostJob postJob = jobServices.GetJobById(jobId);
            if (postJob == null || userId == null)
            {
                return NotFound();
            }
            ViewBag.postJobId = postJob.jobId;
            ViewBag.appledFlag = applicantsServices.isApplyed(userId,postJob);


            return View(postJob);
        }



    }
}
 