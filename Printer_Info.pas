unit Printer_Info;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Cod.Visual.Button,
  CFX.Forms, CFX.Types, Vcl.StdCtrls, Vcl.Imaging.pngimage, Cod.Visual.Image,
  Vcl.Printers, CFX.ThemeManager, ShellAPI, Cod.Types, Winspool, Cod.Printing,
  CFX.Controls, CFX.Button, CFX.Panels;

type
  TPrinterInfo = class(FXDialogForm)
    Label1: TLabel;
    CImage1: CImage;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image1: TImage;
    Label9: TLabel;
    FXPanel1: FXPanel;
    FXButton1: FXButton;
    FXButton2: FXButton;
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
  Form1.ReadPrinterSettings;
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
  SPageSize,
  SHandle: string;
begin
  // Get Data
  PrinterOnline := IsPrinterOnline(Printer.Printers[Printer.PrinterIndex]);

  // Fetch data (requires printer to be online)
  Memo1.Lines.Clear;
  try
    SHandle := integer(Printer.Handle).ToString;
    SPageSize := Form1.PixelsToCmStr(Printer.PageWidth, DPI_X)
      + ' x ' + Form1.PixelsToCmStr(Printer.PageHeight, DPI_Y);

    Memo1.Lines.Assign( Printer.Fonts );
  except
    SHandle := '[failure]';
    SPageSize := '[failure]';
  end;

  // UI
  if PrinterOnline then
    CImage1.Opacity := 255
  else
    CImage1.Opacity := 150;

  // Add Text
  Label1.Caption := Printer.Printers[Printer.PrinterIndex];
  Label2.Caption := 'Page Size: ' + SPageSize;

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

  Label7.Caption := 'Handle: ' + SHandle;

  Label9.Caption := 'Connected: ' + BooleanToYesNo( PrinterOnline );

  try
    // Icon
    GetIcon;
  except
    // user cancelled
  end;
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
end;

end.
