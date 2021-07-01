﻿using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using NTier.Domain;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace Inventory.Repository.Context
{
    public class InventoryDbContext : IdentityDbContext<ApplicationUserr>
    {

        public InventoryDbContext()
                : base("InventoryDbContext")
        {
        }


        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Product> Product { get; set; }

    }
}
