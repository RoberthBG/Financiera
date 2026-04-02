using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Financiera.Entities
{
    public class Prestamo
    {
        public int ID { get; set; }
        public DateTime Fecha { get; set; }
        public DateTime FechaDeposito { get; set; }
        public int ClienteID { get; set; }
        public int TipoPrestamoID { get; set; }
        public string Moneda { get; set; }
        public decimal Importe { get; set; }
        public int Plazo { get; set; }
        public decimal Tasa { get; set; }
        public string Estado { get; set; }

        public Prestamo()
        {
            Fecha = DateTime.Now;
            FechaDeposito = DateTime.Now.AddDays(7);
            Estado = "P";
            Moneda = "PEN";
        }
    }
}