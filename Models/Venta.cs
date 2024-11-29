using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Comprobación.Models
{
    public class Venta
    {

        [Key]
        [Column("venta_id")]
        [Display(Name = "Id de venta")]
        public int IdVenta { get; set; }
        
        [Column("fecha")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Fecha de venta")]
        public DateTime FechaVenta { get; set; }
       
        [ForeignKey("Cliente")]
        [Column("cliente_id")]
        [Display(Name = "Nombre del cliente")]
        public int IdClienteEnVenta { get; set; }
       
        [ForeignKey("Empleado")]
        [Column("empleado_id")]
        [Display(Name = "Nombre del empleado")]
        public int IdEmpleadoEnVenta { get; set; }
      
        [Column("total")]
        [Range(0.1, 10000.01, ErrorMessage = "Desde 0.1 hasta 10000.01")]
        [Required(ErrorMessage = "No puede ser vacio")]
        [Display(Name = "Total de venta")]
        public decimal TotalVenta { get; set; }
     
        public ICollection<DetallesVentas>? DetallesVentas { get; set; }

        public Cliente? Cliente { get; set; }
        public Empleado? Empleado { get; set; }

    }
}
