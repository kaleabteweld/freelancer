using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace freelancer.Models.Services
{
    public class OrganizionsServices
    {
        private readonly ApplicationDbContext _context;
        public OrganizionsServices(ApplicationDbContext context)
        {
            _context = context;
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


    }
}
