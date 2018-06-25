using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using pharmaGo.Config;
using pharmaGo.Models;

namespace pharmaGo.Controllers
{
	[Route("api/products")]
    public class ProductsController
    {

		[Route("")]
		[HttpGet]
		public List<Product> GetProducts(){
			using(var ctx = new DBContext()){
				return ctx.Products.ToList();
			}
		}

		[Route("{id}")]
		[HttpGet]
		public Product GetProduct(int id){
			using (var ctx = new DBContext())
            {
				var product = ctx.Products.First(p => p.ID == id);
				var r = new Random();
				var discountPercent = r.Next(1, 30);
				product.PriceDiscount = product.Price * (1 - (discountPercent/100));
				product.PriceDiscountPercent = discountPercent;
				return product;
            }
		}

        public ProductsController()
        {
        }
    }
}
