﻿using LicitProd.Mappers;
using System;
using System.Windows.Forms;

namespace LicitProd.UI
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            var defaultMapper = new Default();
            Application.ThreadException +=
            new System.Threading.ThreadExceptionEventHandler(Application_ThreadException);
            AppDomain.CurrentDomain.UnhandledException +=
            new UnhandledExceptionEventHandler(CurrentDomain_UnhandledException);

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Login());
        }
        static void Application_ThreadException
       (object sender, System.Threading.ThreadExceptionEventArgs e)
        {
            ShowExceptionDetails(e.Exception);
        }

        static void CurrentDomain_UnhandledException
            (object sender, UnhandledExceptionEventArgs e)
        {
            ShowExceptionDetails(e.ExceptionObject as Exception);
        }
        static void ShowExceptionDetails(Exception ex)
        {
            MessageBox.Show("Ocurrio un error inesperado en el sistema, intenta nuevamente o contacte al adminitrador",
                            "Error",
                            MessageBoxButtons.OK,
                            MessageBoxIcon.Error);
        }
    }
}
