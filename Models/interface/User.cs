using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public interface IUserBaseInfo
    {
        public string fullName { get; set; }
    }

    public interface IlearningInstitutionInfo
    {
        public Collage collage { get; set; }
        public Students? student { get; set; }
    }
    public interface ILogInUserFrom
    {
        public string userName { get; set; }
        public string passWord { get; set; }
    }
    public enum userType
    {
        user,
        organizions,
        _null,
    }
}