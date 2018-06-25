using System;
using Microsoft.EntityFrameworkCore;

namespace pharmaGo.Config
{
	public class DBContext : DbContext
    {
		protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Filename=MyDatabase.db");
        }

        public DBContext()
        {
        }
    }
}
