﻿using System;
using System.Linq;
using Windows.UI.Xaml.Controls;
using LicitProd.Entities;
using LicitProd.Services;
using LicitProd.UI.Uwp.Services;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Threading.Tasks;
using LicitProd.Data.Repositories;

namespace LicitProd.UI.Uwp.Pages.Concursos
{
    public sealed partial class CrearConcurso : Page
    {
        public ObservableCollection<ProveedorSelectionViewModel> Proveedores { get; set; } = new ObservableCollection<ProveedorSelectionViewModel>();
        public ObservableCollection<Entities.TerminosYCondiciones> TerminosYCondiciones { get; set; } = new ObservableCollection<Entities.TerminosYCondiciones>();
        public Entities.TerminosYCondiciones TerminosYCondicionesSelected { get; set; }
        private List<Proveedor> ProveedoresToShow { get; set; } = new List<Proveedor>();

        public string Presupuesto { get; set; }
        public Concurso Concurso { get; set; } = new Concurso();

        public DateTimeOffset FechaInicio
        {
            get => DateTime.SpecifyKind((DateTime)Concurso.FechaInicio, DateTimeKind.Local);
            set => Concurso.FechaInicio = value.DateTime;
        }

        public DateTimeOffset FechaApertura
        {
            get => DateTime.SpecifyKind((DateTime)Concurso.FechaApertura, DateTimeKind.Local);
            set => Concurso.FechaApertura = ((DateTimeOffset)value).DateTime;
        }


        public CrearConcurso()
        {
            InitializeComponent();
            LoadDataAsync();
        }

        private async Task LoadDataAsync()
        {
            (await new ProveedoresRepository().Get())
           .Success(proveedores =>
           {
               proveedores?.ForEach(x => ProveedoresToShow.Add(x));
               proveedores?.ForEach(x => Proveedores.Add(new ProveedorSelectionViewModel(x)));
               LoadingService.LoadingStop();
           })
           .Error(async x =>
           {
               MessageDialogService.Create("No hay Proveedores", c =>
               {
                   LoadingService.LoadingStop();
                   NavigationService.NavigatePop<Dashboard>();
               }, null);
           });

            (await new TerminosYCondicionesRepository().GetAsync())
                .Success(terminos =>
                {
                    terminos.ForEach(x => TerminosYCondiciones.Add(x));
                    TerminosYCondicionesSelected = terminos.FirstOrDefault();
                });
        }
        private void TxtPresupuesto_BeforeTextChanging(TextBox sender, TextBoxBeforeTextChangingEventArgs args)
        {
            args.Cancel = args.NewText.Any(c => !char.IsDigit(c));
        }

        private async void BtnAcept_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Concurso.Nombre)
                ||
                TerminosYCondicionesSelected == null)
            {
                MessageDialogService.Create("Debe completar los campos requeridos");
            }
            else
            {
                LoadingService.LoadingStart();
                if (decimal.TryParse(Presupuesto, out var parsed))
                    Concurso.Presupuesto = parsed;
                else
                    Concurso.Presupuesto = 0;
                Concurso.TerminosYCondicionesId = TerminosYCondicionesSelected.Id;
                if (chkBorrador.IsChecked.Value)
                    Concurso.Status = (int)ConcursoStatusEnum.Borrador;

                Concurso.FechaApertura = dtpApertura.Date.Date;
                Concurso.FechaInicio = dtpInicio.Date.Date;

                var response = Concurso.Validar();
                if (!response.SuccessResult)
                {
                    (await new ConcursoServices().Crear(Concurso, Proveedores.Where(x => x.Selected).Select(x => x.Proveedor).ToList()))
                                            .Success(s =>
                                            {
                                                MessageDialogService.Create("Concurso Creado Existosamente", c =>
                                                {
                                                    LoadingService.LoadingStop();
                                                    NavigationService.NavigatePop<Dashboard>();
                                                }, null);

                                            })
                                            .Error(erros =>
                                            {

                                                MessageDialogService.Create("Error al Crear el Concoruso", c =>
                                                {
                                                    LoadingService.LoadingStop();

                                                }, null);
                                            });
                }
            }
        }
    }
}
