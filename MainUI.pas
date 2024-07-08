unit MainUI;

{$SCOPEDENUMS ON}

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Printers,  Types, Vcl.NumberBox, Threading,
  Math, UITypes, Winapi.WinSpool, Vcl.TitleBarCtrls, IOUtils, IniFiles,

  // Forms
  Loading_Screen, About_Form, Printer_Info, Size_Box,

  // Cod Visual
  Cod.Visual.SplashScreen, Cod.Visual.Image,
  Cod.Visual.Panels,

  // Cod Utils
  Cod.Types, Cod.StringUtils, Cod.Printing, Cod.SysExtras, Cod.ColorUtils,
  Cod.Files, Cod.Graphics, Cod.VarHelpers, Cod.ByteUtils,

  // Imaging
  Vcl.Imaging.pngimage,
  Vcl.Imaging.GIFImg,
  Vcl.Imaging.jpeg,
  Cod.Imaging.WebP,
  Cod.Imaging.Heif,

  // CFX
  CFX.Forms, CFX.Types, CFX.ThemeManager, CFX.Dialogs, CFX.Checkbox, CFX.Panels,
  CFX.Animations, CFX.Controls, CFX.ScrollBox, ShellAPI, Cod.FileDrop, CFX.TextBox,
  CFX.Progress, Cod.ArrayHelpers, CFX.QuickDialogs, CFX.Button, CFX.AppManager,
  Cod.Dialogs.ColorDialog, Vcl.ControlList, CFX.Classes, CFX.PopupMenu;

