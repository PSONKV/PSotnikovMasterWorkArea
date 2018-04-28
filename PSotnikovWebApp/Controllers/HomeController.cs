using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using PSotnikovMasterWorkArea.Data;
using PSotnikovMasterWorkArea.Models;
using PSotnikovMasterWorkArea.Models.CaseSignalRChat;
using Microsoft.EntityFrameworkCore;

namespace PSotnikovMasterWorkArea.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;

        public HomeController(ApplicationDbContext context)
        {
            _context = context;
        }

        [AllowAnonymous]
        public IActionResult Index()
        {
            return View();
        }

        [AllowAnonymous]
        public async Task<IActionResult> Cases()
        {
            return View(await _context.Cases.ToListAsync());
        }

        [AllowAnonymous]
        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        [AllowAnonymous]
        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        [AllowAnonymous]
        public IActionResult Error()
        {
            return View();
        }


        [Authorize(Roles = "User, Admin")]
        public IActionResult SignalRChat()
        {

            // Preparing Chat Admin Table
            List<ChatAdminTableItem> admTbl = new List<ChatAdminTableItem>();
            /*
            using (ApplicationDbContext dc = new ApplicationDbContext())
            {
                foreach (var user in dc.Users)
                {
                    var item = new ChatAdminTableItem();
                    item.UserName = user.UserName;
                    item.Email = user.Email;
                    item.UserCity = user.UserCity;
                    item.IsConnected = user.IsConnected;
                    item.IPaddress = user.UserIP;
                    admTbl.Add(item);
                }

                List<ChatMessage> CMsgList = dc.ChatMessages.ToList();
                foreach (var item in admTbl)
                {
                    item.LastMessageDT = (from m in CMsgList
                                          where m.MessageAuthor == item.UserName
                                          select m.MessageDateTime).Max();

                    item.NumMessagesToday = (from m in CMsgList
                                             where (m.MessageAuthor == item.UserName &&
                                                     ((m.MessageDateTime.ToShortDateString()) == (DateTime.Now.ToShortDateString())))
                                             select m).Count();

                    // finds messages number per day for specific city
                    var q1 = CMsgList.Where(arg => arg.MessageCity == item.UserCity)
                                     .Select(m => new { msgDate = m.MessageDateTime.ToShortDateString() })
                                     .GroupBy(d => d.msgDate)
                                     .Select(group => new { Metric = group.Key, msgsNumber = group.Count() });
                    // calculates average messages number
                    if (q1.Count() != 0) { item.NumMessagesPerDayPerCity = q1.Sum(a => a.msgsNumber) / q1.Count(); }
                }
            };

            return View(admTbl);
            */

            return View(admTbl);
        }


        [AllowAnonymous]
        public IActionResult ComplexModel()
        {
            return View();
        }

        [AllowAnonymous]
        public IActionResult SQLqueries()
        {
            return View();
        }

        [Authorize(Roles = "User, Admin")]
        public IActionResult NumPad()
        {
            return View();
        }
    }
}