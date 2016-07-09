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
    public partial class frmMostrarFactura : Form
    {
        public frmMostrarFactura()
        {
            InitializeComponent();
        }

        private void dataFactura_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void frmMostrarFactura_Load(object sender, EventArgs e)
        {
            this.dataFactura.DataSource = CNUSUARIO.MostrarFactura();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            Hide();
        }

        private void btn_Insertar_Click(object sender, EventArgs e)
        {
            Creacion_Factura frm = new Creacion_Factura();
            frm.Show();
        }
    }
}
