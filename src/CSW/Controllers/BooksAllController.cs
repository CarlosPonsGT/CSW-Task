using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Http;
using Microsoft.AspNet.Mvc;
using Microsoft.Data.Entity;
using CSW.Models;

namespace CSW.Controllers
{
    [Produces("application/json")]
    [Route("api/BooksAll")]
    public class BooksAllController : Controller
    {
        private ApplicationDbContext _context;

        public BooksAllController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/BooksAll
        [HttpGet]
        public IEnumerable<Book> GetBook()
        {
            return _context.Book;
        }

        // GET: api/BooksAll/5
        [HttpGet("{id}", Name = "GetBook")]
        public IActionResult GetBook([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return HttpBadRequest(ModelState);
            }

            Book book = _context.Book.Single(m => m.BookID == id);

            if (book == null)
            {
                return HttpNotFound();
            }

            return Ok(book);
        }

        
        // PUT: api/BooksAll/5
        [HttpPut("{id}")]
        public IActionResult PutBook(int id, [FromBody] Book book)
        {
            return HttpBadRequest(ModelState);
        }

        // POST: api/BooksAll
        [HttpPost]
        public IActionResult PostBook([FromBody] Book book)
        {
            return HttpBadRequest(ModelState);
        }

        // DELETE: api/BooksAll/5
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