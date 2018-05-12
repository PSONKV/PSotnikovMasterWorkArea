using System;
using System.Threading.Tasks;
using PSotnikov.Model;

namespace PSotnikov.Data.Model
{
    public interface IPSotnikovDataManager
    {
        /// <summary>
        /// Asynchronously gets application user by username (login)
        /// </summary>
        /// <param name="username">Username</param>
        /// <returns>User</returns>
        Task<ApplicationUser> GetUser(string username);






    }
}