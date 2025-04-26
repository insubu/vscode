using System;
using System.Windows.Forms;
using Microsoft.Web.WebView2.WinForms;
using Microsoft.Web.WebView2.Core;

class WebView2FormApp
{
    [STAThread]
    static void Main()
    {
        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);

        // Create the form
        Form mainForm = new Form
        {
            Text = "WebView2 Sample",
            Width = 1000,
            Height = 700
        };

        // Create the WebView2 control
        var webView = new WebView2
        {
            Dock = DockStyle.Fill
        };

        // Add the WebView2 to the form
        mainForm.Controls.Add(webView);

        // Initialize WebView2
        webView.CoreWebView2InitializationCompleted += (s, e) =>
        {
            if (e.IsSuccess)
            {
                webView.CoreWebView2.Navigate("https://www.example.com");
            }
            else
            {
                MessageBox.Show("WebView2 initialization failed: " + e.InitializationException.Message);
            }
        };

        webView.EnsureCoreWebView2Async();

        // Run the form
        Application.Run(mainForm);
    }
}
