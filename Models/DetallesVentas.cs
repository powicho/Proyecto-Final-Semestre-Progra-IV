using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Comprobación.Models
{
    public class DetallesVentas
    {
      
        [Key]
        [Column("detalle_venta_id")]
        [Display(Name = "Id del detalle de la venta")]
        public int DetalleVentaId { get; set; }

    
        [Column("venta_id")]
        [Display(Name = "Id de la venta")]
        public int VentaId { get; set; }

     
        [Column("producto_id")]
        [Display(Name = "Id del producto")]
        public int ProductoId { get; set; }

   
        [Column("cantidad")]
        [Range(1, 1000, ErrorMessage = "Debe ser un entero entre 1 y 1000.")]
        [Required(ErrorMessage = "La cantidad no puede estar vacía.")]
        [Display(Name = "Cantidad")]
        public int Cantidad { get; set; }

        
        [Column("precio_unitario")]
        [Range(0.1, 1000.1, ErrorMessage = "Debe ser un valor entre 0.1 y 1000.1.")]
        [Required(ErrorMessage = "El precio unitario no puede estar vacío.")]
        [Display(Name = "Precio unitario")]
        public decimal PrecioUnitario { get; set; }

  
        [Column("subtotal")]
        [Range(0.01, 10000, ErrorMessage = "Debe ser un valor entre 0.01 y 10000.")]
        [Required(ErrorMessage = "El subtotal no puede estar vacío.")]
        [Display(Name = "Subtotal")]
        public decimal Subtotal { get; set; }

    
        [ForeignKey("VentaId")]
        public Venta? Venta { get; set; }

        [ForeignKey("ProductoId")]
        public Producto? Producto { get; set; }
    }
}


