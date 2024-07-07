{***********************************************************}
{                     Codruts Printing                      }
{                                                           }
{                        version 0.2                        }
{                           ALPHA                           }
{                                                           }
{                                                           }
{                                                           }
{                                                           }
{                                                           }
{                   -- WORK IN PROGRESS --                  }
{***********************************************************}

unit Cod.Printing;

interface

  uses
  Winapi.Windows, Winapi.Messages, SysUtils, Classes, Graphics, CommDlg,
  Cod.Graphics, ShellAPI, Cod.Files, WinSpool;

  // Attributes
  function GetPrinterHasAttribute(const PrinterName: string; Attribute: integer): Boolean;
  function IsPrinterOnline(const PrinterName: string): Boolean;

  // Printer Information
  function GetPrinterIcon(const PrinterName: string): TIcon;

  // Print Functions
  procedure Win32PrintText(Text: string; ParentHandle: THandle; Position: TPoint; AFont: TFont; Margin: integer = 20; DocumentName: string = 'Text Document');
  // Set ParentHandle to Application if you want the ui to be a normal form, else set it to a parent Form

  procedure ShellPrintPicture(PicturePath: string);
  procedure MsPaintPrintPictures(PicturePath: string; PrinterName: string);

  procedure Win32PrintBitMap(Bitmap: TBitMap; DrawMode: TDrawMode; ParentHandle: THandle; PageMargin: integer = 0; DocumentName: string = 'Bitmap Document');
  procedure Win32StretchPrintBitMap(Bitmap: TBitMap; ParentHandle: THandle; DocumentName: string = 'Bitmap Document');

  procedure Win32PrintGraphic(Graphic: TGraphic; DrawMode: TDrawMode; ParentHandle: THandle; PageMargin: integer = 0; DocumentName: string = 'Picture Document');

implementation

function IsPrinterOnline(const PrinterName: string): Boolean;
begin
  Result := GetPrinterHasAttribute(PrinterName, PRINTER_ATTRIBUTE_WORK_OFFLINE);
end;

function GetPrinterHasAttribute(const PrinterName: string; Attribute: integer): Boolean;
var
  PrinterHandle: THandle;
  PrinterInfo: PPrinterInfo2;
  BytesNeeded: DWORD;
begin
  // Open a handle to the printer
  if not OpenPrinter(PChar(PrinterName), PrinterHandle, nil) then
    Exit(False);
  try
    // Get the printer information
    if not GetPrinter(PrinterHandle, 2, nil, 0, @BytesNeeded) and (GetLastError() = ERROR_INSUFFICIENT_BUFFER) then
    begin
      GetMem(PrinterInfo, BytesNeeded);
      try
        if GetPrinter(PrinterHandle, 2, PrinterInfo, BytesNeeded, @BytesNeeded) then
          Result := (PrinterInfo^.Attributes and Attribute) = 0
        else
          Result := False;
      finally
        FreeMem(PrinterInfo);
      end;
    end
    else
      Result := False;
  finally
    // Close the printer handle
    ClosePrinter(PrinterHandle);
  end;
end;

function GetPrinterIcon(const PrinterName: string): TIcon;
const
  SHELL_DLL = 'shell32.dll';
var
  IconIndex: Integer;
  LargeIcon, SmallIcon: HICON;

  PrinterDefault,
  PrinterFax,
  PrinterNetwork: boolean;
begin
  // Use the default icon
  //IconIndex := 16;

  PrinterDefault := GetPrinterHasAttribute(PrinterName, PRINTER_ATTRIBUTE_DEFAULT);
  PrinterFax := GetPrinterHasAttribute(PrinterName, PRINTER_ATTRIBUTE_FAX);
  PrinterNetwork := GetPrinterHasAttribute(PrinterName, PRINTER_ATTRIBUTE_NETWORK) or
                GetPrinterHasAttribute(PrinterName, PRINTER_ATTRIBUTE_SHARED);

  // Logic for printer type
  if PrinterFax then
    begin
      if PrinterNetwork then
        // Network
        begin
          if PrinterDefault then
            IconIndex := 107
          else
            IconIndex := 108;
        end
      else
        // Local
        begin
          if PrinterDefault then
            IconIndex := 106
          else
            IconIndex := 105;
        end;
    end
  else
    begin
      if PrinterNetwork then
        // Network
        begin
          if PrinterDefault then
            IconIndex := 82
          else
            IconIndex := 59;
        end
      else
        // Local
        begin
          if PrinterDefault then
            IconIndex := 81
          else
            IconIndex := 16;
        end;
    end;

  // Extract the icon from the shell
  ExtractIconEx(PChar(SHELL_DLL), IconIndex, LargeIcon, SmallIcon, 1);

  // Create a Delphi TIcon from the small icon handle
  Result := TIcon.Create;
  try
    if LargeIcon <> 0 then
      Result.Handle := LargeIcon else
    if SmallIcon <> 0 then
      Result.Handle := SmallIcon
    else
      Result := nil;
  except
    Result.Free;
    raise;
  end;

