using Microsoft.EntityFrameworkCore;
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
        
        public bool doseUserHaveCollage(string userId)
        {
            var user = _context.Users.Include(user => user.collage).FirstOrDefault((user => user.Id == userId));

            if (user == null)
            {
                return false;
            }
            if(user.collage == null)
            {
                return false;
            }
            return true;
        }
    }
}
