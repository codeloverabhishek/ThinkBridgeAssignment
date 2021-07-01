﻿using AutoMapper;
using NTier.Domain;
using Inventory.Business.Interface;
using Inventory.WebApp.Models;
using System.Linq;
using System.Web.Mvc;

namespace Inventory.WebApp.Controllers
{
    public class ProductController : Controller
    {
        private ICategoryBusiness _category;
        private IProductBusiness _product;

        public ProductController(ICategoryBusiness category,IProductBusiness product)
        {
            this._category = category;
            this._product = product;
        }

        // GET: Product
        public ActionResult ListProduct()
        {
            var result = _product.GetAll().Select(x => new ProductViewModel
            {

                Id = x.Id,
                Description = x.Description,
                Name = x.Name,
                PurchasingPrice = x.PurchasingPrice,
                SellingPrice = x.SellingPrice,
                Category = x.Category,
                Quantity = x.Quantity
            });

            return View(result.ToList());
        }

        public ActionResult AddProduct()
        {

            var category = _category.GetAll().ToList();
            ViewBag.Category = new SelectList(category, "Id", "Name");

            return View();
        }

        public ActionResult EditProduct(int id)
        {
            if (id > 0)
            {
                var product = _product.GetById(id);
                if (product != null)
                {
                    var vm = new ProductViewModel
                    {
                        Id = product.Id,
                        Description = product.Description,
                        Name = product.Name,
                        CategoryId = product.CategoryId,
                        PurchasingPrice = product.PurchasingPrice,
                        SellingPrice = product.SellingPrice,
                        Quantity = product.Quantity

                    };

                    var category = _category.GetAll().ToList();
                    ViewBag.Category = new SelectList(category, "Id", "Name");
                    return View("AddProduct", vm);

                }

            }

            return View("AddProduct");
        }


        [HttpPost]
        public ActionResult AddProduct(ProductViewModel model)
        {
            var result = Mapper.Map<ProductViewModel, Product>(model);
            _product.Insert(result);
            return View();
        }

        public ActionResult CategoryList()
        {
            var result = _category.GetAll()
                 .Select(m => new CategoryViewModel
                 {
                     Id = m.Id,
                     Name = m.Name
                 });

            return View(result);
        }

        public ActionResult EditCategory(int id)
        {
            var result = _category.GetById(id);

            CategoryViewModel model = new CategoryViewModel
            {
                Id = result.Id,
                Name = result.Name
            };
            return View("EditCategory", model);
        }

    }
}