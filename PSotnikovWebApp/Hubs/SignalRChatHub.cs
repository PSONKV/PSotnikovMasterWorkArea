/*
 * 
using System;
using System.Web;
using System.Linq;
using System.Collections.Generic;
//using Microsoft.AspNet.SignalR;
using PSotnikovMasterWorkArea.Models;

namespace PSotnikovMasterWorkArea.Hubs
{
    public class SignalRChatHub : Hub
    {

        // Detects userIP, sets user as online and saves them into database
        public void Connect(string userName)
        {
            ApplicationUser user;
            using (ApplicationDbContext dc = new ApplicationDbContext())
            {
                user = (from u in dc.Users
                        where u.UserName == userName
                        select u).First();
            }
            user.IsConnected = "online";
            user.UserIP = HttpContext.Current.Request.UserHostAddress;
            if (user.UserIP == "::1") { user.UserIP = "127.0.0.1"; }
            using (ApplicationDbContext an_dc = new ApplicationDbContext())
            {
                an_dc.Entry(user).State = System.Data.Entity.EntityState.Modified;
                an_dc.SaveChanges();
            }
            UpdateUsers();
        }

        // Sets user offline, detects ip, and saves them into database
        public void Disconnect(string userName)
        {
            ApplicationUser user;
            using (ApplicationDbContext dc = new ApplicationDbContext())
            {
                user = (from u in dc.Users
                        where u.UserName == userName
                        select u).First();
            }
            user.IsConnected = "offline";
            user.UserIP = HttpContext.Current.Request.UserHostAddress;
            if (user.UserIP == "::1") { user.UserIP = "127.0.0.1"; }
            using (ApplicationDbContext an_dc = new ApplicationDbContext())
            {
                an_dc.Entry(user).State = System.Data.Entity.EntityState.Modified;
                an_dc.SaveChanges();
            }
            UpdateUsers();
        }

        // Calls to save message and broadcasts message
        public void SendMessage(string userName, string message)
        {
            using (ApplicationDbContext dc = new ApplicationDbContext())
            {

                DateTime msg_dt = DateTime.Now;
                string messageCity = (from u in dc.Users
                                      where u.UserName == userName
                                      select u).First().UserCity;
                string messageIP = HttpContext.Current.Request.UserHostAddress;
                if (messageIP == "::1") { messageIP = "127.0.0.1"; }
                // Save to database, to ChatMessages table
                SaveMessage(msg_dt, message, userName, messageCity, messageIP);

                // Broadcast message 
                Clients.All.AddMessage(msg_dt.ToString(), userName, message);
            }
            UpdateUsers();
        }

        // Get full list of users from database and broadcast it
        public void UpdateUsers()
        {
            using (ApplicationDbContext dc = new ApplicationDbContext())
            {
                var UsersList = dc.Users.ToList();
                var sortedUsersList = UsersList.OrderBy(u => u.UserName);
                Clients.All.UpdateUsers(sortedUsersList);
            }
        }

        // Saves message into database
        private void SaveMessage(DateTime dt, string msg, string userName, string msgCity, string msgIP)
        {
            using (ApplicationDbContext dc = new ApplicationDbContext())
            {
                var chatmsg = new ChatMessage
                {
                    MessageDateTime = dt,
                    MessageText = msg,
                    MessageAuthor = userName,
                    MessageCity = msgCity,
                    MessageIP = msgIP
                };
                dc.ChatMessages.Add(chatmsg);
                dc.SaveChanges();
            }
        }

    }
}

*/