using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Data.Entity;
using Microsoft.Extensions.DependencyInjection;

namespace CSW.Models
{
    public static class SampleData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            var context = serviceProvider.GetService<ApplicationDbContext>();
            context.Database.Migrate();
            if (!context.Book.Any())
            {
                var autor1 = context.Author.Add(
                    new Author { LastName = "Julio", FirstMidName = "Paz" }).Entity;
                var autor2 = context.Author.Add(
                    new Author { LastName = "Martinez", FirstMidName = "Carlos" }).Entity;
                var autor3 = context.Author.Add(
                    new Author { LastName = "Stuart", FirstMidName = "Bob" }).Entity;

                var cat1 = context.Category.Add(
                    new Category { Name = "Category 1"}).Entity;
                var cat2 = context.Category.Add(
                    new Category { Name = "Category 2" }).Entity;

                context.Book.AddRange(
                    new Book()
                    {
                        Title = "Book 1",
                        Year = 2010,
                        Author = autor1,
                        Price = 15.99M,
                        Genre = "Academic",
                        Category = cat1
                    },
                    new Book()
                    {
                        Title = "Book 2",
                        Year = 2011,
                        Author = autor2,
                        Price = 10.50M,
                        Genre = "Novel",
                        Category = cat1
                    },
                    new Book()
                    {
                        Title = "Book 3",
                        Year = 2012,
                        Author = autor3,
                        Price = 21,
                        Genre = "Academic",
                        Category = cat2
                    },
                    new Book()
                    {
                        Title = "Book 4",
                        Year = 2013,
                        Author = autor1,
                        Price = 9.99M,
                        Genre = "Novel",
                        Category = cat2
                    },
                    new Book()
                    {
                        Title = "Book 5",
                        Year = 2015,
                        Author = autor2,
                        Price = 30.50M,
                        Genre = "Academic",
                        Category = cat1
                    }
                );
                context.SaveChanges();
            }
        }
    }
}