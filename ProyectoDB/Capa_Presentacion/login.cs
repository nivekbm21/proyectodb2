using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Capa_Negocio;


namespace Capa_Presentacion
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }

        private void login_Load(object sender, EventArgs e)
        {

        }

        private void btn_ingresar_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtlogin.Text))
            {
                MessageBox.Show("Por favor digite el Login", "Validar datos", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtlogin.Focus();
                return;
            }
            if (String.IsNullOrEmpty(txtclave.Text))
            {
                MessageBox.Show("Por favor digite la Contraseña", "Validar datos", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtclave.Focus();
                return;
            }
          
            DataTable Datos = CNUSUARIO.Acceso(Convert.ToInt32(this.txtlogin.Text), this.txtclave.Text.Trim().ToUpper());
            //Evaluar si existe el Usuario
            if (Datos.Rows.Count == 0)
            {
                MessageBox.Show("NO tiene acceso al sistema", "Sistema", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtlogin.Clear();
                txtclave.Clear();

            }
            else
            {
                frmPrincipal1 frm = new frmPrincipal1();
               frm.Show();
                this.Hide();

            }
        }

        private void btn_salir_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
