using System.ComponentModel.DataAnnotations;
using System.Runtime.InteropServices;

namespace freelancer.Models
{
    public class ApplicantsModel
    {
        public ApplicantsModel( int postJobId, PostJob postJob, string applicantId, UserModel applicant)
        {
           
            PostJobId = postJobId;
            PostJob = postJob;
            this.applicantId = applicantId;
            this.applicant = applicant;
        }

        public ApplicantsModel() { }

        [Key]
        public int ApplicatioID { get; set; }

        public int PostJobId { get; set; }
        public PostJob PostJob { get; set; }

        public string applicantId { get; set; }
        public UserModel applicant { get; set; }

        public string cvUploadLoc { get; set;}
    }
}
