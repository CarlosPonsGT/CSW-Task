using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Http;
using Microsoft.AspNet.Mvc;
using Microsoft.Data.Entity;
using CSW.Models;

namespace CSW.Controllers
{
    [Produces("application/json")]
    [Route("api/BooksByCategory")]
    public class BooksByCategoryController : Controller
    {
        private ApplicationDbContext _context;

        public BooksByCategoryController(ApplicationDbContext context)
        {
            _context = context;
        }
        
        // GET: api/BooksByCategory
        [HttpGet]
        public IEnumerable<Book> GetBook()
        {
            return _context.Book;
        }
        
        // GET: api/BooksByCategory/5
        [HttpGet("{id}", Name = "GetBookByCategory")]
        public IEnumerable<Book> GetBook([FromRoute] int id)
        {
            return _context.Book.Where(m => m.CategoryID == id);
        }
        
        // PUT: api/BooksByCategory/5
        [HttpPut("{id}")]
        public IActionResult PutBook(int id, [FromBody] Book book)
        {
            return HttpBadRequest(ModelState);
        }

        // POST: api/BooksByCategory
        [HttpPost]
        public IActionResult PostBook([FromBody] Book book)
        {
           return HttpBadRequest(ModelState);
        }

        // DELETE: api/BooksByCategory/5
        [HttpDelete("{id}")]
        public IActionResult DeleteBook(int id)
        {
            return HttpBadRequest(ModelState);
        }
        
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _context.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool BookExists(int id)
        {
            return _context.Book.Count(e => e.BookID == id) > 0;
        }
    }
}