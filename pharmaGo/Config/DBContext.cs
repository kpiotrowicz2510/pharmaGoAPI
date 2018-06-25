using System;
using Microsoft.EntityFrameworkCore;
using pharmaGo.Models;

namespace pharmaGo.Config
{
	public class DBContext : DbContext
    {
		protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Filename=MyDatabase.db");
        }

		public DbSet<Basket> Baskets { get; set; }

		public DbSet<OrderItem> OrderItems { get; set; }

		public DbSet<Product> Products { get; set; }

        public DBContext()
        {
        }
    }
}
