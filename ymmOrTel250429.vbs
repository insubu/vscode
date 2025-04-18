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