using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class Skill : IEntityBase
    {
        [Key]
        public long Id { get; set; }
        public string skillName { get; set; }
    }
    public class Course : IEntityBase
    {
        [Key]
        public long Id { get; set; }
        public string courseName { get; set; }
        public string courseGrade { get; set; }

    }
}