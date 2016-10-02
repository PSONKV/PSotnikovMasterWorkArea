using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;

namespace PSotnikovMasterWorkArea.Models
{
    public class ChatMessage
    {
            [Key]
            public int MessageID { get; set; }
            [Required]
            public System.DateTime MessageDateTime { get; set; }
            [Required]
            public string MessageAuthor { get; set; }
            public string MessageText { get; set; }
            public string MessageCity { get; set; }
            public string MessageIP { get; set; }
    }
}
