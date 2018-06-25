using System;
namespace pharmaGo.Models
{
    public class OrderItem
    {

        public int ID {
            get;
			set;
        }

        public int IdProduct
		{
			get;
			set;
		}

		public int Amount { get; set; }

		public OrderItem()
        {
        }
    }
}
