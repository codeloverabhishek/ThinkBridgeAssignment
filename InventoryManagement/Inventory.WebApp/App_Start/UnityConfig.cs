using Microsoft.Practices.Unity.Configuration;
using Inventory.Repository.Infrastucture;
using Inventory.Repository.Infrastucture.Contract;
using Inventory.Business;
using Inventory.Business.Interface;
using Inventory.WebApp.Controllers;
using Inventory.WebApp.Controllers.Api;
using Inventory.WebApp.Resolver;
using System.Web.Mvc;
using Unity;
using Unity.Injection;
using Unity.Lifetime;
using Unity.Mvc5;

namespace Inventory.WebApp
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            // register all your components with the container here
            // it is NOT necessary to register your controllers

            // e.g. container.RegisterType<ITestService, TestService>();

            container.RegisterType<IUnitOfWork, UnitOfWork>();

            container.RegisterType<ICategoryBusiness, CategoryBusiness>();
            container.RegisterType<IProductBusiness, ProductBusiness>();
            container.RegisterType<IUserBusiness, UserBusiness>();


            DependencyResolver.SetResolver(new UnityDependencyResolver(container));

        }
    }
}