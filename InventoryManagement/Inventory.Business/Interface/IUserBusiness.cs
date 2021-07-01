using NTier.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inventory.Business.Interface
{
    public interface IUserBusiness
    {
        IEnumerable<ApplicationUserr> GetAll();
        ApplicationUserr GetById(string id);
        void Insert(ApplicationUserr category);
        void Update(ApplicationUserr category);
        void Delete(string userId);
    }
}
