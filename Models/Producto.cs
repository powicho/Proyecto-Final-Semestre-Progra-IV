using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Comprobación.Models
{
    public class Producto
    {
        
        [Key]
        [Column("producto_id")]
        [Display(Name = "Id del producto")]
        public int IdProdcuto { get; set; }
      
        [Column("codigo")]
        [StringLength(50, ErrorMessage = "No mayor a 50 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Codigo del producto")]
        public string CodigoProducto { get; set; }
       
        [Column("nombre")]
        [StringLength(100, ErrorMessage = "No mayor a 100 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Nombre del producto")]
        public string NombreProducto { get; set; }
        
        [Column("descripcion")]
        [Display(Name = "Descripcion del producto")]
        public string DescripcionProducto { get; set; }
       
        [Column("precio")]
        [Range(0.1, 10000.01, ErrorMessage = "Desde 0.1 hasta 10000.01")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Precio del producto")]
        public decimal PrecioProducto { get; set; }
   
        [Column("stock")]
        [Range(1, 10000, ErrorMessage = "Desde 1 hasta 10000")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Stock del producto")]
        public int StockProducto { get; set; }
 
        [Column("foto_url")]
        [Display(Name = "Foto del producto")]
        public string? FotoProducto { get; set; }

        /*Variables de relaciones de producto hacia los otros*/
        public ICollection<DetallesVentas>? DetallesVentas { get; set; }
      
    }
}
