using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;

namespace freelancer.Models.Services
{
    public class UserServices
    {
        private readonly ApplicationDbContext _context;
        private readonly StudentServices studentServices;



        public UserServices(ApplicationDbContext context, StudentServices studentServices)
        {
            _context = context;
            this.studentServices = studentServices;
          
        }

        public UserModel getUserById(string userId)
        {
           return _context.Users.Include(user => user.jobs).Where(user => user.Id == userId).SingleOrDefault();
        }

        public UserModel getUserWithColage(string userId)
        {
            var user = _context.Users.Include(user => user.collage).Include(user => user.student).Where(user => user.Id == userId).SingleOrDefault();
            if (user == null)
            {
                return new UserModel();
            }
            Students students = studentServices.getStudentById(user.student.studentsId);
            user.student = students;
            return user;
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

        public List<WorkingJob> GetWorkingJobs (string userId)
        {
            var user = _context.Users.Include(user => user.jobs).Where(user => user.Id == userId).SingleOrDefault();
            if (user == null)
            {
                return new List<WorkingJob>();
            }

            return user.jobs?? new List<WorkingJob>();
        }

        public void addWorkingJob (WorkingJob job, string userId)
        {
            var user = _context.Users.Include(user => user.jobs).FirstOrDefault((user => user.Id == userId));
            user.jobs.Add(job);

        }

        public userType getUserType(string userId)
        {
            UserModel user = _context.Users.Where(us => us.Id == userId).SingleOrDefault();
            if (user == null)
            {
                return userType._null;
            }

            if (user.us != null)
            {
                return userType.organizions;
            }

            return userType.user;

        }
    }
}
