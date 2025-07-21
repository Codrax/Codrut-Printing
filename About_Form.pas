unit About_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  CFX.Forms, Vcl.Imaging.pngimage, Cod.Visual.Image, Vcl.ExtCtrls,
  CFX.ThemeManager, CFX.Types, Vcl.StdCtrls, Vcl.TitleBarCtrls,
  Cod.Visual.Button, Cod.Visual.SplashScreen, ShellAPI, CFX.BlurMaterial,
  CFX.Controls, CFX.Button, CFX.Panels, Cod.SysUtils;

type
  TAbout = class(FXDialogForm)
    TitleBarPanel1: TTitleBarPanel;
    FXPanel1: FXPanel;
    CButton2: CButton;
    CButton3: CButton;
    CButton4: CButton;
    CButton5: CButton;
    FXButton1: FXButton;
    CButton1: CButton;
    CImage1: CImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    VerLabel: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CButton2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure ThemeChange(Sender: TObject; ThemeChange: FXThemeType; DarkTheme: boolean; Accent: TColor);
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.dfm}

procedure TAbout.CButton2Click(Sender: TObject);
var
  URL: string;
begin
  case CButton(Sender).Tag of
    1: URL := 'mailto:codrut@codrutsoft.com';
    2: URL := 'https://www.codrutsoft.com';
    3: URL := 'https://www.twitter.com/LAVAplanks';
    4: URL := 'https://www.youtube.com/@codrutsoft';
    5: URL := 'https://www.paypal.com/paypalme/codrutpetcu';
  end;

  ShellRun(URL, true);
end;

procedure TAbout.FormCreate(Sender: TObject);
begin
  ManualCustomTitleBar := true;

  // Form
  OnThemeChange := ThemeChange;

  // UI
  Shape1.Brush.Color := ThemeManager.AccentColor;

  CustomTitleBar.Height := 2;
end;

procedure TAbout.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_NCLBUTTONDOWN, HTCAPTION, 0);
end;

procedure TAbout.ThemeChange(Sender: TObject; ThemeChange: FXThemeType;
  DarkTheme: boolean; Accent: TColor);
var
  I: integer;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TLabel then
      TLabel(Components[I]).Font.Color := ThemeManager.SystemColor.ForeGround;
end;

end.
