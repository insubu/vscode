uses
  Vcl.Forms, Vcl.Controls, Vcl.ExtCtrls, Vcl.StdCtrls;

procedure CreateStackPanelExample;
var
  Form: TForm;
  StackPanel: TStackPanel;
  Button1, Button2, Button3: TButton;
begin
  Form := TForm.Create(nil);
  Form.Caption := 'TStackPanel Example';
  Form.Width := 400;
  Form.Height := 300;

  // Create the TStackPanel
  StackPanel := TStackPanel.Create(Form);
  StackPanel.Parent := Form;
  StackPanel.Align := alClient;
  StackPanel.Orientation := TOrientation.orVertical; // Stack vertically
  StackPanel.Padding.SetBounds(10, 10, 10, 10); // Add padding
  StackPanel.Margins.SetBounds(5, 5, 5, 5); // Add margins

  // Add buttons to the StackPanel
  Button1 := TButton.Create(StackPanel);
  Button1.Parent := StackPanel;
  Button1.Caption := 'Button 1';

  Button2 := TButton.Create(StackPanel);
  Button2.Parent := StackPanel;
  Button2.Caption := 'Button 2';

  Button3 := TButton.Create(StackPanel);
  Button3.Parent := StackPanel;
  Button3.Caption := 'Button 3';

  // Show the form
  Form.ShowModal;

  // Free resources
  Form.Free;
end;

DFM File
object lblDefaultType: TLabel
Left = 16
Height = 12
Top = 79
Width = 64
Caption = 'デフォルト型'
ParentColor = False
end
object cmbDefaultType: TComboBox
Left = 102
Height = 26
Hint = '出力するデフォルト型を設定します'
Top = 72
Width = 100
ItemHeight = 12
ItemIndex = 0
Items.Strings = (
  'String'
  'Short'
  'Integer'
  'Currency'
  'Float'
  'Date'
  'Time'
  'DateTime'
  'Boolean'
  'BCD'
)
Style = csDropDownList
TabOrder = 2
Text = 'String'
end
