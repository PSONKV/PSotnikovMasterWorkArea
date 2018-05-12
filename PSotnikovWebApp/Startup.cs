using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using Autofac;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using PSotnikovMasterWorkArea.Data;
using PSotnikovMasterWorkArea.Models;
using PSotnikovMasterWorkArea.Services;
using PSotnikov.Data.Model;
using PSotnikov.Data.MSSQL;
using PSotnikov.Model;

using LogLevel = Microsoft.Extensions.Logging.LogLevel;

namespace PSotnikovMasterWorkArea
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            /*
            var builder = new Microsoft.Extensions.Configuration.ConfigurationBuilder()
                .SetBasePath(env.ContentRootPath)

            if (env.IsDevelopment())
            {
                // For more details on using the user secret store see http://go.microsoft.com/fwlink/?LinkID=532709
                builder.AddUserSecrets();
            }

            builder.AddEnvironmentVariables();
            Configuration = builder.Build();
            */

            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDataProtection()
                .SetApplicationName(ConfigurationManager.AppSettings["ApplicationName"] ?? "PSotnikovWebApp");
            //.PersistKeysToRedis(GetDataProtectionRedisConnection(), "AuthenticationService-DataProtection-Keys");

            services.AddAntiforgery(options =>
            {
                options.SuppressXFrameOptionsHeader = true;
            });

            // Add EF services to the services container.
            services.AddEntityFrameworkSqlServer()
              .AddDbContext<ApplicationDbContext>();
               //P.Sotnikov, 29.09.2016: other SQL contexts can be added here

            // Adding databases
            services.AddDbContext<ApplicationDbContext>(options =>
            {
                options.UseSqlServer(Configuration.GetConnectionString("PSotnikov_SQLdb"));
            });

            services.AddIdentity<ApplicationUser, IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>();

            services.AddMvc();
            //services.AddSignalR();

            // Adding application communication services
            services.AddTransient<IEmailSender, AuthMessageSender>();
            services.AddTransient<ISmsSender, AuthMessageSender>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole(Configuration.GetSection("Logging"));
            loggerFactory.AddDebug();

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
                app.UseBrowserLink();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseStaticFiles();

            app.UseAuthentication();

            // Add external authentication middleware below. To configure them please see http://go.microsoft.com/fwlink/?LinkID=532715

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });

            //app.UseSignalR();
        }

        // ConfigureContainer is where you can register things directly
        // with Autofac. This runs after ConfigureServices so the things
        // here will override registrations made in ConfigureServices.
        // Don't build the container; that gets done for you.
        public void ConfigureContainer(ContainerBuilder builder)
        {
            builder
                .RegisterType<PSotnikovMSSQLDataManager>()
                .As<IPSotnikovDataManager>();

            /*
            ILogService logService = new LogService();
            ObjectFactoryProvider.Instance.Register<ILogService>(logService);
            builder
                .RegisterInstance(logService)
                .As<ILogService>()
                .SingleInstance();

            builder
                .RegisterType<PerformanceCounterMetricManager>()
                .As<IMetricManager>()
                .WithParameter("categoryName", "AuthenticationService")
                .SingleInstance();

            builder
                .RegisterType<UserManagementClient>()
                .As<IUserManagementManager>()
                .SingleInstance();

            builder
                .RegisterType<ApplicationConfigurationServiceClient>()
                .As<IApplicationConfigurationService>()
                .WithParameter(new NamedParameter("endpointName", "UserManagement.ACS"))
                .SingleInstance();

            builder
                .RegisterType<ZoneClient>()
                .As<IZoneManager>()
                .SingleInstance();

            builder
                .RegisterType<NotificationClient>()
                .As<INotificationManager>()
                .SingleInstance();

            builder
                .RegisterType<ClientValidator>()
                .As<IClientValidator>()
                .SingleInstance();

            builder
                .RegisterType<PasswordPolicyHelper>()
                .AsSelf()
                .SingleInstance();
            */
        }
    }
}