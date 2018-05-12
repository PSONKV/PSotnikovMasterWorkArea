using System;
using System.ComponentModel.DataAnnotations;

namespace SignalRChat.Model
{
    /// <summary>
    /// Represents chat message object
    /// </summary>
    public class ChatMessage
    {
        [Key]
        public Guid MessageID { get; set; }

        [Required]
        public DateTime MessageDateTime { get; set; }

        [Required]
        public string MessageAuthor { get; set; }

        public string MessageText { get; set; }

        public string AuthorCity { get; set; }

        public string MessageIP { get; set; }
    }
}