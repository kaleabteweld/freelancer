using System.Collections.Generic;

namespace freelancer.Models
{
   public class JobApplicants
    {
        public JobApplicants() { }

        public JobApplicants(PostJob job, List<UserModel> users, ApplicantsModel applicant)
        {
            this.job = job;
            this.users = users;
            this.applicant = applicant;
        }

        public PostJob job { get; set; }
        public List<UserModel> users { get; set; }

        public ApplicantsModel applicant { get; set; }
    }
}
