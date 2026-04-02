using Financiera.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Financiera.Data.Infrastructure
{
    public interface ICuotaPrestamo
    {
        List<CuotaPrestamo> Listar(int prestamoID);
        bool Modificar(CuotaPrestamo cuota);
    }
}