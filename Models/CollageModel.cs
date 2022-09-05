using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class Collage : IInstitution, IEntityBase
    {
        [Key]
        // public int institutionId { get; set; }
        public long Id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string phone { get; set; }


        // Collage
        public List<Students> students { get; set; }

    }
}