unit About_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  CFX.Forms, Vcl.Imaging.pngimage, Cod.Visual.Image, Vcl.ExtCtrls,
  CFX.ThemeManager, CFX.Types, Vcl.StdCtrls, Vcl.TitleBarCtrls,
  Cod.Visual.Button, Cod.Visual.SplashScreen, ShellAPI, CFX.BlurMaterial;

type
  TAbout = class(FXForm)
    CImage1: CImage;
    Shape1: TShape;
    Label1: TLabel;
    VerLabel: TLabel;
    Label2: TLabel;
    TitleBarPanel1: TTitleBarPanel;
    Label3: TLabel;
    FXBlurMaterial1: FXBlurMaterial;
    Panel1: TPanel;
    CButton4: CButton;
    CButton2: CButton;
    CButton3: CButton;
    CButton5: CButton;
    Shape2: TShape;
    CButton1: CButton;
    procedure FormCreate(Sender: TObject);
    procedure CButton2Click(Sender: TObject);
    procedure FXBlurMaterial1MouseDown(Sender: TObject; Button: TMouseButton;
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
    1: URL := 'mailto:petculescucodrut@outlook.com';
    2: URL := 'https://www.codrutsoftware.cf';
    3: URL := 'https://www.twitter.com/LAVAplanks';
    4: URL := 'https://www.youtube.com/LavaTechnology';
  end;

  ShellExecute(0, 'open', PChar(URL), nil, nil, 0);
end;

procedure TAbout.FormCreate(Sender: TObject);
begin
  // Form
  OnThemeChange := ThemeChange;

  // UI
  Shape1.Brush.Color := ThemeManager.AccentColor;

  Self.CustomTitleBar.Height := 0;
end;

procedure TAbout.FXBlurMaterial1MouseDown(Sender: TObject; Button: TMouseButton;
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
