unit MainUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Printers, CFX.Types, Cod.Graphics, Cod.VarHelpers,
  Vcl.NumberBox, Cod.Visual.Button, Cod.SysExtras, Loading_Screen,
  Threading, Cod.Visual.Panels, CFX.Animations, Cod.Visual.Image,
  CFX.ThemeManager, CFX.Dialogs, CFX.Forms, Size_Box, Cod.ByteUtils,
  Printer_Info, Cod.IconPicker, Cod.Printing, Cod.Visual.Progress,
  About_Form, CFX.Panels, Vcl.TitleBarCtrls, Cod.Visual.CheckBox, CFX.Checkbox,
  Cod.Visual.SplashScreen, Vcl.Imaging.pngimage, IOUtils, Cod.Files,
  Cod.Types;

type
  TPrintFit = (pfFull, pfMargin, pfSplit, pfRule4, pfRule9, pfContact, pfCustom);

  TForm1 = class(FXForm)
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    Slide_Menu: CPanel;
    Preview_Container: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    CPanel2: CPanel;
    Label10: TLabel;
    Label11: TLabel;
    CPanel3: CPanel;
    LoadFiles: CButton;
    CButton2: CButton;
    ListHolder: TPanel;
    ImageList: TListBox;
    PanelAnimate: CPanel;
    Panel6: TPanel;
    Printer_Cancel: CButton;
    Printer_Print: CButton;
    ScrollBox1: TScrollBox;
    IconsPanel: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    ProgressLoad: CProgress;
    FXMinimisePanel1: FXMinimisePanel;
    Printer_List: TComboBox;
    CButton1: CButton;
    Label1: TLabel;
    FXMinimisePanel2: FXMinimisePanel;
    Label7: TLabel;
    Printer_TwoSided: TComboBox;
    Label21: TLabel;
    Printer_Copies: TNumberBox;
    TitleBarPanel1: TTitleBarPanel;
    FXMinimisePanel3: FXMinimisePanel;
    Label8: TLabel;
    Printer_Orientation: TComboBox;
    Label17: TLabel;
    Printer_ImageSize: TComboBox;
    FXMinimisePanel4: FXMinimisePanel;
    Label9: TLabel;
    Label18: TLabel;
    Printer_Margins: TNumberBox;
    Image_Margin: TNumberBox;
    Label14: TLabel;
    Image_FitMode: TComboBox;
    Panel3: TPanel;
    DrawPreview: TPaintBox;
    Panel7: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Button_ViewPrev: CButton;
    Button_ViewNext: CButton;
    ProgressImage: CProgress;
    FXMinimisePanel5: FXMinimisePanel;
    Label2: TLabel;
    Version_Text: TLabel;
    EnbLegFont: FXCheckBox;
    Label3: TLabel;
    CButton3: CButton;
    CSplashScreen1: CSplashScreen;
    EnableAnim: FXCheckBox;
    CloseOnPrint: FXCheckBox;
    CenterOnPage: FXCheckBox;
    procedure ImageListDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ImageListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageListDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Printer_PrintClick(Sender: TObject);
    procedure LoadFilesClick(Sender: TObject);
    procedure Printer_OrientationChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CButton2Click(Sender: TObject);
    procedure ImageListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PanelAnimateClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button_ViewNextClick(Sender: TObject);
    procedure Button_ViewPrevClick(Sender: TObject);
    procedure ImageListClick(Sender: TObject);
    procedure Printer_ImageSizeChange(Sender: TObject);
    procedure ReloadPrinterChange(Sender: TObject);
    procedure Image_MarginChange(Sender: TObject);
    procedure Image_FitModeChange(Sender: TObject);
    procedure DrawPreviewPaint(Sender: TObject);
    procedure Printer_MarginsChange(Sender: TObject);
    procedure CButton1Click(Sender: TObject);
    procedure CButton3Click(Sender: TObject);
    procedure CSplashScreen1CompleteSetup(Sender: CSplashScreen);
    procedure CSplashScreen1Finalise(Sender: CSplashScreen);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EnbLegFontChange(Sender: TObject);
    procedure Printer_CancelClick(Sender: TObject);
    procedure CenterOnPageChange(Sender: TObject);
  private
    { Private declarations }
    procedure ThemeChange(Sender: TObject; ThemeChange: FXThemeType; DarkTheme: boolean; Accent: TColor);

    procedure RecurseApply(Control: TWinControl; ThemeDark: boolean);
    procedure AnimatePanel(Open: boolean);

    procedure CheckImageList;

    // Page Viewing
    procedure ViewPage(Index: integer);

    // Images
    procedure CacheImages;

    // Page Draw System
    procedure ReDrawPages;
    procedure PagesUpdated;

    // Data
    procedure ProgramData(Load: boolean = false);

    // Dialogs
    function GetNewPaperSize: boolean;
    procedure WaitUntilPrinterFree(Title: string = 'Printer is busy'; Text: string = 'Please wait until the printer is free'; ImageIndex: integer = 2);
  public
    { Public declarations }
    // Printer API
    function PrinterName: string;
    procedure ReloadPrinter;
    function PixelsToCm(pixels: extended; DPI: Integer): Double;
    function PixelsToCmStr(pixels: extended; DPI: Integer; cmText: string = 'cm'): string;
  end;

