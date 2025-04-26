using Microsoft.Web.WebView2.WinForms;

public partial class MainForm : Form
{
    public MainForm()
    {
        InitializeComponent();

        var webView = new WebView2();
        webView.Dock = DockStyle.Fill;
        this.Controls.Add(webView);

        webView.Source = new Uri("https://www.microsoft.com");
    }
}