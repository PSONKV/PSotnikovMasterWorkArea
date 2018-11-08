using System;
using System.ComponentModel.DataAnnotations;

namespace PSotnikov.Model
{
    /// <summary>
    /// Represents a case study
    /// </summary>
    public class Case
    {
       [Key]
       public Guid ID { get; set; }

       [Required]
       public string CaseName { get; set; }

       // Description of the case
       public string CaseDescription { get; set; }

       // DateTime when case was added into examples set
       public DateTime CreationDT { get; set; }
    }
}
