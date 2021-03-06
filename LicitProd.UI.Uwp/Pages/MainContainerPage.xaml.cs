﻿using System;
using System.Collections.ObjectModel;
using LicitProd.Services;
using LicitProd.UI.Uwp.Pages.Concursos;
using LicitProd.UI.Uwp.Services;
using System.Linq;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Media.Animation;
using LicitProd.Data.Repositories;
using LicitProd.Entities;
using LicitProd.Mappers;
using LicitProd.Seguridad;
using LicitProd.UI.Uwp.Pages.Backups;
using LicitProd.UI.Uwp.Pages.Compradores;
using LicitProd.UI.Uwp.Pages.Permisos;
using LicitProd.UI.Uwp.Pages.Proveedores;
using LicitProd.UI.Uwp.Pages.Settings;
using LicitProd.UI.Uwp.Pages.Usuarios;
using LicitProd.UI.Uwp.Pages.TerminosYCondiciones;

namespace LicitProd.UI.Uwp.Pages
{

    public sealed partial class MainContainerPage : Page
    {
        public ObservableCollection<Idioma> Idiomas { get; set; } = new ObservableCollection<Idioma>();

        public MainContainerPage()
        {
            InitializeComponent();
            LoadingService.SetLoadingCallBack(() => Loading.IsLoading = true,
                                              () => Loading.IsLoading = false);
            NavigationService.Register((page, parameter) =>
            {
                contentFrame.Navigate(page, parameter, new DrillInNavigationTransitionInfo());
            },
            page =>
            {
                if (contentFrame.CanGoBack)
                    contentFrame.BackStack.Remove(contentFrame.BackStack.ElementAt(contentFrame.BackStack.Count - 1));
                contentFrame.Navigate(page, null, new DrillInNavigationTransitionInfo());

            },
            () =>
            {
                if (contentFrame.CanGoBack)
                    contentFrame.BackStack.Remove(contentFrame.BackStack.ElementAt(contentFrame.BackStack.Count - 1));

            },
            () =>
            {
                Application.Current.Exit();
            });


            Loaded += OnLoaded;
        }

        private void OnLoaded(object sender, RoutedEventArgs e)
        {
            IdentityServices.Instance.IsLoggued()
                .Success(x => ApplyPermissions(x.Rol));

        }

        private void NvSample_SelectionChanged(NavigationView sender, NavigationViewSelectionChangedEventArgs args)
        {
            if (args.IsSettingsSelected)
            {
                NavigationService.Navigate<SettingsPage>();

            }
            else
            {
                var selectedItem = (NavigationViewItem)args.SelectedItem;
                if (selectedItem != null)
                {
                    switch (selectedItem.Name)
                    {
                        case "Dashboard":
                            NavigationService.Navigate<Dashboard>();
                            break;
                        case "Logs":
                            NavigationService.Navigate<LogsPage>();
                            break;
                        case "CrearConcurso":
                            NavigationService.Navigate<CrearConcurso>();
                            break;
                        case "ListConcursos":
                            NavigationService.Navigate<ListConcursos>();
                            break;
                        case "RegistrarProveedor":
                            NavigationService.Navigate<NewProveedor>();
                            break;
                        case "ListarProveedores":
                            NavigationService.Navigate<ListProveedores>();
                            break;
                        case "AdminPermisos":
                            NavigationService.Navigate<AdministrarPermisosPage>();
                            break;
                        case "AdminIdiomas":
                            NavigationService.Navigate<IdiomasSettingsPage>();
                            break;
                        case "BackupsPage":
                            NavigationService.Navigate<BackupsPage>();
                            break;
                        case "IdiomasNewPage":
                            NavigationService.Navigate<IdiomasNewPage>();
                            break;
                        case "UsuariosRolesPage":
                            NavigationService.Navigate<UsuariosRolesPage>();
                            break;
                        case "OfertarConcursoPage":
                            NavigationService.Navigate<ListConcursosOfertarPage>();
                            break;
                        case "ListCompradoresPage":
                            NavigationService.Navigate<ListCompradoresPage>();
                            break;
                        case "NewCompradorPage":
                            NavigationService.Navigate<NewCompradorPage>();
                            break;
                        case "CrearTerminosYCondiciones":
                            NavigationService.Navigate<CrearTerminosYCondicionesPage>();
                            break;
                        default:
                            break;
                    }
                }
            }
        }
        public void ApplyPermissions(Rol rol)
        {
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            new UsuarioService().Logout();
            Frame.Navigate(typeof(Login));
        }

        private void MenuFlyoutItem_OnClick(object sender, RoutedEventArgs e)
        {
            var languaje = ((MenuFlyoutItem)sender).Text;
            AsyncHelper.CallAsyncMethod(() => new IdiomasRepository().GetByName(languaje))
                .Success(idioma =>
                    SettingsServices.SetIdioma(idioma));
        }

        private void PaneHyperlink_OnClick(object sender, RoutedEventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}
