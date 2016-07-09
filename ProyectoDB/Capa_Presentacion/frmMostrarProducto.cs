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
    public partial class frmMostrarProducto : Form
    {
        public frmMostrarProducto()
        {
            InitializeComponent();
        }

        private void frmMostrarProducto_Load(object sender, EventArgs e)
        {
            this.dataProducto.DataSource = CNUSUARIO.MostrarProducto();
        }

        private void btn_Insertar_Click(object sender, EventArgs e)
        {
            Creacion_Producto frm = new Creacion_Producto();
            frm.Show();
        }

        private void btn_Actualizar_Click(object sender, EventArgs e)
        {
            Update_Producto frm = new Update_Producto();
            frm.Show();
        }
    }
}
