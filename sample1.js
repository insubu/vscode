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
  Caption = 'TStackPanel Example'
  ClientHeight = 300
  ClientWidth = 400
  object StackPanel1: TStackPanel
    Align = alClient
    Orientation = orVertical
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    object Button1: TButton
      Caption = 'Button 1'
    end
    object Button2: TButton
      Caption = 'Button 2'
    end
    object Button3: TButton
      Caption = 'Button 3'
    end
  end
end

pas File
unit Unit1;

interface

uses
  Vcl.Forms, Vcl.Controls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    StackPanel1: TStackPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.