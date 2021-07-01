using NTier.Domain;
using Inventory.Repository.Infrastucture.Contract;
using Inventory.Repository.Repositories;
using Inventory.Business.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inventory.Business
{
    public class UserBusiness : IUserBusiness
    {

        private readonly IUnitOfWork unitOfWork;
        private readonly UserRepository _userRepository;

        public UserBusiness(IUnitOfWork _unitOfWork)
        {
            this.unitOfWork = _unitOfWork;
            this._userRepository = new UserRepository(unitOfWork);
        }

        public void Delete(string userId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ApplicationUserr> GetAll()
        {
            var result = _userRepository.GetAll();
            return result;
        }

        public ApplicationUserr GetById(string id)
        {
            throw new NotImplementedException();
        }

        public void Insert(ApplicationUserr category)
        {
            throw new NotImplementedException();
        }

        public void Update(ApplicationUserr category)
        {
            throw new NotImplementedException();
        }
    }
}
