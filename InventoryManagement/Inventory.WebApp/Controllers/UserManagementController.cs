using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Inventory.Repository.Context;
using Inventory.WebApp.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Inventory.WebApp.Controllers
{
    public class UserManagementController : Controller
    {
        InventoryDbContext db;
        private ApplicationUserManager _userManager;
        RoleStore<IdentityRole> roleStore = null;
        RoleManager<IdentityRole> roleManager;



        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? Request.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }

        public UserManagementController()
        {
            db = new InventoryDbContext();

        }

        // GET: Account
        public ActionResult Login()
        {
            return View();
        }

        
  
    }
}