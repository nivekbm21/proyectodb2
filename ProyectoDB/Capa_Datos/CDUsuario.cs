using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data; // para trabajar con datos de sql
using System.Data.SqlClient; // para poder enviar comando desde visual a sql

namespace Capa_Datos
{
    public class CDUsuario
    {
        //declaración de variables 

        private int _Cedula;
        private string _Contrasena;

        // variables pero encapsuladas con un get y set

        public int Cedula
        {
            get { return _Cedula; }
            set { _Cedula = value; }
        }

        public string Contrasena {

            get { return _Contrasena; }
            set { _Contrasena = value; }
        }

        // constructor vacio
        public CDUsuario()
        { }

        public CDUsuario (int cedulausuario, string usuariocontrasena)
        {
            this._Cedula = cedulausuario;
            this._Contrasena = usuariocontrasena;
        }

        //Método de mostrar USUARIO
        public DataTable MostrarUsuario()
        {
            DataTable DtResultado = new DataTable("Usuario");
            SqlConnection SqlCon = new SqlConnection();

            try
            {
                SqlCon.ConnectionString = ConexionBD.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spMostrarUsuario";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);
            }
            catch (Exception ex)

            {
                DtResultado = null;
            }
            return DtResultado;
        }

        //Método de mostrar CLIENTE
        public DataTable MostrarCliente()
        {
            DataTable DtResultado = new DataTable("Cliente");
            SqlConnection SqlCon = new SqlConnection();

            try
            {
                SqlCon.ConnectionString = ConexionBD.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spMostrarClientes";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);
            }
            catch (Exception ex)

            {
                DtResultado = null;
            }
            return DtResultado;
        }


        //Método de mostrar Producto
        public DataTable MostrarProducto()
        {
            DataTable DtResultado = new DataTable("Producto");
            SqlConnection SqlCon = new SqlConnection();

            try
            {
                SqlCon.ConnectionString = ConexionBD.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spMostrarProducto";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);
            }
            catch (Exception ex)

            {
                DtResultado = null;
            }
            return DtResultado;
        }

        //Método de mostrar Factura
        public DataTable MostrarFactura()
        {
            DataTable DtResultado = new DataTable("Factura");
            SqlConnection SqlCon = new SqlConnection();

            try
            {
                SqlCon.ConnectionString = ConexionBD.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "spMostrarFactura";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);
            }
            catch (Exception ex)

            {
                DtResultado = null;
            }
            return DtResultado;
        }

        //Método de Login

        public DataTable Acceso(CDUsuario Usuario)
        {
            DataTable DtResultado = new DataTable("Usuario");
            SqlConnection SqlCon = new SqlConnection();
            try
            {
                SqlCon.ConnectionString = ConexionBD.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "splogin";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParLogin = new SqlParameter();
                ParLogin.ParameterName = "@login";
                ParLogin.SqlDbType = SqlDbType.Int;
                ParLogin.Value = Usuario.Cedula;
                SqlCmd.Parameters.Add(ParLogin);

                SqlParameter ParContrasenaUsuario = new SqlParameter();
                ParContrasenaUsuario.ParameterName = "@contrasena";
                ParContrasenaUsuario.SqlDbType = SqlDbType.VarChar;
                ParContrasenaUsuario.Size = 500;
                ParContrasenaUsuario.Value = Usuario.Contrasena;
                SqlCmd.Parameters.Add(ParContrasenaUsuario);

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

            }
            catch (Exception ex)
            {
                DtResultado = null;
            }
            return DtResultado;

        }
    }
}
