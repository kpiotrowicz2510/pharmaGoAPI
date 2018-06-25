using System;
using System.Collections.Generic;

namespace pharmaGo.Models
{
    public class Basket
    {
		public int Id
		{
			get;
			set;
		}

		public List<OrderItem> Items { get; set; }

		public double TotalValue { get; set;}

		public int TotalItems { get; set; }

		public Basket()
        {
        }
    }
}
