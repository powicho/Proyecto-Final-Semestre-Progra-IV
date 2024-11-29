using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Comprobación.Models
{
    public class Cliente
    {
        [Key]
        [Column("cliente_id")]
        [Display(Name = "Id del cliente")]
        public int IdCliente { get; set; }

        [Column("nit")]
        [StringLength(20, ErrorMessage = "No mayor de 20 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")] [Display(Name = "Nit del cliente")]
        public string NitCliente { get; set; }
       

        [Column("nombre")]
        [StringLength(50, ErrorMessage = "No mayor a 50 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Nombre del cliente")]
        public string NombreCliente { get; set; }

        [Column("apellido")]
        [StringLength(50, ErrorMessage = "No mayor a 50 caracteres")]
        [Required(ErrorMessage = "No puede estar vacio")]
        [Display(Name = "Apellido del cliente")]
        public string ApellidoCliente { get; set; }

        [Column("direccion")]
        [StringLength(200, ErrorMessage = "No mayor a 200 caracteres")]
        [Display(Name = "Direccion del cliente")]
        public string? DireccionCliente { get; set; }

        [Column("telefono")]
        [StringLength(20, ErrorMessage = "No mayor de 20 caracteres")]
        [Display(Name = "Telefono del cliente")]
        public string? TelefonoCliente { get; set; }


        public ICollection<Venta>? Ventas { get; set; }
    }
}
