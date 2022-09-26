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
        public WorkingJob(PostJob postJob, string contractDetail, List<UserModel> employees)
        {
            this.jobTitle = postJob.jobTitle;
            this.jobDescription = postJob.jobDescription;
            this.location = postJob.location;
            this.postBy = postJob.postBy;
            this.employmentType = postJob.employmentType;
            this.jobRequirements = postJob.jobRequirements;
            this.jobSkillRequirements = postJob.jobSkillRequirements;
            this.jobDuties = postJob.jobDuties;
            this.minWorkingHours = postJob.minWorkingHours;
            this.jobSalary = postJob.jobSalary;
            this.postDate = postJob.postDate;
            this.jobsTypes = postJob.jobsTypes;


            this.startDate = postJob.postDate;
            this.contractDetail = contractDetail;
            this.userJobSatisfactionRating = 0;
            this.employersatisfactionRating = 0;
            this.employees = employees;

        }
        public WorkingJob()
        {
        }

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

    public class JobFilter : IJobFilter
    {
        public JobFilter(Range? salary, string? location, DateTime? postDate, List<EEmploymentType>? jobTypes, List<Skills>? skills)
        {
            this.salary = salary;
            this.location = location;
            this.postDate = postDate;
            this.jobTypes = jobTypes;
            this.skills = skills;
        }

        public Range? salary { get; set ; }
        public string? location { get; set ; }
        public DateTime? postDate { get ; set ; }
        public List<EEmploymentType>? jobTypes { get ; set; }
        public List<Skills>? skills { get; set; }
    }


}