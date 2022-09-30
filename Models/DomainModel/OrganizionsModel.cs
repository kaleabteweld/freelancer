using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace freelancer.Models
{
    public class Organizion : IInstitution
    {
        [Key]
        public int institutionId { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string phone { get; set; }


        //Organizion

        //jobs
        public List<PostJob>? postedJobs { get; set; }
        public List<WorkingJob>? activeJobs { get; set; }
        public List<DoneJob>? DoneJobs { get; set; }

        [ForeignKey("Users")]
        public string UserId { get; set; }
        public UserModel? user { get; set; }



    }
}