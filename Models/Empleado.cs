using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Comprobación.Models
{
    public class Empleado
    {
      
        [Key]
        [Column("empleado_id")]
        [Display(Name = "Id del empleado")]
        public int IdEmpleado { get; set; }
        
        [Column("nombre")]
        [StringLength(50, ErrorMessage = "No mayor a 50 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Nombre del empleado")]
        public string NombreEmpleado { get; set; }
       
        [Column("apellido")]
        [StringLength(50, ErrorMessage = "No mayor a 50 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Apellido del empleado")]
        public string ApellidoEmpleado { get; set; }
     
        [Column("dpi")]
        [StringLength(20, ErrorMessage = "No puede ser mayor a 20 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Dpi del empleado")]
        public string DpiEmpleado { get; set; }
     
        [Column("cargo")]
        [StringLength(50, ErrorMessage = "No mayor a 50 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Cargo del empleado")]
        public string CargoEmpleado { get; set; }
     
        [Column("usuario_id")]
        [ForeignKey("ApplicationUser")]
        [Required]
        [Display(Name = "Codigo del Empleado")]
        public string UsuarioId { get; set; }

        
        public ICollection<Venta>? Ventas { get; set; }

        //Variables de las relaciones de otros a empleado
        public ApplicationUser? ApplicationUser { get; set; }
    }
}
