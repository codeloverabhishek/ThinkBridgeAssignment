using AutoMapper;
using NTier.Domain;
using Inventory.WebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Inventory.WebApp.App_Start
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {

            CreateMap<Category, CategoryViewModel>();
            CreateMap<Product, ProductViewModel>();


            CreateMap<CategoryViewModel, Category>();
            CreateMap<ProductViewModel, Product>();

        }
    }
}