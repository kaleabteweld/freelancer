using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace freelancer.Models.Services
{
    public class StudentServices
    {
        private readonly ApplicationDbContext _context;
        public StudentServices(ApplicationDbContext context)
        {
            _context = context;
        }

      
        public Students getStudentById(int stuId)
        {
            return _context.Students.Include(stu => stu.skills).Where(stu => stu.studentsId == stuId).SingleOrDefault();
        }



    }
}
