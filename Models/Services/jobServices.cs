using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


//TODO: add generic class with generic functions for basic operations

namespace freelancer.Models
{
    public class JobServices : IPostJobsServices
    {
        private readonly ApplicationDbContext _context;
        public JobServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<PostJob> GetPostJobs()
        {
            return _context.PostJobs.ToList();
        }
        public List<PostJob> GetPostJobs(IJobFilter filter)
        {
            List<PostJob> jobPosts = new List<PostJob>();

            if (filter.salary != null)
            {
                jobPosts.AddRange(_context.PostJobs.Where(PostJob => (PostJob.jobSalary >= filter.salary.Value.Start.Value && PostJob.jobSalary <= filter.salary.Value.End.Value)));
            }
            if (filter.location != null)
            {
                jobPosts.AddRange(_context.PostJobs.Where(PostJob => PostJob.location == filter.location));
            }
            if (filter.postDate != null)
            {
                jobPosts.AddRange(_context.PostJobs.Where(PostJob => PostJob.postDate >= filter.postDate));
            }
            if (filter.jobTypes.Count != 0)
            {
                filter.jobTypes.ForEach(employmentType => jobPosts.AddRange(_context.PostJobs.Where(PostJob => PostJob.postDate >= filter.postDate)));
            }

            return jobPosts;
        }
        public void postJob(PostJob newJob)
        {
            _context.PostJobs.Add(newJob);
        }
    }
}