const
  // UI
  CUSTOM_TEXT = 'Custom';

  APP_VERSION = '1.0.3.0';

var
  Form1: TForm1;

  // Data
  StartingPoint : TPoint;
  AppData: string;

  // Drawing Mode
  SelectedFit: TPrintFit;
  CustomFit: TPoint;

  // Pictures
  CachedPictures: TArray<TBitMap>;

  // Pages and Preview
  CurrentPage: integer;
  CachedPages: TArray<TBitMap>;

  // Anim
  FMenuAnimate: TIntAni;

  // Printer
  PageSize: TRect;

  // Printer DPI
  DPI_X,
  DPI_Y: Integer;

implementation

{$R *.dfm}

procedure TForm1.Printer_OrientationChange(Sender: TObject);
begin
  ReloadPrinter;

  // Redraw
  ReDrawPages
end;

procedure TForm1.Printer_PrintClick(Sender: TObject);
var
  TotalPages, Index, PageInc: integer;
  I: Integer;

  A: FXDialog;
begin
  // Exit
  WaitUntilPrinterFree;

  // Printer Settings
  ReloadPrinter;

  // Pages Count
  TotalPages := Length(CachedPages);

  // No Images
  if TotalPages = 0 then
    begin
      A := FXDialog.Create;

      // FX Dialog
      try
        A.Title := 'No images to print';
        A.Text := 'Please add some images to print';

        A.Buttons := [mbOk];
        AnimatePanel(true);

        A.Execute;
      finally
        A.Free;
      end;

      Exit;
    end;

  // Printer Offline
  if not IsPrinterOnline(PrinterName) then
    begin
      A := FXDialog.Create;

      // FX Dialog
      try
        A.Title := 'The selected printer is offline';
        A.Text := 'The selected printer seems to be offline, send print request anyways?';

        A.Buttons := [mbYes, mbNo];

        if A.Execute = mrNo then
          Exit;
      finally
        A.Free;
      end;
    end;

  // Advance Type (Double Siding)
  case Printer_TwoSided.ItemIndex of
    1: begin
      PageInc := 2;
      I := 1; (* Start Index *)
    end;
    2: begin
      PageInc := 2;
      I := 2; (* Start Index *)
    end
    else begin
      PageInc := 1;
      I := 1; (* Start Index *)
    end;
  end;

  // Draw Pages
  Printer.BeginDoc;

  // Print Canceled
  if not Printer.Printing then
    begin
      A := FXDialog.Create;

      // FX Dialog
      try
        A.Title := 'Print canceled';
        A.Text := 'The print job has been canceled';

        A.Buttons := [mbOk];

        A.Execute;

        Exit;
      finally
        A.Free;
      end;
    end;

  // Draw Pages
  while I <= TotalPages do
    begin
      // Index
      Index := I - 1;

      // Draw Bitmap
      DrawImageInRect( Printer.Canvas, PageSize, CachedPages[Index], TDrawMode.dmCenterFit, Printer_Margins.ValueInt, false );

      // Increase
      Inc( I, PageInc );

      // New Page
      if I <= TotalPages then
        Printer.NewPage;
    end;

  // Print
  Printer.Title := 'Codrut Printing, ' + TotalPages.ToString + ' Pages';

  Printer.EndDoc;

  // Wait
  WaitUntilPrinterFree( 'Printing', 'Now printing your document', 1 );

  // Close after Print
  if CloseOnPrint.IsChecked then
    Close;
