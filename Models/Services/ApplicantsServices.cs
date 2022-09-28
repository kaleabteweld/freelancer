using freelancer.Models.DomainModel;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace freelancer.Models.Services
{
    public class ApplicantsServices
    {
        private readonly ApplicationDbContext _context;
        private readonly JobServices jobServices;
        private readonly UserServices userServices;
        private readonly OrganizionsServices organizionsServices;



        public ApplicantsServices(ApplicationDbContext context, JobServices jobServices,UserServices userServices , OrganizionsServices organizionsServices)
        {
            _context = context;
            this.jobServices = jobServices;
            this.userServices = userServices;
            this.organizionsServices = organizionsServices;


        }

        public List<PostJob> getUserAppliedJobs(string userId)
        {
            var appliedJobs =  _context.Applicants.Include(applicant => applicant.PostJob).Include(applicant => applicant.PostJob.postBy).Where(applicant => applicant.applicantId == userId);

            List<PostJob> result = new List<PostJob>();
            foreach (var applicant in appliedJobs)
            {
                result.Add(applicant.PostJob);
            }
            return result;
        }

        public void ApplyJob(string userId,PostJob job)
        {
            var user = _context.Users.Find(userId);
            if(user == null || job == null)
            {
                return;
            }
            ApplicantsModel applicantsModel = new ApplicantsModel
            {
                applicant = user,
                applicantId = userId,
                PostJob = job,
                PostJobId = job.jobId,
                cvUploadLoc=""
            };

            _context.Applicants.Add(applicantsModel);
            _context.SaveChanges();
        }

        public bool isApplyed(string userId, PostJob job)
        {
            var applicants = _context.Applicants.Where(applicants => applicants.applicantId == userId && applicants.PostJobId == job.jobId).SingleOrDefault();
            if(applicants == null)
            {
                return false;
            }
            return true;
        }

        public List<UserModel> listApplicants(int postJobId)
        {
            var applicants  = _context.Applicants.Include(applicants => applicants.applicant).Where(applicants => applicants.PostJobId == postJobId);
            List<UserModel> result = new List<UserModel>();
            foreach (var applicant in applicants)
            {
                result.Add(applicant.applicant);
            }

            return result;
        }

        public void acceptApplicant(int applicantId)
        {
            // creat a working class
            // add to user class
            // remove from Applicant
            //send notifction
            // remove from post jobs

            //var Applicant = _context.Applicants.Include(applicant => applicant.PostJobId).Include(applicant => applicant.applicant).Where(applicant => applicant.ApplicatioID == applicantId);
            var applicant = _context.Applicants.Find(applicantId);
            PostJob postJob = jobServices.GetJobById(applicant.PostJobId);
            UserModel user = userServices.getUserById(applicant.applicantId);

            if(applicant == null || postJob == null || user == null)
            {
                return;
            }
            var temp = new List<UserModel>();
            temp.Add(user);
            WorkingJob newJob = new WorkingJob(postJob, "", temp);
            newJob = jobServices.newWorkingJob(newJob);
            userServices.addWorkingJob(newJob, user.Id);
            organizionsServices.addToActiveJobs(newJob, postJob.postBy.institutionId);

            _context.Applicants.Remove(applicant);
            _context.SaveChanges();


        }

        public void addCv(string userId, int postWorkId,string uploadUrl)
        {
            var applicants = _context.Applicants.Where(applicants => applicants.applicantId == userId && applicants.PostJobId == postWorkId).SingleOrDefault();
 
            if (applicants == null)
            {
               return ;
            }
            applicants.cvUploadLoc = uploadUrl;
            _context.SaveChanges();

        }
    }
}
