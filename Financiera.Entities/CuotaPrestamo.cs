using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Financiera.Entities
{
    public class CuotaPrestamo
    {
        public int PrestamoID { get; set; }
        public int NumeroCuota { get; set; }
        public decimal Importe { get; set; }
        public decimal ImporteInteres { get; set; }
        public DateTime FechaPago { get; set; }
        public string Estado { get; set; } = string.Empty;
    }
}