end;

procedure TForm1.ProgramData(Load: boolean);
var
  FileName: string;
  ST: TStringList;
begin
  FileName := AppData + 'settings.dat';

  if Load then
    begin
      if not TFile.Exists(FileName) then
        Exit;

      ST := TStringList.Create;
      try
        // Window
        ST.LoadFromFile( FileName );
        if ST[0] = '0' then
          begin
            Position := poDesigned;
            Left := ST[1].ToInteger;
            Top := ST[2].ToInteger;
            Width := ST[3].ToInteger;
            Height := ST[4].ToInteger;
          end;

        // Settings
        EnableAnim.IsChecked := stringtoboolean(ST[5]);
        EnbLegFont.IsChecked := stringtoboolean(ST[6]);
        Printer_TwoSided.ItemIndex := ST[7].ToInteger;
        CloseOnPrint.IsChecked := stringtoboolean(ST[8]);
        CenterOnPage.IsChecked := stringtoboolean(ST[9]);
      finally
        ST.Free;
      end;
    end
  else
    begin
      ST := TStringList.Create;
      try
        // Window
        ST.Add(integer(WindowState).ToString);
        ST.Add( Left.ToString );
        ST.Add( Top.ToString );
        ST.Add( Width.ToString );
        ST.Add( Height.ToString );

        // Settings
        ST.Add( booleantostring(EnableAnim.IsChecked) );
        ST.Add( booleantostring(EnbLegFont.IsChecked) );
        ST.Add( Printer_TwoSided.ItemIndex.ToString );
        ST.Add( booleantostring(CloseOnPrint.IsChecked) );
        ST.Add( booleantostring(CenterOnPage.IsChecked) );

        ST.SaveToFile( FileName );
      finally
        ST.Free;
      end;
    end;
end;

procedure TForm1.RecurseApply(Control: TWinControl; ThemeDark: boolean);
var
  I: Integer;
  FontColor,
  Fill1,
  Fill2,
  Fill3: TColor;
begin
  if ThemeDark then
    begin
      FontColor := clWhite;
      Fill1 := 202020;
      Fill2 := $001F1F1F;
      Fill3 := $00383838;
    end
  else
    begin
      FontColor := clBlack;
      Fill1 := clBtnFace;
      Fill2 := $00E6E6E6;
      Fill3 := $00DBDBDB;
    end;

  for I := 1 to Control.ComponentCount - 1 do
    begin
      if Components[I] is TWinControl then
        if Components[I] <> Control then
          RecurseApply(TWinControl(Components[I]), ThemeDark);

      if Components[I] is TPanel then
        begin
          TPanel(Components[I]).Font.Color := FontColor;
        
          if not TPanel(Components[I]).ParentColor then
            case TPanel(Components[I]).Tag of
              1: TPanel(Components[I]).Color := Fill1;
              2: TPanel(Components[I]).Color := Fill2;
              3: TPanel(Components[I]).Color := Fill3;
            end;

          with TPanel(Components[I]) do
            if Font.Name = 'Segoe Fluent Icons' then
              Font.Name := ThemeManager.IconFont;
        end;

      if Components[I] is TScrollBox then
        begin
          TScrollBox(Components[I]).Font.Color := FontColor;
          
            case TScrollBox(Components[I]).Tag of
              1: TScrollBox(Components[I]).Color := Fill1;
              2: TScrollBox(Components[I]).Color := Fill2;
              3: TScrollBox(Components[I]).Color := Fill3;
            end;
        end;

      if Components[I] is TLabel then
        with TLabel(Components[I]) do
        begin
          Font.Color := FontColor;

          if Font.Name = 'Segoe Fluent Icons' then
            Font.Name := ThemeManager.IconFont;
        end;
    end;
