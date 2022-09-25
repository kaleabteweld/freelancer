using System;
using System.Collections.Generic;

namespace freelancer.Models
{
    public class JobCard
    {
        public int jobId { get; set; }
        public string jobTitle { get; set; }
        public string jobsTypes { get; set; }
        public string location { get; set; }
        public Organizion postBy { get; set; }
        public EEmploymentType employmentType { get; set; }
        public float jobSalary { get; set; }
        public DateTime postDate { get; set; }
    }
}