type
  TPrintFit = (Full, Split, Split3, Rule4, Rule9, Contact, Custom);

  // Image item
  TImageItem = record
    FileName: string;
    Path: string;
    Extension: string;
    OverrideName: string;

    PreviewLoaded,
    Loaded: boolean;

    Thumbnail: TBitMap;
    Image: TBitMap;
  end;

  // Task classes
  TBaseTask = class(TThread)
    Succeeded: boolean;

    procedure Execute; override;

    procedure DoPrepare; virtual;
    procedure DoTask; virtual;
    procedure DoFinalise; virtual;

    constructor Create;
  end;

  TImageLoader = class(TBaseTask)
    ThumbnailSize: TSize;

    procedure DoPrepare; override;
    procedure DoTask; override;
    procedure DoFinalise; override;
  end;

  TImageDraw = class(TBaseTask)
    Items: TStrings;

    FitMode: TDrawMode;
    ImageMargin: integer;
    FilenameFont: TFont;
    FilenameHeight: integer;
    ExtraFilename,
    IncludeExt,
    PageCenter: boolean;

    procedure DoPrepare; override;
    procedure DoTask; override;
    procedure DoFinalise; override;
  end;

  // Main form
  TForm1 = class(FXForm)
    OpenFilesDialog: TOpenDialog;
    Panel1: TPanel;
    TitleBarPanel1: TTitleBarPanel;
    CSplashScreen1: CSplashScreen;
    FXScrollBox1: FXScrollBox;
    FXMinimisePanel1: FXMinimisePanel;
    Label1: TLabel;
    Printer_List: TComboBox;
    FXMinimisePanel2: FXMinimisePanel;
    Label7: TLabel;
    Label21: TLabel;
    Printer_TwoSided: TComboBox;
    Printer_Copies: TNumberBox;
    FXMinimisePanel3: FXMinimisePanel;
    Label8: TLabel;
    Label17: TLabel;
    CenterOnPage: FXCheckBox;
    Printer_Orientation: TComboBox;
    Printer_ImageSize: TComboBox;
    FXMinimisePanel4: FXMinimisePanel;
    Label9: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Printer_Margins: TNumberBox;
    Image_Margin: TNumberBox;
    Image_FitMode: TComboBox;
    FXMinimisePanel5: FXMinimisePanel;
    Label2: TLabel;
    Version_Text: TLabel;
    Label3: TLabel;
    EnbLegFont: FXCheckBox;
    EnableAnim: FXCheckBox;
    CloseOnPrint: FXCheckBox;
    FXMinimisePanel6: FXMinimisePanel;
    Label4: TLabel;
    Label5: TLabel;
    Extras_Filename: FXCheckBox;
    Filename_Height: TNumberBox;
    FXButton4: FXButton;
    FXButton5: FXButton;
    FXButton6: FXButton;
    FXAppManager1: FXAppManager;
    Main_Contain: TPanel;
    Preview_Container: TPanel;
    Panel4: TPanel;
    DrawPreview: TPaintBox;
    Panel7: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Button_ViewPrev: FXButton;
    Button_ViewNext: FXButton;
    Slide_Menu: CPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    CPanel2: CPanel;
    Label10: TLabel;
    Label11: TLabel;
    ListHolder: TPanel;
    AddPicturePanel: TPanel;
    IconsPanel: TPanel;
    Label6: TLabel;
    Label19: TLabel;
    PanelAnimate: CPanel;
    PrinterSetupDialog1: TPrinterSetupDialog;
    FXButton7: FXButton;
    FXPanel1: FXPanel;
    ProgressStatus: FXTextBox;
    ProgressImage: FXProgress;
    Printer_Cancel: FXButton;
    Printer_Print: FXButton;
    Label12: TLabel;
    FXButton8: FXButton;
    ColorDialog1: CColorDialog;
    FXButton9: FXButton;
    ControlList1: TControlList;
    CImage1: CImage;
    Label13: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    FXPanel2: FXPanel;
    FXButton2: FXButton;
    FXButton1: FXButton;
    FXButton3: FXButton;
    FXPopupMenu1: FXPopupMenu;
    Extras_filename_ext: FXCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Printer_PrintClick(Sender: TObject);
    procedure LoadFilesClick(Sender: TObject);
    procedure Printer_OrientationChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PanelAnimateClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button_ViewNextClick(Sender: TObject);
    procedure Button_ViewPrevClick(Sender: TObject);
    procedure Printer_ImageSizeChange(Sender: TObject);
    procedure Image_FitModeChange(Sender: TObject);
    procedure DrawPreviewPaint(Sender: TObject);
    procedure CButton1Click(Sender: TObject);
    procedure CButton3Click(Sender: TObject);
    procedure CSplashScreen1CompleteSetup(Sender: CSplashScreen);
    procedure CSplashScreen1Finalise(Sender: CSplashScreen);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EnbLegFontChange(Sender: TObject);
    procedure Printer_CancelClick(Sender: TObject);
    procedure CheckboxNeedChange(Sender: TObject);
    procedure CButton4Click(Sender: TObject);
    procedure FXButton1Click(Sender: TObject);
    procedure FXButton6Click(Sender: TObject);
    procedure FXAppManager1UpdateStartCheck(Sender: TObject);
    procedure FXAppManager1UpdateChecked(Sender: TObject);
    procedure FXButton7Click(Sender: TObject);
    procedure Printer_ListChange(Sender: TObject);
    procedure Printer_CopiesExit(Sender: TObject);
    procedure EditSaveHandler(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Filename_HeightExit(Sender: TObject);
    procedure Printer_MarginsExit(Sender: TObject);
    procedure Image_MarginExit(Sender: TObject);
    procedure FXButton8Click(Sender: TObject);
    procedure FXButton9Click(Sender: TObject);
    procedure ControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure ControlList1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ControlList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ControlList1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ControlList1ItemClick(Sender: TObject);
    procedure ControlList1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    MenuRename, MenuDelete: FXPopupItem;

    // Events
    procedure RenameEvent(Sender: TObject);

    // Theme
    procedure ThemeChange(Sender: TObject; ThemeChange: FXThemeType; DarkTheme: boolean; Accent: TColor);
    procedure RecurseApply(Control: TWinControl; ThemeDark: boolean);
    procedure AnimatePanel(Open: boolean);

    // Validation
    procedure ValidateFilenameHeight;
    procedure ValidatePageMargins;
    procedure ValidateImageMargins;
    procedure ValidateImageSize;

    // Data
    procedure ApplyMarginsTo(var R: TRect);
    function GetFitSize: TSize;

    // Images
    procedure ImagesUpdated;
    procedure AddImages(Files: TArray<string>);
    procedure DeleteImage(Index: integer);

    // Page Viewing
    procedure ViewPage(Index: integer);

    // Threads
    procedure ReDrawPages;

    // Page Draw System
    procedure PagesUpdated;

    // Progress
    procedure ResetProgress(Enabled: boolean = false; Status: string = ''; Marquee: boolean = false);
    procedure SetProgress(Value: single);
    procedure SetEnableInteraction(Enable: boolean);

    // Data
    procedure ProgramData(Load: boolean = false);

    // Drag drop
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;

    // Dialogs
    function GetNewPaperSize: boolean;
    procedure WaitUntilPrinterFree(Title: string = 'Printer is busy'; Text: string = 'Please wait until the printer is free'; ImageIndex: integer = 2);
  public
    { Public declarations }
    // Printer API
    function PrinterName: string;

    // Printers
    function GetPrinterList: TArray<string>;
    /// <sumary>
    /// Load printer list and returns if any changes were detected.
    /// <summary>
    function LoadPrinters: boolean;
    function LoadPrintersDialog: boolean;

    // Pages
    function AllocateNewPage(AWidth, AHeight: integer): integer;
    procedure FreeAllocatedPages;

    // Get values as PX
    function GetFilenameHeight: integer;
    function GetImageMargins: integer;
    function GetPageMargins: integer;

    // Printer
    procedure GetPrinterInfo;
    procedure ReadPrinterSettings;
    procedure WritePrinterSettings;

    function CmToPixels(cm: extended; DPI: Integer): cardinal;
    function PixelsToCm(pixels: extended; DPI: Integer): single;
    function PixelsToCmStr(pixels: extended; DPI: Integer; cmText: string = 'cm'): string;
  end;

const
  // UI
  CUSTOM_TEXT = 'Custom';

  // Printing
  DEFAULT_PAGE_COLOR = clWhite;

var
  Form1: TForm1;

  // Data
  AppData: string;

  // Drawing Mode
  PageBackground: TColor = DEFAULT_PAGE_COLOR;
  SelectedFit: TPrintFit;
  CustomFit: TPoint;

  // Data
  Images: TArray<TImageItem>;

  // Pages and Preview
  CurrentPage: integer;
  CachedPages: TArray<TBitMap>;

  // Status
  LoadingSettings: boolean;
  ImagesLoading: boolean;
  PagesRendering: boolean;
  AnimRunning: boolean;

  // Printer
  PageSize: TSize;
  RegisteredPrinters: TArray<string>;
  DPI_X: integer = 1;
  DPI_Y: integer = 1;

implementation

{$R *.dfm}

procedure TForm1.Printer_OrientationChange(Sender: TObject);
begin
  WritePrinterSettings;

  // Redraw
  ReDrawPages
end;

procedure TForm1.Printer_PrintClick(Sender: TObject);
var
  TotalPages, Index, PageInc: integer;
  I: Integer;
begin
  // Exit
  WaitUntilPrinterFree;

  // Printer Settings
  if LoadPrintersDialog then
    Exit;

  // Pages Count
  TotalPages := Length(CachedPages);

  // No Images
  if TotalPages = 0 then
    begin
      OpenMessage('No images to print', 'Please add some images to print');
      Exit;
    end;

  // Printer Offline
  if not IsPrinterOnline(PrinterName) then
    begin
      if OpenDialog('The selected printer is offline',
        'The selected printer seems to be offline, send print request anyways?',
        [mbYes, mbNo]) = mrNo then
        Exit;
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
      OpenMessage('The print job has been canceled', 'Print canceled');
      Exit;
    end;

  // Draw Pages
  while I <= TotalPages do
    begin
      // Index
      Index := I - 1;

      // Draw Bitmap
      DrawImageInRect( Printer.Canvas, Rect(0, 0, PageSize.cx, PageSize.cy),
        CachedPages[Index], TDrawMode.CenterFit, Form1.GetPageMargins, false );

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
  if CloseOnPrint.Checked then
    Close;
end;

procedure TForm1.ProgramData(Load: boolean);
const
  CAT_APP = 'App';
  CAT_PRINT = 'Printing';
  CAT_EXTRA = 'Extras';
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FXAppManager1.AppData + 'settings.ini');

  with Ini do
    try
      if Load then
        begin
          // Load
          EnableAnim.Checked := ReadBool(CAT_APP, 'Enable anim', EnableAnim.Checked);
          EnbLegFont.Checked := ReadBool(CAT_APP, 'Legacy font', EnbLegFont.Checked);
          CloseOnPrint.Checked := ReadBool(CAT_APP, 'Close on print', CloseOnPrint.Checked);

          Printer_TwoSided.ItemIndex := ReadInteger(CAT_PRINT, 'Two Sided printing', Printer_TwoSided.ItemIndex);
          CenterOnPage.Checked := ReadBool(CAT_PRINT, 'Center page', CenterOnPage.Checked);

          Extras_Filename.Checked := ReadBool(CAT_EXTRA, 'Enable filenames', Extras_Filename.Checked);
          Extras_filename_ext.Checked := ReadBool(CAT_EXTRA, 'Include filename extension', Extras_filename_ext.Checked);
          Filename_Height.Value := ReadFloat(CAT_EXTRA, 'Filename height', Filename_Height.Value);
        end
      else
        begin
          // Write
          WriteBool(CAT_APP, 'Enable anim', EnableAnim.Checked);
          WriteBool(CAT_APP, 'Legacy font', EnbLegFont.Checked);
          WriteBool(CAT_APP, 'Close on print', CloseOnPrint.Checked);

          WriteInteger(CAT_PRINT, 'Two Sided printing', Printer_TwoSided.ItemIndex);
          WriteBool(CAT_PRINT, 'Center page', CenterOnPage.Checked);

          WriteBool(CAT_EXTRA, 'Enable filenames', Extras_Filename.Checked);
          WriteBool(CAT_EXTRA, 'Include filename extension', Extras_filename_ext.Checked);
          WriteFloat(CAT_EXTRA, 'Filename height', Filename_Height.Value);
        end;
    finally
      Free;
    end;
