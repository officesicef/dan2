//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Hakaton2018.DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class Bolest
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Bolest()
        {
            this.Instanca_Bolesti = new HashSet<Instanca_Bolesti>();
            this.Period_Javljanja = new HashSet<Period_Javljanja>();
        }
    
        public int Id { get; set; }
        public string Ime { get; set; }
        public string Latinski_Naziv { get; set; }
        public bool Zarazna { get; set; }
        public int Trajanje { get; set; }
        public bool Zastita { get; set; }
        public string Tip { get; set; }
        public bool Akutna { get; set; }
        public int Prioritet { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Instanca_Bolesti> Instanca_Bolesti { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Period_Javljanja> Period_Javljanja { get; set; }
    }
}
