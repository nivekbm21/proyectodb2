using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Capa_Datos;

namespace Capa_Negocio
{
   public class CNUSUARIO
    {

        //Método de mostrar  que llama  al método mostrar de la clase DUsuario de Datos

        public static DataTable Mostrar()
        {
            return new CDUsuario().MostrarUsuario();
        }


        //Método de mostrar  que llama  al método mostrar Clietes

        public static DataTable MostrarCliente()
        {
            return new CDUsuario().MostrarCliente();
        }

        //Método de mostrar  que llama  al método mostrar producto

        public static DataTable MostrarProducto()
        {
            return new CDUsuario().MostrarProducto();
        }

        //Método de mostrar  que llama  al método mostrar Factura

        public static DataTable MostrarFactura()
        {
            return new CDUsuario().MostrarFactura();
        }




        //Metodo de login
        public static DataTable Acceso(int cedulausuario, string usuariocontrasena)
        {
            CDUsuario Obj = new CDUsuario();
            Obj.Cedula = cedulausuario;
            Obj.Contrasena = usuariocontrasena;
            return Obj.Acceso(Obj);
        }
    }
}
