using Microsoft.EntityFrameworkCore;

namespace freelancer.Models
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Collage> Collages { get; set; }
        public DbSet<Organizion> Organizions { get; set; }

        public DbSet<Students> Students { get; set; }

        // jobs
        public DbSet<PostJob> PostJobs { get; set; }
        public DbSet<WorkingJob> WorkingJobs { get; set; }
        public DbSet<DoneJob> DoneJobs { get; set; }

        // skills
        public DbSet<Skills> Skills { get; set; }
        public DbSet<Course> Courses { get; set; }

    }
}
