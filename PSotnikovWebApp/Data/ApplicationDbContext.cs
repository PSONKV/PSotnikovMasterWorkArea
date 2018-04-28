using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using PSotnikovMasterWorkArea.Models;
using System.Configuration;

namespace PSotnikovMasterWorkArea.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
            Database.EnsureCreated();
        }

        public DbSet<Case> Cases { get; set; }
        public DbSet<ChatMessage> ChatMessages { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=PSOTNIKOV;Database=Psotnikov_SQLdb;Trusted_Connection=True;");
        }

        /* P.Sotnikov, 29.09.2016: In case of a need to override the default behavior of EF
        * when database tables are created/updated, for example, by specifying 
 * singular table names in the DbContext
 * 
 *      protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(builder);
    // Customize the ASP.NET Identity model and override the defaults if needed.
    // For example, you can rename the ASP.NET Identity table names and more.
    // Add your customizations after calling base.OnModelCreating(builder);

    modelBuilder.Entity<Case>().ToTable("Case");
    modelBuilder.Entity<ChatMessage>().ToTable("ChatMessage");
        }
        */

    }
}