end;

procedure TForm1.ReadPrinterSettings;
begin
  // Wait if printer busy
  WaitUntilPrinterFree();

  // Apply
  //Printer_Copies.ValueInt := Printer.Copies; // broken

  Printer_Orientation.ItemIndex := integer(Printer.Orientation);

  // Information
  GetPrinterInfo;
end;

procedure TForm1.WritePrinterSettings;
begin
  // Wait if printer busy
  WaitUntilPrinterFree();

  // Apply
  Printer.Copies := Printer_Copies.ValueInt;

  Printer.Orientation := TPrinterOrientation( Printer_Orientation.ItemIndex );

  // Information
  GetPrinterInfo;
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
begin
  // Check can draw
  if not (LoadingSettings or PagesRendering) then begin
    // Status
    PagesRendering := true;

    // Validate values
    ValidateImageSize;
    ValidateImageMargins;
    ValidatePageMargins;
    ValidateFilenameHeight;

    // Start thread
    TImageDraw.Create;
  end;

  // Process messages
  Application.ProcessMessages;
end;

procedure TForm1.RenameEvent(Sender: TObject);
var
  Index: integer;
begin
  Index := ControlList1.ItemIndex;

  if not OpenInput('Rename item', 'Enter the new name for this file', Images[Index].OverrideName) then
    Exit;

  // UI
  ControlList1.Invalidate;

  // Draw
  ReDrawPages;
end;

procedure TForm1.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  TScrollBox(Sender).VertScrollBar.Position := TScrollBox(Sender).VertScrollBar.Position - WheelDelta div 10;
end;

procedure TForm1.SetEnableInteraction(Enable: boolean);
begin
  TThread.Synchronize(TThread.Current, procedure
    begin
      // Self.Enabled := Enable; This would work, but It disallows moving the window around

      Panel1.Enabled := Enable;
      FXPanel1.Enabled := Enable;
      Preview_Container.Enabled := Enable;
      Slide_Menu.Enabled := Enable;
      Panel1.Enabled := Enable;

      DragAcceptFiles(Self.Handle, Enable);
    end);
end;

procedure TForm1.SetProgress(Value: single);
begin
  TThread.Synchronize(TThread.Current, procedure
    begin
      ProgressImage.Value := Value;

      Application.ProcessMessages;
    end);
end;

procedure TForm1.ResetProgress(Enabled: boolean; Status: string; Marquee: boolean);
begin
  TThread.Synchronize(TThread.Current, procedure
    begin
      if Enabled then
        begin
          ProgressImage.Reset;

          ProgressStatus.Text := Status;

          if Marquee then
            ProgressImage.ProgressKind := FXProgressKind.Intermediate
          else
            ProgressImage.ProgressKind := FXProgressKind.Normal;
        end;

      // Visible
      ProgressImage.Visible := Enabled;
      ProgressStatus.Visible := Enabled;

      // Message
      Application.ProcessMessages;
    end);
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

  ControlList1.Color := ThemeManager.SystemColor.BackGroundInterior;

  // Interface
  Slide_Menu.Color := ThemeManager.AccentColor;
  Preview_Container.Color := ThemeManager.AccentColor;
