using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class Skills
    {
        [Key]
        public int skillId { get; set; }
        public string skillName { get; set; }
    }
    public class Course
    {
        [Key]
        public int courseId { get; set; }
        public string courseName { get; set; }
        public string courseGrade { get; set; }

    }
}