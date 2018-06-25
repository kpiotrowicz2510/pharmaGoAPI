using System;
using System.Collections.Generic;

namespace pharmaGo.Models
{
    public class Order
    {
		public int ID
        {
            get;
            set;
        }

        public List<OrderItem> Items { get; set; }

        public double TotalValue { get; set; }

        public int TotalItems { get; set; }

		public bool IsPayed { get; set; }

        public Order()
        {
        }
    }
}
