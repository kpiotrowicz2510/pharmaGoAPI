using System;
namespace pharmaGo.Models
{
    public class Product
    {
		public int ID {
		    get;
			set;
		}

		public double Price { get; set; }

		public string Name { get; set; }

		public string Description { get; set; }

		public int AvailableAmount { get; set; }

        public Product()
        {
        }
    }
}
