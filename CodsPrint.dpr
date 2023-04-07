program CodsPrint;

uses
  Vcl.Forms,
  MainUI in 'MainUI.pas' {Form1},
  Loading_Screen in 'Loading_Screen.pas' {LoadScreen},
  Size_Box in 'Size_Box.pas' {SelectSize},
  Printer_Info in 'Printer_Info.pas' {PrinterInfo},
  About_Form in 'About_Form.pas' {About};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
