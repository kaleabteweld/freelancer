using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class Organizion : IInstitution, IEntityBase
    {
        [Key]
        public long Id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string phone { get; set; }


        //Organizion

        //jobs
        public List<PostJob> postedJobs { get; set; }
        public List<WorkingJob> activeJobs { get; set; }
        public List<DoneJob> DoneJobs { get; set; }


    }
}