using System.Configuration;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using PSotnikov.Model;
using SignalRChat.Model;

namespace PSotnikov.Data.MSSQL
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
            Database.EnsureCreated();
        }

        // Case studies
        public DbSet<Case> Cases { get; set; }

        // Chat messages
        public DbSet<ChatMessage> ChatMessages { get; set; }

        /*
        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=PSOTNIKOV;Database=Psotnikov_SQLdb;Trusted_Connection=True;");
        }
        */

        // P.Sotnikov, 29.09.2016: In case of a need to override the default behavior of EF
        // when database tables are created/updated, for example, by specifying singular table names in the DbContext

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);

            //modelBuilder.Entity<Case>().ToTable("Case");
            //modelBuilder.Entity<ChatMessage>().ToTable("ChatMessage");
        }
    }
}