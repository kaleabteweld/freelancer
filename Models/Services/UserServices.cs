﻿using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace freelancer.Models.Services
{
    public class UserServices
    {
        private readonly ApplicationDbContext _context;
        public UserServices(ApplicationDbContext context)
        {
            _context = context;
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
        }


    }
}
