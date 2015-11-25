using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Http;
using Microsoft.AspNet.Mvc;
using Microsoft.Data.Entity;
using CSW.Models;

namespace CSW.Controllers
{
    [Produces("application/json")]
    [Route("api/BooksByAuthor")]
    public class BooksByAuthorController : Controller
    {
        private ApplicationDbContext _context;

        public BooksByAuthorController(ApplicationDbContext context)
        {
            _context = context;
        }
        
        // GET: api/BooksByAuthor
        [HttpGet]
        public IEnumerable<Book> GetBook()
        {
            return _context.Book;
        }
        
        // GET: api/BooksByAuthor/5
        [HttpGet("{id}", Name = "GetBookByAuthor")]
        public IEnumerable<Book> GetBook([FromRoute] int id)
        {
            return _context.Book.Where(m => m.AuthorID == id);
        }
        
        // PUT: api/BooksByAuthor/5
        [HttpPut("{id}")]
        public IActionResult PutBook(int id, [FromBody] Book book)
        {
            return HttpBadRequest(ModelState);
        }

        // POST: api/BooksByAuthor
        [HttpPost]
        public IActionResult PostBook([FromBody] Book book)
        {
            return HttpBadRequest(ModelState);
        }

        // DELETE: api/BooksByAuthor/5
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