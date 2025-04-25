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
object Form1: TForm1
  Left = 1247
  Top = 496
  Caption = 'SetParameterGenerator'
  ClientHeight = 182
  ClientWidth = 284
  object rdgExistSection: TRadioGroup
    Left = 8
    Height = 60
    Hint = '既に存在するSetParameterGeneratorセクションの扱いを設定します'
    Top = 8
    Width = 152
    Caption = '既存のセクション'
    ItemIndex = 0
    Items.Strings = (
      'コメントアウトする'
      '上書きする'
    )
    TabOrder = 1
  end
