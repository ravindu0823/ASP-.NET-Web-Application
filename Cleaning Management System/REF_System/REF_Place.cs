using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace REF_System
{
    public class REF_Place
    {
        public int ID { get; set; }
        public string PLACENAME { get; set; }
        public string SITUATION { get; set; }
        public string IMAGEPATH { get; set; }
        public float LATITUDE { get; set; }
        public float LONGITUDE { get; set; }
        public int STATUS { get; set; }
        public int ADDEDBY { get; set; }
    }
}
