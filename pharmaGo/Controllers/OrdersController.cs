using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using pharmaGo.Config;
using pharmaGo.Models;

namespace pharmaGo.Controllers
{
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
				return ctx.Orders.ToList();
            }
        }

        [HttpGet]
		[Route("{id}")]
        public Order GetOrder(int id)
        {
            using (var ctx = new DBContext())
            {
				return ctx.Orders.FirstOrDefault(p => p.ID == id);
            }
        }

		[HttpPost]
        [Route("")]
        public bool AddOrder(Order order)
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
