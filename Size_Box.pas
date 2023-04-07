unit Size_Box;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Cod.Visual.Button,
  Cod.GDI, Cod.VarHelpers, Cod.ColorUtils, GDIPAPI, Cod.Visual.Slider,
  Vcl.StdCtrls, Cod.Types, CFX.Dialogs, Types;

type
  TSelectSize = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button_Save: CButton;
    Button_Cancel: CButton;
    DrawBox: TPaintBox;
    MoveAnim: TTimer;
    Panel3: TPanel;
    DefSizText: TLabel;
    DefSiz: TLabel;
    Panel4: TPanel;
    CButton1: CButton;
    CButton2: CButton;
    CButton3: CButton;
    CButton4: CButton;
    CButton5: CButton;
    procedure DrawBoxPaint(Sender: TObject);
    procedure DrawBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure MoveAnimTimer(Sender: TObject);
    procedure Button_SaveClick(Sender: TObject);
    procedure SelectPreset(Sender: TObject);
    procedure KeyDetection(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CButton5Click(Sender: TObject);
  private
    { Private declarations }

    MouseWasDown,
    MouseIsDown: boolean;
    TheRect: TRect;

    DownPos,
    LastPos: TPoint;

    PenDraw: TGDIPen;

    procedure WasSelected;
    procedure ClearSelect;

  public
    { Public declarations }
  end;

var
  SelectSize: TSelectSize;

  // Output
  NewSize: TPoint;

  Multiplier: double = 1;

implementation

uses
  MainUI;

{$R *.dfm}

procedure TSelectSize.SelectPreset(Sender: TObject);
begin
  WasSelected;

  // Select
  case CButton(Sender).Tag of
    1: TheRect := Rect(0, 0, DrawBox.Width, DrawBox.Height);
    2: begin
      if DrawBox.Width > DrawBox.Height then
        TheRect := Rect(0, 0, DrawBox.Width div 2, DrawBox.Height)
      else
        TheRect := Rect(0, 0, DrawBox.Width, DrawBox.Height div 2);
    end;
    3: TheRect := Rect(0, 0, DrawBox.Width div 2, DrawBox.Height div 2);
    4: TheRect := Rect(0, 0, DrawBox.Width div 3, DrawBox.Height div 3);
  end;

  // Draw
  DrawBox.Invalidate;
end;

procedure TSelectSize.WasSelected;
begin
  // The process will... never give you up, never let you down
  MouseWasDown := true;

  Button_Save.Enabled := MouseWasDown;
end;

procedure TSelectSize.CButton5Click(Sender: TObject);
var
  A: FXDialog;
begin
  A := FXDialog.Create;

  // Help Dialog
  try
    A.Title := 'Help';
    A.Text := 'Draw a rectangle size for your image to fit in the Paper.'#13 +
              #13'Tips using this dialog:' +
              #13' - Hold Ctrl to feely move the rectangle' +
              #13' - Use the preset buttons' +
              #13' - Press Ctrl + 1..5 to auto position the rectangle' +
              #13' - Press Shift for precision mode';

    A.Buttons := [mbOk];

    A.Execute;
  finally
    A.Free;
  end;
end;

procedure TSelectSize.ClearSelect;
begin
  // Never began
  MouseWasDown := false;

  Button_Save.Enabled := MouseWasDown;
end;

procedure TSelectSize.DrawBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Mouse Down
  MouseIsDown := true;
  WasSelected;

  // Precision
  if ssShift in Shift then
    begin
      X := (trunc(X / 10) * 10);
      Y := (trunc(Y / 10) * 10);
    end;

  // Position s
  DownPos := Point(X, Y);
  LastPos := DownPos;

  // Ctrl
  if not (ssCtrl in Shift) then
    TheRect.TopLeft := DownPos;

  // Also Notify on Move
  DrawBoxMouseMove(Sender, Shift, X, Y);
end;

procedure TSelectSize.DrawBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if MouseIsDown then
    begin
      // Precision
      if ssShift in Shift then
        begin
          X := (trunc(X / 10) * 10);
          Y := (trunc(Y / 10) * 10);
        end;

      // Ctrl
      if ssCtrl in Shift then
        TheRect.Offset(X - LastPos.X, Y - LastPos.Y)
      else
        TheRect.BottomRight := Point(X, Y);
    end;

  // Notif
  LastPos := Point(X, Y);

  // Draw
  DrawBox.Repaint;
end;

procedure TSelectSize.DrawBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MouseIsDown := false;
end;

procedure TSelectSize.DrawBoxPaint(Sender: TObject);
var
  NormalRect: TRect;
  Text: string;
begin
  with DrawBox.Canvas do
    begin
      // Draw Main Outline
      Pen.Color := clMaroon;
      Pen.Style := psDash;

      Brush.Style := bsSolid;
      Brush.Color := clWhite;

      Rectangle(ClipRect);

      // Select
      if MouseWasDown then
        begin
          // Get Normalised Rect
          NormalRect := TheRect;
          NormalRect.NormalizeRect;

          // Draw Secondary
          Pen.Color := clBlue;
          Pen.Style := psDashDot;

          // GDI for moving effect
          GDIRectangle(NormalRect, nil, PenDraw);

          // Draw Text
          Font.Color := clBlue;

          Text := 'Width: ' + Form1.PixelsToCmStr(NormalRect.Width * Multiplier, DPI_X)
                + ' Height: ' + Form1.PixelsToCmStr(NormalRect.Height * Multiplier, DPI_Y);

          TextOut( NormalRect.Right - TextWidth(Text), NormalRect.Bottom + 5, Text);
        end;
    end;
end;

procedure TSelectSize.FormCreate(Sender: TObject);
var
  DashArray: array [0..1] of Single;
begin
  PenDraw := GetRGB(clBlue).MakeGDIPen(1.5);

  DashArray[0] := 6; // length of dash
  DashArray[1] := 3; // length of gap
  PenDraw.SetDashStyle(DashStyleCustom);
  PenDraw.SetDashPattern(@DashArray[0], Length(DashArray));

  PenDraw.SetDashCap(DashCapFlat);
end;

procedure TSelectSize.KeyDetection(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 46 then
    ClearSelect;

  if ssCtrl in Shift then
    begin
      case Key of
        49: TheRect.Offset(-TheRect.TopLeft.X, -TheRect.TopLeft.Y);
        50: TheRect.Offset(DrawBox.Width - TheRect.BottomRight.X, -TheRect.TopLeft.Y);
        51: TheRect.Offset(-TheRect.TopLeft.X, DrawBox.Height - TheRect.BottomRight.Y);
        52: TheRect.Offset(DrawBox.Width - TheRect.BottomRight.X, DrawBox.Height - TheRect.BottomRight.Y);
        53: CenterRectInRect( TheRect, DrawBox.BoundsRect );
      end;
    end;
end;

procedure TSelectSize.MoveAnimTimer(Sender: TObject);
begin
  // Moving Line Effect
  PenDraw.SetDashOffset( PenDraw.GetDashOffset + 0.2 );

  DrawBox.repaint;
end;

procedure TSelectSize.Button_SaveClick(Sender: TObject);
begin
  NewSize := Point(round(TheRect.Width * Multiplier), round(TheRect.Height * Multiplier));
end;

end.
