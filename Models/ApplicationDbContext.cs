using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Reflection.Emit;
using System.Reflection.Metadata;

namespace freelancer.Models
{
    public class ApplicationDbContext : IdentityDbContext<UserModel>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options) { }

        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    modelBuilder.Entity<UserModel>()
        //         .HasMany<Organizion>(s => s.Userorganizions)
        //         .WithMany(c => c.users);
                 
        //    base.OnModelCreating(modelBuilder);
        //}



        public DbSet<UserModel> Users { get; set; }

        public DbSet<Collage> Collages { get; set; }
        public DbSet<Organizion> Organizions { get; set; }

        public DbSet<Students> Students { get; set; }

        // jobs
        public DbSet<PostJob> PostJobs { get; set; }
        public DbSet<WorkingJob> WorkingJobs { get; set; }
        public DbSet<DoneJob> DoneJobs { get; set; }

        public DbSet<ApplicantsModel> Applicants { get; set; }


        // skills
        public DbSet<Skills> Skills { get; set; }
        public DbSet<Course> Courses { get; set; }

    }
}
