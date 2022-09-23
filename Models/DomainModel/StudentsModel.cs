using System.Collections.Generic;
using System;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class Students
    {
        [Key]
        public int studentsId { get; set; }
        public string fullName { get; set; }
        public DateTime startingYear { get; set; }
        public DateTime? endYear { get; set; }
        public List<Skills> skills { get; set; }
        //public List<Course> courses { get; set; }
        public float GPA { get; set; }
        //public List<string> testimonies { get; set; }
        public bool isGraduated { get; set; }

        public Collage Collage { get; set; }
    }
}