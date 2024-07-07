object Form1: TForm1
  Left = 0
  Top = 0
  Cursor = crHandPoint
  Margins.Top = 5
  Caption = 'Codruts Printing'
  ClientHeight = 611
  ClientWidth = 1084
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 800
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 13
  object Main_Contain: TPanel
    Left = 275
    Top = 30
    Width = 809
    Height = 581
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    ParentColor = True
    ShowCaption = False
    TabOrder = 3
    DesignSize = (
      809
      581)
    object Preview_Container: TPanel
      Tag = 2
      AlignWithMargins = True
      Left = 20
      Top = 20
      Width = 739
      Height = 477
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 50
      Margins.Bottom = 20
      Align = alClient
      BevelOuter = bvNone
      Color = 16491781
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      ShowCaption = False
      TabOrder = 0
      ExplicitLeft = 30
      ExplicitTop = 25
      ExplicitWidth = 749
      ExplicitHeight = 472
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 735
        Height = 473
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel3'
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 745
        ExplicitHeight = 468
        object DrawPreview: TPaintBox
          Left = 0
          Top = 0
          Width = 735
          Height = 432
          Align = alClient
          OnPaint = DrawPreviewPaint
          ExplicitLeft = 12
          ExplicitTop = -3
          ExplicitWidth = 588
          ExplicitHeight = 411
        end
        object Panel7: TPanel
          Tag = 1
          Left = 0
          Top = 432
          Width = 735
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel7'
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          ExplicitTop = 427
          ExplicitWidth = 745
          object Label15: TLabel
            AlignWithMargins = True
            Left = 42
            Top = 5
            Width = 136
            Height = 31
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            AutoSize = False
            Caption = 'Page 0/0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitTop = 8
          end
          object Label16: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 27
            Height = 31
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            Caption = #62833
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe Fluent Icons'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 27
          end
          object Button_ViewPrev: FXButton
            Left = 166
            Top = -1
            Width = 80
            Height = 40
            Hint = 'Previous'
            CustomColors.Enabled = False
            CustomColors.Accent = 13924352
            CustomColors.LightBackGround = 15987699
            CustomColors.LightForeGround = 1776410
            CustomColors.DarkBackGround = 2105376
            CustomColors.DarkForeGround = clWhite
            CustomColors.LightBackGroundInterior = 16514043
            CustomColors.DarkBackGroundInterior = 2829099
            CustomButtonColors.Enabled = False
            CustomButtonColors.Accent = clBlack
            CustomButtonColors.LightBackgroundNone = clBlack
            CustomButtonColors.LightBackgroundHover = clBlack
            CustomButtonColors.LightBackgroundPress = clBlack
            CustomButtonColors.LightForeGroundNone = clBlack
            CustomButtonColors.LightForeGroundHover = clBlack
            CustomButtonColors.LightForeGroundPress = clBlack
            CustomButtonColors.DarkBackGroundNone = clBlack
            CustomButtonColors.DarkBackGroundHover = clBlack
            CustomButtonColors.DarkBackGroundPress = clBlack
            CustomButtonColors.DarkForeGroundNone = clBlack
            CustomButtonColors.DarkForeGroundHover = clBlack
            CustomButtonColors.DarkForeGroundPress = clBlack
            Text = ''
            Image.Enabled = True
            Image.SelectSegoe = #59538
            Image.SelectImageIndex = 0
            ImageScale = 1.250000000000000000
            LineWidth = 3.000000000000000000
            StateImage.SelectSegoe = #59188
            StateImage.SelectImageIndex = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 22
            Font.Name = 'Segoe UI'
            Font.Style = []
            ShowHint = True
            ParentShowHint = False
            TabOrder = 0
            OnClick = Button_ViewPrevClick
          end
          object Button_ViewNext: FXButton
            Left = 252
            Top = -1
            Width = 80
            Height = 40
            Hint = 'Next'
            CustomColors.Enabled = False
            CustomColors.Accent = 13924352
            CustomColors.LightBackGround = 15987699
            CustomColors.LightForeGround = 1776410
            CustomColors.DarkBackGround = 2105376
            CustomColors.DarkForeGround = clWhite
            CustomColors.LightBackGroundInterior = 16514043
            CustomColors.DarkBackGroundInterior = 2829099
            CustomButtonColors.Enabled = False
            CustomButtonColors.Accent = clBlack
            CustomButtonColors.LightBackgroundNone = clBlack
            CustomButtonColors.LightBackgroundHover = clBlack
            CustomButtonColors.LightBackgroundPress = clBlack
            CustomButtonColors.LightForeGroundNone = clBlack
            CustomButtonColors.LightForeGroundHover = clBlack
            CustomButtonColors.LightForeGroundPress = clBlack
            CustomButtonColors.DarkBackGroundNone = clBlack
            CustomButtonColors.DarkBackGroundHover = clBlack
            CustomButtonColors.DarkBackGroundPress = clBlack
            CustomButtonColors.DarkForeGroundNone = clBlack
            CustomButtonColors.DarkForeGroundHover = clBlack
            CustomButtonColors.DarkForeGroundPress = clBlack
            Text = ''
            Image.Enabled = True
            Image.SelectSegoe = #59539
            Image.SelectImageIndex = 0
            ImageScale = 1.250000000000000000
            LineWidth = 3.000000000000000000
            StateImage.SelectSegoe = #59188
            StateImage.SelectImageIndex = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 22
            Font.Name = 'Segoe UI'
            Font.Style = []
            ShowHint = True
            ParentShowHint = False
            TabOrder = 1
            OnClick = Button_ViewNextClick
          end
        end
      end
    end
    object Slide_Menu: CPanel
      Left = 400
      Top = 25
      Width = 400
      Height = 472
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Caption = 'CPanel1'
      Color = 16491781
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      UseAccentColor = None
      object Panel5: TPanel
        Tag = 2
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 396
        Height = 468
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        Color = 15132390
        ParentBackground = False
        TabOrder = 0
        object Panel2: TPanel
          Left = 35
          Top = 0
          Width = 361
          Height = 468
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel2'
          ParentColor = True
          TabOrder = 0
          object CPanel2: CPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 355
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'CPanel1'
            ParentBackground = False
            ParentColor = True
            ShowCaption = False
            TabOrder = 0
            UseAccentColor = None
            object Label10: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 3
              Width = 27
              Height = 35
              Margins.Left = 10
              Margins.Right = 5
              Align = alLeft
              Caption = #59645
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -27
              Font.Name = 'Segoe Fluent Icons'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 27
            end
            object Label11: TLabel
              AlignWithMargins = True
              Left = 47
              Top = 3
              Width = 136
              Height = 35
              Margins.Left = 5
              Margins.Right = 5
              Align = alLeft
              AutoSize = False
              Caption = 'Files to Print'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitTop = 6
            end
          end
          object CPanel3: CPanel
            AlignWithMargins = True
            Left = 3
            Top = 424
            Width = 355
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'CPanel1'
            ParentBackground = False
            ParentColor = True
            ShowCaption = False
            TabOrder = 1
            UseAccentColor = None
            object FXButton1: FXButton
              AlignWithMargins = True
              Left = 145
              Top = 0
              Width = 140
              Height = 41
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 0
              Enabled = False
              CustomColors.Enabled = False
              CustomColors.Accent = 13924352
              CustomColors.LightBackGround = 15987699
              CustomColors.LightForeGround = 1776410
              CustomColors.DarkBackGround = 2105376
              CustomColors.DarkForeGround = clWhite
              CustomColors.LightBackGroundInterior = 16514043
              CustomColors.DarkBackGroundInterior = 2829099
              CustomButtonColors.Enabled = False
              CustomButtonColors.Accent = clBlack
              CustomButtonColors.LightBackgroundNone = clBlack
              CustomButtonColors.LightBackgroundHover = clBlack
              CustomButtonColors.LightBackgroundPress = clBlack
              CustomButtonColors.LightForeGroundNone = clBlack
              CustomButtonColors.LightForeGroundHover = clBlack
              CustomButtonColors.LightForeGroundPress = clBlack
              CustomButtonColors.DarkBackGroundNone = clBlack
              CustomButtonColors.DarkBackGroundHover = clBlack
              CustomButtonColors.DarkBackGroundPress = clBlack
              CustomButtonColors.DarkForeGroundNone = clBlack
              CustomButtonColors.DarkForeGroundHover = clBlack
              CustomButtonColors.DarkForeGroundPress = clBlack
              Text = 'Delete'
              Image.Enabled = True
              Image.SelectSegoe = #59213
              Image.SelectImageIndex = 0
              ImageScale = 1.250000000000000000
              ButtonKind = Flat
              LineWidth = 3.000000000000000000
              StateImage.SelectSegoe = #59188
              StateImage.SelectImageIndex = 0
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = 22
              Font.Name = 'Segoe UI'
              Font.Style = []
              TabOrder = 0
              OnClick = FXButton1Click
            end
            object FXButton2: FXButton
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 140
              Height = 41
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 0
              CustomColors.Enabled = False
              CustomColors.Accent = 13924352
              CustomColors.LightBackGround = 15987699
              CustomColors.LightForeGround = 1776410
              CustomColors.DarkBackGround = 2105376
              CustomColors.DarkForeGround = clWhite
              CustomColors.LightBackGroundInterior = 16514043
              CustomColors.DarkBackGroundInterior = 2829099
              CustomButtonColors.Enabled = False
              CustomButtonColors.Accent = clBlack
              CustomButtonColors.LightBackgroundNone = clBlack
              CustomButtonColors.LightBackgroundHover = clBlack
              CustomButtonColors.LightBackgroundPress = clBlack
              CustomButtonColors.LightForeGroundNone = clBlack
              CustomButtonColors.LightForeGroundHover = clBlack
              CustomButtonColors.LightForeGroundPress = clBlack
              CustomButtonColors.DarkBackGroundNone = clBlack
              CustomButtonColors.DarkBackGroundHover = clBlack
              CustomButtonColors.DarkBackGroundPress = clBlack
              CustomButtonColors.DarkForeGroundNone = clBlack
              CustomButtonColors.DarkForeGroundHover = clBlack
              CustomButtonColors.DarkForeGroundPress = clBlack
              Text = 'Add files'
              Image.Enabled = True
              Image.SelectSegoe = #59171
              Image.SelectImageIndex = 0
              ImageScale = 1.250000000000000000
              LineWidth = 3.000000000000000000
              StateImage.SelectSegoe = #59188
              StateImage.SelectImageIndex = 0
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = 22
              Font.Name = 'Segoe UI'
              Font.Style = []
              TabOrder = 1
              OnClick = LoadFilesClick
            end
            object FXButton3: FXButton
              AlignWithMargins = True
              Left = 290
              Top = 0
              Width = 60
              Height = 41
              Hint = 'Clear pictures'
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 0
              Enabled = False
              CustomColors.Enabled = False
              CustomColors.Accent = 13924352
              CustomColors.LightBackGround = 15987699
              CustomColors.LightForeGround = 1776410
              CustomColors.DarkBackGround = 2105376
              CustomColors.DarkForeGround = clWhite
              CustomColors.LightBackGroundInterior = 16514043
              CustomColors.DarkBackGroundInterior = 2829099
              CustomButtonColors.Enabled = False
              CustomButtonColors.Accent = clBlack
              CustomButtonColors.LightBackgroundNone = clBlack
              CustomButtonColors.LightBackgroundHover = clBlack
              CustomButtonColors.LightBackgroundPress = clBlack
              CustomButtonColors.LightForeGroundNone = clBlack
              CustomButtonColors.LightForeGroundHover = clBlack
              CustomButtonColors.LightForeGroundPress = clBlack
              CustomButtonColors.DarkBackGroundNone = clBlack
              CustomButtonColors.DarkBackGroundHover = clBlack
              CustomButtonColors.DarkBackGroundPress = clBlack
              CustomButtonColors.DarkForeGroundNone = clBlack
              CustomButtonColors.DarkForeGroundHover = clBlack
              CustomButtonColors.DarkForeGroundPress = clBlack
              Text = ''
              Image.Enabled = True
              Image.SelectSegoe = #59153
              Image.SelectImageIndex = 0
              ImageScale = 1.250000000000000000
              ButtonKind = Flat
              LineWidth = 3.000000000000000000
              StateImage.SelectSegoe = #59188
              StateImage.SelectImageIndex = 0
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = 22
              Font.Name = 'Segoe UI'
              Font.Style = []
              ShowHint = True
              ParentShowHint = False
              TabOrder = 2
              OnClick = CButton4Click
            end
          end
          object ListHolder: TPanel
            Tag = 3
            AlignWithMargins = True
            Left = 10
            Top = 57
            Width = 341
            Height = 354
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel2'
            Color = 14408667
            ParentBackground = False
            ShowCaption = False
            TabOrder = 2
            object AddPicturePanel: TPanel
              Left = 0
              Top = 0
              Width = 341
              Height = 354
              Cursor = crHandPoint
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel4'
              ShowCaption = False
              TabOrder = 0
              OnClick = LoadFilesClick
              object IconsPanel: TPanel
                Left = 0
                Top = 0
                Width = 350
                Height = 84
                Cursor = crHandPoint
                BevelOuter = bvNone
                Caption = 'Panel4'
                ShowCaption = False
                TabOrder = 0
                OnClick = LoadFilesClick
                object Label6: TLabel
                  Left = 0
                  Top = 29
                  Width = 350
                  Height = 41
                  Cursor = crHandPoint
                  Align = alTop
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Add some pictures'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  Layout = tlCenter
                  OnClick = LoadFilesClick
                  ExplicitTop = 43
                  ExplicitWidth = 221
                end
                object Label19: TLabel
                  Left = 0
                  Top = 0
                  Width = 350
                  Height = 29
                  Cursor = crHandPoint
                  Align = alTop
                  Alignment = taCenter
                  AutoSize = False
                  Caption = #59333
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -32
                  Font.Name = 'Segoe Fluent Icons'
                  Font.Style = []
                  ParentFont = False
                  OnClick = LoadFilesClick
                  ExplicitTop = -7
                  ExplicitWidth = 258
                end
              end
            end
            object ControlList1: TControlList
              AlignWithMargins = True
              Left = 2
              Top = 2
              Width = 337
              Height = 350
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              BorderStyle = bsNone
              ItemWidth = 150
              ItemHeight = 160
              ItemMargins.Left = 0
              ItemMargins.Top = 0
              ItemMargins.Right = 0
              ItemMargins.Bottom = 0
              ColumnLayout = cltMultiTopToBottom
              ParentColor = False
              MultiSelect = True
              TabOrder = 1
              OnBeforeDrawItem = ControlList1BeforeDrawItem
              OnKeyUp = ControlList1KeyUp
              OnMouseDown = ControlList1MouseDown
              OnMouseUp = ControlList1MouseUp
              OnItemClick = ControlList1ItemClick
              object Label22: TLabel
                Left = 3
                Top = 3
                Width = 144
                Height = 100
                Alignment = taCenter
                AutoSize = False
                Caption = 'STATUS'
                Layout = tlCenter
                WordWrap = True
              end
              object CImage1: CImage
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 144
                Height = 100
                Align = alTop
                GifSettings.Enable = False
                GifSettings.AnimationSpeed = 100
                ExplicitLeft = 11
                ExplicitTop = 0
              end
              object Label13: TLabel
                Left = 0
                Top = 106
                Width = 150
                Height = 21
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Caption = 'FILE NAME'
                EllipsisPosition = epEndEllipsis
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 82
              end
              object Label20: TLabel
                Left = 0
                Top = 127
                Width = 150
                Height = 13
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Caption = 'FILE EXTENSION'
                EllipsisPosition = epEndEllipsis
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 81
              end
            end
          end
        end
        object PanelAnimate: CPanel
          Left = 0
          Top = 0
          Width = 35
          Height = 468
          Cursor = crHandPoint
          Align = alLeft
          BevelOuter = bvNone
          Caption = #59232
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe Fluent Icons'
          Font.Style = []
          ParentBackground = False
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          OnClick = PanelAnimateClick
          UseAccentColor = None
        end
      end
    end
    object FXPanel1: FXPanel
      Left = 0
      Top = 517
      Width = 809
      Height = 64
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'FXPanel1'
      Color = 15987699
      FullRepaint = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1776410
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      CustomColors.Enabled = False
      CustomColors.Accent = 13924352
      CustomColors.LightBackGround = 15987699
      CustomColors.LightForeGround = 1776410
      CustomColors.DarkBackGround = 2105376
      CustomColors.DarkForeGround = clWhite
      CustomColors.LightBackGroundInterior = 16514043
      CustomColors.DarkBackGroundInterior = 2829099
      AccentLineWidth = 8
      DesignSize = (
        809
        64)
      object ProgressStatus: FXTextBox
        Left = 6
        Top = 10
        Width = 136
        Height = 21
        Visible = False
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 22
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
        Text = 'Preparing preview...'
        AutoSize = True
        Elipsis = False
        InnerMargin = 0
      end
      object ProgressImage: FXProgress
        Left = 6
        Top = 30
        Width = 455
        Height = 20
        Visible = False
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        CustomOtherColors.Enabled = False
        CustomOtherColors.Accent = 13924352
        CustomOtherColors.LightBackGround = 15987699
        CustomOtherColors.LightForeGround = 1776410
        CustomOtherColors.DarkBackGround = 2105376
        CustomOtherColors.DarkForeGround = clWhite
        Animations = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 22
        Font.Name = 'Segoe UI'
        Font.Style = []
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object Printer_Cancel: FXButton
        AlignWithMargins = True
        Left = 656
        Top = 8
        Width = 150
        Height = 48
        Margins.Top = 8
        Margins.Bottom = 8
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        CustomButtonColors.Enabled = False
        CustomButtonColors.Accent = clBlack
        CustomButtonColors.LightBackgroundNone = clBlack
        CustomButtonColors.LightBackgroundHover = clBlack
        CustomButtonColors.LightBackgroundPress = clBlack
        CustomButtonColors.LightForeGroundNone = clBlack
        CustomButtonColors.LightForeGroundHover = clBlack
        CustomButtonColors.LightForeGroundPress = clBlack
        CustomButtonColors.DarkBackGroundNone = clBlack
        CustomButtonColors.DarkBackGroundHover = clBlack
        CustomButtonColors.DarkBackGroundPress = clBlack
        CustomButtonColors.DarkForeGroundNone = clBlack
        CustomButtonColors.DarkForeGroundHover = clBlack
        CustomButtonColors.DarkForeGroundPress = clBlack
        Text = 'Cancel'
        Image.Enabled = True
        Image.SelectSegoe = #59153
        Image.SelectImageIndex = 0
        ImageScale = 1.250000000000000000
        LineWidth = 3.000000000000000000
        StateImage.SelectSegoe = #59188
        StateImage.SelectImageIndex = 0
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 22
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 2
        OnClick = Printer_CancelClick
      end
      object Printer_Print: FXButton
        AlignWithMargins = True
        Left = 500
        Top = 8
        Width = 150
        Height = 48
        Margins.Top = 8
        Margins.Bottom = 8
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        CustomButtonColors.Enabled = False
        CustomButtonColors.Accent = clBlack
        CustomButtonColors.LightBackgroundNone = clBlack
        CustomButtonColors.LightBackgroundHover = clBlack
        CustomButtonColors.LightBackgroundPress = clBlack
        CustomButtonColors.LightForeGroundNone = clBlack
        CustomButtonColors.LightForeGroundHover = clBlack
        CustomButtonColors.LightForeGroundPress = clBlack
        CustomButtonColors.DarkBackGroundNone = clBlack
        CustomButtonColors.DarkBackGroundHover = clBlack
        CustomButtonColors.DarkBackGroundPress = clBlack
        CustomButtonColors.DarkForeGroundNone = clBlack
        CustomButtonColors.DarkForeGroundHover = clBlack
        CustomButtonColors.DarkForeGroundPress = clBlack
        Text = 'Print'
        Image.Enabled = True
        Image.SelectSegoe = #59209
        Image.SelectImageIndex = 0
        ImageScale = 1.250000000000000000
        ButtonKind = Accent
        LineWidth = 3.000000000000000000
        StateImage.SelectSegoe = #59188
        StateImage.SelectImageIndex = 0
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 22
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 3
        OnClick = Printer_PrintClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 275
    Height = 581
    Align = alLeft
    BevelOuter = bvNone
    Color = 15132390
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object FXScrollBox1: FXScrollBox
      Left = 0
      Top = 0
      Width = 275
      Height = 581
      Align = alClient
      BorderStyle = bsNone
      Color = 15987699
      ParentColor = False
      TabOrder = 0
      CustomColors.Enabled = False
      CustomColors.Accent = 13924352
      CustomColors.LightBackGround = 15987699
      CustomColors.LightForeGround = 1776410
      CustomColors.DarkBackGround = 2105376
      CustomColors.DarkForeGround = clWhite
      CustomColors.LightBackGroundInterior = 16514043
      CustomColors.DarkBackGroundInterior = 2829099
      KeepScrollAlignment = True
      ScrollSpeed = 25
      object FXMinimisePanel1: FXMinimisePanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 269
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 2
        TabStop = True
        DefaultHeight = 175
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        HandleCustomColors.Enabled = False
        HandleCustomColors.Accent = 13924352
        HandleCustomColors.LightBackgroundNone = 9145227
        HandleCustomColors.LightBackgroundHover = 10461087
        HandleCustomColors.LightBackgroundPress = 7697781
        HandleCustomColors.LightForeGroundNone = 1776411
        HandleCustomColors.LightForeGroundHover = 1776411
        HandleCustomColors.LightForeGroundPress = 8882055
        HandleCustomColors.DarkBackGroundNone = 10657693
        HandleCustomColors.DarkBackGroundHover = 12039603
        HandleCustomColors.DarkBackGroundPress = 9275783
        HandleCustomColors.DarkForeGroundNone = clWhite
        HandleCustomColors.DarkForeGroundHover = clWhite
        HandleCustomColors.DarkForeGroundPress = 13553358
        HandleText = 'Printer Settings'
        HandleRoundness = 10
        IsMinimised = True
        Animation = True
        Image.Enabled = True
        Image.SelectSegoe = #62829
        Image.SelectImageIndex = 0
        object Label1: TLabel
          Left = 16
          Top = 70
          Width = 51
          Height = 23
          Caption = 'Printer'
        end
        object Printer_List: TComboBox
          Left = 16
          Top = 98
          Width = 188
          Height = 29
          Style = csDropDownList
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Printer_ListChange
        end
        object FXButton4: FXButton
          Left = 210
          Top = 99
          Width = 39
          Height = 28
          Cursor = crHandPoint
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          CustomColors.LightBackGroundInterior = 16514043
          CustomColors.DarkBackGroundInterior = 2829099
          CustomButtonColors.Enabled = False
          CustomButtonColors.Accent = clBlack
          CustomButtonColors.LightBackgroundNone = clBlack
          CustomButtonColors.LightBackgroundHover = clBlack
          CustomButtonColors.LightBackgroundPress = clBlack
          CustomButtonColors.LightForeGroundNone = clBlack
          CustomButtonColors.LightForeGroundHover = clBlack
          CustomButtonColors.LightForeGroundPress = clBlack
          CustomButtonColors.DarkBackGroundNone = clBlack
          CustomButtonColors.DarkBackGroundHover = clBlack
          CustomButtonColors.DarkBackGroundPress = clBlack
          CustomButtonColors.DarkForeGroundNone = clBlack
          CustomButtonColors.DarkForeGroundHover = clBlack
          CustomButtonColors.DarkForeGroundPress = clBlack
          Text = ''
          Image.Enabled = True
          Image.SelectSegoe = #61799
          Image.SelectImageIndex = 0
          ImageScale = 1.250000000000000000
          ButtonKind = Link
          LineWidth = 3.000000000000000000
          StateImage.SelectSegoe = #59188
          StateImage.SelectImageIndex = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 1
          OnClick = CButton1Click
        end
        object FXButton7: FXButton
          Left = 16
          Top = 133
          Width = 233
          Height = 35
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          CustomColors.LightBackGroundInterior = 16514043
          CustomColors.DarkBackGroundInterior = 2829099
          CustomButtonColors.Enabled = False
          CustomButtonColors.Accent = clBlack
          CustomButtonColors.LightBackgroundNone = clBlack
          CustomButtonColors.LightBackgroundHover = clBlack
          CustomButtonColors.LightBackgroundPress = clBlack
          CustomButtonColors.LightForeGroundNone = clBlack
          CustomButtonColors.LightForeGroundHover = clBlack
          CustomButtonColors.LightForeGroundPress = clBlack
          CustomButtonColors.DarkBackGroundNone = clBlack
          CustomButtonColors.DarkBackGroundHover = clBlack
          CustomButtonColors.DarkBackGroundPress = clBlack
          CustomButtonColors.DarkForeGroundNone = clBlack
          CustomButtonColors.DarkForeGroundHover = clBlack
          CustomButtonColors.DarkForeGroundPress = clBlack
          Text = 'Printer configuration'
          Image.Enabled = True
          Image.SelectSegoe = #60507
          Image.SelectImageIndex = 0
          ImageScale = 1.250000000000000000
          LayoutHorizontal = Beginning
          ButtonKind = Flat
          LineWidth = 3.000000000000000000
          StateImage.SelectSegoe = #59188
          StateImage.SelectImageIndex = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 2
          OnClick = FXButton7Click
        end
      end
      object FXMinimisePanel2: FXMinimisePanel
        AlignWithMargins = True
        Left = 3
        Top = 69
        Width = 269
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 3
        TabStop = True
        DefaultHeight = 300
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        HandleCustomColors.Enabled = False
        HandleCustomColors.Accent = 13924352
        HandleCustomColors.LightBackgroundNone = 9145227
        HandleCustomColors.LightBackgroundHover = 10461087
        HandleCustomColors.LightBackgroundPress = 7697781
        HandleCustomColors.LightForeGroundNone = 1776411
        HandleCustomColors.LightForeGroundHover = 1776411
        HandleCustomColors.LightForeGroundPress = 8882055
        HandleCustomColors.DarkBackGroundNone = 10657693
        HandleCustomColors.DarkBackGroundHover = 12039603
        HandleCustomColors.DarkBackGroundPress = 9275783
        HandleCustomColors.DarkForeGroundNone = clWhite
        HandleCustomColors.DarkForeGroundHover = clWhite
        HandleCustomColors.DarkForeGroundPress = 13553358
        HandleText = 'Pages'
        HandleRoundness = 10
        IsMinimised = True
        Animation = True
        Image.Enabled = True
        Image.SelectSegoe = #59734
        Image.SelectImageIndex = 0
        ExplicitTop = 184
        object Label7: TLabel
          Left = 16
          Top = 74
          Width = 201
          Height = 27
          AutoSize = False
          Caption = 'Double Sided Printing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label21: TLabel
          Left = 16
          Top = 142
          Width = 201
          Height = 27
          AutoSize = False
          Caption = 'Copies'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label12: TLabel
          Left = 16
          Top = 222
          Width = 201
          Height = 27
          AutoSize = False
          Caption = 'Page color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Printer_TwoSided: TComboBox
          Left = 16
          Top = 107
          Width = 201
          Height = 29
          Style = csDropDownList
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ItemIndex = 1
          ParentFont = False
          TabOrder = 0
          Text = 'Manual - Front'
          Items.Strings = (
            'None'
            'Manual - Front'
            'Manual - Back')
        end
        object Printer_Copies: TNumberBox
          Left = 16
          Top = 175
          Width = 201
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxValue = 500.000000000000000000
          ParentFont = False
          TabOrder = 1
          Value = 1.000000000000000000
          OnExit = Printer_CopiesExit
          OnKeyUp = EditSaveHandler
        end
        object FXButton8: FXButton
          Left = 13
          Top = 255
          Width = 191
          Height = 35
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          CustomColors.LightBackGroundInterior = 16514043
          CustomColors.DarkBackGroundInterior = 2829099
          CustomButtonColors.Enabled = False
          CustomButtonColors.Accent = clBlack
          CustomButtonColors.LightBackgroundNone = clBlack
          CustomButtonColors.LightBackgroundHover = clBlack
          CustomButtonColors.LightBackgroundPress = clBlack
          CustomButtonColors.LightForeGroundNone = clBlack
          CustomButtonColors.LightForeGroundHover = clBlack
          CustomButtonColors.LightForeGroundPress = clBlack
          CustomButtonColors.DarkBackGroundNone = clBlack
          CustomButtonColors.DarkBackGroundHover = clBlack
          CustomButtonColors.DarkBackGroundPress = clBlack
          CustomButtonColors.DarkForeGroundNone = clBlack
          CustomButtonColors.DarkForeGroundHover = clBlack
          CustomButtonColors.DarkForeGroundPress = clBlack
          Text = 'Change...'
          Image.Enabled = True
          Image.SelectSegoe = #59280
          Image.SelectImageIndex = 0
          ImageScale = 1.250000000000000000
          LayoutHorizontal = Beginning
          LineWidth = 3.000000000000000000
          StateImage.SelectSegoe = #59188
          StateImage.SelectImageIndex = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 2
          OnClick = FXButton8Click
        end
        object FXButton9: FXButton
          Left = 210
          Top = 255
          Width = 39
          Height = 35
          Enabled = False
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          CustomColors.LightBackGroundInterior = 16514043
          CustomColors.DarkBackGroundInterior = 2829099
          CustomButtonColors.Enabled = False
          CustomButtonColors.Accent = clBlack
          CustomButtonColors.LightBackgroundNone = clBlack
          CustomButtonColors.LightBackgroundHover = clBlack
          CustomButtonColors.LightBackgroundPress = clBlack
          CustomButtonColors.LightForeGroundNone = clBlack
          CustomButtonColors.LightForeGroundHover = clBlack
          CustomButtonColors.LightForeGroundPress = clBlack
          CustomButtonColors.DarkBackGroundNone = clBlack
          CustomButtonColors.DarkBackGroundHover = clBlack
          CustomButtonColors.DarkBackGroundPress = clBlack
          CustomButtonColors.DarkForeGroundNone = clBlack
          CustomButtonColors.DarkForeGroundHover = clBlack
          CustomButtonColors.DarkForeGroundPress = clBlack
          Text = ''
          Image.Enabled = True
          Image.SelectSegoe = #60304
          Image.SelectImageIndex = 0
          ImageScale = 1.250000000000000000
          ButtonKind = Flat
          LineWidth = 3.000000000000000000
          StateImage.SelectSegoe = #59188
          StateImage.SelectImageIndex = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 3
          OnClick = FXButton9Click
        end
      end
      object FXMinimisePanel3: FXMinimisePanel
        AlignWithMargins = True
        Left = 3
        Top = 135
        Width = 269
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 4
        TabStop = True
        DefaultHeight = 260
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        HandleCustomColors.Enabled = False
        HandleCustomColors.Accent = 13924352
        HandleCustomColors.LightBackgroundNone = 9145227
        HandleCustomColors.LightBackgroundHover = 10461087
        HandleCustomColors.LightBackgroundPress = 7697781
        HandleCustomColors.LightForeGroundNone = 1776411
        HandleCustomColors.LightForeGroundHover = 1776411
        HandleCustomColors.LightForeGroundPress = 8882055
        HandleCustomColors.DarkBackGroundNone = 10657693
        HandleCustomColors.DarkBackGroundHover = 12039603
        HandleCustomColors.DarkBackGroundPress = 9275783
        HandleCustomColors.DarkForeGroundNone = clWhite
        HandleCustomColors.DarkForeGroundHover = clWhite
        HandleCustomColors.DarkForeGroundPress = 13553358
        HandleText = 'Page Setup'
        HandleRoundness = 10
        IsMinimised = True
        Animation = True
        Image.Enabled = True
        Image.SelectSegoe = #62830
        Image.SelectImageIndex = 0
        ExplicitTop = 250
        object Label8: TLabel
          Left = 16
          Top = 64
          Width = 201
          Height = 27
          AutoSize = False
          Caption = 'Orientation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label17: TLabel
          Left = 16
          Top = 140
          Width = 201
          Height = 27
          AutoSize = False
          Caption = 'Image Size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object CenterOnPage: FXCheckBox
          Left = 13
          Top = 216
          Width = 236
          Height = 30
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          IconFont.Charset = DEFAULT_CHARSET
          IconFont.Color = clWindowText
          IconFont.Height = -16
          IconFont.Name = 'Segoe Fluent Icons'
          IconFont.Style = []
          State = Checked
          Checked = True
          OnChange = CheckboxNeedChange
          AutomaticCursorPointer = False
          Text = 'Center items on page'
          Image.SelectSegoe = #59188
          Image.SelectImageIndex = 0
          ImageScale = 1.500000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 2
        end
        object Printer_Orientation: TComboBox
          Left = 16
          Top = 97
          Width = 201
          Height = 29
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Portrait'
          OnChange = Printer_OrientationChange
          Items.Strings = (
            'Portrait'
            'Landscape')
        end
        object Printer_ImageSize: TComboBox
          Left = 16
          Top = 173
          Width = 201
          Height = 29
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Full Page Photo'
          OnChange = Printer_ImageSizeChange
          Items.Strings = (
            'Full Page Photo'
            'Split in 2'
            'Rule of 4'
            'Rule of 9'
            'Contact Sheet (35 Images)'
            'Custom...')
        end
      end
      object FXMinimisePanel4: FXMinimisePanel
        AlignWithMargins = True
        Left = 3
        Top = 267
        Width = 269
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 5
        TabStop = True
        DefaultHeight = 225
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        HandleCustomColors.Enabled = False
        HandleCustomColors.Accent = 13924352
        HandleCustomColors.LightBackgroundNone = 9145227
        HandleCustomColors.LightBackgroundHover = 10461087
        HandleCustomColors.LightBackgroundPress = 7697781
        HandleCustomColors.LightForeGroundNone = 1776411
        HandleCustomColors.LightForeGroundHover = 1776411
        HandleCustomColors.LightForeGroundPress = 8882055
        HandleCustomColors.DarkBackGroundNone = 10657693
        HandleCustomColors.DarkBackGroundHover = 12039603
        HandleCustomColors.DarkBackGroundPress = 9275783
        HandleCustomColors.DarkForeGroundNone = clWhite
        HandleCustomColors.DarkForeGroundHover = clWhite
        HandleCustomColors.DarkForeGroundPress = 13553358
        HandleText = 'Margins'
        HandleRoundness = 10
        IsMinimised = True
        Animation = True
        Image.Enabled = True
        Image.SelectSegoe = #62836
        Image.SelectImageIndex = 0
        ExplicitTop = 382
        object Label9: TLabel
          Left = 16
          Top = 72
          Width = 89
          Height = 27
          AutoSize = False
          Caption = 'Page Margin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label18: TLabel
          Left = 128
          Top = 72
          Width = 105
          Height = 27
          AutoSize = False
          Caption = 'Image Margin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label14: TLabel
          Left = 16
          Top = 146
          Width = 201
          Height = 27
          AutoSize = False
          Caption = 'Image Fill Mode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Printer_Margins: TNumberBox
          Left = 16
          Top = 105
          Width = 89
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxValue = 1000.000000000000000000
          ParentFont = False
          TabOrder = 0
          Value = 10.000000000000000000
          OnExit = Printer_MarginsExit
          OnKeyUp = EditSaveHandler
        end
        object Image_Margin: TNumberBox
          Left = 128
          Top = 105
          Width = 89
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxValue = 1000.000000000000000000
          ParentFont = False
          TabOrder = 1
          Value = 5.000000000000000000
          OnExit = Image_MarginExit
          OnKeyUp = EditSaveHandler
        end
        object Image_FitMode: TComboBox
          Left = 16
          Top = 171
          Width = 201
          Height = 29
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ItemIndex = 6
          ParentFont = False
          TabOrder = 2
          Text = 'Center Fit'
          OnChange = Image_FitModeChange
          Items.Strings = (
            'Fill'
            'Fit'
            'Stretch'
            'Center'
            'Center Fill'
            'Center 3 Windows Fill'
            'Center Fit')
        end
      end
      object FXMinimisePanel5: FXMinimisePanel
        AlignWithMargins = True
        Left = 3
        Top = 333
        Width = 269
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 6
        TabStop = True
        DefaultHeight = 375
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        HandleCustomColors.Enabled = False
        HandleCustomColors.Accent = 13924352
        HandleCustomColors.LightBackgroundNone = 9145227
        HandleCustomColors.LightBackgroundHover = 10461087
        HandleCustomColors.LightBackgroundPress = 7697781
        HandleCustomColors.LightForeGroundNone = 1776411
        HandleCustomColors.LightForeGroundHover = 1776411
        HandleCustomColors.LightForeGroundPress = 8882055
        HandleCustomColors.DarkBackGroundNone = 10657693
        HandleCustomColors.DarkBackGroundHover = 12039603
        HandleCustomColors.DarkBackGroundPress = 9275783
        HandleCustomColors.DarkForeGroundNone = clWhite
        HandleCustomColors.DarkForeGroundHover = clWhite
        HandleCustomColors.DarkForeGroundPress = 13553358
        HandleText = 'Application'
        HandleRoundness = 10
        IsMinimised = True
        Animation = True
        Image.Enabled = True
        Image.SelectSegoe = #59718
        Image.SelectImageIndex = 0
        ExplicitTop = 448
        DesignSize = (
          269
          60)
        object Label2: TLabel
          Left = 20
          Top = 187
          Width = 47
          Height = 23
          Caption = 'About'
        end
        object Version_Text: TLabel
          Left = 20
          Top = 216
          Width = 123
          Height = 23
          Caption = 'Codrut Printing '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 20
          Top = 245
          Width = 233
          Height = 44
          AutoSize = False
          Caption = #169' 2024 Codrut Software. All rights reserved.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object EnbLegFont: FXCheckBox
          Left = 13
          Top = 105
          Width = 236
          Height = 30
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          IconFont.Charset = DEFAULT_CHARSET
          IconFont.Color = clWindowText
          IconFont.Height = -16
          IconFont.Name = 'Segoe Fluent Icons'
          IconFont.Style = []
          OnChange = EnbLegFontChange
          AutomaticCursorPointer = False
          Text = 'Force Legacy Font'
          Image.SelectSegoe = #59188
          Image.SelectImageIndex = 0
          ImageScale = 1.500000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 0
        end
        object EnableAnim: FXCheckBox
          Left = 13
          Top = 69
          Width = 236
          Height = 30
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          IconFont.Charset = DEFAULT_CHARSET
          IconFont.Color = clWindowText
          IconFont.Height = -16
          IconFont.Name = 'Segoe Fluent Icons'
          IconFont.Style = []
          AutomaticCursorPointer = False
          Text = 'Enable Animations'
          Image.SelectSegoe = #59188
          Image.SelectImageIndex = 0
          ImageScale = 1.500000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 1
        end
        object CloseOnPrint: FXCheckBox
          Left = 13
          Top = 140
          Width = 236
          Height = 30
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          IconFont.Charset = DEFAULT_CHARSET
          IconFont.Color = clWindowText
          IconFont.Height = -16
          IconFont.Name = 'Segoe Fluent Icons'
          IconFont.Style = []
          OnChange = EnbLegFontChange
          AutomaticCursorPointer = False
          Text = 'Close after print'
          Image.SelectSegoe = #59188
          Image.SelectImageIndex = 0
          ImageScale = 1.500000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 2
        end
        object FXButton5: FXButton
          Left = 20
          Top = 295
          Width = 229
          Height = 35
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          CustomColors.LightBackGroundInterior = 16514043
          CustomColors.DarkBackGroundInterior = 2829099
          CustomButtonColors.Enabled = False
          CustomButtonColors.Accent = clBlack
          CustomButtonColors.LightBackgroundNone = clBlack
          CustomButtonColors.LightBackgroundHover = clBlack
          CustomButtonColors.LightBackgroundPress = clBlack
          CustomButtonColors.LightForeGroundNone = clBlack
          CustomButtonColors.LightForeGroundHover = clBlack
          CustomButtonColors.LightForeGroundPress = clBlack
          CustomButtonColors.DarkBackGroundNone = clBlack
          CustomButtonColors.DarkBackGroundHover = clBlack
          CustomButtonColors.DarkBackGroundPress = clBlack
          CustomButtonColors.DarkForeGroundNone = clBlack
          CustomButtonColors.DarkForeGroundHover = clBlack
          CustomButtonColors.DarkForeGroundPress = clBlack
          Text = 'About Codrut Printing'
          Image.Enabled = True
          Image.SelectSegoe = #61799
          Image.SelectImageIndex = 0
          ImageScale = 1.100000000000000000
          ButtonKind = Accent
          LineWidth = 3.000000000000000000
          StateImage.SelectSegoe = #59188
          StateImage.SelectImageIndex = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = [akTop, akRight]
          TabOrder = 3
          OnClick = CButton3Click
        end
        object FXButton6: FXButton
          Left = 20
          Top = 336
          Width = 229
          Height = 35
          Cursor = crHandPoint
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          CustomColors.LightBackGroundInterior = 16514043
          CustomColors.DarkBackGroundInterior = 2829099
          CustomButtonColors.Enabled = False
          CustomButtonColors.Accent = clBlack
          CustomButtonColors.LightBackgroundNone = clBlack
          CustomButtonColors.LightBackgroundHover = clBlack
          CustomButtonColors.LightBackgroundPress = clBlack
          CustomButtonColors.LightForeGroundNone = clBlack
          CustomButtonColors.LightForeGroundHover = clBlack
          CustomButtonColors.LightForeGroundPress = clBlack
          CustomButtonColors.DarkBackGroundNone = clBlack
          CustomButtonColors.DarkBackGroundHover = clBlack
          CustomButtonColors.DarkBackGroundPress = clBlack
          CustomButtonColors.DarkForeGroundNone = clBlack
          CustomButtonColors.DarkForeGroundHover = clBlack
          CustomButtonColors.DarkForeGroundPress = clBlack
          Text = 'Check for updates'
          Image.Enabled = True
          Image.SelectSegoe = #60613
          Image.SelectImageIndex = 0
          ImageScale = 1.100000000000000000
          ButtonKind = Link
          LineWidth = 3.000000000000000000
          StateImage.SelectSegoe = #59188
          StateImage.SelectImageIndex = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = [akTop, akRight]
          TabOrder = 4
          OnClick = FXButton6Click
        end
      end
      object FXMinimisePanel6: FXMinimisePanel
        AlignWithMargins = True
        Left = 3
        Top = 201
        Width = 269
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 7
        TabStop = True
        DefaultHeight = 225
        CustomColors.Enabled = False
        CustomColors.Accent = 13924352
        CustomColors.LightBackGround = 15987699
        CustomColors.LightForeGround = 1776410
        CustomColors.DarkBackGround = 2105376
        CustomColors.DarkForeGround = clWhite
        CustomColors.LightBackGroundInterior = 16514043
        CustomColors.DarkBackGroundInterior = 2829099
        HandleCustomColors.Enabled = False
        HandleCustomColors.Accent = 13924352
        HandleCustomColors.LightBackgroundNone = 9145227
        HandleCustomColors.LightBackgroundHover = 10461087
        HandleCustomColors.LightBackgroundPress = 7697781
        HandleCustomColors.LightForeGroundNone = 1776411
        HandleCustomColors.LightForeGroundHover = 1776411
        HandleCustomColors.LightForeGroundPress = 8882055
        HandleCustomColors.DarkBackGroundNone = 10657693
        HandleCustomColors.DarkBackGroundHover = 12039603
        HandleCustomColors.DarkBackGroundPress = 9275783
        HandleCustomColors.DarkForeGroundNone = clWhite
        HandleCustomColors.DarkForeGroundHover = clWhite
        HandleCustomColors.DarkForeGroundPress = 13553358
        HandleText = 'Extras'
        HandleRoundness = 10
        IsMinimised = True
        Animation = True
        Image.Enabled = True
        Image.SelectSegoe = #60538
        Image.SelectImageIndex = 0
        ExplicitTop = 316
        object Label4: TLabel
          Left = 16
          Top = 66
          Width = 201
          Height = 27
          AutoSize = False
          Caption = 'Filename in photos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label5: TLabel
          Left = 13
          Top = 135
          Width = 204
          Height = 27
          AutoSize = False
          Caption = 'Height space for filename(px)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Extras_Filename: FXCheckBox
          Left = 13
          Top = 99
          Width = 236
          Height = 30
          CustomColors.Enabled = False
          CustomColors.Accent = 13924352
          CustomColors.LightBackGround = 15987699
          CustomColors.LightForeGround = 1776410
          CustomColors.DarkBackGround = 2105376
          CustomColors.DarkForeGround = clWhite
          IconFont.Charset = DEFAULT_CHARSET
          IconFont.Color = clWindowText
          IconFont.Height = -16
          IconFont.Name = 'Segoe Fluent Icons'
          IconFont.Style = []
          OnChange = CheckboxNeedChange
          AutomaticCursorPointer = False
          Text = 'Enable filenames'
          Image.SelectSegoe = #59188
          Image.SelectImageIndex = 0
          ImageScale = 1.500000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 22
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 1
        end
        object Filename_Height: TNumberBox
          Left = 13
          Top = 168
          Width = 220
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxValue = 1000.000000000000000000
          ParentFont = False
          TabOrder = 0
          Value = 200.000000000000000000
          OnExit = Filename_HeightExit
          OnKeyUp = EditSaveHandler
        end
      end
    end
  end
  object TitleBarPanel1: TTitleBarPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 30
    CustomButtons = <>
  end
  object CSplashScreen1: CSplashScreen
    Left = 737
    Top = 19
    Width = 72
    Height = 37
    Duration = 1000
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000002000000
      02000806000000F478D4FA000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000051
      6F4944415478DAEDDD079C6375BDFFFFCF3949265377677BEF4B5D587A472C28
      205C1BDC8B0A4ABBB24B5111AF7AFDFDAEBAA2F2B71794AA7057E4828AF58720
      16BC2A224A1129BB4B5976D9DEEBD4F4F3FF7E33C94C2693CC24B3273939F9BE
      9E0F0EC9CC6666BE9949CEF7FDADC7120000601CCBEB02000080EA2300000060
      2002000000062200000060200200000006220000006020020000000622000000
      6020020000000622000000602002000000062200000060200200000006220000
      0060200200000006220000006020020000000622000000602002000000062200
      00006020020000000622000000602002000000062200000060200200AA26954A
      8D5737732DCB9AED38CE54757FB23AC6A8A34D1DAD5E970FA8B0A7D46BFF1675
      C4BD2E08A011005031AAC20FAB9B85EA384A1D87AB639EF455FA3A08A42B7E75
      326C5461A051DD86BD2E2F5049EA75BE5EDD7C43BDD66F5747CCEBF2000400B8
      4E9DE8E6AAE32475F778751CA28EB9EA98A98E31EAC417F0BA7C8057D4FB62AD
      BAF9BA3AEEB26D3BEA7579603602005CA14E6CB63A0E53774F5795FC29EABE6E
      F5EBD67F8BFA98D71990A1DE1BAFAAB7C457D5EDDD8400788913330E58A6C57F
      A6BAAB8F93D531539DE0425E970BA855EAFDF28ABAF9B27A9FDCA78E88D7E581
      990800183575126B55C719EAEEBFA8E32C75CCA6E2074AA3DE3B2FA99B2FA9F7
      CC8F0901F0020100A3A24E5EF3D5F14E75F702751CC7243EA07CEA3DB452DD7C
      53BD7F7EAA6E3BD4ADE37599600E0200CA9219EBD7DDFCEFC91C1319E307462F
      3331508780FF51B7FB0901A8164EDC28596659DF1BD4F12175BC99563FE00E15
      0236AB9B2FA8F7D48F8410802A2100A0247AADBE3ACE53773FA98EA3D5092AE8
      7599807AA2DE5F9BD4CD0D99E10042002A8E008011655AFEE7A8E3ABEA58A04E
      4CB6D76502EA910A011BD5FBEB33EAEE2F8510800A23006058EA841452C79BD5
      DD6FA96321953F5059EAFDB641DDFC977AAFFD4A9818880A2200A0287522B232
      13FEBE2F54FE40D564B60DFEA47ACF3D2C84005408010045A552A939EAE63E75
      9C4CE50F54970A01EBD4CDC7D5F13BF5FEEB2404C06D040014A42AFF1675739B
      3A2E62FF7EC01B2A04BCA66EFE43BD077FAF6EBB09017013010043A8934E401D
      17ABBB7731DB1FF056669F80EBD57BF11175F4785D1ED40F02008650ADFF05EA
      E60975B299E0755900F487800FABF7E41FD836186E210060103DF14FDDFC58DD
      5EC0B83F503BD47B728DF48500DD1310F3BA3CF03F02000651ADFFB3D5CD438C
      FB03B527D313709D7A7FFE561D71AFCB037F2300A09F3AB904D5F10F75F748F6
      F7076A53CEC4C087E809C081E0248F7EAAF57FA9BAF96FBAFE81DA965922A8F7
      09F8052100A34500403F15009E532793C55E9703C0C8329B057D4A1D3FB16D3B
      EA7579E03F0400A465C6FE1FA6EB1FF08FCCB6C19F55C77D8400948B933DD254
      00F899AAFBCFF7BA1C00CA93B994F097D5FB77B93ABABC2E0FFC8300007D0269
      57C77675F268F0BA2C00CAA3DEBB7A77C0EDEAF8BA7A0FDF4E0840A90800D0AD
      FF4BD449E36EAFCB0160747242C077F461DB76A7D76542ED23004007801FA900
      F06EAFCB0160F432216087F45DC3E39B2A0474785D26D43602007400D8C5B6BF
      80FFE584007D1D8FAFA863BFD76542ED2200184C6FFBAB8E23D4DDE798FD0FD4
      874C08D8A98EBBD5DBFA4642008AE1A46F30759ED01BFE5CA28EE55E9705807B
      322160973AEE5501E00675ECF3BA4CA83D040083652EFBFB257572F898D76501
      E0AE9C1070BF7A8F7F5A1D7BBD2E136A0B01C06099BDFF7FA24E0CEFF4BA2C00
      DC970901BBD5F173F53EFF242100B908000653E786903A9E542785A3BD2E0B80
      CAC884803DEA78401D1FB36D7B8FD765426D2000182C13005E520160BED76501
      50399910A0E7013CA48EEB0801D008000653E784067574A90010F2BA2C002A2B
      1302F48A80DFA8E3832A04ECF6BA4CF01601C0603A00A81B2E200218221302F4
      2E81BF53C7558400B311000C460000CC930901DDEA7844058077795D1E788700
      6030020060A66C4F800A0063BD2E0BBC43003018010030977AFFC75400087B5D
      0E78870060300200602E0200080006230000E62200800060300200602E020008
      0006230000E62200800060300200602E0200080006230000E622008000603002
      00602E0200080006230000E62200800060300200602E0200080006230000E622
      00800060300200602E0200080006230000E62200800060300200602E02000800
      06230000E62200800060300200602E0200080006230000E62200800060300200
      602E0200080006230000E62200800060300200602E0200080006230000E62200
      800060300200602E0200080006230000E62200800060300200602E0200080006
      230000E62200800060300200602E0200080006230000E6220080006030020060
      2E0200080006230000E62200800060300200602E0200080006230000E6220080
      0060300200602E0200080006230000E62200800060300200602E020008000623
      0000E62200800060300200602E0200080006230000E62200800060300200602E
      0200080006230000E62200800060300200602E0200080006230000E622008000
      60300200602E0200080006230000E62200800060300200602E02000800062300
      00E62200800060300200602E0200080006230000E62200800060300200602E02
      00080006230000E62200800060300200602E0200080006230000E62200800060
      300200602E0200080006230000E62200800060300200602E0200080006230000
      E62200800060300200602E0200080006230000E62200800060300200602E0200
      080006230000E62200800060300200602E0200080006230000E6220080006030
      0200602E0200080006230000E62200800060300200602E020008004359CB962D
      B3162D5A64AD5CB9D29A3E7D7AFA77B465CB16FD39AFCBE6AA49874F6A38E3B0
      333ABD2E0780EAD301E0E73FFF799BD7E570DBDEBD7B1D7D7BF0C1073B3B77EE
      7456FEDB4AE7B3F259C7B22CC7EBB2D51A02409E3BEFBC794E32601DE3D8D691
      56CA3A58BD4BE6A9DFD224F5E299A8FE79BCD7E503000CC37136386275AACA6D
      434A9C35EAFCBD4A92A967A2D392CF5E77EE75F478E6303E00DC7CF3CDADE1E6
      C019293B75AE88FD6671649E654983D7E50200B8C771A44355787F55A1E03776
      20F1ABCD6B766FBCE1861B125E97CB4BC60680DBEFBCFD142BE85CA27E01EF54
      1F4E5687ED7599000055E04842D57E7F752CE707120C3CB0F4E2A5BBBC2E9217
      8C0A00F73BF707F67E7FE7DBC4B23F6889738A7AFA4DA6FD0E0000FD1CC79175
      22A97B830DD6F22B2EBAFA3593E60A1853F9DDFEFDDBCF5095FE67D49FF654F5
      AC1B4D7AEE0080E21C1D03C4DAA06A853BAC58E09E254B966CF2BA4CD550F795
      E0EDF7DC3ECD4EA496A9A7FA5E479C3695EEEAFE3903004625A5B2C0D38E6D7F
      637CD3F8872EBCF0C22EAF0B5449755D19DEBEFCE6732C097C4755F973D58741
      AFCB0300A86D99DE806E4B9C1F889DBC69C9A51F7AC5EB32554A5D0680657F5C
      169CB67ED28DB613B88A563F00A05C2A072455CDF1844A035FDE72E9F6076FB0
      6E48795D26B7D55DC5F8BD1F7F6F7C2A12BFD372AC73D4874D5E970700E05B29
      C791B54EC0F94EB3B4DE75C92597747B5D2037D55500B8F507B74E0EA6E417E2
      58C70B6BF9010007A86F484076A87BDF8B04135FBDEEFDD775785D26B7D44D00
      E8AFFC454E504F2BE475790000F54187004BAC9D8E38CB2516F8E2D2A54BF77B
      5D2637D44500D0DDFE4E6FFC0175F7442A7F0080DBFA438025FFD3E3443E7FFD
      E5D7EFF3BA4C07CAF701404FF89BBE7ECA8FD513791B953F00A052FA42806C51
      35E75D4E34F085A54B97C6BD2ED381F07D00B8FDFBB77CD116FB3A61C21F00A0
      F2528EC86A5B9C6F5C79D935DFF5BA3007C2D701E07B77DF766E2A253FB42C19
      E37559000066D04B04D5CD3F2C473EB6E48A6BFEE2757946CBB70160F9FDCBA7
      C6BA237F5695FF417E7E1E0000FF711CE95535CF23763C78A5B2DDEBF28C866F
      2BCEEF7EFFD65BD41F60A9655901AFCB0200308E5E1FB84355A2DF5D72D9D59F
      F1BA30A3E1CB0070C7DD779C6E39C90755F1C77A5D16008099FA8602AC97C449
      2D597AC5B58F7B5D9E72F92E00DC7FFFFD813DDDBB7F6D5B7296D7650100984D
      8500BD3BE0038FB4FCF1FD3FB9F02749AFCB530EDF0580EFFDF7ED6F4B59A91F
      5B96C5AC7F0080A7324B03378A234B965C71CD6FBD2E4F397C17006E5F7EDB6F
      69FD03006A85234EC412EB374B2EBBFA5D5E97A51CBE09003A64DD7EF7ED27D8
      8EF3BFAAF5DFE275790000D032BD00DB5201FB5D575D72D5135E97A754BE0900
      CB962DB367CC9D729358D607BD2E0B00D49A502C2263F76D93B6CE3D451F9308
      8664E7A439126966EB14D7F52D0BFCDE92CBAEBECEEBA294CA2F01C0BAE38E2F
      8DB11ADA578AE5CCF0BA3000502B74C5DFBE678B4CDAB25AA6ABA3BD6B77D1C7
      C6830DB269F202D939EB10D939659EF4D6601088C7E2B277EF3ED9BB67AF7475
      74492412954422D1F75C8341093735CA98B16D3261C278691FDF2EB66D7B5DE4
      AC940A01EB7A83B163FC72C5405F0400D5FA0F4E9F37E52DEA97FB90A5785D1E
      00F05A43AC57DA776D9219EB57C8B46D6BA5AD6B8F34F5764A28597C7BFA9465
      4B6F43B3F4B68E95DD6326CBFA05C7C98E1907791E04F41577BBBBBA65CBA6AD
      B263FB4E75BF4755FC1189C562924C2425954AA51FA72BFB6030200DE1B034A9
      20D0DAD622D3664C9799B3A7ABCF073D7D0EE9E7214E4495F582ABAFF8E0AFBD
      2E4B297C51992E5FBEBC316645BEA20AFB21AFCB02005E6A88AA8A7FEF5699B4
      E91599B1E51599B867933445BAC44E5FB6BE74713B281DED9365C3948364FBBC
      45B26BD21C4F824054B5F0B76DDD2E1BD66F92BDBBF74A4F774F7F853F121D08
      DAC6B4C9C4C91364C1C2F93261D278F1B28DA8FE0409CB766E5F72E935BEA8AB
      7C11006EBEF9E6D6504BE049F5773DCCEBB200805774E53F5555FA0B573F2513
      B7BF262D3D1D124C250EE87B7637344B4FFB2479E9905364DDFC6325D2DC5695
      E7A25BFD9D1D9DB26EED06D9B461B3747474482A595AC59F2F100CC884891364
      FEC2B93267DE6C0904BCD920363D19D0B25E5E72D9D5BEA8AB6A3E00E88D7FF6
      76EF3D4824F99CFAC536785D1E00F042B6F23FE4A5C7D363FD7A08C04D7BC64F
      931547BC41D6CF3F46224D950D01BAF2DFBB679FAC59BD5636ABCABFA7C79DE7
      32B67D8C2C3C78812C3878BE974302519540162E79FF924D5E15A054351F0074
      F77FD4EE7987EDD83FF2BA2C00E095295BD7C811CFFF41666E7AC9F5CA3F6BF7
      8419F2CCF1E7C9FA79478B53C1AEF4FDFBF6CBEA97D7C8FAD736A48700DCD4DA
      D62A471E75B8CCF6A827C0E9F38EABAEB8F65755FFE165AAF90070F3FD37B706
      7B029FB0453EED755900C00B7AA6FF61CFFE4116BDF81769EDD95FD19FF5D2FC
      E3E4A933DE5DB15E80486F24DDF25FFDD2ABAEB5FCF38D1BDF2EC79F7C9C4C98
      38BEEAAB04D2D5BFC8B2AB2EBFE6F355FDC1A350F30160F9F2E5ED31E9BDD5B2
      ACF77A5D1600F0C2E42DABE5D8277E25D376BC76C063FE23E90CB7CAE367BC47
      362E38D6F55E005D356E5CBF4956BDF0A2ECD9BDB7A2CF63CEFCD972DC09C748
      635363457F4EA1A7294EEA874B2EBFF6E26AFFE072D57C00B8FBEEEF4C88A682
      0FA8929EEA755900A0DA42F1882C7EF22139F495BF4B73A4AB2A3F73CDCC45F2
      F89B2F934853ABABDF574FFA5BF9FC8BB2EEB5F5A39EF0572A3D07E0A4D34E4C
      2F11ACF650804A007F5D7AD935A757F5878E42CD07805B7F70EBE4604A1E5345
      3DC8EBB20040B54DDAFE9A9CFCE88F64F2EE8D652FF51BAD881D923F9E7DA56C
      9EB3481CCB9D2E74DDFA5FFBEA6BAAF5FF523A0854C3B419D3E494D79D288D8D
      D5ED0550CF75F5D2CBAF39B8AA3F74146A3E00DCBCFCE6A90D1258A14A3AC1EB
      B200403505E35139F4B93FCAE2957F92960A8FFDE77BE19053E59FA79E2FD146
      772EBD128DC6E4F9675E488FFF97BACEFF40E94D83DE74D61B64FCC40962DB55
      ACEE1CD9BBE4F2ABC757EF078E4ECD0780EFDCF99DE9E16070B3D7E500806A9B
      B073831CFBF82F64C6F635C3EEF05709BB9BC7C9DFDFF47ED93AF310577A0176
      EED8252F3CBB42B66DD95ED5E771F4718BE5A043174A2814AAEACF5D72D9D535
      5FBFD67C010900004CB5F0E527E484271F90D6AE3D07FECD46E1C993DE212F1C
      FD1649D9073E86BE56B5FC57AD78493AF657A7FB3F6BE6EC1972E2A9C7577D18
      8000E00202000053D5530058F1DC4A7979D52BE9A1806A6A1BD32A679EFD4669
      6E69AEEACF2500B8800000C054F514009E79EA9FF2CA8BAF566DFC3F2B140ACA
      B9EF38475A5ADD99CB502A02800B0800004C554F01E0A9BFFD4356BFFCAA27CF
      E3ED179C97DE21B09A08002E20000030553D0580A7FFFE0F79E5A5EA07007D75
      C0B79D7F5EFAD2C1D544007001010080A9EA29003CFBF473F2F24BAB25994856
      F539841A4272EEDBCF6608A0809A2F20010080A9EA2900AC7CE1457979E52B12
      8944AAFA1CC68E1B2B6F7CCBEBA5B9B9A9AA3F9700E002020000532D7CE50939
      5E0580B64EAF02C03B550078B32B0160DD6B1B64D5F32FCABEBDFBAAFA1CE62E
      9823C79D788C84C3E1AAFE5C02800B0800004CD5DCB5578E7DF427327FF34A09
      27AABB7C6EF3D869F2D773AE948E71535DB928D0DE3D7BE5F97FAE90CD1BB754
      F5799C78CAF1E910A0AF0D504D040017100000986CE18B8FCBF1FF78A8EABD00
      4F1D7F9E3C7FDC5B5D69FD6B7AF9DF73CFBC202FBFF84AC52F049415D44B00DF
      7676DF0A802AD776040017100000984CF7029CF1FBFF96E9DBD74AC0A94EC5D9
      13689007FFF593B25FB5FEC5C54B02EBD6FFCAE757C9AE9DBBABF23C0E3E74A1
      2C3E76B1343454771B608D00E002020000D32D58F1981CFFEC6F644C67752ACE
      278F3A4B9E3FF91DE2D8EE5C09302B1E4FC88AE757CA2BAB564B3259D9D5007A
      EFFFB79C77A68C1D3B26BD14B0DA08002E200000305D73D73E39EED11FC9BC4D
      AB245CE18B02ED681E2F7F7AFB8754EB7F8A54A28AD8BD6BB7AC786E55C5E702
      1C73C25172D0210BAB3EF69F4500700101000044E6BFFAB41CF7D483D2BEAFB2
      57D37B42CFFC3FE62DAE5C01B0988DEB37A5AF0DB0774F655604CC9A33534E3A
      ED444FBAFEB308002E200000405F2FC082D54FC8E12BFF52B1A18095879F2E2B
      8E7AB374B44FA9E873D11302376DD89CEE09707B59E08C99D3E5E4D34F947063
      7597FDE52300B8800000007DF484C0F9AB9F92C3573D26633B76BAFABD571DA6
      2BFF33D395BF1BCBFE46A243C0D6CDDBD23D01BB77B9B3C261F69C5972C2A9C7
      557DCD7F2104001710000020CB512160BF4CDFFC92CC79E90999B6E335694A44
      0FE83BEE681E27EB8E3C43D6CD3BBA6A957FFFB3711CD9BF6FBFBCFCE26A59B7
      76FDA8B709D6DBFD1E79F4225978F002CFC6FCF311005C400000801CAAD2B49D
      943475EF97691B56C9412F3E2E53776D90A0537AE5E9A8A3271896170F7F9DBC
      76E8C999CD7EECAA56FE034FC791442291EE0578F59535B265E3D6F4C7A5D015
      FFFC8573E5E0C30E96969666B15D5EB5702008002E2000004001394160EA96D5
      3263EDB3326DEB1A1913ED2CFA25093B285BDBA7CBD6F98B65C3BCA354C53F45
      52EA735E54FC439F8E93EE01E8E9E995EDDBB6CB8EED3BD393047BBA7B2411EF
      0B04BAC26F5615FD8489E365CAD4C9326DDA54098543AAE20FB8B95D812B0800
      2E200000407196AA38AD54521A7B3B65F2F6D764DCDEAD451F1B0F8565D3CCC3
      A573EC2449056AA3E2CFA78380937224A5C28DBE4D7F9C7DAED277795FCBB6D2
      ADFD5A6AF1E72300B88000000023CB06017B98DD02D52354C51FA8E8123FF421
      00B880000000F01B02800B08000000BF2100B880000000F01B02800B08000000
      BF2100B880000000F01B02800B08000000BF2100B880000000F01B02800B0800
      0000BF2100B880000000F01B02800B08000000BF2100B880000000F01B02800B
      08000000BF2100B880000000F01B02800B08000000BF2100B880000000F01B02
      800B08000000BF2100B880000000F01B02800B08000000BF2100B880000000F0
      1B02800B08000000BF2100B880000000F01B02800B08000000BF2100B8800000
      00F01B02800B08000000BF2100B880000000F01B02800B08000000BF2100B880
      000000F01B02800B08000000BF2100B880000000F01B02800B08000000BF2100
      B880000000F01B02800B08000000BF2100B880000000F01B02800B08000000BF
      2100B880000000F01B02800B08000000BF2100B880000000F01B02800B080000
      00BF2100B880000000F01B02800B08000000BF2100B880000000F01B02800B08
      000000BF2100B880000000F01B02800B08000000BF2100B880000000F01B0280
      0BAEFDF8B5D3C37688000000F08D6F7CF95B355FBFD67C01AFBDF6DAE956C821
      0000007CE3E66FDD5AF3F56BCD1790000000F01B02800B08000000BF2100B880
      000000F01B02800B08000000BF2100B880000000F01B02800B08000000BF2100
      B880000000F01B02800B08000000BF2100B880000000F01B02800B08000000BF
      2100B880000000F01B02800B08000000BF2100B880000000F01B02800B080000
      00BF2100B880000000F01B02800B08000000BF2100B880000000F01B02800B08
      000000BF2100B880000000F01B02800B08000000BF2100B880000000F01B0280
      0B08000000BF2100B880000000F01B02800B08000000BF2100B880000000F01B
      02800B08000000BF2100B880000000F01B02800B08000000BF2100B880000000
      F01B02800B08000000BF2100B880000000F01B02800B08000000BF2100B88000
      0000F01B02800B08000000BF2100B880000000F01B02800B08000000BF2100B8
      80000000F01B02800B08000000BF2100B880000000F01B02800B08000000BF21
      00B880000000F01B02800B08000000BF2100B880000000F01B02800B08000000
      BF2100B880000000F01B02800B08000000BF2100B880000000F01B02800B0800
      0000BF2100B88000503DA9544A92C954FA36A56E1D477DACEEAB3BFA3F003E64
      59963A446CDB164B1D76E60804FA6E511904001710002AC751B57A2291481FC9
      84AEF893924A57F6EA48E91ABFAFE277A8FD015FCB86007DCAB76C2BFDB1AD0F
      3B2081A02DC160307D5856CD5709BE4100700101C05DBA324F2692128FC7D315
      7FB6D5EF642A7E00E6E80B06567F6F800E01A1504885820061E00011005C4000
      7087AEE875A51F8FA9D67E32993EF4E70020AB6F6820900E000D0DA174182008
      8C0E01C00504800393ADF863B1B86AF927FA5BFB00504C5FAF404082A1A00A02
      0D2A08303C502E02800B0800A3931DDF8F45632A00F48DF38FD6E4A9D364DEC2
      85326EC204696C6AE24400F8846E00C46231E9EAEC901D5BB7CAE60D1BD4FDCE
      B2BE87EE05083504251C0EA743014A4300700101A07CE937BDAAF8A3EA8D9F50
      95FF685AFC0B0F5B24F3E6CF977073934C9A3C5966CE9E2363DADB25DCD84800
      007CC2C9F400767777C9EE1D3B65FBD62DD2D3DD9D3E2FECDEB5535E59B552F6
      EEDE3DE2F7B16D4B058106F5FE0F678605BC7E66B58F00E002024079B2ADFEA8
      3AF4387F3974E57ED0A22364DAB46972C8918B65EEDCB9126E6A4EBFF901F85F
      5F5B40F70E26658F0A00AFBEFC52BA67E09F4F3E21BB77EE1CF1EB75E51F6E6C
      48F706D010181E01C0050480D2E9541F8944D2E3FDE54EF09BA85AF9471D7782
      1C7BEA693263E68CF41B1D40FD8BC5A2F2F7BF3C262F3EF7ACBCF0EC3FD3BD06
      C3D12B06F4506038DCC03E02C32000B88000501A3DCE1FE98DA4C7FBCAEDF29F
      3069B2BCF19C73E484534E95D63163BC7E2A00AA2CA9CE19EBD6AD93C7FFFCA8
      3CF5C74746EC3DD4157F6353A334368609014510005C40001899EEF6EFD5957F
      B4FCCA7FDC8489F2E6F3FE454E7BC31B24D4D0E0F55301E091DE942389A423F7
      7CEB6BB2EAF9E7463C97E88ABFB9B9293D2F80E180A108002E20000C4F2775DD
      F2D763FEE576FBEB6EFED79F75B6BCEBBD1779FD3400D488F56BD6C8DD77DC96
      9E1B305208D0AB025A5A9A55E381FD02F211005C4000284EBF3975E5AFC7FDF5
      FAFE72E837EBF88993E49A8F7F5CA64E9FE1F553015043FEF0EB87E4973FFA61
      498D0ADD9068696D4EEF22880104001710008AD3CB7B7ABA7BD2E3FFE50AA837
      EB31279C28975FFB41AF9F06801AA357047CE953FF37BD64B0147A2840CF0960
      3EC00002800B080085E964AE2BFFE828C6FDB570B8512EBEF24A39EEE453BC7E
      2A006A48F67472DBD7BE22AB5E787EC455019A5E2ADCDAD6CAD6C13908002E20
      0014A667FBF774F78E7A873FBD8CE7FA4F2F9399B36797F57551752ED8A77EE4
      EEA40A21EC280CD4ACA03ABB8F09888C5547CB2836F07BF6A92765F92D37977C
      8ED13D00BA27805E803E04001710000AEBEEEA9648243AEA7DFD9B9A9BE5335F
      F95A7A77BF524554E5FFB74E9187F758F2C3BD96F4702D21A0664D0E8A9CD1E6
      C85BC73972D65891E63243C0FEBD7B65D9473F921E6A2C85DE1FA06D4C1B7301
      3208002E20000CA567FE77A900108F95F6C62CA4B9A545BEF09D5B25DC50FA86
      3F0FED557F8F75B67496B7C120000F1D1476E463D31C79FB789186321BE71FB9
      E232759E8995FCF8D6B6167609CC2000B8800030941EF7EFE9E9916462F43571
      734BAB7CF58EEF96FCF88E84C8D12FD8B29FCA1FF09D858D229F9B9192B3C795
      F775E50680C6C646696A6E4AF706988E00E00202C050BAF28FF446CB5EF79FAB
      DC0030F79FB4FC013F3BBA45E40F879577CE283700E8CB07B7B6B64A30C85503
      09002E20000CD5D5D935EAD9FF590400C02CD508007A02E0183D0F20C43C0002
      800B080043757474A6B7FD3D100400C02CD50800DAD8F6315C4C4C0800AE2000
      0C450000502E02407511005C4000188A0000A05C0480EA2200B8800030543DCD
      0138A451E4C4D6C2CF43FFBC5FEEADF99728E00BCC01A82E02800B080043F979
      15C09C504A6634885C3841E43D131DB12DABE88BD0C91C9DB1A45CFA5A5076C4
      1C591D637911301AAC02A82E02800B080043E91D007B7B7AD31B028D56B503C0
      D880235F98E5C8BF4DE87BD1D9EA7FE554E5894C2781BE39E6394BB6266AFEA5
      0BD4946A0480706338BD1DB0BE4CB0E908002E20000CE5CE4E80D50B0037CD71
      E4FCF12909AB5A3FE0C22B2E9A72E4977B2CF9E03A5BD88D18284D3502003B01
      0E2000B8800050D8815E0BA01A01E0DDE31DB968A22347A9134F9BCB0D82840A
      012B7B2DF9DC264BFEDC6909D725028657E900901EFF1FCBB500B208002E2000
      1496BE1A604FAF24E2A3BB1A603502C0DDF353F2D671E24AABBF107D2AEB8D39
      B2E08580C44900C0B02A1D009A9A1BA5A989AB016611005C4000284CB7FC7BBA
      7B46DD0B50C90030BBC1916FCE75E4F4B6BE4B9256DA733D22E7BC684B8C1000
      1455C900A02BFDB631AD2CFFCB4100700101A0387D9DEE6E1502463317A09201
      E0BE052939B3BD3A95BF965415FFBE784A16AF08A62F590C60A84A068096D6E6
      F4858018FB1F40007001016078A35D1150A900F0E9198EBC7F9223133C1806FC
      FF36897C7BBBCD70005040A502404343433A0030F37F3002800B0800C3D3DDFF
      3A00E82050CEBE0095080013838EDCBBD091E35ABD796175ABF29DB2D2922D31
      260502F92A110074A5DFD6D6CAC63F0510005C40001899AEF8B321A0D4F90095
      0800F71F949233C688843C7C55DDB74BE4131B6CE965280018C4ED00A0C7FD5B
      DBF4B87F90AEFF0208002E200094261D027A231251472921C0ED007044382577
      2E1439A8C9DBDFC3F6484A4E7A31C8750B803C6E0680BECABF253DE98FCABF30
      02800B0800A5D32140F702E81030D27080DB01E08C3647BE31D79179618F7F07
      2AFB2C78D6960E020030885B0140AFF36F6E69A6E53F0202800B0800E5D115BF
      5E15A07B03F42A8162DC0E009F9AE1C865931C19570343815FDE22F2ED6D362B
      02801C6E048070B8419A325BFD52F90F8F00E0020240F9F4104032919468349A
      3E52A9A143026E0780870F4DC9712D95DBF4A71C7B54EE39E1055BF6D10B00F4
      3B9000A0BBFCF51EFFA18610B3FD4B440070010160F4D2BD01F1B84423B1F46D
      EEDC00B703C0A38B52B2C8E3F1FF5C0B9FB565EFE8364904EAD26802C0F5FF7E
      79FA8A9DE1C68674D73FADFED211005C40003830BAD2EF0B0289F4F6C17A7840
      7F8E000098653401E0331FF99038EAFC6107D8DEB75C0400171000DC910D027A
      68209E884B2814962FDE725BC95F4F0000FC6D3401E0F39FF8A824E2A3BFEAA8
      C908002E2000B84B07017D841B9BE4535FFE5AC95F4700801B5A5443F2ACB18E
      9C3956A43DD8B767841E98D2FB36ACEE15F9D55E91177A6BFEB4E44BA309005F
      5001204E00181502800B080095D1D4DC2C9FBCF1CB253F9E008003352FECC805
      E31D79FB3875BF5124ACCE3E76E60C94D0D773507FAF677B44EEDF6DC92FF6E8
      6050F3A7275F2100541701C0050480CA703B007C7D66522E9868495B0D2C03BC
      6F7B52FE7373487A580658334E6EEDABFC75CB7F56C340C59F4F2FDD5CD52BF2
      FD9D96DCBBABE64F4FBE4200A82E02800B080095E1760038BF3D29CB665932D3
      E38D80F4F0C69B565AB222620BF57F6D38BDCD910F4C76E4D43691F6C0C84B45
      F5659D3744451ED96FC937B68AEC4ED4FC69CA170800D54500700101A032DC0E
      00D3428EDC7FB023877B3C0CF05CB7C8DB5EB6A59BDABF26BC718C23FFAE2AFF
      D355E5DF56E6F2717D71A79FEEB1E4A3EB6BFE34E50B0480EA2200B880005019
      6E0700ED6707A7E4B4366F2F06F4A35D221FE3624035618CAAF03F373325EF1A
      2FD23ACABD63F496CE9FD968C93D0C071C3002407511005C4000A88C4A0480B7
      B63BF2F959DE5D0F40EF7374D1AB96FC6F87959E5406EFCC55AF013DE6FFBE89
      8ECC3E80D74352FD1DD745457EBDCF92CF6EAAF9D3554D2300541701C0050480
      CAA84400D06E9D93927F512DBE160F760BFDE56EF57A59CF3500BC76427AC29F
      C8DBC7393225E4CEF7D47FD22FA80070D3B69A3F65D52C02407511005C4000A8
      8C4A0580D7B5A4E492C92267B68B8CAD6208D0CBC6BEB5C59255118BC97F1EFB
      AA0A81FF3ABE6F08C04D7A4EC035AF59F2E0BE9A3F6DD52402407511005C4000
      A88C4A0500ED756D8E7C7E7A4A8E68B5A41A5B876F8F8A9CBFDA929755E54FCF
      BF77F4C63E678F75E413D39DF4104025ACE811F9F4264B1EEDA8F95357CD2100
      541701C0050480CAA86400D02DBFF7B6A7E4FD93451636577652E08688C8F7B7
      AB37DB2E3B3D5E0C6FE8AEFEF3C73B72ED1447A63554F6673DDE29F2D52D96FC
      A593C0570E02407511005C4000A88C4A0680ACF7A80AE1D2C98E1CA9424093CB
      D712D1B3FCF54E7FB76C11F9EE2ED6FC7B69B2AAFC2F9EE8C852F5B79EE4D298
      FF489EE812F9E6562BBD570021A0340480EA2200B860D9B265D3AD609000E0B2
      7053932CF98FEB4B7EFC680280766E7BDFEE6FA7B63AE9ED5FDDE80DD0E5F8F9
      1E2B3D3BFCE66D8CF97B496FEAA32BFEEBA63932B1CABB40EA6B079CFD922DFB
      47F1BA34D16802C0AD5FFAAA24130480D1F8ECA73F5DF3F56BCD17F0BEFB7E39
      5DEC1001C065A18690BCE95D6796FCF8D10680AC774F70D25DC48B9B25DD4A2C
      F785976DE5FD5EB5F836AB8AFFE31B68F9794DFF0DCF1CE3C837E73A32BDC2DD
      FEC57C42BD0E1EDE67C9D698F07A18C16802C0233FFDBD249324ACD1B8E83DE7
      D57CFD5AF305BCE79E9F4D53CD8CD70276D8E34D66EB4BB50380365FFD05DFA3
      82C089AD4EBA2740EF1E38ABC111DB2E3C3EA0C7F477C552B23E6E4B549DB792
      EAE57AC12B35FF9235C6F12D8E7C7F41E5C7FC47A28702EEDF2DB29A49A0C322
      00544F321989BEFFE20B1ABD2EC7486AFE6C7AEB0F6E9D1C4ADA4FB534CD9AED
      7559EA891701204B5F05AE25E0C85B5B13F29EF12909870B0F1CF7AA9FF7E7DD
      09F9C1FE50FA67479D9A7FB91A415FD277A13AB57D7F414A66856BE324F2D05E
      912F6DB1E5A55E6148A8080240F574F66E58BFF4F2ABE77A5D8E91D4C27B7758
      37DD75D3A4463BFC485BD3ACC55E97A59E781900E06FEF1CE7C8D7E738E9657F
      B5E4996E918B5FB565679CE180420800D5D315DDF0FC924BAF3ECAEB728CA4E6
      03C0F7BEF7BDF14E28716F6BE3EC73BC2E4B3D21006034F472BF4717A5AA3EE1
      AF549FDED87719617D0D0142C06004806A719CAEC88607975C76CDDBBD2EC948
      6A3E00DC73CF4D6322C9A62FB634CEB8C6EBB2D4130200CAA167698C5395FE3D
      0B53729CAA4882357CE6B87E9D253FDF6BA5770E24040C20005487A3F44437DE
      74E5655797BECCCA2335FC36EE73C71D77345B0DCEE5AD4DB36EF6BA2CF5A4EC
      00F0CC4000D02F9AA227D6DC7FCCDEAFF9571986A3FF7CB31B1CF9D322C7F5ED
      7D2BE5C32A04FC728FC565A1731000AAA32F006CBAEACACBAEFAAED7651949CD
      9F9A550008D90DF6892D4DD31FF3BA2CF5A4EC00F0745F0048BF60ACBE2BEF15
      7DF5140A0192F7F8429F1BEE7BC03333428E3C7E8433EA4BFA7AE5CB5B2CB965
      1B21208B005035A98EE8C693AEBAF4AAA7BD2EC8487C716ABDF5DE5BC70563F6
      86D6A659AD5E97A55E941B00E63D694B873E770C53F1673FAD27EB5B4EA6FE1E
      EE15D6FF0532341C94F2CAB406DF758A3DC629FC3528CDEDF352F2AEF1B5DDED
      5FCCE2E72DD91CF361C12B80005079AAF12FDD918D1D9BE76E9B70C31B6F4878
      5D9E91F8E29D911E0608A7EE6F6D9C7D9ED765A91765F700A800D099185CC9E7
      1A527F5B99DB4C655EA843A0A0915E91F9FF9EF9FEE9EF9B1B1C8A55FCD9C7F8
      E295EFBD278F48C9FC46FFFEBAF4A5A14F5861CB9698D725F11E01A0F2540048
      7647D6FF6EC9E5D79EEB75594AE18BF7B51E069070EA8AB6C6D9B77B5D967A51
      760FC0DF479804989700B201A15023BF3F0C5803BD05B99FCFFD96D93021398F
      B13243109635FC488333DCF082CBD726A847FF7B782A7D1D07BFFFAAF4EB62C9
      DABE1D037B0D1E0E2000549E0A00B1EEC8A6EB965C7E952FEA2A5F0400F54BB5
      BEFF935BA6C4BB031B5B9B66D7E802247F293B003C9E3709307782DF485DF6A5
      8EE78F308170D03F658719ACC10FCDF63AF40790EC7C85FC9FE365AD56EAF086
      871328FFAE5AFE0B7DDCF2CFA77F955FDA6CC99D3B2DD957F31DB3954100A82C
      D5F897EEE8E6CE98933CF883977F709BD7E529856FDEDFF7DF7F7F606FCFCE87
      DA1AE79EED7559EA41B90160C15F6DE9480CAE70B5FCD6B9E47CBE58EB7CD8B1
      FA91C242EEB8BF7A5CCA1AE6456C15FE798EC701A0BF4CF95D22399F1B54EED1
      848103588DA12FE9BB6CA693BED04F3DD1170F7AEFABB6BC16F5BA24DE200054
      56CA49C57A221B7EB3E4F26BDFE175594AE59BB7B8EE05B863F9ADEF1AD33CF7
      675E97A51E941B00E63F664BA7BE28D8082DF872C6F773E707E4B6DA073DDC1A
      5A3FE6E784F4E7730347EEF7CAEF45C80606170240A96BCC2DABF017179B4791
      5BF10F9A43E1E4F4685805BE30F7F9E68FB9140B537961EB33335372ED547F4E
      F81B897EAAFAFA12EF5E6DC95F3B2D891BB6490001A0B21C27D5D113DB7CF995
      975EF573AFCB522A5FBDCD97DDBFAC6146F7D455AD4DB317785D16BF2B3B003C
      DA3709B0D824BC820A544CC3D54B4E6E6BBE482F40C1AF29D08276F212C2A030
      91ED0118A60228A56EB08A7E5086FC1E94022B1BACDC279EF964A1F0E00CFFED
      470C04F71D9292378F95BA6BF9E74BA8E7FFFE572DF95387253183420001A072
      52A944A237B6E5F94DCDDB4EB9E1C21B7C33E5D4776FF5DB97DF72D598A6B9B7
      795D0EBF2B7B08E04F767A7BD5742B54722ADE9C0A373B13BF7F8E408EFCD500
      7D9FCCB99FD372D537D9AEFDDC258505570A96B0CC30DB62EEFF7E52A02C85CA
      331237DF3D855AEDC3FC8CFCDF7FFE97E44EC2CC9F1F911FC46CF5C90D273AD2
      60E9FB2E3EA71AA65BFF17BC6CC9DFBA2C632E1E4400A81CD5FADFDD1DD9F49F
      4B2EBFFA2EAFCB520EDFBDDD97FD7159E38C75D356B436CDA217E000941D00FE
      D83707605023B2C844BD417558B1166DE613FD5DDBD9AFC9AB84B32B05866DDE
      5A453E3FDC63EC12EAF86ABD3B722BEB72264BE6F78E64BF4FB1E514B97773BE
      F6BCF18EDC7DA8414DE10C7D89E97F5D6DC9E39DBE3B0D8E0A01A03292A944AC
      37BAEDEF8D81A6732FB9E4926EAFCB530E5FBEF2BFBBFCB68B5B1A67DD635996
      2FCB5F0BCA0E007F283C04903BCB7ED0CCFC0263D143EAAC9CCFE77C38EC30B6
      630DF9F2218FCF0D0C56B196FE3001A0D08B2AA89ED0A2A6849CDB1E97D90D29
      D999D05DC82179B433A45A93C3BF0CAD229FC8EDDECFFDDD651F3264E264DE10
      49FE84CC619F40FEFE074E5F57FF8767A6E43F668934FA7DADDF28AD8E887C68
      AD254F7517F91B167D9189EFCE9E0480CA709CE4A6AEC8A68F2CBDFC1ADFCD4F
      F3D94BB88FDE1720D0280F3535CC7833216074CA0D000B1F19DA039036CC4C76
      29F49812FF5AB9955EA12F2B340430E87379B5626EEBB8DC550087A98AFFB2C9
      51798BAAFC9B6CA77FFA404FD29267BA03F28DAD4DB2B267F0EAD4525E95C57E
      1DB97B1DE4F60E14FD3EC582C0309A022237CC4BC9C55345C28656FE9AAE0E37
      4455105221E0AF1D45666596A2DC50E041882000B82FE5C43B7AA3DB7F9E8ACA
      92A54B97C6BD2E4FB97C5B79DEF5836F1F954C85FFD2DA38A3CDC74FC33365F7
      00FCDE96AECC2A80F418BD0C1D83CE1AAE42EA6F91175AFAE60CB4DE0BB6DC73
      1E2BD9EF61157E486E40C91DFBEE2FDF082F99ECD74F57ADFD2BA746E4DD13A3
      052B4A3D96BCAA272057AD69951DF1F26BD282CB250BCDF22F65567F81E7903B
      DC92FD9CBEAADFE716A6E4FC496657FE59FAB5ACAF1CF8D9F596FC74B7255D39
      F55DD1F922E5F404947B7A2AD4D3506C58AB8C104100705722194D46E3BB9E49
      2493975DFDEF57AFF2BA3CA3E1DB9AB36F5F80DD57B78667DD645916A7B13295
      1B000EFA6D5F0FC01045D7E5F5DD14EA9ECFEDF6CE79E890C78F54F115EA7C48
      7FDE2A52918A0CFF8ACFF9862D0147DED41E938BA6C4E4C896A434DAC5DBD75D
      494B7EB72728DFDED2249BA38192AE81D03F31B1D0E4C8DC5F6DDED0C0B04FBE
      8477B3EEEA7FDD3847961FE150F9E77970B7C8D73659F242CE70406E0028F62B
      1F326D236758ACD08458C9FB9B0E59A951A0A2CF0DC7C3BEA6870904E9007038
      01C02D2927B1BA27BA65597BF384FB2FBCF0425FFE927C1B00347D8D00BBD1BE
      AB253CED42F554389D95A1EC00F0F0E000506832D9B0AC111A2BB9CBE1F28341
      CE7877FFA70A9C4445F22AD2DC150456F113F7A06EF64CE5FF36D5E2D795FF41
      CDC911D7C4F70F077406E4D3EB9A65533430F487E406A202D74718F4F8A2E31D
      437F3F855647E4FF5AB35FA32BFFD354E57FDBE18E8C0B95F87733889E14F8CF
      2E912F6DB0E4B1FD43FFE8455FBF23BDB6338FC97F1D17CACDE9875A79FF96BB
      8AA5D0D758457E5E5EC1D301601101C00DA9547C6B6F7CE75DC154F0C6CB2FBF
      3CE2757946CBD70140BBE587B7CC6A8835FCACB961EAF19665CA22A603577600
      F875DF4640C39DC0064D56CBA978450AB4700B2C77CB3DE1150B18055B54837E
      7881CFE5CF962FF0E3B33FDF52053FBC39211F9A1591D78F4B94BC218EFE3E9D
      094BBEBE212C3FDBD528919435E88A88455B7C853E516455C5A09F57E0EF3064
      5265CE178F5715FE05531DF9E87C472650F917A58774F6ABA07BC36B96FC787B
      DE12C19C5F78D121AA7CF92B3086792DE6BF4EF2BF4F7689ED7067EDDCC9A2F9
      EFCB635A55857E0401E040259291FDD1F89E9FC6EDF8FFBDE6926B76785D9E03
      E1FB0A73D9B265F6D405538F0CA4423F6D094F594008284DD901E0A1BE5500FD
      2721AD50E55EE02456EA04B541FBF6176A05DB39F74BF92B9730669E5B79EA99
      FE47B725E48AE91139AD3D29CD81F296C6E947EF8EEB8AA341BEB7B951BA9239
      9D52D9B90D52E47733DCC93FFF3995B04740FA9F338F5BA05A7E1F9A9B92B74E
      165AFE25DA1215B95187801D56F1AEFF0263F40572EDC0BC16291200F24342F6
      4E11B93D5A56FF27F2FEBDC0FDA37500584C00381089644F4F34B1EF81A4D3F3
      A9A5977E78AD6559E59D246A4C5D54962A040467CE9D7A9258C1FB9AC3536711
      02465676007830B31570BE4233EE65F024BBE1BA4E8793BFAC3077B3A1A26BFF
      F3CE7CFDF30DF46DEEEE7F795FDF603BAAC51F974BA647E5E83189512F8BCBF6
      043CBC2B245F59DF241D09BBFF1FF28731869463B8658045E64E0C7A3A452658
      9E3ADE91EF2E7664727874CFC944FA57F8F02E916F6DB0E49F997D028A55ACB9
      012EFFDFF2877AFAEFE7865D19FC371E14180A15AED8FB6684F7533A001C4500
      182D55F947E2897D0FC51289CF4F689BB0C2AFE3FEB9EAA6A24C2F0D6C889FE1
      D88DB73537A47B029813308CB203C003430340D1EE78C93B7995397B7DD0F71E
      61B673A11DF1F26BC6FE71F7BC3265BFA451B5F4CF9B1C95F74E8BC9212D4957
      26C775272DF9CBDE807C795DB36CEE0D0CFCEC62C1255BD69C96E0702B2C869B
      FC97FD758C51ADFDF3A638F2D1858ECC6C3467973FB7E895017FDB2772FB464B
      FEBCD71AF9753C524F5381D7F19021B3CCC7234DA8CDF974D10DB7F2BF3E1D00
      8E26008C86AAFCBB62F1FD0FC412B1AF059281157E5CF257485D9D126EBAE9A6
      70636BE08460B0E95B8D0D938F562120E075996A55D901E0FFD9D295DDE13A7B
      427286B6F4A5C07972A459D3835A45D9FBB9DDE1392748196DE0C8997897FBA9
      F6504ACE9F1A93F355E53FBF292921176363AF3A6F3EB63728DF5021604D4FA0
      E804AE919E5BB1E733DC7C88A9AAC2BF70862357CC71645AA37BCFC934FA6FF8
      D4FEBE10F0C82EABE88A8D82469ABD9F7D5899DF33DF90F7538149A2FAF6E836
      55A11F430028573CD1BD2B96D8FFC39493BA5562B2A65E2A7FADAE0280A67B02
      92E1E4E2B0DDF499C6D0A4732CCB6AF0BA4CB5A8DC0070F02F8A0C01E42B61AC
      3D77A25FD1D9F0395F94DB822FD6A55AECE70FE976CDF9375DF9BF774654DEA9
      02C0ACA65445AE80A72B90673A82F2B9D5CDF29AEE09C8ED262E364152069FCC
      8B0E7B147ACEEA71339A452E9AEDC825B3E9F6774344D599AB3A45EEDC64C94F
      B70EFE230C198E196E7967DEE4D81167F80F1376B35F5A688242A1E5B5DA513A
      001C4700284732D5FB6A34D9B13C9E88DE37A165C2C67AE8F6CF55770140D37B
      0474C577CF17A7ED7D4E32764DB861E204DBAAF76B9C95A7EC00F0F38100506C
      3952C1150192F780620A8CDDE77FFD902BFFE57E8955E07E4E2B39BF116DDB8E
      9C322E211F59D02B87B78DBCD4EF40C4D439F7DB6B1BE5BEAD61E94A0CEE62C8
      DF1FA1D0B2BE91E6FDE59EF0750FC685B31CF9CF43A9FCDD14577FC39F6EB3E4
      C6D596EC18E15A6FD9BF57FEEB75B825ABFD7FFB028178D8AD1EF21F3FCC2A82
      7400389E00508A78A2339E70227F520DC8BB22A9EE3F6E5FB37DD70D37DC5077
      D78DAAEB4AF1E6E5374F0D3AC1D737041BAF0E87C69F6C59014E89196507809F
      A9009039F115ACA8F2971E0D73222AC590EEEDEC2A80227DA5F95BE766BF64D0
      2CFBCCFD0655B85326C4E5F2395139666C529ACA9CED3F1A5B22B6FC6C6B83DC
      B3312CFB333B063A9614EC191EF4DCCB98371150DFF682998E7CF41047E6B654
      FC291967977AFD3FB4C392E51B2C59D525835E8BB92DFAE1E6C6E4EE3931D2AB
      AED4A181411344737F4CDEEB4B0780DF9F480018493CD9BD3E9EECFA69C289FD
      2C180FAEF8C0073ED0E975992AA5AE038076C703773407F6260F0905C7FD4B22
      19BB281C6C5F68DBC1E0817F677F2B37001CF2135B3A6232FC16BA052AAD524E
      72C33D6ED0ACE8E1BACC736755E72494FC136D5855F6674F89C9BB67C6E488B1
      C3EFF0E7B61D514B7EBF2324B7AC6D92DD392160B85E8FDCA733D2BBF502D5F2
      BF5EB5FC17B656ED2919675F5CE46F7B457EB8C992DFEC18F8830CDBE395F37E
      18F4B71C6139E7A06F951F70F327B916FAB992F358DD03308600309C58BC73AF
      23F1475292FCA9154FFD2D1E8F6FABA7F1FE42EA3E0064E9DE8046092E0A04DB
      CE493989773486DAE75A56D0D855D16507801FE70D018C30B16990E166F14B81
      739A55FC31F98FEBDF97405FDD2F25432621E6FE6CBDAEFF8219517997AAFC0F
      6A4D4A8307EB44F6C72DF9F3AEA07C674D936CEC0DF43F97821BFB643EC86F4D
      0E9AECA5FE7D4AA3C8F9B31DB968AEAAFCB93246C5F5A8FA7055475F08F89F8D
      56C1E19B41BD4EB9E1B5C098BF140AAF5262F02BF58F9D0D00271100F2C5131D
      FB52A9E4A38E95F8950A014F3407236B2FB9E4E3BEBAACEF681975AED09B064D
      9F3F7DA625C9C31A02E34F1549BC5EFDE18F0905C7B405EC06A37E17E5068043
      5500E888F6DD1FB25569462913984A9A3890B7A46FD08627C33CAEE83EB8CAF8
      86945C382B2A6F9B1193392D9599F0572A3D31F0F73B1AE4CED7C2B2BA3B28A9
      123A210AF582647F276F532DFF0FAB96FF11EDDE3D27D3E839017FDD2D72FDF3
      966C890C9D76EF14FA5B49911C5CE41F0B2E0B2CB1672DBF3C5A3A009C4200D0
      62F17DEA6D975C63D90D7F4D26BB1F759CE8B3DD767CCD87DFF7E14EBF6FEE53
      0EA32ABD2CC771AC3BFEE78EA98184333FE538878443638F52BF89635418382C
      14681B170834D4FDF2C1B203C07D9939000506AC0BB5E287EBE22C34B929FF4B
      4A5EEE576CD65C8E298DAAF29F1D9577A896FFB4A694D4C274D0EE84258FED0A
      CA1D6B1BE595AE80AA508A4CDD2EF29CB2DE3AC3917F3FC8916326E81E0EAF9F
      9559F6AAF7C383DB2CB973ADC84B5DD69097614156CE7496627FD7D1F4AE49F1
      9EA26C798E1AAB02C0A9E60680684CFDC56C79CD96E073F144D7334E2AB14A02
      C9575391E0FAA54B97F6785D3E2FD4C0A9D05B7AEF80A6266BBA150ACDD12BA8
      1A426367DB76684ECA49CE102735C5715213D5C35A6D2BDC1A0A3637795D5EB7
      941D00EE1D980458B43953CA89ABD0B2A5CCE70B76F317F8387F339F4233E5B3
      9F0BD88E2C5918910B66F755FEB5B4194E449D579FDE1B92CFAD183C1C90AF50
      87497348E4FC392979DF7CF5B719ABE73678FD6CCCA4B7C7FE9D0A01B7AC1159
      99B980D09089A7C32C792D386FA0D8CC5091D2834181EFB5580780D3EA3F00C4
      E27BF739E2442DCBDEADA2D64E4BECAD7620B82112DDB32E25F1CD9693DA1092
      96754A473DCEEC2F470D9D0EBDA77B06BEFB93EF8EB123F1494ED29E6849AADD
      B102635296D3D4688F6D0C06C6D6CD2A82D6312DCDAF3BEF8C2F96FAF843EF29
      D2039055CE4929ABC44950D93907FDFB01E4F73AE4768FE7ACB3D63BFC9D3C31
      2E1F5FD42B735A6BA3E55FC82DAB1BE5C71BC2B22B624BB1B351EE1232FDDC2E
      9A1B97A5873AB2606C407D5CA34FCC10DD3A046CB7E4A697455EEAB4FAE76DE4
      CEE3E8FF206FA8AAE0EA1919787CFE24D8A2BD66394B0E8BCD1B38AA5D95F3F4
      F2EABB3FFCF20F1F8BF5C67C35112E12DFDC954C25F5A5CB3AD5EF6EBF3A97EF
      B11AAC1D568FB5ABDE27F5958B3387A1F6A552E39396B3BBD4C71FFA839C9D00
      330A2D752ADAB2C9FDC762CA79350E33C4906E21ABCAFFCCE931F9B7B9313966
      7CC2D51DFEDCB6A9D796873787E4BE758DB23DA26267A105E3D94FA9DBD326A9
      507344528E9D648B1D2000D4023DAFE3A1CD965CFF4F1918CE9161F6C628B57B
      BF801167FD4BE1A0B058078033CA0B00E31CABD9B6EDDEAAFC1251759C390C55
      6E0038ECEE9C2180028A9D940A6D6232E215EFF2E53C7EC46D7395A6A0236F9F
      1D950B54E57F587B6537F971CBDE9825BFD912927BD636CAFAEE802473D798CB
      40AFC6B9336272D182A41C3739206D612AFF5AA25707DCF28A255F5F353800E4
      4FEC1B2227E88DB8F6BFCC65B8B9740FC06F5F4F00C000CE1E862A3B002C1F61
      0820D708CBF8B29F1B74E2CBFB3AA7C8F7CBBF46407EF36A5C434ADE3E2726EF
      991F95D9ADB535E63F92842AFF4FD737C88F5E0BCB9ACE60FADAF4B9BF82374D
      4FC84716C5E5C889010905A9FC6B51548580AFBD68C92F375AB2492F24CB1D87
      CF5FEE2732F85A01523C0094BA174441D955003A00BC810080019C410C557600
      B86BE856C0E9FBD913D6483BA0E51AE524A621CBA9F2C6FC2735A6E46DB36372
      D9211199D0E8F8F2C5AD27063EB4A92F04BCD2119058CA4A3FBF374D4BC80717
      25E468D5F20F076D2AFF1AA6FF5E77AFB1E4FFFCC31AFCDA2DB29CAFE0BC96DC
      C71719FB1719A6B7A0500FC0381500DE4800C000CE22861A5500C8EE03208527
      2615EA81CCDF8CA7D072FD7E232CE7CBFD5692F77D83EA2C7AD14151B9E2D0A8
      4C6A4AF9FA851D4D5AF2C89690FC616B50F6C66C99DA2C72C521093942B5FC1B
      42B4FCFD62C9E3963CB8C91AD2EAEF97B391D54817C492429F2FF43D87B15807
      8033090018C099C450E50680C3BF97190218E9AA74C53633C97B5CB6E53368B6
      749E82930C9DA1E1436FEF7BF484847CE6841E99DB96927AA91FD774D8E98B07
      1DA62AFE714D4126FCF9CC36556DDEF8BC250F6FB0A4BBD04ABA6166F7E73DA4
      F4BD01869907900E006F26006000671343951D00EEC8DB07A0840D78FA1F3BDC
      BFE73F2EEF5B167B48F6A4A827FC9D303921971D1A9113A7247C35E65F8A4030
      288D8D8D1208B0D0DFAF3EF994253F5BA742403CE70A81B993640B748BE58FF9
      E7BF8D4ADE8A3BE77B1F355EE4376F210060409D9D2E51AAB203C0ED99218002
      DDF843CE5F2375F5E73DB62405B6590DABCAFFF46971B9E2F0881C353159372D
      FF2C5DE98755E51FE4DA55BE77C5A396FC76A33570ED07193CC69FFD64A11EB1
      2197B82E32272657EE5042F6DFD201E02C020006D4D92913A52A37002CBAB5AF
      0720F7643444EE64A6022B01448A9CB072373D295680BC2DFF5A422939757A42
      AE3FA657668FF1F7987FBE542A25A150A8AFE54FE55F179EDE2972E33F2D7972
      873572302EF2DE29F04FC3EF1590F7665B3C410580B3090018504FE74D94A1EC
      0070F3C02A80B47276F42BE1B183BA368B3D3673DB1A72E47533E272E369DD75
      B705AEE3F4AD5E68696BA3DBBFCEF42644DEF95B5B56EC29BED44FCBDF2CA8E8
      0584CA9C08B858F700BC950080010400438D2A00C44A7DB4947682CA4E8292C1
      27BDA2439B7A7BDFA02367CF89CA7F9E189131E1FABB68973AD94A537333957F
      9DDADA2DF2DE476C79757F5F777E6EF01D34CE5F60F9EB90953725BEBFB2F7D3
      01E05C02000610000C557600F8765F00C85DB33CDC04BF62DDF956CE6628D9CD
      7F0A5D4170D01EE799FB7A2FFFD7CF8ACA8D67F44A5B437D55FEBAE5AF2BFFE6
      96162AFF3AB74355A7173C6CCB6B1D03EF859156C30C77A21E94038AACC0495F
      0D70A2C8C30400E4200018AADC0070C44D7D9300732F5E927EF1E4B754F2362F
      B1F25A2945272EE58589F4B7C969EDE8CA7FEED884FCDF537BE5A4E909AF7F7D
      AED263FE7AA29FAEFC750880198EFEA12DBB7A07EF0498BF73E0F0DB0216F878
      98DE003D07E0E17F2100600001C0506507806FD9D215197AF5B27EC526F29533
      3F204FB607404F835B303E21FF755A8F1C3BD55F97261D89AEFC2D55E9B7B6B6
      D2F237CC8F5E1159F677F5BECACEAD29B6278055E01A18795718ECFFF79CAFC9
      B758F700BC8D008001040043951B008EFC862D1DB93B0166EF880CA9E4732F5E
      D3BFD359914D4FF20343769D74F66B1B828E1C3221215F7C638FCC69AFAF4B77
      A72B7FF5445B99F067AC27B7895CFADBCC04DBDCCB04CBC07BA5D8761BFDF773
      DE67E9CFE7EC3590FBDE4A078077100030800060A8B203C0D706F6011822F722
      27D94FE59CBC0AF56E1695F3758D7AA9DFAC847CEBEC6EAF7F5DAE4B2693E9EE
      FE3163C7B2BB1FE4E47B2DD9DC3D7889E0A00B5FE51B6E8540463608646F8F9C
      A402C03B090018C099C750A30A0091E24B95FAEF17D89164502F800C6DA9E45F
      58487FAE35ECC8D90BA2F25FAFEF95601D0E8BEB4ABFA5B595317FA47DE24F96
      FCFC552B7D31A88257062C3471A6D40B6F655282EE01F8F5BB08001840003054
      B90160F19707860024A78B512BB8A9CF70AD97028FCF35269C92B71E1C958F9D
      1691709DED83A367FB07EC8034B734A7F7F60734FD1EBA67A5C857FE6ECBFE02
      CB6D074DBE2DF4DE1AE12241FAC3237500B880008001040043951D00BE347035
      C05C4E81138D2343BBFB8B4D601AF478BDB77FC0911367C5E5A3A7F7CABC71F5
      35E6AFBBFD1B1A1AD2B3FDE9F6473EFD3EF8E37A918FFDAF2D3B7B329F2C728D
      8C82C3694596E5663F3C723201008371163254D901E08B7D43005AB6B2EEDF97
      BCC0A625FD0FCC7E52A4608F41FF2628996EFFD7CF8BC992932232B70E2BFF60
      28949EED4FE58F62F47BE3D10D2A04FCC1966D3D527893FF42ADFC122EC6B558
      058087FE8D0080019C890C557600B8B1700F4041B94B050B9C98F2AF72A6EBC3
      714D2939EBE0987CE0C4884C6C71EAEA859952957F80CA1F25D2C1FAA38F58F2
      EB3596F4C4865E12B8D0045BC9FEBB48D161807400B8900080019C8D0C557600
      F8BC2D5DD1C1CB93D2F2AE4E96953B4ED9BFFB5F817E4BFD6FD3DA9272E15151
      B9E4F8A8E83971F5F4A24CB7FC83C1F4523F2A7F942AA1EAE94FA810F0F06A4B
      BA32FB5EF5CFE8CF7D60E63D95BF6B66FAC3BC5D37F510C043EF210060006724
      438D2A00E8D3405E255E684252FE6E81C5C62CF5096ACEF8A45C7C5C44CE3F32
      26813A9C10AFD7F733E68FD188ABBAFA96272DB9FB394B76EBE180FC379348D1
      E580854604164F1179F0BD04000CE0AC64A8B203C00DB67447F2B62DD58659A7
      DCBF956F81B9027A6BDF832625E422D5EA7FEB613109D5D984785DE1C7E37169
      1F378EA57E18351D02FEF49AC88D8FDAB2769F0CBE78D6481B6BE45F0E782A01
      008311000C55760058D63704A00DDAE12FF3EF832EEC93DFE42FD06219DF9492
      4B4E8AC8FB4E88D6E53A7FBDD4AF492FF5A3F2C701D2C301EFF9B12D4F6E9121
      2B68440A5F2E20FBEFB9F36DD23D0017130030800060A8D10480EEEC6920BF55
      2F391702CA91BBFD6FAE296D29F9D76322F2AEA36232A1B5BEAEEAA7E931FFC6
      A6262A7FB8A62B2672E39F2C79F0256BD07E1CFD8ACC03C83E4C7F9CEE01781F
      0100030800862A37001CF5A9BE8B01F5B3A4E87AFFFECB92E6754FDA962333DA
      53F29EE32372EE117119DBE4483D0D8DEB4D7EF4A43FBDBDAF0E01809B7AE222
      773E69C9BDCF59B2ADAB8C2FCCBCC78ED401E0FD04000CA8A3D32FCA517600F8
      AF9C005064CBDF21130273C7FC6D470E999294CB4E8DC8EB0E4A4838587F95BF
      BEB8CFD8F6765AFEA8181D02EE79C6921FA8635347E6930513F880EC8747E800
      7029010003EAE8148C72941B008EFE3F4337021A74CEC95DF697FDF74CB7A4AE
      FC8F999D904B55E57FE2BC8434D459E3583FC76422C1843F54850E019FFEAD25
      BF5A65494C2F112C72161F340C60F5F500FCEA3202000610000C557600F8644E
      0F4091CD7D0A354242AAA57FC2BCB8BCFFD4683A04D45BE5AF9F6943B821BDC5
      2F953FAA65AFAA92BFF0484E08C8650D9973DB3707609A0A0097130030800060
      A87203C0319F18E8011876717F9E69ED29B9EEAC1E79C3A1F1BAAAFC7597BF3E
      1AC261696C6CA4F247D5EDEE16F9ECEF54085859F80D98BF2DF7913A005C4100
      C0000280A1CA0E001FCF090039866C532A03C303732726E4D2D745E40D872564
      4C53FDCCF6D715BF5EE7AF5BFD3A0050F9C32B3BBA44EE7DDA921F3F6BC9B64E
      29DCF4CF4E029CAE02C0BF130030800060A8B203C0C7323B016AF9EBFAF326FF
      056D47164E49CA25AAF23FF5E084B435D6CF84BF74E5AF6EC3AAD51FA2DB1F35
      E0951D22DFFC93250FBF38785BC0411D74991E8007AE240060409D9C9651AEB2
      03C047F30240CEDDDCB67D30E0C8B1F312E9CAFFA83949696AA89FCA3FFD7C73
      5AFE6CEF8B5A104FF68580DB1EB3E4A19556C1153ADA117A0860290100033883
      19AAEC00F091CC56C0527CA3113DE1EFF443E372D1E95159343329E150FD74FB
      6BBAB5AF2BFE502844E58F9AA2770BDCBA5FE4DEA72CF9E1D39674E4EDD9A1A5
      7B00AE22006000673143951B008EBDAE6F0E40BAB2777286183377744BFF0D8B
      6272E1A951397446B2AE26FC6976202061D5F20F52F9A386EDE814F9EE6396DC
      F5576B600820DB03305D0580AB090018C099CC506507800FE5ED0498D137E1CF
      91B38E8EC9C5AF8BCA41D3EBABF2D79BFBE896BF1EF3D75DFF54FEA875CF6D12
      B9E54F96FCFE456BD03C80236788FCBF6B080018C0D9CC506507800F16BE1CB0
      B6605A423EFECE5E593CB7BED6F9EB097FE96E7F55F133E10F7E11898BACDF23
      F293A72DF9EFBF0EBC51D301E05A02000610000C557600B8B62F00E4AE2E4A6F
      EF3B332197BC312AA71E9690E670FD8CF9EBCA3F100CA62B7FBDAF3F953FFC66
      DD2E91BB1EB3E4DE27FADEB5E900F04102000610000C556E0038EEEA8139005A
      28E0C8F10725E4C2332272EC82645D55FE5A2010484FF8D3953FDDFEF0A364AA
      2F04FCE06F96FCCFE3961CA103C087090018C099CD50650780AB06960136041D
      39E3C898FCEBE93139B20EF7F6CF6DF953F9C3CF740858B159E4EB0F5BD2D16B
      C92FAF23006000673743951B008E5FAA02408F4873534ADEB8382EE7BF2E2A87
      CD4A4A30E0F5337147766B5FBDC42FAC5AFE012A7FD489EEA8C8536B45FE7795
      25A72C74E4AD4795FEB50480FAC619CE506507802B6DE98938F2FAA36372D959
      5139784652027552F96B7AB6BF6EF1EBD9FEB4FC516F7A63226B768874F4A4E4
      E48552F29C1602407DE32C67A87203C0091FB064EA84A45C7F41AF1CBD305157
      2DFF6432996EF937363551F9A3AEE9A0AB39EA56F7728D840050DF38D319AADC
      0070D1B294BCF3F4889C796C5C427534E69F5DE7DFA42B7F36F98101F46BBEBB
      AB5BC2E1BE2DAD874300A86F9CED0C556E0078F0D11E39E50855F9D749CB5F4B
      2FF50B04D297F3D5953F6002FDBAEFE9E9115B85DDA6E6E6611F4B00A86F0400
      43951B003A3B3AD2278E7A91AEFCF50E7F74FBC3507AE82B30C2441E02407DE3
      AC672893034076873FC6FC81E11100EA1B673E43991C00722B7F00C51100EA1B
      01C050A60600DDE5995DEA0760780480FA46003094710120B3B73F953F503A02
      407D230018CAA40090DEE447B5FC9B5B5AC4AEA7DD8B800A2300D4370280A14C
      0900D932B7B6B696B4F10980010480FA46003094090120BBBF7FDB9831232E77
      02301401A0BE11000C654400904CCB9FCA1F181502407D230018AADE038065DB
      D2DCDC4CE50F1C0002407D230018AA9E0380DED8474FF8A3F2070E0C01A0BE11
      000C558F0120A577F853957F6B5B5BC9973B05501C01A0BE11000C556E00E8EE
      EA4A2FA7ABD510909DF03766EC582A7FC0250480FA46003054B901A096F55DDE
      B44B5A5A5BA9FC01171100EA1B01C050F5120074ABBFB7B7579A9A9AB8A80FE0
      3202407DE38C69A87A09009A0E0154FE80FB0800F58DB3A6A1EA290000A80C02
      407D2300188A000060240480FA460030140100C0480800F58D00602802008091
      1000EA1B01C0501B54006896D42E8BD973008A2000D4374EFE86DAEB38ED0927
      F9BC6D59B3BC2E0B80DA4400A86F040043ED4AA5C65892FABD58D6895E970540
      6D2200D4370280A176A5768D1169FFB56559A7795D1600B5C7719C788FD86367
      1300EA1601C0503B53A9B6443CF68B8686D0995E970540ED5101E0E9F1629F6E
      DB76D4EBB2A0320800867AE0E9079A1B13133F7FDC49277DD4EBB200A81DFA7A
      5FE9A9C18EF3B1F156E026CBB2125E970995410030D41F9D3F06276C9C73DAA4
      29D3FED0D0D010F0BA3C006A472AE5EC4B5AF6A1532C6B870A00B57909501C30
      0280C1B66EDDDA126F6D5EDED2DAFA6F5E9705400D71E497E32DFB4255F9C7BD
      2E0A2A87006030C771ACB51D3B0FEAE98C3C377DC68C46AFCB03A0F2F4C5B322
      9188A492C9F425B40B3C607B52EC732759D63F69FDD7370280E1EEBFFFFEC0C1
      A71C7F7C6343F34393264F9AE075790054960E00B1584C9289A434B734A73F97
      4838997F136908DA978CB3AC1FABCA3FE6755951590400E81382BD62E3C6E39A
      9A9B6E6B6A693EAEB191CE00A09EE910A00FDBB6331F8BC4E3A94ECB964B0381
      C023936CBBD3EB32A2F2080048D3C3012F6EDBB6A8A5A9E9543B14F866535353
      B3FA9464CE0F00EA48FF4CFFF47DFD913C978AA4AE9BD4147A52B5FC235E970F
      D54100C020AFECDA352614081CDBDCDA3AC10ED817ABB3C3DB6DDB6295005047
      74959F4A39A9806D3D22967D674AE26B274A488FF9A7BC2E1BAA87008021746F
      C06AC769182F323F954CCEB383C1C9EA93EDEA94D1AC8E21AF99A004E604454E
      52770FB12D2BEC75F9817AA5DE9B5B9322FF50C78AA424BBCAFD7A5BEC544AEC
      484A529D96D83B6D91B51D96B57AAE4894097FE6210060583A0C6C739CE626CB
      6AB01D27D82DDD435E33EDD2D2161099E2486A812DD629965827A8071D2696D5
      E275F901BF739CD40675F36C4AACC754F37C655CE29B6C09EDEE90EEB297E8B5
      488BA3BE4752D5F6B155229137B2C98FD10800708D0A0B7AF6E0747DA8FB33D5
      EDC1EA58A00E7DC5C1A9EA18AB8E71AAA5D1E47559815AA3DE33BBD58D6ED5EF
      50C71675AC53C74BEA589FF978937AEFEC5347D2EBB2A23E10005011EA641654
      C77875572F2D6C57479B3A7440D0957FC8EBF20135A847FABAE2BBD57BA743DD
      EE91BE30D04BF73C2A8100000080810800000018880000008081080000001888
      0000008081080000001888000000808108000000188800000080810800000018
      8800000080810800000018880000008081080000001888000000808108000000
      1888000000808108000000188800000080810800000018880000008081080000
      0018880000008081080000001888000000808108000000188800000080810800
      0000188800000080810800000018880000008081080000001888000000808108
      0000001888000000808108000000188800000080810800000018880000008081
      0800000018880000008081080000001888000000808108000000188800000080
      8108000000188800000080810800000018880000008081080000001888000000
      8081080000001888000000808108000000188800000080810800000018880000
      0080810800000018880000008081FE7F53CFB80EB05641BB0000000049454E44
      AE426082}
    OnFinalise = CSplashScreen1Finalise
    OnCompleteSetup = CSplashScreen1CompleteSetup
    SizingMode = smzNone
    MaximumImageSize = 200
  end
  object OpenFilesDialog: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 862
    Top = 95
  end
  object FXAppManager1: FXAppManager
    ApplicationIdentifier = 'codrut-printing'
    UpdateCheckInterval = 4
    AppVersion = '1.2.0.0'
    APIName = 'codrut-printing'
    ApplicationName = 'Codrut Printing'
    HasAppData = True
    AutomaticTasks = [UpdatePrompt, UpdateShowUserScreen, WindowSaveForm, WindowLoadForm]
    UserUpdateWaitDelay = 2000
    Left = 661
    Top = 57
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 571
    Top = 97
  end
  object ColorDialog1: CColorDialog
    Color = clBlack
    Title = 'Color Picker'
    Advanced = True
    Left = 467
    Top = 89
  end
end
