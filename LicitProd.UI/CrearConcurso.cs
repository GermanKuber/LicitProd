﻿using LicitProd.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LicitProd.UI
{
    public partial class CrearConcurso : Form
    {
        public CrearConcurso()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            var concurso = new Concurso(1, udPresupuesto.Value, txtNombre.Text, dtpFechaInicio.Value, dtpFechaApertura.Value, chkAdjudicaion.Checked);
        }
    }
}
