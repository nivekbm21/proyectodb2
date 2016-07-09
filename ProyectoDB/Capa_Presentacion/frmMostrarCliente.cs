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
    public partial class frmMostrarCliente : Form
    {
        public frmMostrarCliente()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void frmMostrarCliente_Load(object sender, EventArgs e)
        {
            this.datausuario.DataSource = CNUSUARIO.MostrarCliente();
        }

        private void btn_Insertar_Click(object sender, EventArgs e)
        {
            Creacion_Cliente frm = new Creacion_Cliente();
            frm.Show();
        }

        private void btn_Actualizar_Click(object sender, EventArgs e)
        {
            Update_Cliente frm = new Update_Cliente();
            frm.Show();
        }
    }
}
