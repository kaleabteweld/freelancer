using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public class PostJob : IJob
    {

        [Key]
        public int jobId { get; set; }
        public string jobTitle { get; set; }
        public string jobDescription { get; set; }
        public string location { get; set; }
        public Organizion postBy { get; set; }
        public EEmploymentType employmentType { get; set; }
        public string jobRequirements { get; set; }
        public List<Skills> jobSkillRequirements { get; set; }
        public string jobDuties { get; set; }
        public float minWorkingHours { get; set; }
        public float jobSalary { get; set; }
        public DateTime postDate { get; set; }
        public string jobsTypes { get; set; }

        //employee
        public List<UserModel>? bookUsers { get; set; }



    }
    public class WorkingJob : IJob, IWork
    {
        [Key]
        public int jobId { get; set; }
        public string jobTitle { get; set; }
        public string jobDescription { get; set; }
        public string location { get; set; }
        public Organizion postBy { get; set; }
        public EEmploymentType employmentType { get; set; }
        public string jobRequirements { get; set; }
        public List<Skills> jobSkillRequirements { get; set; }
        public string jobDuties { get; set; }
        public float minWorkingHours { get; set; }
        public float jobSalary { get; set; }
        public DateTime postDate { get; set; }
        public string jobsTypes { get; set; }


        // WorkingJob (IWork)
        public DateTime startDate { get; set; }
        public string contractDetail { get; set; }
        public float userJobSatisfactionRating { get; set; }
        public float employersatisfactionRating { get; set; }

        //employee
        public List<UserModel>? employees { get; set; }

    }
    public class DoneJob : IJob, IWork, IDoneJob
    {
        [Key]
        public int jobId { get; set; }
        public string jobTitle { get; set; }
        public string jobDescription { get; set; }
        public string location { get; set; }
        public Organizion postBy { get; set; }
        public EEmploymentType employmentType { get; set; }
        public string jobRequirements { get; set; }
        public List<Skills> jobSkillRequirements { get; set; }
        public string jobDuties { get; set; }
        public float minWorkingHours { get; set; }
        public float jobSalary { get; set; }
        public DateTime postDate { get; set; }
        public DateTime startDate { get; set; }
        public string contractDetail { get; set; }
        public float userJobSatisfactionRating { get; set; }
        public float employersatisfactionRating { get; set; }
        public string jobsTypes { get; set; }



        // DoneJob 
        public DateTime endtDate { get; set; }
        public string testimony { get; set; }


        //employee
        public List<UserModel>? employees { get; set; }



    }
}