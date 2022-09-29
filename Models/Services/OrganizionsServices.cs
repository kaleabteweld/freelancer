using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace freelancer.Models.Services
{
    public class OrganizionsServices
    {
        private readonly ApplicationDbContext _context;
        private readonly UserServices _userServices;
        private readonly JobServices _jobServices;
        //private readonly ApplicantsServices _applicantsServices;



        public OrganizionsServices(ApplicationDbContext context, UserServices userServices, JobServices jobServices)
        {
            _context = context;
            _userServices = userServices;
            _jobServices = jobServices;
            
        }

        public void addToActiveJobs(WorkingJob job,int OrganizionId)
        {
            var org = _context.Organizions.Include(org => org.activeJobs).FirstOrDefault((org => org.institutionId == OrganizionId));
            if(org == null)
            {
                return;
            }
            org.activeJobs.Add(job);
            _context.SaveChanges();
        }

        public Organizion getById(int orgId)
        {
           return _context.Organizions.Include(org => org.postedJobs).Include(org => org.DoneJobs).Include(org => org.activeJobs).Where(org => org.institutionId == orgId).SingleOrDefault();
        }

       public List<Organizion> getUserOrg(string userId)
        {
            UserModel user = _userServices.getUserById(userId);
            
            if(user == null || (user.jobs == null && user.jobs.Count == 0))
            {
                return new List<Organizion>();
            }
            List <Organizion> organizions = new List<Organizion>();

            foreach (var job in user.jobs)
            {
                
                organizions.Add(getById(_jobServices.GetWorkingJobById(job.jobId).postBy.institutionId));
            }
            
            return organizions;
        }

        public List<Organizion> getAllOrg()
        {
            return _context.Organizions.Include(org => org.postedJobs).Include(org => org.DoneJobs).Include(org => org.activeJobs).ToList();
        }

        public Organizion getLogInOrganizion (string userId)
        {
             UserModel user =  _context.Users.Where(org => org.Id == userId).SingleOrDefault();
            if(user != null)
            {
                return getById(user.us);
                //return user.organizion;
            }
            return null;
        }

        public List<PostJob> GetPostJobs (int orgid)
        {
            Organizion organizion = _context.Organizions.Include(org => org.postedJobs).Where(org => org.institutionId == orgid).SingleOrDefault();
            if(organizion == null)
            {
                return new List<PostJob> ();
            }
            return organizion.postedJobs;
        }

        //public List<JobApplicants>  jobApplicants (int orgid)
        //{
        //    List<PostJob> postJobs =  this.GetPostJobs(orgid);

        //    List <JobApplicants> jobApplicants = new List<JobApplicants> ();
        //    foreach (PostJob postJob in postJobs) {

        //        List<UserModel> users = _applicantsServices.listApplicants(postJob.jobId);
        //        foreach (UserModel user in users) {

        //            ApplicantsModel applicants = _applicantsServices.GetApplicant(user.Id, postJob.jobId);
        //            JobApplicants jobApplicants1 = new JobApplicants(postJob, users, applicants);
        //            jobApplicants.Add(jobApplicants1);

        //        }
               
        //    }

        //    return jobApplicants;
        //}
    }
}
