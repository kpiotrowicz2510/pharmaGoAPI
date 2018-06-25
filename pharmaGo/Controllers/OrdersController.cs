using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using pharmaGo.Config;
using pharmaGo.Models;

namespace pharmaGo.Controllers
{
	[Route("api/orders")]
    public class OrdersController
    {
        public OrdersController()
        {
        }
        
		[HttpGet]
        [Route("")]
        public List<Order> GetAll()
        {
            using (var ctx = new DBContext())
            {
				return ctx.Orders.Include(o => o.Items).ToList();
            }
        }

        [HttpGet]
		[Route("{id}")]
        public Order GetOrder(int id)
        {
            using (var ctx = new DBContext())
            {
				return ctx.Orders.Include(o=>o.Items).FirstOrDefault(p => p.ID == id);
            }
        }

		[HttpPost]
        [Route("")]
		public bool AddOrder([FromBody] Order order)
        {
            using (var ctx = new DBContext())
            {
				ctx.Orders.Add(order);
				ctx.SaveChanges();
				return true;
            }
        }
    }
}
