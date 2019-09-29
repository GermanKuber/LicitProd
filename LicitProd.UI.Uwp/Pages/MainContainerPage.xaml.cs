﻿using System.Collections.Generic;
using LicitProd.Services;
using LicitProd.UI.Uwp.Pages.Concursos;
using LicitProd.UI.Uwp.Services;
using System.Linq;
using System.Reflection;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Media.Animation;
using LicitProd.Entities;
using LicitProd.Seguridad;
using LicitProd.UI.Uwp.Pages.Permisos;
using LicitProd.UI.Uwp.Pages.Proveedores;
using LicitProd.UI.Uwp.Pages.Settings;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=234238

namespace LicitProd.UI.Uwp.Pages
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MainContainerPage : Page
    {

        public MainContainerPage()
        {
            this.InitializeComponent();
            LoadingService.SetLoadingCallBack(() => Loading.IsLoading = true,
                                              () => Loading.IsLoading = false);
            NavigationService.Register(page =>
            {
                contentFrame.Navigate(page, new DrillInNavigationTransitionInfo());
            },
            page =>
            {
                if (contentFrame.CanGoBack)
                    contentFrame.BackStack.Remove(contentFrame.BackStack.ElementAt(contentFrame.BackStack.Count - 1));
                contentFrame.Navigate(page, new DrillInNavigationTransitionInfo());

            },
            () =>
            {
                Application.Current.Exit();
            });
       
            
            this.Loaded += OnLoaded;
        }

        private void OnLoaded(object sender, RoutedEventArgs e)
        {
            IdentityServices.Instance.IsLoggued()
                .Success(x => ApplyPermissions(x.Rol));
            TranslationService.Subscribe(trans => ChangeLanguage(trans));
            TranslationService.GetTranslation()
                .Success(x => ChangeLanguage(x));

           FindChildren(new List<TextBox>(), this);
        }

        private void NvSample_SelectionChanged(NavigationView sender, NavigationViewSelectionChangedEventArgs args)
        {
            if (args.IsSettingsSelected)
            {
                contentFrame.Navigate(typeof(Login));
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
                            NavigationService.Navigate<AdminPermisos>();
                            break;
                        case "AdminIdiomas":
                            NavigationService.Navigate<IdiomasSettingsPage>();
                            break;
                            
                        default:
                            break;
                    }
                }
            }
        }
        public  void ApplyPermissions(Rol rol)
        {
        }
        public void ChangeLanguage(Translations translation)
        {
            //translation.TranslationList.ForEach(x =>
            //{
            //    var controls = Controls.Find(x.Key, true);
            //    foreach (var control in controls)
            //    {
            //        if (control is Label)
            //            control.Text = x.Value;
            //        if (control is Button)
            //            control.Text = x.Value;
            //    }
            //});
        }
         private void FindChildren<T>(List<T> results, DependencyObject startNode)
            where T : DependencyObject
        {
            int count = VisualTreeHelper.GetChildrenCount(startNode);
            for (int i = 0; i < count; i++)
            {
                DependencyObject current = VisualTreeHelper.GetChild(startNode, i);
                if ((current.GetType()).Equals(typeof(T)) || (current.GetType().GetTypeInfo().IsSubclassOf(typeof(T))))
                {
                    T asType = (T)current;
                    results.Add(asType);
                }
                FindChildren<T>(results, current);
            }
        }
        private void Button_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            new UsuarioService().Logout();
            this.Frame.Navigate(typeof(Login));
        }
    }
}