end;

procedure TForm1.ValidateFilenameHeight;
var
  R: TRect;
begin
  const S = GetFitSize;
  const Margin = GetImageMargins;
  R := TRect.Create(Point(0, 0), S.cx, S.cy);
  R.Inflate(-Margin, -Margin);

  R.Height := R.Height - GetFilenameHeight;

  if not R.Normalised then begin
    Filename_Height.Value := 0;
    OpenMessage('Invalid filename height', 'Those filename height is invalid. Please pick a new value');
  end;
end;

procedure TForm1.ValidateImageMargins;
var
  R: TRect;
begin
  const S = GetFitSize;
  const Margin = GetImageMargins;
  R := TRect.Create(Point(0, 0), S.cx, S.cy);
  R.Inflate(-Margin, -Margin);

  if not R.Normalised then begin
    Image_Margin.Value := 0;
    OpenMessage('Invalid margin size', 'Those margin sizes are invalid. Please choose a valid value');
  end;
end;

procedure TForm1.ValidateImageSize;
begin
  const S = GetFitSize;

  if (S.cx <= 0) or (S.cy <= 0) or (S.cx > PageSize.Width) or (S.cy > PageSize.Height) then begin
    Printer_ImageSize.ItemIndex := 0;
    SelectedFit := TPrintFit.Full;

    OpenMessage('Invalid picture size', 'The picture size is invalid! Please pick a new one from the dropdown');
  end;
end;

procedure TForm1.ValidatePageMargins;
var
  R: TRect;
begin
  R := TRect.Create(Point(0, 0), PageSize.Width, PageSize.Height);
  ApplyMarginsTo(R);

  if not R.Normalised then begin
    Printer_Margins.Value := 0;
    OpenMessage('Invalid margin size', 'Those margin sizes are invalid');
  end;
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

procedure TForm1.WMDropFiles(var Msg: TWMDropFiles);
var
  Catcher: TFileCatcher;
  Items: TArray<string>;
begin
  Catcher := TFileCatcher.Create(Msg.Drop);

  // Was empty
  if Length(Images) = 0 then
    AnimatePanel(false);

  // Add files
  SetLength(Items, Catcher.FileCount);
  for var I := 0 to High(Items) do
    Items[I] := Catcher.Files[I];

  AddImages(Items);
end;

procedure TForm1.AddImages(Files: TArray<string>);
begin
  if Length(Files) = 0 then
    Exit;

  for var I := 0 to High(Files) do
    if TFile.Exists(Files[I]) then
      with Images[TArrayUtils<TImageItem>.AddValue(Images)] do begin
        FileName := ExtractFileName(Files[I]);
        Path := Files[I];
        Extension := Uppercase(ExtractFileName(Files[I])).Remove(0, 1);

        Loaded := false;
      end;

  // Loader
  if not ImagesLoading then
    TImageLoader.Create;

  // Updated
  ImagesUpdated;
end;

function TForm1.AllocateNewPage(AWidth, AHeight: integer): integer;
begin
  Result := Length(CachedPages);
  SetLength(CachedPages, Result+1);
  CachedPages[Result] := TBitMap.Create(AWidth, AHeight);
end;

procedure TForm1.AnimatePanel(Open: boolean);
var
  Border,
  FinalPosition: integer;
  FMenuAnimate: TIntAni;
begin
  // Exit
  if AnimRunning then
    Exit;

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
      FinalPosition := Main_Contain.Width - Slide_Menu.Width;
      FMenuAnimate.AniFunctionKind := afkBack;
    end
  else
    begin
      FinalPosition := Main_Contain.Width - Border;
      FMenuAnimate.AniFunctionKind := afkQuintic;
    end;
  FMenuAnimate.DeltaValue := FinalPosition - Slide_Menu.Left;

  // Instant Mode
  if not EnableAnim.Checked then
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
        AnimRunning := false;
      end);
  end;

  // Start
  AnimRunning := true;

  FMenuAnimate.Start;
  FMenuAnimate.FreeOnTerminate := true;
end;

procedure TForm1.ApplyMarginsTo(var R: TRect);
begin                        // Width would also work fine
  const ScaledValue = round(R.Height / PageSize.Height * GetPageMargins);
  Inc(R.Left, ScaledValue);
  Inc(R.Top, ScaledValue);
  Dec(R.Right, ScaledValue);
  Dec(R.Bottom, ScaledValue);
end;

procedure TForm1.Button_ViewNextClick(Sender: TObject);
begin
  ViewPage( CurrentPage + 1 );
end;

procedure TForm1.Button_ViewPrevClick(Sender: TObject);
begin
  ViewPage( CurrentPage - 1 );
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

procedure TForm1.CButton3Click(Sender: TObject);
begin
  About := TAbout.Create(Self);
  try
    About.VerLabel.Caption := About.VerLabel.Caption + AppManager.AppVersion.ToString;
    About.ShowModal;
  finally
    About.Free;
  end;
end;

procedure TForm1.CButton4Click(Sender: TObject);
begin
  for var I := High(Images) downto 0 do
    DeleteImage(I);

  // Pages
  ReDrawPages;
end;

procedure TForm1.CheckboxNeedChange(Sender: TObject);
begin
  // Redraw Images
  ReDrawPages;
end;

procedure TForm1.LoadFilesClick(Sender: TObject);
begin
  if OpenFilesDialog.Execute then
    begin
      const Items = StringListToArray(OpenFilesDialog.Files);
      AddImages(Items);
    end;
end;

