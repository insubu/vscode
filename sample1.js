using System;
using System.Text;
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

        Form form = new Form
        {
            Text = "WebView2 C# <-> JavaScript Example",
            Width = 800,
            Height = 600
        };

        Button sendButton = new Button
        {
            Text = "Send Date to WebView2",
            Dock = DockStyle.Top,
            Height = 40
        };

        WebView2 webView = new WebView2
        {
            Dock = DockStyle.Fill
        };

        form.Controls.Add(webView);
        form.Controls.Add(sendButton);

        webView.CoreWebView2InitializationCompleted += async (s, e) =>
        {
            if (e.IsSuccess)
            {
                // Listen for messages from JavaScript
                webView.CoreWebView2.WebMessageReceived += (sender, args) =>
                {
                    string msg = args.TryGetWebMessageAsString();
                    MessageBox.Show("Received from JavaScript: " + msg);
                };

                // Load HTML content directly from C#
                string html = GenerateHtml();
                string htmlBase64 = Convert.ToBase64String(Encoding.UTF8.GetBytes(html));
                webView.CoreWebView2.Navigate("data:text/html;base64," + htmlBase64);
                webView.CoreWebView2.OpenDevToolsWindow();

            }
            else
            {
                MessageBox.Show("WebView2 initialization failed: " + e.InitializationException.Message);
            }
        };

        // Send date from C# to JavaScript
        sendButton.Click += async (s, e) =>
        {
            string today = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            await webView.CoreWebView2.ExecuteScriptAsync($"updateDateFromHost('{today}')");
        };

        webView.EnsureCoreWebView2Async();
        Application.Run(form);
    }

    static string GenerateHtml()
    {
        return @"
<!DOCTYPE html>
<html>
<head>
    <meta charset='UTF-8'>
    <title>WebView2 HTML</title>
    <style>
        body { font-family: sans-serif; padding: 20px; }
        #dateDisplay { margin-top: 20px; color: green; }
    </style>
</head>
<body>
    <h1>JavaScript ↔ C# Communication</h1>
    <button onclick='sendDateToHost()'>Send Current Date to C#</button>
    <div id='dateDisplay'>No data yet.</div>

    <script>
        function sendDateToHost() {
            const now = new Date().toISOString();
            window.chrome.webview.postMessage(now);
        }

        function updateDateFromHost(dateStr) {
            document.getElementById('dateDisplay').innerText = 'Received from C#: ' + dateStr;
        }
    </script>
</body>
</html>";
    }
}
