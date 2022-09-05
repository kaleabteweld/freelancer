using System.Collections.Generic;
using System;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class Students : IEntityBase
    {
        [Key]
        public long Id { get; set; }
        public string fullName { get; set; }
        public DateTime startingYear { get; set; }
        public DateTime? endYear { get; set; }
        public List<Skill> skills { get; set; }
        public List<Course> courses { get; set; }
        public float GPA { get; set; }
        //public List<string> testimonies { get; set; }
        public bool isGraduated { get; set; }
    }
}