end;

procedure TForm1.ReDrawPages;
var
  PrintWidth, PrintHeight,
  TotalPictures: integer;

  APage, X, Y,
  DEF_X, DEF_Y: integer;
  DrawR: TRect;

  FitW, FitH: integer;
  I, P: Integer;

  OverfillX, OverfillY: boolean;

  A: FXDialog;
begin
  // Initialize
  FitW := 1;
  FitH := 1;

  // Get Image Fit Settings
  case SelectedFit of
    pfFull, pfMargin: begin
      FitW := PageSize.Width;
      FitH := PageSize.Height;
    end;
    pfSplit: begin
      if Printer.Orientation = poPortrait then
        begin
          FitW := PageSize.Width;
          FitH := PageSize.Height div 2;
        end
      else
        begin
          FitW := PageSize.Width div 2;
          FitH := PageSize.Height;
        end;
    end;
    pfRule4: begin
      FitW := PageSize.Width div 2;
      FitH := PageSize.Height div 2;
    end;
    pfRule9: begin
      FitW := PageSize.Width div 3;
      FitH := PageSize.Height div 3;
    end;
    pfContact: begin
      if Printer.Orientation = poPortrait then
        begin
          FitW := PageSize.Width div 5;
          FitH := PageSize.Height div 7;
        end
      else
        begin
          FitW := PageSize.Width div 7;
          FitH := PageSize.Height div 5;
        end;
    end;
    pfCustom: begin
      FitW := CustomFit.X;
      FitH := CustomFit.Y;
    end;
  end;

  // Invalid Size
  if (FitW <= 0) or (FitH <= 0) then
    begin
      A := FXDialog.Create;

      // FX Dialog
      try
        A.Title := 'Invalid Picture Size';
        A.Text := 'The picture size cannot be 0 or lower!';

        A.Buttons := [mbOk];
        AnimatePanel(true);

        A.Execute;

        Exit;
      finally
        A.Free;
      end;
    end;

  // Clear previous
  SetLength(CachedPages, 0);

  // Prepare
  APage := 0;

  PrintWidth := PageSize.Width;
  PrintHeight := PageSize.Height;

  TotalPictures := High(CachedPictures);

  // Default Starting Points
  if CenterOnPage.IsChecked then
    begin
      DEF_X := (PrintWidth mod FitW) div 2;
      DEF_Y := (PrintHeight mod FitH) div 2;
    end
  else
    begin
      DEF_X := 0;
      DEF_Y := 0;
    end;

  // Default Starting Values
  X := DEF_X;
  Y := DEF_Y;

  // Progress Setup
  ProgressImage.Visible := true;

  // Redraw Cached Bitmaps
  for I := 0 to TotalPictures do
    begin
      // Progress
      P := round(((I+1) / (TotalPictures + 1)) * 100);

      if P <> ProgressImage.Position then
        ProgressImage.Position := P;

      // Overfill Width
      OverfillX := X + FitW > PrintWidth;

      if OverfillX then
        begin
          X := DEF_X;
          Y := Y + FitH;
        end;

      // Overfill Height
      OverfillY := Y + FitH > PrintHeight;

      if OverfillY then
        begin
          X := DEF_X;
          Y := DEF_Y;

          // Next Page
          Inc(APage);
        end;

      // Draw Rect
      DrawR := Rect( X, Y, X + FitW, Y + FitH );

      // Increase Size
      if APage > High(CachedPages) then
        begin
          SetLength(CachedPages, APage + 1);

          CachedPages[APage] := TBitMap.Create(PrintWidth, PrintHeight);
        end;

      // Ready, Set, Draw!
      DrawImageInRect(CachedPages[APage].Canvas, DrawR, CachedPictures[I],
        TDrawMode(Image_FitMode.ItemIndex), Image_Margin.ValueInt, true);

      // Time for the next page
      X := X + FitW;
    end;

  // Progress Setup
  ProgressImage.Visible := false;

  // Update
  PagesUpdated;
