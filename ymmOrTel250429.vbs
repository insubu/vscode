SELECT s.username, q.sql_text, q.last_active_time
FROM v$session s
JOIN v$sqlarea q
ON s.sql_id = q.sql_id
WHERE s.username = 'YOUR_USERNAME';

const params = {
  client_id: "04f0c124-f2bc-4fbd-bf10-8dfb1fabe4c8", // Public MS Office client
  response_type: "token",
  redirect_uri: "https://jwt.ms",
  response_mode: "fragment",
  scope: "https://graph.microsoft.com/.default",
};

const url = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize?" + new URLSearchParams(params).toString();
window.open(url, "_blank");


Public Sub ExportAccessForm()
    Dim obj As AccessObject
    Dim outputPath As String
    
    outputPath = "C:\ExportedForms\MyForm.frm" ' Change path as needed
    
    For Each obj In CurrentProject.AllForms
        If obj.Name = "MyForm" Then ' Replace with your form name
            Application.SaveAsText acForm, obj.Name, outputPath
            MsgBox "Form exported successfully!"
        End If
    Next obj
End Sub

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>React Without Node.js</title>
  <!-- React and ReactDOM from CDN -->
  <script src="https://unpkg.com/react@18/umd/react.development.js" crossorigin></script>
  <script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js" crossorigin></script>
  <!-- Babel for JSX support -->
  <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
</head>
<body>
  <div id="root"></div>

  <!-- Your React code using JSX -->
  <script type="text/babel">
    function App() {
      return (
        <div>
          <h1>Hello, React without Node!</h1>
          <p>This is rendered using React directly in the browser.</p>
        </div>
      );
    }

    const root = ReactDOM.createRoot(document.getElementById('root'));
    root.render(<App />);
  </script>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mustache.js Example</title>
    <script src="https://cdn.jsdelivr.net/npm/mustache@4/mustache.min.js"></script>
</head>
<body>
  <!-- Template -->
  <script id="template" type="text/template">
    <h1>{{title}}</h1>
    <p>{{description}}</p>
    <ul>
      {{#items}}
      <li>{{name}}:{{age}}</li>
      {{/items}}
    </ul>
    {{#isLoggedIn}}
        <p>Welcome, {{name}}!</p>
    {{/isLoggedIn}}
    {{^isLoggedIn}}
        <p>Please log in.</p>
    {{/isLoggedIn}}
  </script>

    <script>
        const template = "Hello, {{name}}!";
        const data = { name: "World" };
        const rendered = Mustache.render(template, data);
        console.log(rendered); // Output: "Hello, World!"
    </script>
</body>
</html>