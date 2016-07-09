namespace Capa_Presentacion
{
    partial class Update_Usuario
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
            this.cbx_Puesto = new System.Windows.Forms.ComboBox();
            this.cbx_Estado = new System.Windows.Forms.ComboBox();
            this.cbx_Acceso = new System.Windows.Forms.ComboBox();
            this.txt_Contraseña = new System.Windows.Forms.TextBox();
            this.txt_Cedula = new System.Windows.Forms.TextBox();
            this.Estado_Usuario = new System.Windows.Forms.Label();
            this.Puesto_Usuario = new System.Windows.Forms.Label();
            this.Acceso_Usuario = new System.Windows.Forms.Label();
            this.Contraseña_Usuario = new System.Windows.Forms.Label();
            this.Cedula_Usurio = new System.Windows.Forms.Label();
            this.btn_Insertar = new System.Windows.Forms.Button();
            this.btn_cancelar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // cbx_Puesto
            // 
            this.cbx_Puesto.FormattingEnabled = true;
            this.cbx_Puesto.Location = new System.Drawing.Point(94, 159);
            this.cbx_Puesto.Name = "cbx_Puesto";
            this.cbx_Puesto.Size = new System.Drawing.Size(180, 21);
            this.cbx_Puesto.TabIndex = 19;
            // 
            // cbx_Estado
            // 
            this.cbx_Estado.FormattingEnabled = true;
            this.cbx_Estado.Location = new System.Drawing.Point(94, 201);
            this.cbx_Estado.Name = "cbx_Estado";
            this.cbx_Estado.Size = new System.Drawing.Size(180, 21);
            this.cbx_Estado.TabIndex = 18;
            // 
            // cbx_Acceso
            // 
            this.cbx_Acceso.FormattingEnabled = true;
            this.cbx_Acceso.Location = new System.Drawing.Point(94, 114);
            this.cbx_Acceso.Name = "cbx_Acceso";
            this.cbx_Acceso.Size = new System.Drawing.Size(180, 21);
            this.cbx_Acceso.TabIndex = 17;
            // 
            // txt_Contraseña
            // 
            this.txt_Contraseña.Location = new System.Drawing.Point(94, 75);
            this.txt_Contraseña.Name = "txt_Contraseña";
            this.txt_Contraseña.Size = new System.Drawing.Size(180, 20);
            this.txt_Contraseña.TabIndex = 16;
            // 
            // txt_Cedula
            // 
            this.txt_Cedula.Location = new System.Drawing.Point(94, 39);
            this.txt_Cedula.Name = "txt_Cedula";
            this.txt_Cedula.Size = new System.Drawing.Size(180, 20);
            this.txt_Cedula.TabIndex = 15;
            // 
            // Estado_Usuario
            // 
            this.Estado_Usuario.AutoSize = true;
            this.Estado_Usuario.Location = new System.Drawing.Point(11, 205);
            this.Estado_Usuario.Name = "Estado_Usuario";
            this.Estado_Usuario.Size = new System.Drawing.Size(43, 13);
            this.Estado_Usuario.TabIndex = 14;
            this.Estado_Usuario.Text = "Estado:";
            // 
            // Puesto_Usuario
            // 
            this.Puesto_Usuario.AutoSize = true;
            this.Puesto_Usuario.Location = new System.Drawing.Point(11, 163);
            this.Puesto_Usuario.Name = "Puesto_Usuario";
            this.Puesto_Usuario.Size = new System.Drawing.Size(43, 13);
            this.Puesto_Usuario.TabIndex = 13;
            this.Puesto_Usuario.Text = "Puesto:";
            // 
            // Acceso_Usuario
            // 
            this.Acceso_Usuario.AutoSize = true;
            this.Acceso_Usuario.Location = new System.Drawing.Point(11, 126);
            this.Acceso_Usuario.Name = "Acceso_Usuario";
            this.Acceso_Usuario.Size = new System.Drawing.Size(70, 13);
            this.Acceso_Usuario.TabIndex = 12;
            this.Acceso_Usuario.Text = "Tipo Acceso:";
            // 
            // Contraseña_Usuario
            // 
            this.Contraseña_Usuario.AutoSize = true;
            this.Contraseña_Usuario.Location = new System.Drawing.Point(11, 86);
            this.Contraseña_Usuario.Name = "Contraseña_Usuario";
            this.Contraseña_Usuario.Size = new System.Drawing.Size(64, 13);
            this.Contraseña_Usuario.TabIndex = 11;
            this.Contraseña_Usuario.Text = "Contraseña:";
            // 
            // Cedula_Usurio
            // 
            this.Cedula_Usurio.AutoSize = true;
            this.Cedula_Usurio.Location = new System.Drawing.Point(11, 46);
            this.Cedula_Usurio.Name = "Cedula_Usurio";
            this.Cedula_Usurio.Size = new System.Drawing.Size(43, 13);
            this.Cedula_Usurio.TabIndex = 10;
            this.Cedula_Usurio.Text = "Cedula:";
            // 
            // btn_Insertar
            // 
            this.btn_Insertar.Location = new System.Drawing.Point(94, 237);
            this.btn_Insertar.Name = "btn_Insertar";
            this.btn_Insertar.Size = new System.Drawing.Size(75, 23);
            this.btn_Insertar.TabIndex = 21;
            this.btn_Insertar.Text = "Insertar";
            this.btn_Insertar.UseVisualStyleBackColor = true;
            // 
            // btn_cancelar
            // 
            this.btn_cancelar.Location = new System.Drawing.Point(189, 237);
            this.btn_cancelar.Name = "btn_cancelar";
            this.btn_cancelar.Size = new System.Drawing.Size(75, 23);
            this.btn_cancelar.TabIndex = 20;
            this.btn_cancelar.Text = "Cancelar";
            this.btn_cancelar.UseVisualStyleBackColor = true;
            this.btn_cancelar.Click += new System.EventHandler(this.btn_cancelar_Click);
            // 
            // Update_Usuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(354, 290);
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
            this.Name = "Update_Usuario";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Update_Usuario";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbx_Puesto;
        private System.Windows.Forms.ComboBox cbx_Estado;
        private System.Windows.Forms.ComboBox cbx_Acceso;
        private System.Windows.Forms.TextBox txt_Contraseña;
        private System.Windows.Forms.TextBox txt_Cedula;
        private System.Windows.Forms.Label Estado_Usuario;
        private System.Windows.Forms.Label Puesto_Usuario;
        private System.Windows.Forms.Label Acceso_Usuario;
        private System.Windows.Forms.Label Contraseña_Usuario;
        private System.Windows.Forms.Label Cedula_Usurio;
        private System.Windows.Forms.Button btn_Insertar;
        private System.Windows.Forms.Button btn_cancelar;
    }
}