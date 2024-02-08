using Microsoft.EntityFrameworkCore;
using Zadanie3.Controllers;
using Zadanie3.Models;

namespace Zadanie3.Context
{
    public class DBContext : DbContext
    {
        public DbSet<UsersModel> Users { get; set; }
        public DbSet<ProductModel> Products { get; set; }

        public DBContext(DbContextOptions<DBContext> options) : base(options)
        {
            Database.EnsureCreated();
        }

    }
}
