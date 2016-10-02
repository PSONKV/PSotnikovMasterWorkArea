using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PSotnikovMasterWorkArea.Models
{
    public class Case
    {
       [Key]
       public int ID { get; set; }
       public string CaseName { get; set; }
       public string CaseDescription { get; set; }
       public DateTime CreationDT { get; set; }
    }
}
