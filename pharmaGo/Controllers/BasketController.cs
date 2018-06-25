using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using pharmaGo.Config;
using pharmaGo.Models;

namespace pharmaGo.Controllers
{
	[Route("api/basket")]
    public class BasketController
    {
        public BasketController()
        {
			
        }

        [HttpGet]
		[Route("")]
		public Basket Get(){
			using(var ctx = new DBContext()){
				return ctx.Baskets.FirstOrDefault();
			}
		}

		[HttpPost]
        [Route("products")]
		public bool AddProductToBasket(OrderItem item){
			using (var ctx = new DBContext())
            {
                var basket = ctx.Baskets.FirstOrDefault();
				basket.Items.Add(item);
				ctx.SaveChanges();
				return true;
            }
		}
    }
}
