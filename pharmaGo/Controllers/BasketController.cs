using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
				return ctx.Baskets.Include(p => p.Items).FirstOrDefault();
			}
		}

		[HttpPost]
        [Route("products")]
		public bool AddProductToBasket([FromBody] OrderItem item){
			using (var ctx = new DBContext())
            {
				var basket = ctx.Baskets.Include(p=>p.Items).FirstOrDefault(b=>b.ID==1);
				var x = basket.Items.ToList();
				basket.Items.Add(item);
				basket.TotalItems += item.Amount;
				var product = ctx.Products.First(p => p.ID == item.IdProduct);
				basket.TotalValue += product.Price * item.Amount;
				ctx.SaveChanges();
				return true;
            }
		}
		[HttpDelete]
        [Route("products")]
        public bool DeleteProducts()
        {
            using (var ctx = new DBContext())
            {
				var basket = ctx.Baskets.Include(p => p.Items).FirstOrDefault(b => b.ID == 1);
				basket.Items.RemoveAll(p=>p.Amount > 0);
                ctx.SaveChanges();
                return true;
            }
        }

		[HttpDelete]
		[Route("")]
		public bool DeleteBasket([FromBody] Basket basket){
			using (var ctx = new DBContext())
			{
				ctx.Baskets.Remove(basket);
				ctx.SaveChanges();
				return true;
			}
		}
    }
}