function TForm1.LoadPrinters: boolean;
begin
  const Printers = GetPrinterList;

  Result := true;
  if TArrayUtils<string>.CheckEquality(Printers, RegisteredPrinters) then
    Exit( false );

  RegisteredPrinters := Printers;

  // Load list
  Printer_List.Items := Printer.Printers;

  // Load default printer
  Printer_List.ItemIndex := Printer.PrinterIndex;
  ReadPrinterSettings;
end;

function TForm1.LoadPrintersDialog: boolean;
begin
  Result := LoadPrinters;
  if Result then
    OpenMessage('Printers updated', 'The printer list was updated.');
end;

procedure TForm1.Image_FitModeChange(Sender: TObject);
begin
  ReDrawPages;
end;

procedure TForm1.Image_MarginExit(Sender: TObject);
begin
  // Validate
  ValidateImageMargins;

  // Draw
  ReDrawPages;
end;

procedure TForm1.ControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
  ARect: TRect; AState: TOwnerDrawState);
begin
  if Images[AIndex].OverrideName <> '' then begin
    Label13.Font.Style := [fsItalic];
    Label13.Caption := Images[AIndex].OverrideName;
  end else begin
    Label13.Font.Style := [];
    Label13.Caption := Images[AIndex].FileName;
  end;
  Label20.Caption := Images[AIndex].Extension + ' file';

  if (CImage1.Picture.Graphic <> nil) and not CImage1.Picture.Graphic.Empty then begin
    const B = TBitMap.Create;
    try               
      CImage1.Picture.Graphic := B;
    finally
      B.Free;
    end;
  end;

  Label22.Caption := '';
  if not Images[AIndex].Loaded then
    Label22.Caption := 'PREVIEW LOADING. PLEASE WAIT'
  else
    if not Images[AIndex].PreviewLoaded then
      Label22.Caption := 'PREVIEW ERROR'
    else
      CImage1.Picture.Graphic := Images[AIndex].Thumbnail;
end;

procedure TForm1.ControlList1ItemClick(Sender: TObject);
begin
  ImagesUpdated;
end;

procedure TForm1.ControlList1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    // Delete
    46: FXButton1.OnClick(FXButton1);

    // Select all
    65: if ssCtrl in Shift then
      ControlList1.SelectAll;
  end;
end;

procedure TForm1.ControlList1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    if TControlList(Sender).ItemIndex <> -1 then begin
      TControlList(Sender).Cursor := crDrag;
      SetCursor( Screen.Cursors[crDrag] );
    end;
end;

procedure TForm1.ControlList1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  with TControlList(Sender) do
    if InRange(HotItemIndex, 0, High(Images)) then
      Hint := Images[HotItemIndex].Path
    else
      Hint := '';
end;

procedure TForm1.ControlList1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Index,
  HoverIndex: integer;
begin
  TControlList(Sender).Cursor := crDefault;

  Index := TControlList(Sender).ItemIndex;
  HoverIndex := TControlList(Sender).HotItemIndex;

  // Switch
  case Button of
    TMouseButton.mbLeft: begin
      if (HoverIndex = -1) or (Index = -1) or (Index = HoverIndex) then
        Exit;
        
      TArrayUtils<TImageItem>.Move(Images, Index, HoverIndex);

      // UI
      ImagesUpdated;

      // Draw
      ReDrawPages;
    end;
    TMouseButton.mbRight: begin
      // Ensure click
      if Index <> HoverIndex then
        TControlList(Sender).ItemIndex := HoverIndex;

      MenuRename.Enabled := TControlList(Sender).SelectedCount = 1;
      MenuDelete.Enabled := TControlList(Sender).SelectedCount > 0;

      // Popup
      FXPopupMenu1.PopupAtCursor;
    end;
    TMouseButton.mbMiddle: begin
      if (Index <> HoverIndex) or not Images[Index].Loaded then
        Exit;
        
      var Item: TImageItem;
      Item.FileName := Images[Index].FileName;
      Item.Extension := Images[Index].Extension;
      Item.OverrideName := Images[Index].OverrideName;

      // Load
      Item.Loaded := true;
      Item.Image := TBitMap.Create;
      Item.Image.Assign(Images[Index].Image);
      
      Item.PreviewLoaded := Images[Index].PreviewLoaded;
      if Item.PreviewLoaded then begin
        Item.Thumbnail := TBitMap.Create;
        Item.Thumbnail.Assign(Images[Index].Thumbnail);
      end;

      // Add
      TArrayUtils<TImageItem>.Insert(Index+1, Item, Images);

      // UI
      ImagesUpdated;

      // Draw
      ReDrawPages;
    end;
  end;
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

  // Open panel if no images are loaded
  AnimatePanel( Length(Images) = 0 );

  // Unminimise
  FXMinimisePanel1.ToggleMinimised;
  FXMinimisePanel3.ToggleMinimised;
end;

procedure TForm1.DeleteImage(Index: integer);
begin
  with Images[Index] do
    if Loaded then begin
      Loaded := false;
      Image.Free;
      Thumbnail.Free;
    end;

  // Remove
  TArrayUtils<TImageItem>.Delete(Index, Images);

  // Notify
  ImagesUpdated;
end;

procedure TForm1.DrawPreviewPaint(Sender: TObject);
var
  R: TRect;
begin
  if PagesRendering then
    Exit;

  with DrawPreview.Canvas do
    begin
      Brush.Color := Self.Color;
      FillRect(DrawPreview.BoundsRect);

      // Image
      if (CurrentPage > -1) and (CurrentPage < Length(CachedPages)) then
        begin
          R := GetDrawModeRect( DrawPreview.BoundsRect, CachedPages[CurrentPage], TDrawMode.CenterFit, 0);

          // Draw Page
          Brush.Color := clWhite;
          FillRect(R);

          // Page Margin
          ApplyMarginsTo(R);

          // Draw Image
          StretchDraw(R, CachedPages[CurrentPage], 255);
        end;
    end;