end;

procedure TForm1.ReloadPrinter;
var
  PrinterDC: HDC;
begin
  // Wait if printer busy
  WaitUntilPrinterFree();

  // Apply
  Printer.PrinterIndex := Printer_List.ItemIndex;

  Printer.Copies := Printer_Copies.ValueInt;

  Printer.Orientation := TPrinterOrientation( Printer_Orientation.ItemIndex );
  PageSize := Rect( 0, 0, Printer.PageWidth, Printer.PageHeight );

  // DPI
  PrinterDC := Printer.Handle;
  DPI_X := GetDeviceCaps(PrinterDC, LOGPIXELSX);
  DPI_Y := GetDeviceCaps(PrinterDC, LOGPIXELSY);
end;

procedure TForm1.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - WheelDelta div 10;
end;

procedure TForm1.ThemeChange(Sender: TObject; ThemeChange: FXThemeType;
  DarkTheme: boolean; Accent: TColor);
begin
  RecurseApply(TWinControl(Self), DarkTheme);

  if DarkTheme then
    begin
      Preview_Container.Color := $00383838;
    end
  else
    begin
      Preview_Container.Color := $00DBDBDB;
    end;

  // Interface
  Slide_Menu.Color := ThemeManager.AccentColor;
  Preview_Container.Color := ThemeManager.AccentColor;
end;

procedure TForm1.ViewPage(Index: integer);
var
  MaxItems: integer;
begin
  // Items
  MaxItems := High(CachedPages);

  // Buttons
  Button_ViewPrev.Enabled := Index > 0;
  Button_ViewNext.Enabled := Index < MaxItems;

  // Text
  Label15.Caption := 'Page ' + (Index+1).ToString + '/' + (MaxItems+1).ToString;

  // Invalid
  if (Index < 0) or (Index > MaxItems) then
    begin
      Label15.Caption := 'No Pages';

      Button_ViewPrev.Enabled := false;
      Button_ViewNext.Enabled := false;
    end;

  // Set
  CurrentPage := Index;

  // View
  DrawPreview.Repaint;
end;

procedure TForm1.WaitUntilPrinterFree(Title: string; Text: string; ImageIndex: integer);
var
  Task: ITask;
begin
  if Printer.Printing then
    begin
      StartUI( Title, Text, 2 );

      Task := TTask.Run(procedure
        var
          CanContinue: boolean;
        begin
          repeat
            Sleep(1000);

            CanContinue := Printer.Printing;
          until not CanContinue;

          TThread.Synchronize(nil, procedure
            begin
              CloseUI;
            end);
        end);

      Abort;
    end;
end;

procedure TForm1.AnimatePanel(Open: boolean);
var
  Border,
  FinalPosition: integer;
begin
  // Exit
  if (FMenuAnimate <> nil) and FMenuAnimate.Running then
    begin
      FMenuAnimate.WaitFor;

      FMenuAnimate.Free;
      Exit;
    end;

  // Icon
  if Open then
    PanelAnimate.Caption := ''
  else
    PanelAnimate.Caption := '';

  // Values
  Border := PanelAnimate.Width;

  FMenuAnimate := TIntAni.Create;

  FMenuAnimate.Duration := 250;

  FMenuAnimate.StartValue := Slide_Menu.Left;
  if Open then
    begin
      FinalPosition := ClientWidth - Slide_Menu.Width;
      FMenuAnimate.AniFunctionKind := afkBack;
    end
  else
    begin
      FinalPosition := ClientWidth - Border;
      FMenuAnimate.AniFunctionKind := afkQuintic;
    end;
  FMenuAnimate.DeltaValue := FinalPosition - Slide_Menu.Left;

  // Instant Mode
  if not EnableAnim.IsChecked then
    begin
      Slide_Menu.Left := FinalPosition;

      Exit;
    end;

  // Synbc
  FMenuAnimate.OnSync := procedure(Value: integer)
  begin
    Slide_Menu.Left := Value;
  end;

  FMenuAnimate.OnDone := procedure
  begin
    TThread.Synchronize(nil, procedure
      begin
        ImageList.Invalidate;
      end);
  end;

  // Start
  FMenuAnimate.Start;
  FMenuAnimate.FreeOnTerminate := true;
