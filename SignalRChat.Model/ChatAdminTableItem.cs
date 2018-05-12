using System;

namespace SignalRChat.Model
{
    /// <summary>
    /// Represents item for admin overview table
    /// </summary>
    public class ChatAdminTableItem
    {
        public string UserName { get; set; }

        public string Email { get; set; }

        public string UserCity { get; set; }

        public DateTime LastMessageDT { get; set; }

        public string IsConnected { get; set; }

        public string IPaddress { get; set; }

        public int NumMessagesToday { get; set; } = 0;

        public int NumMessagesPerDayPerCity { get; set; } = 0;
    }
}