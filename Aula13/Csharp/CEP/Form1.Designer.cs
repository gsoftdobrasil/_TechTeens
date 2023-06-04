namespace CEP
{
    partial class frmMenu
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            panel1 = new Panel();
            label6 = new Label();
            btnEnviar = new Button();
            edtCEP = new TextBox();
            tabMenu = new TabControl();
            tabPage1 = new TabPage();
            label5 = new Label();
            edtIBGE = new TextBox();
            label4 = new Label();
            edtUF = new TextBox();
            label3 = new Label();
            edtCidade = new TextBox();
            label2 = new Label();
            edtBairro = new TextBox();
            label1 = new Label();
            edtEndereco = new TextBox();
            tabPage2 = new TabPage();
            txtJSON = new TextBox();
            button1 = new Button();
            panel1.SuspendLayout();
            tabMenu.SuspendLayout();
            tabPage1.SuspendLayout();
            tabPage2.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = SystemColors.ControlDark;
            panel1.Controls.Add(button1);
            panel1.Controls.Add(label6);
            panel1.Controls.Add(btnEnviar);
            panel1.Controls.Add(edtCEP);
            panel1.Dock = DockStyle.Top;
            panel1.Location = new Point(0, 0);
            panel1.Name = "panel1";
            panel1.Size = new Size(884, 89);
            panel1.TabIndex = 0;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            label6.Location = new Point(74, 33);
            label6.Name = "label6";
            label6.Size = new Size(53, 30);
            label6.TabIndex = 3;
            label6.Text = "CEP";
            // 
            // btnEnviar
            // 
            btnEnviar.BackColor = SystemColors.MenuHighlight;
            btnEnviar.FlatAppearance.BorderSize = 0;
            btnEnviar.FlatStyle = FlatStyle.Flat;
            btnEnviar.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            btnEnviar.ForeColor = SystemColors.ButtonHighlight;
            btnEnviar.Location = new Point(441, 28);
            btnEnviar.Name = "btnEnviar";
            btnEnviar.Size = new Size(153, 47);
            btnEnviar.TabIndex = 1;
            btnEnviar.Text = "Buscar";
            btnEnviar.UseVisualStyleBackColor = false;
            btnEnviar.Click += btnEnviar_Click;
            // 
            // edtCEP
            // 
            edtCEP.AcceptsReturn = true;
            edtCEP.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            edtCEP.Location = new Point(199, 33);
            edtCEP.Name = "edtCEP";
            edtCEP.Size = new Size(176, 36);
            edtCEP.TabIndex = 0;
            edtCEP.Text = "12050030";
            edtCEP.TextAlign = HorizontalAlignment.Center;
            // 
            // tabMenu
            // 
            tabMenu.Controls.Add(tabPage1);
            tabMenu.Controls.Add(tabPage2);
            tabMenu.Dock = DockStyle.Fill;
            tabMenu.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Point);
            tabMenu.Location = new Point(0, 89);
            tabMenu.Name = "tabMenu";
            tabMenu.SelectedIndex = 0;
            tabMenu.Size = new Size(884, 507);
            tabMenu.TabIndex = 11;
            // 
            // tabPage1
            // 
            tabPage1.Controls.Add(label5);
            tabPage1.Controls.Add(edtIBGE);
            tabPage1.Controls.Add(label4);
            tabPage1.Controls.Add(edtUF);
            tabPage1.Controls.Add(label3);
            tabPage1.Controls.Add(edtCidade);
            tabPage1.Controls.Add(label2);
            tabPage1.Controls.Add(edtBairro);
            tabPage1.Controls.Add(label1);
            tabPage1.Controls.Add(edtEndereco);
            tabPage1.Location = new Point(4, 34);
            tabPage1.Name = "tabPage1";
            tabPage1.Padding = new Padding(3);
            tabPage1.Size = new Size(876, 469);
            tabPage1.TabIndex = 0;
            tabPage1.Text = "CEP";
            tabPage1.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            label5.Location = new Point(507, 274);
            label5.Name = "label5";
            label5.Size = new Size(62, 30);
            label5.TabIndex = 20;
            label5.Text = "IBGE";
            // 
            // edtIBGE
            // 
            edtIBGE.AcceptsReturn = true;
            edtIBGE.BorderStyle = BorderStyle.FixedSingle;
            edtIBGE.Font = new Font("Segoe UI", 16F, FontStyle.Regular, GraphicsUnit.Point);
            edtIBGE.Location = new Point(579, 272);
            edtIBGE.Name = "edtIBGE";
            edtIBGE.Size = new Size(130, 36);
            edtIBGE.TabIndex = 19;
            edtIBGE.TextAlign = HorizontalAlignment.Center;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            label4.Location = new Point(140, 276);
            label4.Name = "label4";
            label4.Size = new Size(40, 30);
            label4.TabIndex = 18;
            label4.Text = "UF";
            // 
            // edtUF
            // 
            edtUF.AcceptsReturn = true;
            edtUF.BorderStyle = BorderStyle.FixedSingle;
            edtUF.Font = new Font("Segoe UI", 16F, FontStyle.Regular, GraphicsUnit.Point);
            edtUF.Location = new Point(265, 274);
            edtUF.Name = "edtUF";
            edtUF.Size = new Size(130, 36);
            edtUF.TabIndex = 17;
            edtUF.TextAlign = HorizontalAlignment.Center;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            label3.Location = new Point(140, 217);
            label3.Name = "label3";
            label3.Size = new Size(85, 30);
            label3.TabIndex = 16;
            label3.Text = "Cidade";
            // 
            // edtCidade
            // 
            edtCidade.AcceptsReturn = true;
            edtCidade.BorderStyle = BorderStyle.FixedSingle;
            edtCidade.Font = new Font("Segoe UI", 16F, FontStyle.Regular, GraphicsUnit.Point);
            edtCidade.Location = new Point(265, 215);
            edtCidade.Name = "edtCidade";
            edtCidade.Size = new Size(445, 36);
            edtCidade.TabIndex = 15;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            label2.Location = new Point(140, 159);
            label2.Name = "label2";
            label2.Size = new Size(76, 30);
            label2.TabIndex = 14;
            label2.Text = "Bairro";
            // 
            // edtBairro
            // 
            edtBairro.AcceptsReturn = true;
            edtBairro.BorderStyle = BorderStyle.FixedSingle;
            edtBairro.Font = new Font("Segoe UI", 16F, FontStyle.Regular, GraphicsUnit.Point);
            edtBairro.Location = new Point(265, 157);
            edtBairro.Name = "edtBairro";
            edtBairro.Size = new Size(445, 36);
            edtBairro.TabIndex = 13;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            label1.Location = new Point(140, 98);
            label1.Name = "label1";
            label1.Size = new Size(109, 30);
            label1.TabIndex = 12;
            label1.Text = "Endereço";
            // 
            // edtEndereco
            // 
            edtEndereco.AcceptsReturn = true;
            edtEndereco.BorderStyle = BorderStyle.FixedSingle;
            edtEndereco.Font = new Font("Segoe UI", 16F, FontStyle.Regular, GraphicsUnit.Point);
            edtEndereco.Location = new Point(265, 96);
            edtEndereco.Name = "edtEndereco";
            edtEndereco.Size = new Size(445, 36);
            edtEndereco.TabIndex = 11;
            // 
            // tabPage2
            // 
            tabPage2.Controls.Add(txtJSON);
            tabPage2.Location = new Point(4, 34);
            tabPage2.Name = "tabPage2";
            tabPage2.Padding = new Padding(3);
            tabPage2.Size = new Size(876, 469);
            tabPage2.TabIndex = 1;
            tabPage2.Text = "Json";
            tabPage2.UseVisualStyleBackColor = true;
            // 
            // txtJSON
            // 
            txtJSON.BackColor = SystemColors.Menu;
            txtJSON.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            txtJSON.Location = new Point(28, 29);
            txtJSON.Multiline = true;
            txtJSON.Name = "txtJSON";
            txtJSON.Size = new Size(812, 419);
            txtJSON.TabIndex = 22;
            // 
            // button1
            // 
            button1.BackColor = SystemColors.MenuHighlight;
            button1.FlatAppearance.BorderSize = 0;
            button1.FlatStyle = FlatStyle.Flat;
            button1.Font = new Font("Segoe UI", 16F, FontStyle.Bold, GraphicsUnit.Point);
            button1.ForeColor = SystemColors.ButtonHighlight;
            button1.Location = new Point(645, 25);
            button1.Name = "button1";
            button1.Size = new Size(153, 47);
            button1.TabIndex = 4;
            button1.Text = "Buscar TT";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click;
            // 
            // frmMenu
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(884, 596);
            Controls.Add(tabMenu);
            Controls.Add(panel1);
            Name = "frmMenu";
            Text = "Busca CEP";
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            tabMenu.ResumeLayout(false);
            tabPage1.ResumeLayout(false);
            tabPage1.PerformLayout();
            tabPage2.ResumeLayout(false);
            tabPage2.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private Button btnEnviar;
        private TextBox edtCEP;
        private Label label6;
        private TabControl tabMenu;
        private TabPage tabPage1;
        private Label label5;
        private TextBox edtIBGE;
        private Label label4;
        private TextBox edtUF;
        private Label label3;
        private TextBox edtCidade;
        private Label label2;
        private TextBox edtBairro;
        private Label label1;
        private TextBox edtEndereco;
        private TabPage tabPage2;
        private TextBox txtJSON;
        private Button button1;
    }
}