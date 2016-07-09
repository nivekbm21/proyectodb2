namespace Capa_Presentacion
{
    partial class Update_Cliente
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
            this.txt_Estado = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_Observacion = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_Cedula = new System.Windows.Forms.TextBox();
            this.Cedula_Usurio = new System.Windows.Forms.Label();
            this.btn_Insertar = new System.Windows.Forms.Button();
            this.btn_cancelar = new System.Windows.Forms.Button();
            this.cbx_tipoCliente = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // txt_Estado
            // 
            this.txt_Estado.Location = new System.Drawing.Point(107, 200);
            this.txt_Estado.Name = "txt_Estado";
            this.txt_Estado.Size = new System.Drawing.Size(180, 20);
            this.txt_Estado.TabIndex = 21;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(23, 200);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(43, 13);
            this.label3.TabIndex = 20;
            this.label3.Text = "Estado:";
            // 
            // txt_Observacion
            // 
            this.txt_Observacion.Location = new System.Drawing.Point(107, 142);
            this.txt_Observacion.Name = "txt_Observacion";
            this.txt_Observacion.Size = new System.Drawing.Size(180, 20);
            this.txt_Observacion.TabIndex = 19;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 142);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 13);
            this.label2.TabIndex = 18;
            this.label2.Text = "Observaciones:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 83);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Tipo Cliente:";
            // 
            // txt_Cedula
            // 
            this.txt_Cedula.Location = new System.Drawing.Point(107, 24);
            this.txt_Cedula.Name = "txt_Cedula";
            this.txt_Cedula.Size = new System.Drawing.Size(180, 20);
            this.txt_Cedula.TabIndex = 15;
            // 
            // Cedula_Usurio
            // 
            this.Cedula_Usurio.AutoSize = true;
            this.Cedula_Usurio.Location = new System.Drawing.Point(23, 24);
            this.Cedula_Usurio.Name = "Cedula_Usurio";
            this.Cedula_Usurio.Size = new System.Drawing.Size(43, 13);
            this.Cedula_Usurio.TabIndex = 14;
            this.Cedula_Usurio.Text = "Cedula:";
            // 
            // btn_Insertar
            // 
            this.btn_Insertar.Location = new System.Drawing.Point(107, 253);
            this.btn_Insertar.Name = "btn_Insertar";
            this.btn_Insertar.Size = new System.Drawing.Size(75, 23);
            this.btn_Insertar.TabIndex = 24;
            this.btn_Insertar.Text = "Insertar";
            this.btn_Insertar.UseVisualStyleBackColor = true;
            // 
            // btn_cancelar
            // 
            this.btn_cancelar.Location = new System.Drawing.Point(202, 253);
            this.btn_cancelar.Name = "btn_cancelar";
            this.btn_cancelar.Size = new System.Drawing.Size(75, 23);
            this.btn_cancelar.TabIndex = 23;
            this.btn_cancelar.Text = "Cancelar";
            this.btn_cancelar.UseVisualStyleBackColor = true;
            this.btn_cancelar.Click += new System.EventHandler(this.btn_cancelar_Click);
            // 
            // cbx_tipoCliente
            // 
            this.cbx_tipoCliente.FormattingEnabled = true;
            this.cbx_tipoCliente.Location = new System.Drawing.Point(107, 83);
            this.cbx_tipoCliente.Name = "cbx_tipoCliente";
            this.cbx_tipoCliente.Size = new System.Drawing.Size(180, 21);
            this.cbx_tipoCliente.TabIndex = 25;
            // 
            // Update_Cliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(380, 320);
            this.Controls.Add(this.cbx_tipoCliente);
            this.Controls.Add(this.btn_Insertar);
            this.Controls.Add(this.btn_cancelar);
            this.Controls.Add(this.txt_Estado);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txt_Observacion);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_Cedula);
            this.Controls.Add(this.Cedula_Usurio);
            this.Name = "Update_Cliente";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Update_Cliente";
            this.Load += new System.EventHandler(this.Update_Cliente_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_Estado;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_Observacion;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_Cedula;
        private System.Windows.Forms.Label Cedula_Usurio;
        private System.Windows.Forms.Button btn_Insertar;
        private System.Windows.Forms.Button btn_cancelar;
        private System.Windows.Forms.ComboBox cbx_tipoCliente;
    }
}