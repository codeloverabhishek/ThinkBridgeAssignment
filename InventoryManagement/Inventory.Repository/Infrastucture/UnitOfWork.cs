using Inventory.Repository.Context;
using Inventory.Repository.Infrastucture.Contract;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inventory.Repository.Infrastucture
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly InventoryDbContext _dbContext;

        public UnitOfWork()
        {
            _dbContext = new InventoryDbContext();
        }

        public DbContext Db
        { get { return _dbContext; } }

        public void Dispose()
        {
        }
    }
}
