using System.Collections.Generic;

namespace freelancer.Models
{
    public interface IInstitution
    {
        public int institutionId { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string phone { get; set; }

    }

    public interface ICollageServices
    {
        List<Collage> getAllCollage();
    }
}