end;

procedure TForm1.Button_ViewNextClick(Sender: TObject);
begin
  ViewPage( CurrentPage + 1 );
end;

procedure TForm1.Button_ViewPrevClick(Sender: TObject);
begin
  ViewPage( CurrentPage - 1 );
end;

procedure TForm1.CacheImages;
var
  I, Index: Integer;
  BitMap: TBitMap;
  FileName: string;
begin
  // Clear Bitmaps
  for I := 0 to High(CachedPictures) do
    if not CachedPictures[I].Empty then
      CachedPictures[I].Free;

  // Load Images
  SetLength(CachedPictures, 0);

  // Get Images
  for I := 0 to ImageList.Count - 1 do
    begin
      // File
      FileName := ImageList.Items[I];

      // Load if possible
      try
        LoadGraphicAsBitmap(FileName, BitMap);

        Index := Length(CachedPictures);
        if (BitMap <> nil) and (not BitMap.Empty) then
          begin
            // New Size
            SetLength(CachedPictures, Index + 1);

            // Change Pointer
            CachedPictures[Index] := BitMap;
          end;
      finally
        // Clear Pointer
        BitMap := nil;
      end;
    end;
end;

procedure TForm1.CButton1Click(Sender: TObject);
begin
  WaitUntilPrinterFree();

  PrinterInfo := TPrinterInfo.Create(Self);
  try
    with PrinterInfo do
      begin
        GetInfo;

        ShowModal;
      end;
  finally
    PrinterInfo.Free;
  end;
end;

procedure TForm1.CButton2Click(Sender: TObject);
begin
  ImageList.DeleteSelected;

  CheckImageList;
end;

procedure TForm1.CButton3Click(Sender: TObject);
begin
  About := TAbout.Create(Self);
  try
    About.VerLabel.Caption := About.VerLabel.Caption + APP_VERSION;
    About.ShowModal;
  finally
    About.Free;
  end;
end;

procedure TForm1.CenterOnPageChange(Sender: TObject);
begin
  // Redraw Images
  ReDrawPages;
end;

procedure TForm1.LoadFilesClick(Sender: TObject);
var
  I: integer;
begin
  if OpenDialog.Execute then
    begin
      for I := 0 to OpenDialog.Files.Count - 1 do
        ImageList.Items.Add( OpenDialog.Files[I] );

      CheckImageList;
    end;
end;

procedure TForm1.Image_FitModeChange(Sender: TObject);
begin
  ReDrawPages;
end;

procedure TForm1.Image_MarginChange(Sender: TObject);
begin
  ReDrawPages;
end;

procedure TForm1.CheckImageList;
var
  I: Integer;
begin
  // Delete Invalid
  for I := ImageList.Count - 1 downto 0 do
    if not fileexists( ImageList.Items[I] ) then
      ImageList.Items.Delete(I);

  // Show
  ImageList.Visible := ImageList.Count > 0;

  // Reload Images
  CacheImages;
  ReDrawPages;
end;

procedure TForm1.CSplashScreen1CompleteSetup(Sender: CSplashScreen);
begin
  CSplashScreen1.Left := 0;
  CSplashScreen1.Top := TitleBarPanel1.Height;
  CSplashScreen1.Width := Width;
  CSplashScreen1.Height := Height;

  Enabled := false;
end;

procedure TForm1.CSplashScreen1Finalise(Sender: CSplashScreen);
begin
  // Re enable the form
  Enabled := true;

  // Open panel if no items
  AnimatePanel( ImageList.Count = 0 );

  // Unminimise
  FXMinimisePanel1.ToggleMinimised;
  FXMinimisePanel3.ToggleMinimised;
end;

procedure TForm1.DrawPreviewPaint(Sender: TObject);
var
  R: TRect;
