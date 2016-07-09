namespace Capa_Presentacion
{
    partial class Creacion_Usuario
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Cedula_Usurio = new System.Windows.Forms.Label();
            this.Contraseña_Usuario = new System.Windows.Forms.Label();
            this.Acceso_Usuario = new System.Windows.Forms.Label();
            this.Puesto_Usuario = new System.Windows.Forms.Label();
            this.Estado_Usuario = new System.Windows.Forms.Label();
            this.txt_Cedula = new System.Windows.Forms.TextBox();
            this.txt_Contraseña = new System.Windows.Forms.TextBox();
            this.cbx_Acceso = new System.Windows.Forms.ComboBox();
            this.cbx_Estado = new System.Windows.Forms.ComboBox();
            this.cbx_Puesto = new System.Windows.Forms.ComboBox();
            this.btn_cancelar = new System.Windows.Forms.Button();
            this.btn_Insertar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Cedula_Usurio
            // 
            this.Cedula_Usurio.AutoSize = true;
            this.Cedula_Usurio.Location = new System.Drawing.Point(31, 45);
            this.Cedula_Usurio.Name = "Cedula_Usurio";
            this.Cedula_Usurio.Size = new System.Drawing.Size(43, 13);
            this.Cedula_Usurio.TabIndex = 0;
            this.Cedula_Usurio.Text = "Cedula:";
            this.Cedula_Usurio.Click += new System.EventHandler(this.label1_Click);
            // 
            // Contraseña_Usuario
            // 
            this.Contraseña_Usuario.AutoSize = true;
            this.Contraseña_Usuario.Location = new System.Drawing.Point(31, 85);
            this.Contraseña_Usuario.Name = "Contraseña_Usuario";
            this.Contraseña_Usuario.Size = new System.Drawing.Size(64, 13);
            this.Contraseña_Usuario.TabIndex = 1;
            this.Contraseña_Usuario.Text = "Contraseña:";
            // 
            // Acceso_Usuario
            // 
            this.Acceso_Usuario.AutoSize = true;
            this.Acceso_Usuario.Location = new System.Drawing.Point(31, 125);
            this.Acceso_Usuario.Name = "Acceso_Usuario";
            this.Acceso_Usuario.Size = new System.Drawing.Size(70, 13);
            this.Acceso_Usuario.TabIndex = 2;
            this.Acceso_Usuario.Text = "Tipo Acceso:";
            // 
            // Puesto_Usuario
            // 
            this.Puesto_Usuario.AutoSize = true;
            this.Puesto_Usuario.Location = new System.Drawing.Point(31, 162);
            this.Puesto_Usuario.Name = "Puesto_Usuario";
            this.Puesto_Usuario.Size = new System.Drawing.Size(43, 13);
            this.Puesto_Usuario.TabIndex = 3;
            this.Puesto_Usuario.Text = "Puesto:";
            // 
            // Estado_Usuario
            // 
            this.Estado_Usuario.AutoSize = true;
            this.Estado_Usuario.Location = new System.Drawing.Point(31, 204);
            this.Estado_Usuario.Name = "Estado_Usuario";
            this.Estado_Usuario.Size = new System.Drawing.Size(43, 13);
            this.Estado_Usuario.TabIndex = 4;
            this.Estado_Usuario.Text = "Estado:";
            // 
            // txt_Cedula
            // 
            this.txt_Cedula.Location = new System.Drawing.Point(114, 38);
            this.txt_Cedula.Name = "txt_Cedula";
            this.txt_Cedula.Size = new System.Drawing.Size(180, 20);
            this.txt_Cedula.TabIndex = 5;
            // 
            // txt_Contraseña
            // 
            this.txt_Contraseña.Location = new System.Drawing.Point(114, 74);
            this.txt_Contraseña.Name = "txt_Contraseña";
            this.txt_Contraseña.Size = new System.Drawing.Size(180, 20);
            this.txt_Contraseña.TabIndex = 6;
            // 
            // cbx_Acceso
            // 
            this.cbx_Acceso.FormattingEnabled = true;
            this.cbx_Acceso.Location = new System.Drawing.Point(114, 113);
            this.cbx_Acceso.Name = "cbx_Acceso";
            this.cbx_Acceso.Size = new System.Drawing.Size(180, 21);
            this.cbx_Acceso.TabIndex = 7;
            // 
            // cbx_Estado
            // 
            this.cbx_Estado.FormattingEnabled = true;
            this.cbx_Estado.Location = new System.Drawing.Point(114, 200);
            this.cbx_Estado.Name = "cbx_Estado";
            this.cbx_Estado.Size = new System.Drawing.Size(180, 21);
            this.cbx_Estado.TabIndex = 8;
            this.cbx_Estado.SelectedIndexChanged += new System.EventHandler(this.comboBox2_SelectedIndexChanged);
            // 
            // cbx_Puesto
            // 
            this.cbx_Puesto.FormattingEnabled = true;
            this.cbx_Puesto.Location = new System.Drawing.Point(114, 158);
            this.cbx_Puesto.Name = "cbx_Puesto";
            this.cbx_Puesto.Size = new System.Drawing.Size(180, 21);
            this.cbx_Puesto.TabIndex = 9;
            // 
            // btn_cancelar
            // 
            this.btn_cancelar.Location = new System.Drawing.Point(209, 256);
            this.btn_cancelar.Name = "btn_cancelar";
            this.btn_cancelar.Size = new System.Drawing.Size(75, 23);
            this.btn_cancelar.TabIndex = 10;
            this.btn_cancelar.Text = "Cancelar";
            this.btn_cancelar.UseVisualStyleBackColor = true;
            this.btn_cancelar.Click += new System.EventHandler(this.btn_cancelar_Click);
            // 
            // btn_Insertar
            // 
            this.btn_Insertar.Location = new System.Drawing.Point(114, 256);
            this.btn_Insertar.Name = "btn_Insertar";
            this.btn_Insertar.Size = new System.Drawing.Size(75, 23);
            this.btn_Insertar.TabIndex = 11;
            this.btn_Insertar.Text = "Insertar";
            this.btn_Insertar.UseVisualStyleBackColor = true;
            // 
            // Creacion_Usuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(381, 315);
            this.Controls.Add(this.btn_Insertar);
            this.Controls.Add(this.btn_cancelar);
            this.Controls.Add(this.cbx_Puesto);
            this.Controls.Add(this.cbx_Estado);
            this.Controls.Add(this.cbx_Acceso);
            this.Controls.Add(this.txt_Contraseña);
            this.Controls.Add(this.txt_Cedula);
            this.Controls.Add(this.Estado_Usuario);
            this.Controls.Add(this.Puesto_Usuario);
            this.Controls.Add(this.Acceso_Usuario);
            this.Controls.Add(this.Contraseña_Usuario);
            this.Controls.Add(this.Cedula_Usurio);
            this.Name = "Creacion_Usuario";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Creacion_Usuario";
            this.Load += new System.EventHandler(this.Creacion_Usuario_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Cedula_Usurio;
        private System.Windows.Forms.Label Contraseña_Usuario;
        private System.Windows.Forms.Label Acceso_Usuario;
        private System.Windows.Forms.Label Puesto_Usuario;
        private System.Windows.Forms.Label Estado_Usuario;
        private System.Windows.Forms.TextBox txt_Cedula;
        private System.Windows.Forms.TextBox txt_Contraseña;
        private System.Windows.Forms.ComboBox cbx_Acceso;
        private System.Windows.Forms.ComboBox cbx_Estado;
        private System.Windows.Forms.ComboBox cbx_Puesto;
        private System.Windows.Forms.Button btn_cancelar;
        private System.Windows.Forms.Button btn_Insertar;
    }
}