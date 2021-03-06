﻿using LicitProd.Entities;
using LicitProd.Services;
using System;
using System.Windows.Forms;

namespace LicitProd.UI
{
    public partial class CrearConcurso : Form
    {
        public CrearConcurso()
        {
            InitializeComponent();
        }

        private async  void Button1_Click(object sender, EventArgs e)
        {
            var concurso = new Concurso(udPresupuesto.Value,
                txtNombre.Text,
                dtpFechaInicio.Value,
                dtpFechaApertura.Value,
                chkAdjudicaion.Checked,
                txtDescripcion.Text);

            (await new ConcursoServices().Crear(concurso))
                .Success(x =>
                {
                    DialogResult result = MessageBox.Show("Creado exitosamente", $"El concurso {concurso.Nombre} fue creado");
                    Close();
                });
        }
    }
}
