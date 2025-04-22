Sub PrintCellsInSameWeek()
    Dim ws As Worksheet
    Dim activeRow As Long
    Dim lastCol As Long
    Dim cell As Range
    Dim weekRow As Long
    Dim weekDayRow As Long
    
    ' Change these rows accordingly
    weekRow = 1 ' Row containing months (change if needed)
    weekDayRow = 2 ' Row containing days (change if needed)
    
    ' Set the worksheet
    Set ws = ThisWorkbook.Sheets(1) ' Update to the correct sheet
    
    ' Find the active row and last column
    activeRow = ActiveCell.Row
    lastCol = ws.Cells(activeRow, ws.Columns.Count).End(xlToLeft).Column
    
    ' Iterate through cells in the same row as active cell
    For Each cell In ws.Rows(activeRow).Cells
        If cell.Column <= lastCol Then
            If cell.Interior.Color = RGB(255, 255, 0) Then ' Yellow
                Debug.Print "tel"
            ElseIf cell.Interior.Color = RGB(255, 255, 255) Then ' White
                Debug.Print "office"
            End If
        End If
    Next cell
End Sub

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
