using Microsoft.EntityFrameworkCore;
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

        public PostJob GetJobById(int id)
        {
            return _context.PostJobs.Include(postJobs => postJobs.postBy).Include(postJobs => postJobs.jobSkillRequirements).Where(job => job.jobId == id).SingleOrDefault();
        }
        public WorkingJob GetWorkingJobById(int id)
        {
            return _context.WorkingJobs.Include(workJobs => workJobs.postBy).Include(workJobs => workJobs.jobSkillRequirements).Where(job => job.jobId == id).SingleOrDefault();
        }

        public JobFilter getFilterConfig()
        {
            //TODO this is only for PostJobs
            float minSalary = 0;
            try {
                minSalary = _context.PostJobs.Min(job => job.jobSalary);
            }
            catch
            {

            }
            
            List<Skills> skills = _context.Skills.ToList();
            DateTime startDate = new DateTime();
            try
            {
                startDate = _context.PostJobs.Min(job => job.postDate);
            }
            catch
            {

            }
           

            JobFilter filter = new JobFilter(
                    Range.StartAt( (int) minSalary),
                    null,
                    startDate,
                    null,
                    skills);

            return filter;
        }
        public List<PostJob> GetPostJobs()
        {
            var temp = _context.PostJobs.Include(job => job.postBy);
            if(temp == null)
            {
                return new List<PostJob>();
            }
            var jobs = temp.ToList();

            return jobs;
        }
        public List<PostJob> GetPostJobs(IJobFilter? filter)
        {
            var jobPosts = _context.PostJobs.Include(postJobs => postJobs.jobSkillRequirements).Include(postJobs => postJobs.postBy).ToList();

            if (filter == null)
            {
                return _context.PostJobs.ToList();
            }

            if (filter.salary != null)
            {
                jobPosts = jobPosts.Where(PostJob => (PostJob.jobSalary >= filter.salary.Value.Start.Value )).ToList();
                //&& PostJob.jobSalary <= filter.salary.Value.End.Value
            }
            if (filter.location != null)
            {
                jobPosts =  jobPosts.Where(postJob => postJob.location.Contains(filter.location)
                ).ToList();
            }
            if (filter.postDate != null)
            {
                jobPosts = jobPosts.Where(PostJob => PostJob.postDate >= filter.postDate).ToList();
            }
            if(filter.jobTypes != null)
            {
                if (filter.jobTypes.Count != 0)
                {
                    filter.jobTypes.ForEach(employmentType => jobPosts = jobPosts.Where(PostJob => PostJob.postDate >= filter.postDate).ToList());
                }
            }

            if (filter.skills != null)
            {
                if (filter.skills.Count != 0)
                {
                    filter.skills.ForEach(skill =>
                        jobPosts = jobPosts.Where(PostJob => PostJob.jobSkillRequirements.Contains(skill)).ToList());
                }
            }

            return jobPosts.ToList();
        }
        public void postJob(PostJob newJob)
        {
            _context.PostJobs.Add(newJob);
        }

        public WorkingJob newWorkingJob(WorkingJob job)
        {
            _context.WorkingJobs.Add(job);
            _context.SaveChanges();
            return job;
        }
        
        
    
    }
}