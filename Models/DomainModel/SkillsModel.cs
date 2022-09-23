using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class Skills
    {
        [Key]
        public int skillId { get; set; }
        [Required]
        public string skillName { get; set; }

        public List<UserModel>? user { get; set; }
        public List<PostJob>? jobSkillRequirements { get; set; }
        public List<WorkingJob>? workingJobjobSkillRequirements { get; set; }
        public List<DoneJob>? doneJobjobSkillRequirements { get; set; }
        public List<Students>? StudentsSkills { get; set; }


    }
    public class Course
    {
        [Key]
        public int courseId { get; set; }
        public string courseName { get; set; }
        public string courseGrade { get; set; }

    }
}