using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;

namespace freelancer.Models.Services
{
    public class UserServices
    {
        private readonly ApplicationDbContext _context;
        public UserServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<PostJob> userBookJobs (string userId)
        {
            var user = _context.Users.Include(user => user.bookJobs).Where(user => user.Id == userId).SingleOrDefault();
            if (user == null)
            {
                return new List<PostJob>();
            }
            List <PostJob>  postjob = new List<PostJob>();
            foreach(PostJob job in user.bookJobs.ToList())
            {
                var Job = _context.PostJobs.Include(job => job.postBy).Where(_job => _job.jobId == job.jobId).SingleOrDefault();
                if(Job != null)
                {
                    postjob.Add(Job);
                }
            }
            return postjob;
        }

        public bool isBooked (int jobId, string userId)
        {
            var user = _context.Users.Include(user => user.bookJobs).Where(user => user.Id == userId).SingleOrDefault();
            if (user == null)
            {
                return false;
            }
            foreach (PostJob job in user.bookJobs.ToList())
            {
              if(job.jobId == jobId) { return true; }
            }
            return false;

        }

        public void unBook(string userId, PostJob job)
        {
            var user = _context.Users.Include(user => user.bookJobs).Where(user => user.Id == userId).SingleOrDefault();
            if (user == null)
            {
                return;
            }
            user.bookJobs.Remove(job);
            _context.SaveChanges();
        }

        public void addCollageToUser(Collage collage,Students student, string UserId)
        {
            var user = _context.Users.Find(UserId);
            if (user == null)
            {
                return;
            }
            (user as UserModel).collage = collage;
            (user as UserModel).student = student;
            _context.SaveChanges();
            return;

        }

        public void bookJob(string userId, PostJob job)
        {
            var user = _context.Users.Include(user => user.bookJobs).Where(user => user.Id == userId).SingleOrDefault();
            if (user == null)
            {
                return;
            }
            user.bookJobs.Add(job);
            _context.SaveChanges();
        }

        public bool doseUserHaveCollage(string userId)
        {
            var user = _context.Users.Include(user => user.collage).FirstOrDefault((user => user.Id == userId));

            if (user == null)
            {
                return false;
            }
            if (user.collage == null)
            {
                return false;
            }
            return true;
        }
    }
}
