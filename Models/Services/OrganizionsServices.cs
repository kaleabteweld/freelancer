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

    }
}
