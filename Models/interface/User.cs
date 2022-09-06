using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace freelancer.Models
{
    public interface IUserBaseInfo
    {
        public string fullName { get; set; }
        public string password { get; set; }
    }

    public interface IlearningInstitutionInfo
    {
        public List<Collage> collages { get; set; }
        public Students? students { get; set; }
    }
    public interface ILogInUserFrom
    {
        public string email { get; set; }
        public string passWord { get; set; }
    }
}