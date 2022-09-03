using System;
using System.Collections.Generic;

namespace freelancer.Models
{
    public interface IJob
    {
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

    }
    public interface IWork
    {
        public DateTime startDate { get; set; }
        public string contractDetail { get; set; }
        public float userJobSatisfactionRating { get; set; }
        public float employersatisfactionRating { get; set; }
    }
    public enum EEmploymentType
    {

        permanent,
        contracture,
        partTime,
        hourly,
        remote,
        negotiable,
        none

    }
}


// job types
/*

Agriculture, Food, and Natural Resources
Architecture and Construction
Arts, Audio/Video Technology, and Communication
Business and Finance
Education and Training
Government and Public Administration
Health Science
Information Technology 
Law, Public Safety, Corrections, and Security
Marketing
Science, Technology, Engineering, and Math

*/