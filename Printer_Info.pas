unit Printer_Info;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Cod.Visual.Button,
  CFX.Forms, CFX.Types, Vcl.StdCtrls, Vcl.Imaging.pngimage, Cod.Visual.Image,
  Vcl.Printers, CFX.ThemeManager, ShellAPI, Cod.Types, Winspool, Cod.Printing;

type
  TPrinterInfo = class(FXForm)
    BottomPanel: TPanel;
    Printer_Print: CButton;
    Label1: TLabel;
    CImage1: CImage;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    CButton1: CButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image1: TImage;
    Label9: TLabel;
    procedure CButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ThemeChange(Sender: TObject; ThemeChange: FXThemeType; DarkTheme: boolean; Accent: TColor);

    procedure GetIcon;
  public
    { Public declarations }
    procedure GetInfo;
  end;

var
  PrinterInfo: TPrinterInfo;

implementation

uses
  MainUI;

{$R *.dfm}

{ TPrinterInfo }

procedure TPrinterInfo.CButton1Click(Sender: TObject);
begin
  Form1.ReloadPrinter;
  GetInfo;
end;

procedure TPrinterInfo.FormCreate(Sender: TObject);
begin
  OnThemeChange := ThemeChange;
end;

procedure TPrinterInfo.GetIcon;
begin
  Image1.Picture.Icon := GetPrinterIcon(Printer.Printers[Printer.PrinterIndex]);
end;

procedure TPrinterInfo.GetInfo;
var
  PrinterOnline: boolean;
begin
  // Get Data
  PrinterOnline := IsPrinterOnline(Printer.Printers[Printer.PrinterIndex]);

  // UI
  if PrinterOnline then
    CImage1.Opacity := 255
  else
    CImage1.Opacity := 150;

  // Add Text
  Label1.Caption := Printer.Printers[Printer.PrinterIndex];
  Label2.Caption := 'Page Size: ' + Form1.PixelsToCmStr(Printer.PageWidth, DPI_X)
                    + ' x ' + Form1.PixelsToCmStr(Printer.PageHeight, DPI_Y);

  Label5.Caption := 'DPI: X: ' + DPI_X.ToString + ' Y: ' + DPI_Y.ToString;
  Label4.Caption := 'Orientation: ' ;

  if Printer.Orientation = poPortrait then
    Label4.Caption := Label4.Caption + 'Portrait'
  else
    Label4.Caption := Label4.Caption + 'Landscape';

  Label6.Caption := 'Capabilities: ';
  if pcCopies in Printer.Capabilities then
    Label6.Caption := Label6.Caption + 'Copies, ';
  if pcOrientation in Printer.Capabilities then
    Label6.Caption := Label6.Caption + 'Orientation, ';
  if pcCollation in Printer.Capabilities then
    Label6.Caption := Label6.Caption + 'Collation, ';

  if Printer.Capabilities <> [] then
    Label6.Caption := Copy(Label6.Caption, 1, Length(Label6.Caption) -2);

  Label7.Caption := 'Handle: ' + integer(Printer.Handle).ToString;

  Memo1.Lines := Printer.Fonts;

  Label9.Caption := 'Connected: ' + BooleanToYesNo( PrinterOnline );

  // Icon
  GetIcon;
end;

procedure TPrinterInfo.ThemeChange(Sender: TObject; ThemeChange: FXThemeType;
  DarkTheme: boolean; Accent: TColor);
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[i] is TLabel then
      TLabel(Components[i]).Font.Color := ThemeManager.SystemColor.ForeGround;

  Memo1.Color := ThemeManager.SystemColor.BackGroundInterior;
  BottomPanel.Color := ThemeManager.SystemColor.BackGroundInterior;
end;

end.
