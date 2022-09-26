namespace freelancer.Models.Services
{
    public class SkillsServices
    {
        private readonly ApplicationDbContext _context;
        public SkillsServices(ApplicationDbContext context)
        {
            _context = context;
        }


        public Skills getSkillById(int id)
        {
            return _context.Skills.Find(id);
        }
    }
}
