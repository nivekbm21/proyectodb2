using Capa_Negocio;
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
    public partial class frmMostrarUsuario : Form
    {
        public frmMostrarUsuario()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

         

    }

        private void dataGridView1_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void frmMostrarUsuario_Load(object sender, EventArgs e)
        {
            this.datausuario.DataSource= CNUSUARIO.Mostrar();
            
        }

        private void datausuario_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btn_Insertar_Click(object sender, EventArgs e)
        {
            Creacion_Usuario frm = new Creacion_Usuario();
            frm.Show();
        }

        private void btn_Actualizar_Click(object sender, EventArgs e)
        {
            Update_Usuario frm = new Update_Usuario();
            frm.Show();
        }
    }
}
