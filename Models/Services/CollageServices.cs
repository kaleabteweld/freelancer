using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace freelancer.Models.Services
{
    public class CollageServices : ICollageServices
    {
        private readonly ApplicationDbContext _context;
        public CollageServices(ApplicationDbContext context)
        {
            _context = context;
        }
        public List<Collage> getAllCollage()
        {
           return _context.Collages.ToList();
        }

        public Collage getCollageByIdWithSubSets(int collagesId)
        {
            return _context.Collages.Where(collage => collage.institutionId == collagesId).Include(collage => collage.students).SingleOrDefault();

        }
        
        public bool doesStudentExist(int collagesId, int studentId)
        {

            var collages = _context.Collages.Where(collage => collage.institutionId == collagesId).Include(collage => collage.students).SingleOrDefault();

            if (collages == null)
            {
                return false;
            }
            

            var result = collages.students.Find(student => student.studentsId == studentId);
            if (result == null)
            {
                return false;
            }
            return true;
        }

        public Students getStudentFromCollages(long collagesId, long studentId)
        {
            var collages = _context.Collages.Where(collage => collage.institutionId == collagesId).Include(collage => collage.students).SingleOrDefault();

            var result = collages.students.Find(student => student.studentsId == studentId);
            return result;
        }

    }
}
