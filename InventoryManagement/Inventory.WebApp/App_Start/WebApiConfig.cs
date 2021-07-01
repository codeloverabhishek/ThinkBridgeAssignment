﻿using Inventory.Business;
using Inventory.Business.Interface;
using Inventory.Repository.Infrastucture;
using Inventory.Repository.Infrastucture.Contract;
using Inventory.WebApp.Resolver;
using Microsoft.Owin.Security.OAuth;
using System.Net.Http.Headers;
using System.Web.Http;
using System.Web.Http.Cors;
using Unity;

namespace Inventory.WebApp
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            var container = new UnityContainer();

            container.RegisterType<IUnitOfWork, UnitOfWork>();


            container.RegisterType<ICategoryBusiness, CategoryBusiness>();
            container.RegisterType<IProductBusiness, ProductBusiness>();
            container.RegisterType<IUserBusiness, UserBusiness>();



            config.DependencyResolver = new UnityResolver(container);

            // Web API configuration and services
            // Configure Web API to use only bearer token authentication.
            config.SuppressDefaultHostAuthentication();
            config.Filters.Add(new HostAuthenticationFilter(OAuthDefaults.AuthenticationType));

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );


            EnableCorsAttribute cors = new EnableCorsAttribute("*", "*", "*");
            config.EnableCors();

            config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("application/json"));

        }
    }
}