end;

procedure ShellPrintPicture(PicturePath: string);
begin
  ShellExecute(0, 'print', PChar(PicturePath), nil, nil, SW_SHOWNORMAL);
end;

procedure MsPaintPrintPictures(PicturePath: string; PrinterName: string);
var
  mspath: string;
begin
  mspath := ReplaceWinPath('%localappdata%\Microsoft\WindowsApps\') + 'mspaint.exe';

  ShellExecute(0, nil, PChar(mspath),
      PChar('/pt "' + PicturePath + '" "' + PrinterName + '"'), nil, 1);
end;

procedure Win32PrintText(Text: string; ParentHandle: THandle; Position: TPoint;
  AFont: TFont; Margin: integer; DocumentName: string);
var
  PrintDlgRec: TPrintDlgW;
  ADocInfo: TDocInfo;
  hhDC: HDC;
  hDevMode: THandle;
  C: TCanvas;
  R: TRect;
begin
  FillChar(ADocInfo, SizeOf(DocInfo), 0);
  with ADocInfo do
  begin
    cbSize := SizeOf(DocInfo);
    lpszDocName := PChar(DocumentName);
    lpszOutput := nil;
    lpszDatatype := nil;
    fwType := 0;
  end;
  FillChar(PrintDlgRec, SizeOf(PrintDlgRec), 0);
  with PrintDlgRec do
  begin
    lStructSize := SizeOf(PrintDlgRec);
    hwndOwner := ParentHandle;
    Flags := PD_RETURNDC or PD_HIDEPRINTTOFILE;
  end;
  if PrintDlgW(PrintDlgRec) then
  begin
    hhDC := PrintDlgRec.hDC;
    hDevMode := PrintDlgRec.hDevMode;
    if hhDC <> 0 then
    begin

      // Use the GetDeviceCaps function to retrieve information about the printer
      GetDeviceCaps(hhDC, TECHNOLOGY);
      GetDeviceCaps(hhDC, DC_COLORDEVICE);
      GetDeviceCaps(hhDC, BITSPIXEL);
      GetDeviceCaps(hhDC, PLANES);
      GetDeviceCaps(hhDC, NUMCOLORS);
      GetDeviceCaps(hhDC, LOGPIXELSX);
      GetDeviceCaps(hhDC, LOGPIXELSY);
      // Use the StartDoc function to start a document
      StartDoc(hhdc, ADocInfo);
      // Use the StartPage function to start a page
      StartPage(hhDC);

      C := TCanvas.Create;
      C.Handle := hhDC;
      with C do
        try
          Font.Assign(AFont);

          R := ClipRect;
          R.Inflate(-Margin, -Margin);

          TextRect(R, Text, [tfWordBreak]);
        finally
          Free;
        end;

      // Use the EndPage function to end the page
      EndPage(hhDC);
      // Use the EndDoc function to end the document
      EndDoc(hhDC);
      // Use the DeleteDC function to delete the device context
      DeleteDC(hhDC);
    end;
    if hDevMode <> 0 then
    begin
      // Use the GlobalFree function to free the memory allocated for the DEVMODE structure
      GlobalFree(hDevMode);
    end;
  end;
end;

procedure Win32StretchPrintBitMap(Bitmap: TBitMap; ParentHandle: THandle; DocumentName: string);
var
  PrintDlgRec: TPrintDlgW;
  hhDC: HDC;
  hDevMode: THandle;
  ADocInfo: TDocInfo;
  APageWidth, APageHeight: Integer;
begin
  FillChar(ADocInfo, SizeOf(DocInfo), 0);
  with ADocInfo do
  begin
    cbSize := SizeOf(DocInfo);
    lpszDocName := PChar(DocumentName);
    lpszOutput := nil;
    lpszDatatype := nil;
    fwType := 0;
  end;
  FillChar(PrintDlgRec, SizeOf(PrintDlgRec), 0);
  with PrintDlgRec do
  begin
    lStructSize := SizeOf(PrintDlgRec);
    hwndOwner := ParentHandle;
    Flags := PD_RETURNDC;
  end;
  if PrintDlgW(PrintDlgRec) then
  begin
    hhDC := PrintDlgRec.hDC;
    hDevMode := PrintDlgRec.hDevMode;
    if hhDC <> 0 then
    begin
      // Load the bitmap
      if Bitmap = nil then
        Exit;

      try
        // Get the page width and height
        APageWidth := GetDeviceCaps(hhDC, PHYSICALWIDTH);
        APageHeight := GetDeviceCaps(hhDC, PHYSICALHEIGHT);
        // Use the StartDoc function to start a document
        StartDoc(hhDC, ADocInfo);
        // Use the StartPage function to start a page
        StartPage(hhDC);
        // Use the BitBlt function to copy the image from the bitmap onto the DC
        //BitBlt(hhDC, 0, 0, Bitmap.Width, Bitmap.Height, Bitmap.Canvas.Handle, 0, 0, SRCCOPY);
        StretchBlt(hhDC, 0, 0, APageWidth, APageHeight, Bitmap.Canvas.Handle, 0, 0, Bitmap.Width, Bitmap.Height, SRCCOPY);
        // Use the EndPage function to end the page
        EndPage(hhDC);
        // Use the EndDoc function to end the document
        EndDoc(hhDC);
      finally

      end;
      // Use the DeleteDC function to delete the device context
      DeleteDC(hhDC);
    end;
    if hDevMode <> 0 then
    begin
      // Use the GlobalFree function to free the memory allocated for the DEVMODE structure
      GlobalFree(hDevMode);
    end;
  end;
end;

procedure Win32PrintBitMap(Bitmap: TBitMap; DrawMode: TDrawMode;
                           ParentHandle: THandle; PageMargin: integer; DocumentName: string);
var
  PrintDlgRec: TPrintDlgW;
  hhDC: HDC;
  hDevMode: THandle;
  ADocInfo: TDocInfo;
  I, APageWidth, APageHeight: Integer;
  Rects: TArray<TRect>;
begin
  FillChar(ADocInfo, SizeOf(DocInfo), 0);
  with ADocInfo do
  begin
    cbSize := SizeOf(DocInfo);
    lpszDocName := PChar(DocumentName);
    lpszOutput := nil;
    lpszDatatype := nil;
    fwType := 0;
  end;
  FillChar(PrintDlgRec, SizeOf(PrintDlgRec), 0);
  with PrintDlgRec do
  begin
    lStructSize := SizeOf(PrintDlgRec);
    hwndOwner := ParentHandle;
    Flags := PD_RETURNDC;
  end;
  if PrintDlgW(PrintDlgRec) then
  begin
    hhDC := PrintDlgRec.hDC;
    hDevMode := PrintDlgRec.hDevMode;
    if hhDC <> 0 then
    begin
      // Load the bitmap
      if Bitmap = nil then
        Exit;

      try
        // Get the page width and height
        APageWidth := GetDeviceCaps(hhDC, PHYSICALWIDTH);
        APageHeight := GetDeviceCaps(hhDC, PHYSICALHEIGHT);
        // Use the StartDoc function to start a document
        StartDoc(hhDC, ADocInfo);
        // Use the StartPage function to start a page
        StartPage(hhDC);
        // Use the BitBlt function to copy the image from the bitmap onto the DC
        //BitBlt(hhDC, 0, 0, Bitmap.Width, Bitmap.Height, Bitmap.Canvas.Handle, 0, 0, SRCCOPY);
        Rects := GetDrawModeRects(Rect(0, 0, APageWidth, APageHeight), BitMap, DrawMode, PageMargin);
        for I := 0 to Length(Rects) - 1 do
          StretchBlt(hhDC, Rects[I].Left, Rects[I].Top, Rects[I].Width, Rects[I].Height,
                    Bitmap.Canvas.Handle, 0, 0, Bitmap.Width, Bitmap.Height, SRCCOPY);

        // Use the EndPage function to end the page
        EndPage(hhDC);
        // Use the EndDoc function to end the document
        EndDoc(hhDC);
      finally

      end;
      // Use the DeleteDC function to delete the device context
      DeleteDC(hhDC);
    end;
    if hDevMode <> 0 then
    begin
      // Use the GlobalFree function to free the memory allocated for the DEVMODE structure
      GlobalFree(hDevMode);
    end;
  end;
end;

procedure Win32PrintGraphic(Graphic: TGraphic; DrawMode: TDrawMode; ParentHandle: THandle; PageMargin: integer; DocumentName: string);
var
  BitMap: TBitMap;
begin
  BitMap := TBitMap.Create;
  try
    // Convert graphic to bitmap
    BitMap.Assign(Graphic);

    Win32PrintBitmap(BitMap, DrawMode, ParentHandle, PageMargin, DocumentName);
  finally
    // Free memory
    BitMap.Free;
  end;
end;

end.
