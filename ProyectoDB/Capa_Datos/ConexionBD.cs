using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Capa_Datos
{
    class ConexionBD
    {
        //public static string Cn = "Data Source=(local); Initial Catalog=Proyecto; Integrated Security=true";

        SqlConnection Cn = new SqlConnection("Data Source=SANCHDIE1; Integrated Security=true; Initial Catalog= Proyecto");
    }
}
