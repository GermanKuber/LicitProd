﻿using LicitProd.Data.Repositories;
using LicitProd.Entities;
using LicitProd.UI.Uwp.Services;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using Windows.UI.Core;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using LicitProd.Mappers;
using LicitProd.Seguridad;


namespace LicitProd.UI.Uwp.Pages.Concursos
{
    public sealed partial class ListConcursos : Page
    {
        public ObservableCollection<ConcursoViewModel> Concursos { get; set; } = new ObservableCollection<ConcursoViewModel>();
        public ListConcursos()
        {
            InitializeComponent();
            LoadingService.LoadingStart();
            LoadDataAsync();
        }
        private async Task LoadDataAsync()
        {

            (await new ConcursosRepository().GetAsync())
           .Success(concursos =>
           {
               concursos?.Where(x => x.Comprador.UsuarioId == IdentityServices.Instance.GetUserLogged().Id)
                   .ToList()
                   ?.ForEach(x => Concursos.Add(new ConcursoViewModel(x)));
               LoadingService.LoadingStop();
           })
           .Error(async x =>
           {
               MessageDialogService.Create(x.First(), c =>
               {
                   LoadingService.LoadingStop();
                   NavigationService.Close();
               }, null);
           });
        }
        public void Group()
        {

        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var concurso = (ConcursoViewModel)e.AddedItems.First();
            if (concurso.ListoParaAbrir)
                if (concurso.Concurso.Status == (int)ConcursoStatusEnum.Abierto
                    ||
                    concurso.Concurso.Status == (int)ConcursoStatusEnum.Cerrado)
                    NavigationService.Navigate<ConcursoAbiertoPage>(new { Concurso = concurso });
                else
                    MessageDialogService.Create("Este concurso esta listo para ser abierto!!", c =>
                        {
                            NavigationService.Navigate<ConcursoAbiertoPage>(new { Concurso = concurso });
                        }, null);
            else
                NavigationService.Navigate<DetalleConcursoPage>(new { ConcursoId = concurso.Concurso.Id });
        }
    }
}
