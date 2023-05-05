using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace REF_System
{
    public class Response
    {
        public bool Success { get; set; }
        public string Message { get; set; }
        public DataTable dataTable { get; set; }
        public int id { get; set; }
    }
}
