using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace freelancer.Models
{
    public interface IEntityBase
    {
        long Id { get; set; }
    }

    public interface IEntityBaseRepository<T> where T : class, IEntityBase, new()
    {
        Task<IEnumerable<T>> GetAllAsync();
        Task<T> GetByIdAsync(long id);
        Task AddAsync(T entity);
        Task UpdateAsync(long id, T entity);
        Task DeleteAsync(long id);
    }
}
