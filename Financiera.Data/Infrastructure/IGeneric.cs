using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Financiera.Data.Infrastructure
{
    public interface IGeneric<Entity> where Entity : class
    {
        List<Entity> Listar();
        Entity ObtenerPorId(int id);
        int Registrar(Entity entity);
        bool Modificar(Entity entity);
        bool Eliminar(int id);
    }
}