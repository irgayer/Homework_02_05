using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using SecurityApplication.Models;
using SecurityApplication.Services;

namespace SecurityApplication.DataAccess
{
    public class DataInitializer : CreateDatabaseIfNotExists<SecurityContext>
    {
        protected override void Seed(SecurityContext context)
        {
            base.Seed(context);
            context.Users.Add(new User
            {
                Login = "admin",
                Password = SecurityHasher.HashPassword("123")
            });
        }
    }
}


