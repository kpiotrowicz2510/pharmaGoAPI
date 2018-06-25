using System;
namespace pharmaGo.Models
{
    public class OrderItem
    {

        public int Id {
            get;
			set;
        }

        public int IdProduct
		{
			get;
			set;
		}

		public OrderItem()
        {
        }
    }
}
