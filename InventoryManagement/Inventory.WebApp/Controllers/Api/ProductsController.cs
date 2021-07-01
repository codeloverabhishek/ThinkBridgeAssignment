using NTier.Domain;
using Inventory.Business.Interface;
using Inventory.WebApp.Models;
using System.Linq;
using System.Web.Http;
using System.Data.Entity.Infrastructure;

namespace Inventory.WebApp.Controllers.Api
{
    [Authorize]
    public class ProductsController : ApiController
    {
        private IProductBusiness _product;
        public ProductsController(IProductBusiness product)
        {
            this._product = product;
        }


        [HttpGet]
        public IHttpActionResult GetAll()
        {
            var result = _product.GetAll().Select(x => new ProductViewModel
            {
                Id = x.Id,
                Name = x.Name,
                Description = x.Description,
                PurchasingPrice = x.PurchasingPrice,
                SellingPrice = x.SellingPrice,
                Quantity = x.Quantity,
                CategoryId = x.CategoryId,
                CategoryName = x.Category.Name
            });

            return Ok(result);
        }

        [HttpGet]
        public IHttpActionResult GetById(int id)
        {
            var result = _product.GetById(id);
            if (result != null)
            {
                ProductViewModel vm = new ProductViewModel
                {
                    Id = result.Id,
                    Name = result.Name,
                    Description = result.Description,
                    PurchasingPrice = result.PurchasingPrice,
                    SellingPrice = result.SellingPrice,
                    Quantity = result.Quantity,
                    CategoryId = result.CategoryId,
                };
                return Ok(vm);
            }
            return Ok("Item Not Found !");
        }

        [HttpPost]
        public IHttpActionResult Insert(ProductViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            try
            {
                Product product = new Product
                {
                    Id = model.Id,
                    Name = model.Name,
                    Description = model.Description,
                    PurchasingPrice = model.PurchasingPrice,
                    SellingPrice = model.SellingPrice,
                    Quantity = model.Quantity,
                    CategoryId = model.CategoryId,
                };
                _product.Insert(product);
                return Ok(product);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                return BadRequest();
            }
        }

        [HttpPut]
        public IHttpActionResult Update(ProductViewModel model)
        {
            Product product = new Product
            {
                Id = model.Id,
                Name = model.Name,
                Description = model.Description,
                PurchasingPrice = model.PurchasingPrice,
                SellingPrice = model.SellingPrice,
                Quantity = model.Quantity,
                CategoryId = model.CategoryId
            };
            _product.Update(product);
            return Ok(product);
        }

        [HttpDelete]
        public IHttpActionResult Delete(int id)
        {
            _product.Delete(id);
            return Ok("Deleted Successfully !");
        }
    }
}
