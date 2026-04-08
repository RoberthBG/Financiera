using Financiera.Data.Infrastructure;
using Financiera.Data.Repositories;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Financiera.BusinessLogic
{
    public static class InyectorDependencias
    {
        public static void Inyeccion(this IServiceCollection services)
        {
            services.AddScoped<ICliente, ClienteRepositorio>();
            services.AddScoped<ITipoCliente, TipoClienteRepositorio>();
            services.AddScoped<IPrestamo, PrestamoRepositorio>();
            services.AddScoped<ITipoPrestamo, TipoPrestamoRepositorio>();
            services.AddScoped<PrestamoServices>();
        }
    }
}