using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace CSW.Models
{
    public class Category
    {
        [ScaffoldColumn(false)]
        public int CategoryID { get; set; }
        [Required]
        [Display(Name = "Name")]
        public string Name { get; set; }

        public virtual ICollection<Book> Books { get; set; }
    }
}
