using System;

using System.ComponentModel.DataAnnotations;

namespace PSotnikovMasterWorkArea.Models
{
    public class ChatMessage
    {
            [Key]
            public Guid MessageID { get; set; }
            [Required]
            public System.DateTime MessageDateTime { get; set; }
            [Required]
            public string MessageAuthor { get; set; }
            public string MessageText { get; set; }
            public string AuthorCity { get; set; }
            public string MessageIP { get; set; }
    }
}