using freelancer.Models.DomainModel;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace freelancer.Models.Services
{
    public class ApplicantsServices
    {
        private readonly ApplicationDbContext _context;
        public ApplicantsServices(ApplicationDbContext context)
        {
            _context = context;
        }

        List<PostJob> getUserAppliedJobs(string userId)
        {
            var appliedJobs =  _context.Applicants.Include(applicant => applicant.PostJob).Where(applicant => applicant.applicantId == userId);

            List<PostJob> result = new List<PostJob>();
            foreach (var applicant in appliedJobs)
            {
                result.Add(applicant.PostJob);
            }
            return result;
        }

        void ApplyJob(string userId,PostJob job)
        {
            var user = _context.Users.Find(userId);
            ApplicantsModel applicantsModel = new ApplicantsModel
            {
                applicant = user,
                applicantId = userId,
                PostJob = job,
                PostJobId = job.jobId
            };

            _context.Applicants.Add(applicantsModel);
            _context.SaveChanges();
        }

        
    }
}
