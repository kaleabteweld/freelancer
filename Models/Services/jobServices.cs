
using System.Threading.Tasks;

namespace freelancer.Models
{
    class PostJobServices : EntityBaseRepository<PostJob>, IPostJobServices
    {
        private readonly ApplicationDbContext _context;
        public PostJobServices(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
        public async Task postJob(PostJob newJob)
        {
            await AddAsync(newJob);
        }
    }


    class WorkingJobServices : EntityBaseRepository<WorkingJob>, IWorkingJobServices
    {
        private readonly ApplicationDbContext _context;
        public WorkingJobServices(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
        public async Task marktJobAsWorking(PostJob JobPost, IWork workinfo)
        {
            WorkingJob newWorkJob = WorkingJob.makeWorkingJob(JobPost, workinfo);
            await AddAsync(newWorkJob);
        }
    }
}