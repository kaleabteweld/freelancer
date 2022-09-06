using Microsoft.AspNetCore.Identity;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{

    public class UserModel : IdentityUser,IUserBaseInfo, IlearningInstitutionInfo
    {
        // user info
        [Key]
        public int userId { get; set; }
        public int XP { get; set; }
        public string fullName { get; set; }
        public string password { get; set; }


        // 
        public List<Collage> collages { get; set; }
        public Students? students { get; set; }
        public List<Organizion> organizions { get; set; }
        public List<Skills> skills { get; set; }

        // user jobs
        public List<WorkingJob> jobs { get; set; }
        public List<PostJob> bookJobs { get; set; }
        public List<IWork> likedJobs { get; set; }
        public List<DoneJob> JobsDone { get; set; }

    }

    public class RegisterUserModel : IUserBaseInfo, IlearningInstitutionInfo
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

        // IlearningInstitutionInfo
        public List<Collage> collages { get; set; }

        public Students? students { get; set; }

        public List<Skills> skills { get; set; }

    }

    public class LogInUserModel : ILogInUserFrom
    {
        [Required]
        
        public string email { get ; set; }

        [Required]
        [Display(Name = "password")]
        [DataType(DataType.Password)]
        public string passWord { get; set; }

        [Display(Name = "remember me")]
        public bool rememberMe { get; set; }
    }
};