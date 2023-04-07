object SelectSize: TSelectSize
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Select a Size for the image'
  ClientHeight = 471
  ClientWidth = 644
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyUp = KeyDetection
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 86
    Width = 604
    Height = 308
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    Caption = 'Panel1'
    Color = clWhite
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    ShowCaption = False
    TabOrder = 0
    object DrawBox: TPaintBox
      Left = 1
      Top = 1
      Width = 602
      Height = 306
      Align = alClient
      OnMouseDown = DrawBoxMouseDown
      OnMouseMove = DrawBoxMouseMove
      OnMouseUp = DrawBoxMouseUp
      OnPaint = DrawBoxPaint
      ExplicitLeft = 0
      ExplicitTop = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 414
    Width = 644
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel2'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      644
      57)
    object Button_Save: CButton
      Left = 498
      Top = 10
      Width = 126
      Height = 40
      ModalResult = 1
      OnKeyUp = KeyDetection
      OnClick = Button_SaveClick
      Default = True
      TabOrder = 0
      Anchors = [akRight, akBottom]
      Enabled = False
      BSegoeIcon = #59198
      ButtonIcon = cicSegoeFluent
      GradientOptions.Enabled = False
      GradientOptions.Enter = clFuchsia
      GradientOptions.Leave = clRed
      GradientOptions.Down = clMaroon
      ControlStyle = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14123546
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = 14123546
      SubTextFont.Height = -13
      SubTextFont.Name = 'Segoe UI'
      SubTextFont.Style = []
      FontAutoSize.Enabled = False
      FontAutoSize.Max = -1
      FontAutoSize.Min = -1
      Text = 'Apply'
      SubText = 'Hello World!'
      State = mbsLeave
      Colors.Enter = 7383510
      Colors.Leave = 4751790
      Colors.Down = 2120070
      Colors.BLine = 2120070
      Preset.Color = clBlue
      Preset.Kind = cbprCustom
      Preset.PenColorAuto = True
      Preset.ApplyOnce = False
      Preset.IgnoreGlobalSync = False
      UnderLine.Enable = True
      UnderLine.UnderLineRound = True
      UnderLine.UnderLineThicknes = 6
      TextColors.Enter = clWhite
      TextColors.Leave = clWhite
      TextColors.Down = clWhite
      TextColors.BLine = clBlack
      Pen.Color = 15987699
      Pen.Width = 0
      Pen.EnableAlternativeColors = False
      Pen.FormSyncedColor = False
      Pen.AltHoverColor = clBlack
      Pen.AltPressColor = clBlack
      Pen.GlobalPresetExcept = False
      Animations.PressAnimation = False
      Animations.PADelay = 2
      Animations.PAShrinkAmount = 6
      Animations.PAAnimateEngine = cbneAtDraw
      Animations.FadeAnimation = True
      Animations.FASpeed = 10
    end
    object Button_Cancel: CButton
      Left = 366
      Top = 10
      Width = 126
      Height = 40
      ModalResult = 8
      OnKeyUp = KeyDetection
      Cancel = True
      TabOrder = 1
      Anchors = [akRight, akBottom]
      BSegoeIcon = #59579
      ButtonIcon = cicSegoeFluent
      GradientOptions.Enabled = False
      GradientOptions.Enter = clFuchsia
      GradientOptions.Leave = clRed
      GradientOptions.Down = clMaroon
      ControlStyle = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14123546
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = 14123546
      SubTextFont.Height = -13
      SubTextFont.Name = 'Segoe UI'
      SubTextFont.Style = []
      FontAutoSize.Enabled = False
      FontAutoSize.Max = -1
      FontAutoSize.Min = -1
      Text = 'Cancel'
      SubText = 'Hello World!'
      State = mbsLeave
      FlatButton = True
      Colors.Enter = 7383510
      Colors.Leave = 4751790
      Colors.Down = 2120070
      Colors.BLine = 2120070
      Preset.Color = clBlue
      Preset.Kind = cbprCustom
      Preset.PenColorAuto = True
      Preset.ApplyOnce = False
      Preset.IgnoreGlobalSync = False
      UnderLine.Enable = True
      UnderLine.UnderLineRound = True
      UnderLine.UnderLineThicknes = 6
      TextColors.Enter = clWhite
      TextColors.Leave = clWhite
      TextColors.Down = clWhite
      TextColors.BLine = clBlack
      Pen.Color = 15987699
      Pen.Width = 0
      Pen.EnableAlternativeColors = False
      Pen.FormSyncedColor = False
      Pen.AltHoverColor = clBlack
      Pen.AltPressColor = clBlack
      Pen.GlobalPresetExcept = False
      Animations.PressAnimation = False
      Animations.PADelay = 2
      Animations.PAShrinkAmount = 6
      Animations.PAAnimateEngine = cbneAtDraw
      Animations.FadeAnimation = True
      Animations.FASpeed = 10
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    object DefSizText: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 119
      Height = 21
      Align = alLeft
      Caption = 'Printer Page Size:'
      Layout = tlCenter
    end
    object DefSiz: TLabel
      AlignWithMargins = True
      Left = 128
      Top = 3
      Width = 121
      Height = 21
      Align = alLeft
      Caption = 'Width 0, Height 0'
      Layout = tlCenter
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 644
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 3
    object CButton1: CButton
      Tag = 1
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 106
      Height = 27
      OnClick = SelectPreset
      TabStop = False
      TabOrder = 0
      Align = alLeft
      BSegoeIcon = #59579
      GradientOptions.Enabled = False
      GradientOptions.Enter = clFuchsia
      GradientOptions.Leave = clRed
      GradientOptions.Down = clMaroon
      ControlStyle = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14123546
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = 14123546
      SubTextFont.Height = -13
      SubTextFont.Name = 'Segoe UI'
      SubTextFont.Style = []
      FontAutoSize.Enabled = False
      FontAutoSize.Max = -1
      FontAutoSize.Min = -1
      Text = 'Full Page'
      SubText = 'Hello World!'
      State = mbsLeave
      FlatButton = True
      Colors.Enter = 7383510
      Colors.Leave = 4751790
      Colors.Down = 2120070
      Colors.BLine = 2120070
      Preset.Color = clBlue
      Preset.Kind = cbprCustom
      Preset.PenColorAuto = True
      Preset.ApplyOnce = False
      Preset.IgnoreGlobalSync = False
      UnderLine.Enable = True
      UnderLine.UnderLineRound = True
      UnderLine.UnderLineThicknes = 6
      TextColors.Enter = clWhite
      TextColors.Leave = clWhite
      TextColors.Down = clWhite
      TextColors.BLine = clBlack
      Pen.Color = 15987699
      Pen.Width = 0
      Pen.EnableAlternativeColors = False
      Pen.FormSyncedColor = False
      Pen.AltHoverColor = clBlack
      Pen.AltPressColor = clBlack
      Pen.GlobalPresetExcept = False
      Animations.PressAnimation = False
      Animations.PADelay = 2
      Animations.PAShrinkAmount = 6
      Animations.PAAnimateEngine = cbneAtDraw
      Animations.FadeAnimation = True
      Animations.FASpeed = 10
    end
    object CButton2: CButton
      Tag = 2
      AlignWithMargins = True
      Left = 115
      Top = 3
      Width = 106
      Height = 27
      OnClick = SelectPreset
      TabStop = False
      TabOrder = 1
      Align = alLeft
      BSegoeIcon = #59579
      GradientOptions.Enabled = False
      GradientOptions.Enter = clFuchsia
      GradientOptions.Leave = clRed
      GradientOptions.Down = clMaroon
      ControlStyle = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14123546
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = 14123546
      SubTextFont.Height = -13
      SubTextFont.Name = 'Segoe UI'
      SubTextFont.Style = []
      FontAutoSize.Enabled = False
      FontAutoSize.Max = -1
      FontAutoSize.Min = -1
      Text = '50% Page'
      SubText = 'Hello World!'
      State = mbsLeave
      FlatButton = True
      Colors.Enter = 7383510
      Colors.Leave = 4751790
      Colors.Down = 2120070
      Colors.BLine = 2120070
      Preset.Color = clBlue
      Preset.Kind = cbprCustom
      Preset.PenColorAuto = True
      Preset.ApplyOnce = False
      Preset.IgnoreGlobalSync = False
      UnderLine.Enable = True
      UnderLine.UnderLineRound = True
      UnderLine.UnderLineThicknes = 6
      TextColors.Enter = clWhite
      TextColors.Leave = clWhite
      TextColors.Down = clWhite
      TextColors.BLine = clBlack
      Pen.Color = 15987699
      Pen.Width = 0
      Pen.EnableAlternativeColors = False
      Pen.FormSyncedColor = False
      Pen.AltHoverColor = clBlack
      Pen.AltPressColor = clBlack
      Pen.GlobalPresetExcept = False
      Animations.PressAnimation = False
      Animations.PADelay = 2
      Animations.PAShrinkAmount = 6
      Animations.PAAnimateEngine = cbneAtDraw
      Animations.FadeAnimation = True
      Animations.FASpeed = 10
    end
    object CButton3: CButton
      Tag = 3
      AlignWithMargins = True
      Left = 227
      Top = 3
      Width = 106
      Height = 27
      OnClick = SelectPreset
      TabStop = False
      TabOrder = 2
      Align = alLeft
      BSegoeIcon = #59579
      GradientOptions.Enabled = False
      GradientOptions.Enter = clFuchsia
      GradientOptions.Leave = clRed
      GradientOptions.Down = clMaroon
      ControlStyle = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14123546
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = 14123546
      SubTextFont.Height = -13
      SubTextFont.Name = 'Segoe UI'
      SubTextFont.Style = []
      FontAutoSize.Enabled = False
      FontAutoSize.Max = -1
      FontAutoSize.Min = -1
      Text = '25% page'
      SubText = 'Hello World!'
      State = mbsLeave
      FlatButton = True
      Colors.Enter = 7383510
      Colors.Leave = 4751790
      Colors.Down = 2120070
      Colors.BLine = 2120070
      Preset.Color = clBlue
      Preset.Kind = cbprCustom
      Preset.PenColorAuto = True
      Preset.ApplyOnce = False
      Preset.IgnoreGlobalSync = False
      UnderLine.Enable = True
      UnderLine.UnderLineRound = True
      UnderLine.UnderLineThicknes = 6
      TextColors.Enter = clWhite
      TextColors.Leave = clWhite
      TextColors.Down = clWhite
      TextColors.BLine = clBlack
      Pen.Color = 15987699
      Pen.Width = 0
      Pen.EnableAlternativeColors = False
      Pen.FormSyncedColor = False
      Pen.AltHoverColor = clBlack
      Pen.AltPressColor = clBlack
      Pen.GlobalPresetExcept = False
      Animations.PressAnimation = False
      Animations.PADelay = 2
      Animations.PAShrinkAmount = 6
      Animations.PAAnimateEngine = cbneAtDraw
      Animations.FadeAnimation = True
      Animations.FASpeed = 10
    end
    object CButton4: CButton
      Tag = 4
      AlignWithMargins = True
      Left = 339
      Top = 3
      Width = 106
      Height = 27
      OnClick = SelectPreset
      TabStop = False
      TabOrder = 3
      Align = alLeft
      BSegoeIcon = #59579
      GradientOptions.Enabled = False
      GradientOptions.Enter = clFuchsia
      GradientOptions.Leave = clRed
      GradientOptions.Down = clMaroon
      ControlStyle = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14123546
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = 14123546
      SubTextFont.Height = -13
      SubTextFont.Name = 'Segoe UI'
      SubTextFont.Style = []
      FontAutoSize.Enabled = False
      FontAutoSize.Max = -1
      FontAutoSize.Min = -1
      Text = '1/3 page'
      SubText = 'Hello World!'
      State = mbsLeave
      FlatButton = True
      Colors.Enter = 7383510
      Colors.Leave = 4751790
      Colors.Down = 2120070
      Colors.BLine = 2120070
      Preset.Color = clBlue
      Preset.Kind = cbprCustom
      Preset.PenColorAuto = True
      Preset.ApplyOnce = False
      Preset.IgnoreGlobalSync = False
      UnderLine.Enable = True
      UnderLine.UnderLineRound = True
      UnderLine.UnderLineThicknes = 6
      TextColors.Enter = clWhite
      TextColors.Leave = clWhite
      TextColors.Down = clWhite
      TextColors.BLine = clBlack
      Pen.Color = 15987699
      Pen.Width = 0
      Pen.EnableAlternativeColors = False
      Pen.FormSyncedColor = False
      Pen.AltHoverColor = clBlack
      Pen.AltPressColor = clBlack
      Pen.GlobalPresetExcept = False
      Animations.PressAnimation = False
      Animations.PADelay = 2
      Animations.PAShrinkAmount = 6
      Animations.PAAnimateEngine = cbneAtDraw
      Animations.FadeAnimation = True
      Animations.FASpeed = 10
    end
    object CButton5: CButton
      Tag = 4
      AlignWithMargins = True
      Left = 608
      Top = 3
      Width = 33
      Height = 27
      OnClick = CButton5Click
      TabStop = False
      TabOrder = 4
      Align = alRight
      BSegoeIcon = #59543
      ButtonIcon = cicSegoeFluent
      GradientOptions.Enabled = False
      GradientOptions.Enter = clFuchsia
      GradientOptions.Leave = clRed
      GradientOptions.Down = clMaroon
      ControlStyle = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14123546
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = 14123546
      SubTextFont.Height = -13
      SubTextFont.Name = 'Segoe UI'
      SubTextFont.Style = []
      FontAutoSize.Enabled = False
      FontAutoSize.Max = -1
      FontAutoSize.Min = -1
      Text = ''
      SubText = 'Hello World!'
      State = mbsLeave
      Colors.Enter = 7383510
      Colors.Leave = 4751790
      Colors.Down = 2120070
      Colors.BLine = 2120070
      Preset.Color = clBlue
      Preset.Kind = cbprCustom
      Preset.PenColorAuto = True
      Preset.ApplyOnce = False
      Preset.IgnoreGlobalSync = False
      UnderLine.Enable = True
      UnderLine.UnderLineRound = True
      UnderLine.UnderLineThicknes = 6
      TextColors.Enter = clWhite
      TextColors.Leave = clWhite
      TextColors.Down = clWhite
      TextColors.BLine = clBlack
      Pen.Color = 15987699
      Pen.Width = 0
      Pen.EnableAlternativeColors = False
      Pen.FormSyncedColor = False
      Pen.AltHoverColor = clBlack
      Pen.AltPressColor = clBlack
      Pen.GlobalPresetExcept = False
      Animations.PressAnimation = False
      Animations.PADelay = 2
      Animations.PAShrinkAmount = 6
      Animations.PAAnimateEngine = cbneAtDraw
      Animations.FadeAnimation = True
      Animations.FASpeed = 10
    end
  end
  object MoveAnim: TTimer
    Interval = 1
    OnTimer = MoveAnimTimer
    Left = 32
    Top = 72
  end
end