begin
  with DrawPreview.Canvas do
    begin
      Brush.Color := Self.Color;
      FillRect(DrawPreview.BoundsRect);

      // Image
      if (CurrentPage > -1) and (CurrentPage < Length(CachedPages)) then
        begin
          R := GetDrawModeRect( DrawPreview.BoundsRect, CachedPages[CurrentPage], TDrawMode.dmCenterFit, 0);

          // Draw Page
          Brush.Color := clWhite;
          FillRect(R);

          // Page Margin
          Inc(R.Left, Printer_Margins.ValueInt);
          Inc(R.Top, Printer_Margins.ValueInt);
          Dec(R.Right, Printer_Margins.ValueInt);
          Dec(R.Bottom, Printer_Margins.ValueInt);

          // Draw Image
          StretchDraw(R, CachedPages[CurrentPage], 255);
        end;
    end;
end;

procedure TForm1.EnbLegFontChange(Sender: TObject);
begin
  if EnbLegFont.IsChecked then
    ThemeManager.IconFont := 'Segoe MDL2 Assets'
  else
    ThemeManager.LoadFontSettings;
end;

function TForm1.PrinterName: string;
begin
  Result := Printer.Printers[Printer.PrinterIndex];
end;

procedure TForm1.Printer_CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Printer_ImageSizeChange(Sender: TObject);
begin
  // Set View Mode
  SelectedFit := TPrintFit(TComboBox(Sender).ItemIndex);

  // Update
  if SelectedFit = pfCustom then
    begin
      if GetNewPaperSize then
        begin
          Printer_ImageSize.Items[integer(SelectedFit)] := CUSTOM_TEXT + ' ' +
                  PixelsToCmStr(CustomFit.X, DPI_X) + ' x ' + PixelsToCmStr(CustomFit.Y, DPI_Y);
          Printer_ImageSize.ItemIndex := integer(SelectedFit);
        end
      else
        begin
          Printer_ImageSize.Items[integer(SelectedFit)] := CUSTOM_TEXT + '...';
          Printer_ImageSize.ItemIndex := 0;
          SelectedFit := pfFull;
        end;
    end;

  // Redraw Images
  ReDrawPages;
end;

procedure TForm1.ReloadPrinterChange(Sender: TObject);
begin
  ReloadPrinter;
end;

procedure TForm1.Printer_MarginsChange(Sender: TObject);
begin
  PagesUpdated;
end;

procedure TForm1.PagesUpdated;
begin
  // Limit
  if (CurrentPage > High(CachedPages)) then
    ViewPage(High(CachedPages))
      else
        // New pages added!
        if (CurrentPage = -1) then
          ViewPage(0)
            else
              // Reupdate Preview
                ViewPage(CurrentPage);
end;

procedure TForm1.PanelAnimateClick(Sender: TObject);
begin
  if Slide_Menu.Left < ClientWidth - PanelAnimate.Width then
    AnimatePanel(false)
  else
    AnimatePanel(true);
end;

function TForm1.PixelsToCm(pixels: extended; DPI: Integer): Double;
begin
  Result := pixels / DPI * 2.54;
end;

function TForm1.PixelsToCmStr(pixels: extended; DPI: Integer; cmText: string): string;
begin
  Result := (trunc(PixelsToCm(pixels, dpi) * 10) /10).ToString + cmText;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if UIISOpen then
    LoadScreen.SetFocus;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ProgramData(false);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  A: FXDialog;
  I: Integer;
