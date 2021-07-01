using NTier.Domain;
using Inventory.Business.Interface;
using Inventory.WebApp.Models;
using System.Linq;
using System.Web.Mvc;

namespace Inventory.WebApp.Controllers
{


    public class HomeController : Controller
    {
        IProductBusiness _product;
        IUserBusiness _user;

        public HomeController(IProductBusiness product, IUserBusiness user)
        {
            this._product = product;
            this._user = user;
        }

        public ActionResult Index()
        {
            return View();
        }


    }
}
