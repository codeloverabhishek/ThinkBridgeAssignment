using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTier.Domain
{
    public class Product
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        [Column(TypeName = "Money")]
        public decimal SellingPrice { get; set; }
        [Column(TypeName = "Money")]
        public decimal PurchasingPrice { get; set; }
        public int Quantity { get; set; }
        public int CategoryId { get; set; }

        public virtual Category Category { get; set; }


    }
}