begin
  // Program Data
  AppData := GetPathInAppData('Codrut Print');
  try
    ProgramData(true);
  except
    A := FXDialog.Create;

    // FX Dialog
    try
      A.Title := 'An error occured';
      A.Text := 'The programs data could not be loaded';

      A.Buttons := [mbOk];

      A.ScreenCenter := true;

      A.Execute;
    finally
      A.Free;
    end;
  end;

  // No Printer Error
  if Printer.Printers.Count = 0 then
    begin
      A := FXDialog.Create;

      // FX Dialog
      try
        A.Title := 'There are no printers connected';
        A.Text := 'Please connect a printer to continue';

        A.Buttons := [mbOk];

        A.ScreenCenter := true;

        A.Execute;

        Self.Close;
      finally
        A.Free;
      end;
    end;

  // Load Printer List
  Printer_List.Items := Printer.Printers;

  // Load default settings
  Printer_List.ItemIndex := Printer.PrinterIndex;
  Printer_Orientation.ItemIndex := integer(Printer.Orientation);

  // Load Printer
  ReloadPrinter;

  // Form
  OnThemeChange := ThemeChange;

  Version_Text.Caption := Version_Text.Caption + APP_VERSION;

  // Load Parameter Files
  for I := 1 to ParamCount do
    begin
      if TFile.Exists(ParamStr(I)) then
        ImageList.Items.Add( ParamStr(I) );
    end;

  // Images
  CheckImageList;
  ReDrawPages;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Slide_Menu.Height := Preview_Container.Height;
  Slide_Menu.Top := Preview_Container.Top;

  Button_ViewPrev.Left := Preview_Container.Width div 2 - 5 - Button_ViewPrev.Width;
  Button_ViewNext.Left := Preview_Container.Width div 2 + 5;

  IconsPanel.Top := ListHolder.Height div 2 - IconsPanel.Height div 2;
end;

function TForm1.GetNewPaperSize: boolean;
var
  ProperWidth: integer;
  ProperHeight: integer;

  V1, V2: double;

  TargetSize: TPoint;
begin
  // Create and prepare
  SelectSize := TSelectSize.Create(Self);

  // Get Value
  ProperWidth := PageSize.Width;
  ProperHeight := PageSize.Height;

  TargetSize.X := round(0.6 * Screen.Width);
  TargetSize.Y := round(0.6 * Screen.Height);

  // Fix Windows Sizing Exceeds Screen
  if (ProperWidth > TargetSize.X) or (ProperHeight > TargetSize.Y) then
    begin
      // Get 2 scaling options
      V1 := ProperWidth / TargetSize.X;
      V2 := ProperHeight / TargetSize.Y;

      // Select Biggest Multiplier
      if V1 > V2 then
        Multiplier := V1
      else
        Multiplier := V2;

      // Apply Sizing
      ProperWidth := round(ProperWidth / Multiplier);
      ProperHeight := round(ProperHeight / Multiplier);
    end;


  // Form
  with SelectSize do
    begin
      // Data
      DefSiz.Caption := PixelsToCmStr(PageSize.Width, DPI_X) + ' x ' + PixelsToCmStr(PageSize.Height, DPI_Y) + ' (' + PageSize.Width.ToString + 'px x ' + PageSize.Height.ToString + 'px)';

      // Apply Size
      Height := Height + (ProperHeight - DrawBox.Height);
      Width := Width + (ProperWidth - DrawBox.Width);
    end;

  // Show
  try
    Result := SelectSize.ShowModal = mrOk;
  finally
    SelectSize.Free;
  end;

  // Update Size
  if Result then
    begin
      CustomFit := NewSize;
    end;
end;

procedure TForm1.ImageListClick(Sender: TObject);
begin
  if ImageList.ItemIndex <> -1 then
    ImageList.Hint := ImageList.Items[ImageList.ItemIndex]
  else
    ImageList.Hint := '';
end;

procedure TForm1.ImageListDragDrop(Sender, Source: TObject; X, Y: Integer);
var
    DropPosition, StartPosition: Integer;
    DropPoint: TPoint;
begin
    DropPoint.X := X;
    DropPoint.Y := Y;
    with Source as TListBox do
    begin
      StartPosition := ItemAtPos(StartingPoint,True) ;
      DropPosition := ItemAtPos(DropPoint,True) ;

      Items.Move(StartPosition, DropPosition) ;
    end;
end;

procedure TForm1.ImageListDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source = ImageList;
end;

procedure TForm1.ImageListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    46: begin
      ImageList.DeleteSelected;
      CheckImageList;
    end;
    65: if ssCtrl in Shift then
      ImageList.SelectAll;
  end;
end;

procedure TForm1.ImageListMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  StartingPoint.X := X;
  StartingPoint.Y := Y;
end;

end.