end;

procedure TForm1.EnbLegFontChange(Sender: TObject);
begin
  if EnbLegFont.Checked then
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

procedure TForm1.Printer_CopiesExit(Sender: TObject);
begin
  WritePrinterSettings;
end;

procedure TForm1.EditSaveHandler(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Apply save procedure
  if Key = 13 then
    TNumberBox(Sender).OnExit(Sender);
end;

procedure TForm1.Printer_ImageSizeChange(Sender: TObject);
begin
  // Set View Mode
  SelectedFit := TPrintFit(TComboBox(Sender).ItemIndex);

  // Update
  if SelectedFit = TPrintFit.Custom then
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
          SelectedFit := TPrintFit.Full;
        end;
    end;

  // Redraw Images
  ReDrawPages;
end;

procedure TForm1.Printer_ListChange(Sender: TObject);
begin
  // Printer Settings
  if LoadPrintersDialog then
    Abort;

  // Load printer
  Printer.PrinterIndex := Printer_List.ItemIndex;
  ReadPrinterSettings;

  // Redraw (page size may have changed)
  ReDrawPages;
end;

procedure TForm1.Printer_MarginsExit(Sender: TObject);
begin
  // Validate
  ValidatePageMargins;

  // Redraw preview
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
  if Slide_Menu.Left < Main_Contain.Width - PanelAnimate.Width then
    AnimatePanel(false)
  else
    AnimatePanel(true);
end;

function TForm1.CmToPixels(cm: extended; DPI: Integer): cardinal;
begin
  Result := round(cm * DPI / 2.54)
end;

function TForm1.PixelsToCm(pixels: extended; DPI: Integer): single;
begin
  Result := pixels / DPI * 2.54;
end;

function TForm1.PixelsToCmStr(pixels: extended; DPI: Integer; cmText: string): string;
begin
  Result := (trunc(PixelsToCm(pixels, dpi) * 10) /10).ToString + cmText;
end;

procedure TForm1.Filename_HeightExit(Sender: TObject);
begin
  // Validate
  ValidateFilenameHeight;

  // Draw
  ReDrawPages;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if UIISOpen then
    LoadScreen.SetFocus;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ImagesLoading or PagesRendering then begin
    OpenMessage('Cannot close. The files are still rendeding/loading. Please wait');
    CanClose := false;
    Exit;
  end;

  ProgramData(false);

  // Free memory
  FreeAllocatedPages;

  // Dropper
  DragAcceptFiles(Self.Handle, false);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  Slide_Menu.Left := Slide_Menu.Parent.Width;
  // Program Data
  try
    LoadingSettings := true;
    ProgramData(true);
  except
    // FX Dialog
    OpenMessage('An error occured', 'The programs data could not be loaded');
  end;
  LoadingSettings := false;

  // No Printer Error
  if Printer.Printers.Count = 0 then
    OpenMessage('There are no printers connected', 'Please connect a printer to continue');

  // Drag drop
  DragAcceptFiles(Self.Handle, true);

  // Load Printer List
  LoadPrinters;

  // Popup menu
  MenuRename := FXPopupMenu1.Items.AddNew;
  with MenuRename do begin
    Text := 'Change item name';
    Image.Enabled := true;
    Image.IconType := FXIconType.SegoeIcon;
    Image.SelectSegoe := #$E771;

    OnClick := RenameEvent;
  end;
  FXPopupMenu1.Items.AddNew.IsSeparator := true;
  with FXPopupMenu1.Items.AddNew do begin
    Text := 'Add images...';
    Image.Enabled := true;
    Image.IconType := FXIconType.SegoeIcon;
    Image.SelectSegoe := #$EE71;

    OnClick := FXButton2.OnClick;
  end;
  FXPopupMenu1.Items.AddNew.IsSeparator := true;
  MenuDelete := FXPopupMenu1.Items.AddNew;
  with MenuDelete do begin
    Text := 'Delete';
    Image.Enabled := true;
    Image.IconType := FXIconType.SegoeIcon;
    Image.SelectSegoe := #$E74D;

    OnClick := FXButton1.OnClick;
  end;

  // UI
  OnThemeChange := ThemeChange;
  Version_Text.Caption := Version_Text.Caption + AppManager.AppVersion.ToString;

  // Load Parameter Files
  var AddItems: TArray<string>; AddItems := [];
  for I := 1 to ParamCount do
    if TFile.Exists(ParamStr(I)) then
      TArrayUtils<string>.AddValue( ParamStr(I), AddItems );
  AddImages(AddItems);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Slide_Menu.Height := Preview_Container.Height;
  Slide_Menu.Top := Preview_Container.Top;

  Button_ViewPrev.Left := Preview_Container.Width div 2 - 5 - Button_ViewPrev.Width;
  Button_ViewNext.Left := Preview_Container.Width div 2 + 5;

  IconsPanel.Top := AddPicturePanel.Height div 2 - IconsPanel.Height div 2;
end;

procedure TForm1.FreeAllocatedPages;
begin
  for var I := 0 to High(CachedPages) do
    FreeAndNil(CachedPages[I]);
  CachedPages := [];
end;

procedure TForm1.FXAppManager1UpdateChecked(Sender: TObject);
begin
  FXButton6.Enabled := true;
end;

procedure TForm1.FXAppManager1UpdateStartCheck(Sender: TObject);
begin
  FXButton6.Enabled := false;
end;

procedure TForm1.FXButton1Click(Sender: TObject);
var
  Items: TArray<integer>;
  I: integer;
begin
  // Get items
  Items := [];
  for I := 0 to ControlList1.ItemCount-1 do
    if ControlList1.Selected[I] then
      TArrayUtils<integer>.AddValue(I, Items);

  // Sort
  TArrayUtils<integer>.Sort(Items, function(A, B: integer): boolean
    begin
      Result := A < B;
    end);

  // Delete
  for I := 0 to High(Items) do
    DeleteImage(Items[I]);

  // Pages
  ReDrawPages;
end;

procedure TForm1.FXButton6Click(Sender: TObject);
begin
  FXAppManager1.InitiateUserUpdateCheck;
end;

procedure TForm1.FXButton7Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;

  // Apply
  ReadPrinterSettings;

  // Redraw (page size may have changed)
  ReDrawPages;
end;

procedure TForm1.FXButton8Click(Sender: TObject);
begin
  ColorDialog1.Color := PageBackground;
  if not ColorDialog1.Execute then
    Exit;

  // Set
  PageBackground := ColorDialog1.Color;

  // Draw
  ReDrawPages;

  // UI
  FXButton9.Enabled := PageBackground <> DEFAULT_PAGE_COLOR
end;

procedure TForm1.FXButton9Click(Sender: TObject);
begin
  FXButton(Sender).Enabled := false;
  FXButton(Sender).UpdateTheme(true);
  FXButton(Sender).Invalidate;

  // Set
  PageBackground := DEFAULT_PAGE_COLOR;

  // Draw
  ReDrawPages;
end;

function TForm1.GetFilenameHeight: integer;
begin
  Result := CmToPixels(Filename_Height.Value, DPI_Y);
end;

function TForm1.GetFitSize: TSize;
begin
  case SelectedFit of
    TPrintFit.Full: Result := TSize.Create(PageSize.Width, PageSize.Height);

    // Split in 2
    TPrintFit.Split:
      if Printer.Orientation = poPortrait then
        Result := TSize.Create(PageSize.Width, PageSize.Height div 2)
      else
        Result := TSize.Create(PageSize.Width div 2, PageSize.Height);

    // Split in 3
    TPrintFit.Split3:
      if Printer.Orientation = poPortrait then
        Result := TSize.Create(PageSize.Width, PageSize.Height div 3)
      else
        Result := TSize.Create(PageSize.Width div 3, PageSize.Height);

    // Split in 4
    TPrintFit.Rule4: Result := TSize.Create(PageSize.Width div 2, PageSize.Height div 2);

    // Split in 9
    TPrintFit.Rule9: Result := TSize.Create(PageSize.Width div 3, PageSize.Height div 3);

    // Contact page
    TPrintFit.Contact:
      if Printer.Orientation = poPortrait then
        Result := TSize.Create(PageSize.Width div 5, PageSize.Height div 7)
      else
        Result := TSize.Create(PageSize.Width div 7, PageSize.Height div 5);

    // Custom size
    TPrintFit.Custom: Result := TSize.Create(CustomFit.X, CustomFit.Y);

    else
      Result := TSize.Create(0, 0);
  end;
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

function TForm1.GetPageMargins: integer;
begin
  Result := CmToPixels(Printer_Margins.Value, DPI_Y);
end;

procedure TForm1.GetPrinterInfo;
var
  PrinterDC: HDC;
begin
  // DPI
  PrinterDC := Printer.Handle;
  DPI_X := GetDeviceCaps(PrinterDC, LOGPIXELSX);
  DPI_Y := GetDeviceCaps(PrinterDC, LOGPIXELSY);

  PageSize := TSize.Create(Printer.PageWidth, Printer.PageHeight);
end;

function TForm1.GetPrinterList: TArray<string>;
begin
  Result := StringListToArray( Printer.Printers );
end;

function TForm1.GetImageMargins: integer;
begin
  Result := CmToPixels(Image_Margin.Value, DPI_Y);
end;

procedure TForm1.ImagesUpdated;
begin
  ControlList1.ItemCount := Length(Images);

  FXButton1.Enabled := ControlList1.ItemIndex <> -1;
  FXButton3.Enabled := Length(Images) <> 0;
end;

{ TBaseTask }

constructor TBaseTask.Create;
begin
  inherited Create(false);
end;

procedure TBaseTask.DoFinalise;
begin
  // nothing
end;

procedure TBaseTask.DoPrepare;
begin
  // nothing
end;

procedure TBaseTask.DoTask;
begin
  // task
end;

procedure TBaseTask.Execute;
begin
  inherited;

  // Prep
  Synchronize(DoPrepare);
  if Terminated then
    Exit;

  // Task
  try
    DoTask;
    Succeeded := true;
  except
    Succeeded := false;
  end;
  if Terminated then
    Exit;

  // Done
  Synchronize(DoFinalise);
end;

{ TImageLoader }

procedure TImageLoader.DoFinalise;
begin
  inherited;
  // UI
  Form1.ResetProgress();
  Form1.SetEnableInteraction(true);

  // Finalised
  Form1.ReDrawPages;
end;

procedure TImageLoader.DoPrepare;
begin
  // UI
  Form1.ResetProgress(true, 'Loading Images', true);
  Form1.SetEnableInteraction(false);

  ThumbnailSize := TSize.Create(Form1.CImage1.Width, Form1.CImage1.Height);
end;

procedure TImageLoader.DoTask;
var
  I: integer;
begin
  // Get Images
  for I := High(Images) downto 0 do
    begin
      if Images[I].Loaded then
        Continue;

      // Attempt to load
      try
        LoadGraphicAsBitMap(Images[I].Path, Images[I].Image);
      except
        Synchronize(procedure
          begin
            OpenMessage('Invalid Picture', 'The following picture is invalid and will be removed:'#13 + Images[I].Path);
            Form1.DeleteImage(I);
          end);

        Continue;
      end;

      // Create thumbnail
      Images[I].Image.Canvas.Lock;
      try
        try
          Images[I].Thumbnail := TBitMap.Create;
          with Images[I].Thumbnail do begin
            Height := ThumbnailSize.cy;
            Width := round(Images[I].Image.Width / Images[I].Image.Height * Height);

            Canvas.Lock;
            try
              Canvas.StretchDraw(Canvas.ClipRect, Images[I].Image);
            finally
              Canvas.Unlock;
            end;
          end;

          Images[I].PreviewLoaded := true;
        except
          Images[I].PreviewLoaded := false;
        end;
      finally
        Images[I].Image.Canvas.Unlock;
      end;

      // Loaded!
      Images[I].Loaded := true;

      // UI
      TThread.Synchronize(TThread.Current, procedure begin
        Form1.ControlList1.Invalidate;
      end);
    end;
end;

{ TImageDraw }

procedure TImageDraw.DoFinalise;
begin
  // Error
  if not Succeeded then begin
    // Destroy
    Form1.FreeAllocatedPages;

    // Dialog
    OpenMessage('An error occured');
  end;

  // UI
  Form1.ResetProgress();
  Form1.SetEnableInteraction(true);
  PagesRendering := false;

  // Update
  Form1.PagesUpdated;
end;

procedure TImageDraw.DoPrepare;
begin
  // UI
  Form1.ResetProgress(true, 'Drawing image preview', false);
  Form1.SetEnableInteraction(false);

  // Free allocated pages
  Form1.FreeAllocatedPages;

  // Data
  with Form1 do
    begin
      PageCenter := CenterOnPage.Checked;
      ExtraFilename := Extras_Filename.Checked;
      IncludeExt := Extras_filename_ext.Checked;
      FilenameHeight := Form1.GetFileNameHeight;
      FilenameFont := Font;
      FitMode := TDrawMode(Image_FitMode.ItemIndex);
      ImageMargin := GetImageMargins;
    end;
end;

procedure TImageDraw.DoTask;
var
  PrintWidth, PrintHeight,
  TotalPictures: integer;

  APage, X, Y,
  DEF_X, DEF_Y: integer;
  DrawR, DrawRT: TRect;

  Fit: TSize;
  I: Integer;

  OverfillX, OverfillY: boolean;
begin
  // Initialize
  Fit := Form1.GetFitSize;

  // Invalid Size
  if (Fit.cx <= 0) or (Fit.cy <= 0) then
    raise Exception.Create('Invalid size detected. Canceling drawing proc.');

  // Prepare
  APage := 0;

  PrintWidth := PageSize.Width;
  PrintHeight := PageSize.Height;

  TotalPictures := Length(Images);

  // Default Starting Points
  if PageCenter then
    begin
      DEF_X := (PrintWidth mod Fit.cx) div 2;
      DEF_Y := (PrintHeight mod Fit.cy) div 2;
    end
  else
    begin
      DEF_X := 0;
      DEF_Y := 0;
    end;

  // Default Starting Values
  X := DEF_X;
  Y := DEF_Y;

  // Redraw Cached Bitmaps
  for I := 0 to TotalPictures-1 do
    begin
      if not Images[I].Loaded then
        Continue;
      const CurrentImage = Images[I].Image;

      // Progress
      Form1.SetProgress((TotalPictures)/TotalPictures*100);

      // Overfill Width
      OverfillX := X + Fit.cx > PrintWidth;

      if OverfillX then
        begin
          X := DEF_X;
          Y := Y + Fit.cy;
        end;

      // Overfill Height
      OverfillY := Y + Fit.cy > PrintHeight;

      if OverfillY then
        begin
          X := DEF_X;
          Y := DEF_Y;

          // Next Page
          Inc(APage);
        end;

      // Draw Rect
      DrawR := Rect( X, Y, X + Fit.cx, Y + Fit.cy );

      // Increase Size
      if APage > High(CachedPages) then begin
        // Create bitmap (threaded)
        Form1.AllocateNewPage(PrintWidth, PrintHeight);

        // Initiate page
        CachedPages[APage].Canvas.Lock;
        with CachedPages[APage].Canvas do begin
          // Draw
          Brush.Color := PageBackground;
          FillRect(ClipRect);
        end;
      end;

      // File Name
      if ExtraFilename then
        begin
          DrawRT := DrawR;
          DrawR.Height := DrawR.Height - FilenameHeight;

          DrawRT.Top := DrawR.Bottom;

          with CachedPages[APage].Canvas do begin
            var Text: string;
            if Images[I].OverrideName <> '' then
              Text := Images[I].OverrideName
            else
              if IncludeExt then
                Text := Images[I].FileName
              else
                Text := ChangeFileExt(Images[I].FileName, '');

            Font.Assign(FilenameFont);
            Font.Color := FontColorForBackground(PageBackground);

            Font.Height := GetMaxFontHeight(CachedPages[APage].Canvas,
                            Text, DrawRT.Width, DrawRT.Height);

            DrawTextRect( CachedPages[APage].Canvas, DrawRT, Text,
              [TTextFlag.Center, TTextFlag.VerticalCenter]  );
          end;
        end;

      // Ready, Set, Draw!
      with CachedPages[APage] do begin
        CurrentImage.Canvas.Lock;
        try
          DrawImageInRect(Canvas, DrawR, CurrentImage,
            FitMode, ImageMargin, true);
        finally
          CurrentImage.Canvas.Unlock
        end;
      end;

      // Time for the next page
      X := X + Fit.cx;
    end;

  // Unlock all canvases
  for I := 0 to High(CachedPages) do
    CachedPages[I].Canvas.Unlock;
end;

end.
