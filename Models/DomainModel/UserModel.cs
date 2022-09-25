using Microsoft.AspNetCore.Identity;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace freelancer.Models
{

    public class UserModel : IdentityUser,IUserBaseInfo, IlearningInstitutionInfo
    {
        // user info
        public int XP { get; set; }
        public string fullName { get; set; }

        // 
        public Collage? collage { get; set; }
        public Students? student { get; set; }
        public List<Organizion>? organizions { get; set; }
        public List<Skills>? skills { get; set; }

        // user jobs
        //[ForeignKey("WorkingJobId")]
        public List<WorkingJob>? jobs { get; set; }
        //[ForeignKey("bookJobId")]
        public List<PostJob>? bookJobs { get; set; }
        //[ForeignKey("likedJobId")]
        //public List<DoneJob>? likedJobs { get; set; }
        //[ForeignKey("JobsDoneId")]
        public List<DoneJob>? JobsDone { get; set; }

    }

    public class RegisterUserModel : IUserBaseInfo
    {
        //IUserBaseInfo
        [Required]
        [Display(Name = "full Name")]
        public string fullName { get; set; }
        [Required]
        [Display(Name = "user Name")]

        public string userName { get; set; }
        [Required]
        [DataType(DataType.Password)]
        public string password { get; set; }
        [Required]
        [EmailAddress]
        public string email { get; set; }
        [Required]
        public string phone { get; set; }

    }

    public class RegisterUserCollageIdModel
    {
        // IlearningInstitutionInfo
        [Required]
        [Display(Name = "collage")]
        public string collageId { get; set; }
        [Required]
        public string studentId { get; set; }

    }
    public class RegisterUserCollageModel: IlearningInstitutionInfo
    {
        // IlearningInstitutionInfo
        //[Required]
        public Collage collage { get; set; }
        //[Required]
        public Students? student { get; set; }

    }

    public class LogInUserModel : ILogInUserFrom
    {
        [Required]
       
        [Display(Name = "user name")]
        public string userName { get ; set; }

        [Required]
        [Display(Name = "password")]
        [DataType(DataType.Password)]
        public string passWord { get; set; }

        [Display(Name = "remember me")]
        public bool rememberMe { get; set; }
    }
};