unit Loading_Screen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Cod.Visual.Progress,
  Vcl.ExtCtrls, Cod.Visual.Panels, Vcl.Imaging.GIFImg, Cod.Visual.Image,
  Vcl.Imaging.pngimage, Vcl.VirtualImage, Vcl.BaseImageCollection,
  Vcl.ImageCollection, CFX.Forms, CFX.Types;

type
  TLoadScreen = class(FXForm)
    Label1: TLabel;
    Label2: TLabel;
    CProgress1: CProgress;
    CPanel1: CPanel;
    Panel1: TPanel;
    CImage1: CImage;
    Label3: TLabel;
    Label4: TLabel;
    CImage2: CImage;
    ImageCollection1: TImageCollection;
    VirtualImage1: TVirtualImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ThemeChange(Sender: TObject; ThemeChange: FXThemeType; DarkTheme: boolean; Accent: TColor);
  public
    { Public declarations }
  end;

  procedure StartUI(Title: string = 'Please Wait'; Text: string = 'Now working on it...'; ImageIndex: integer = 0);
  procedure CloseUI;

  function UIIsOpen: boolean;

var
  LoadScreen: TLoadScreen;

implementation

{$R *.dfm}

procedure StartUI(Title, Text: string; ImageIndex: integer);
begin
  // Exit
  if UIIsOpen then
    Exit;

  // Create
  LoadScreen := TLoadScreen.Create( Application );

  with LoadScreen do
    begin
      Label1.Caption := Title;
      Label2.Caption := Text;

      VirtualImage1.ImageIndex := ImageIndex;
    end;

  LoadScreen.Show;
end;

procedure CloseUI;
begin
  // Exit
  if not UIIsOpen then
    Exit;

  // Clear
  LoadScreen.Close;
  LoadScreen.Free;
  LoadScreen := nil;
end;

function UIIsOpen: boolean;
begin
  Result := (LoadScreen <> nil) and LoadScreen.Visible;
end;

{ TLoadScreen }

procedure TLoadScreen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLoadScreen.FormCreate(Sender: TObject);
begin
  OnThemeChange := ThemeChange;
end;

procedure TLoadScreen.ThemeChange(Sender: TObject; ThemeChange: FXThemeType;
  DarkTheme: boolean; Accent: TColor);
var
  I: Integer;
begin
  for I := 0 to Self.ComponentCount -1 do
    if Components[I] is TLabel then
      if DarkTheme then
        (Components[I] as TLabel).Font.Color := clWhite
      else
        (Components[I] as TLabel).Font.Color := clBlack;

end;

end.
