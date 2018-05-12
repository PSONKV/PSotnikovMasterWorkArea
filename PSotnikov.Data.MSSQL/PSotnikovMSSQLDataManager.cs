using System;
using System.Linq;
using System.Threading.Tasks;
using PSotnikov.Data.Model;
using PSotnikov.Model;

namespace PSotnikov.Data.MSSQL
{
    /// <summary>
    /// Represents data manager for SQL data
    /// </summary>
    public class PSotnikovMSSQLDataManager : IPSotnikovDataManager
    {
        private readonly ApplicationDbContext _applicationDbContext;

        public PSotnikovMSSQLDataManager(ApplicationDbContext applicationDbContext)
        {
            _applicationDbContext = applicationDbContext;
        }

        /// <inheritdoc />
        public async Task<ApplicationUser> GetUser(string userName)
        {
            ApplicationUser user = null;
            user = _applicationDbContext.Users.FirstOrDefault(u => u.UserName == userName);

            /*
            user = (from u in _applicationDbContext.Users 
                    where u.UserName == userName
                    select u).First();

            */
            
            return user;
        }
    }
}