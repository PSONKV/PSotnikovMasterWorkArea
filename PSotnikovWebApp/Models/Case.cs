using System;
using System.ComponentModel.DataAnnotations;

namespace PSotnikovMasterWorkArea.Models
{
    public class Case
    {
       [Key]
       public Guid ID { get; set; }

       [Required]
       public string CaseName { get; set; }

       public string CaseDescription { get; set; }

       public DateTime CreationDT { get; set; }
    }
}