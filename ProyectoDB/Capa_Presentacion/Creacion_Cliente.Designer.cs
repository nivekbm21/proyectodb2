namespace Capa_Presentacion
{
    partial class Creacion_Cliente
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
            this.txt_Cedula = new System.Windows.Forms.TextBox();
            this.Cedula_Usurio = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_Observacion = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_Estado = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btn_cancelar = new System.Windows.Forms.Button();
            this.cbx_TipoCliente = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // txt_Cedula
            // 
            this.txt_Cedula.Location = new System.Drawing.Point(96, 34);
            this.txt_Cedula.Name = "txt_Cedula";
            this.txt_Cedula.Size = new System.Drawing.Size(180, 20);
            this.txt_Cedula.TabIndex = 7;
            // 
            // Cedula_Usurio
            // 
            this.Cedula_Usurio.AutoSize = true;
            this.Cedula_Usurio.Location = new System.Drawing.Point(12, 34);
            this.Cedula_Usurio.Name = "Cedula_Usurio";
            this.Cedula_Usurio.Size = new System.Drawing.Size(43, 13);
            this.Cedula_Usurio.TabIndex = 6;
            this.Cedula_Usurio.Text = "Cedula:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 93);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "Tipo Cliente:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 152);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 13);
            this.label2.TabIndex = 10;
            this.label2.Text = "Observaciones:";
            // 
            // txt_Observacion
            // 
            this.txt_Observacion.Location = new System.Drawing.Point(96, 152);
            this.txt_Observacion.Name = "txt_Observacion";
            this.txt_Observacion.Size = new System.Drawing.Size(180, 20);
            this.txt_Observacion.TabIndex = 11;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 210);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(43, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "Estado:";
            // 
            // txt_Estado
            // 
            this.txt_Estado.Location = new System.Drawing.Point(96, 210);
            this.txt_Estado.Name = "txt_Estado";
            this.txt_Estado.Size = new System.Drawing.Size(180, 20);
            this.txt_Estado.TabIndex = 13;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(96, 256);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 16;
            this.button1.Text = "Insertar";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // btn_cancelar
            // 
            this.btn_cancelar.Location = new System.Drawing.Point(187, 256);
            this.btn_cancelar.Name = "btn_cancelar";
            this.btn_cancelar.Size = new System.Drawing.Size(75, 23);
            this.btn_cancelar.TabIndex = 15;
            this.btn_cancelar.Text = "Cancelar";
            this.btn_cancelar.UseVisualStyleBackColor = true;
            this.btn_cancelar.Click += new System.EventHandler(this.btn_cancelar_Click);
            // 
            // cbx_TipoCliente
            // 
            this.cbx_TipoCliente.FormattingEnabled = true;
            this.cbx_TipoCliente.Location = new System.Drawing.Point(96, 93);
            this.cbx_TipoCliente.Name = "cbx_TipoCliente";
            this.cbx_TipoCliente.Size = new System.Drawing.Size(180, 21);
            this.cbx_TipoCliente.TabIndex = 18;
            // 
            // Creacion_Cliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(351, 321);
            this.Controls.Add(this.cbx_TipoCliente);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btn_cancelar);
            this.Controls.Add(this.txt_Estado);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txt_Observacion);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_Cedula);
            this.Controls.Add(this.Cedula_Usurio);
            this.Name = "Creacion_Cliente";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Creacion_Cliente";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_Cedula;
        private System.Windows.Forms.Label Cedula_Usurio;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_Observacion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_Estado;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btn_cancelar;
        private System.Windows.Forms.ComboBox cbx_TipoCliente;
    }
}