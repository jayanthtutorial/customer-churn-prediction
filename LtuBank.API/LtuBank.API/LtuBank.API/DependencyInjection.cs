
using LtuBank.Business;
using LtuBank.Business.Contract;
using LtuBank.DataAccess;
using LtuBank.DataAccess.Contract;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LtuBank.API
{
    
    public static class MyConfigServiceCollectionExtensions
    {
        public static IServiceCollection AddConfig(
             this IServiceCollection services, IConfiguration config)
        {
            return services;
        }

        public static IServiceCollection AddMyDependencyGroup(
             this IServiceCollection services)
        {
			services.AddSingleton<IUsersRepository, UsersRepository>();
            services.AddSingleton<IUsersBusiness, UsersBusiness>();
            
            services.AddSingleton<IServiceProvider, ServiceProvider>();

            return services;
        }
    }
}
