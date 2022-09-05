using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{

    public class UserModel : IEntityBase
    {
        // user info
        [Key]
        public long Id { get; set; }
        public int XP { get; set; }
        public string fullName { get; set; }
        public string userName { get; set; }
        public string password { get; set; }
        public string email { get; set; }
        public string phone { get; set; }

        // 
        public List<Collage> collages { get; set; }
        public Students students { get; set; }
        public List<Organizion> organizions { get; set; }
        public List<Skill> skills { get; set; }

        // user jobs
        public List<WorkingJob> jobs { get; set; }
        public List<PostJob> bookJobs { get; set; }
        public List<IWork> likedJobs { get; set; }
        public List<DoneJob> JobsDone { get; set; }

    }
};