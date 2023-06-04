object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'frmMenu'
  ClientHeight = 657
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 24
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 113
    Align = alTop
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 992
    object Label1: TLabel
      Left = 103
      Top = 44
      Width = 43
      Height = 24
      Caption = 'CEP'
    end
    object edtCEP: TEdit
      Left = 152
      Top = 41
      Width = 153
      Height = 32
      TabOrder = 0
      Text = '12010590'
    end
    object Button1: TButton
      Left = 672
      Top = 29
      Width = 209
      Height = 57
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object cmbAPI: TComboBox
      Left = 376
      Top = 41
      Width = 193
      Height = 32
      ItemIndex = 0
      TabOrder = 2
      Text = 'VIACEP'
      Items.Strings = (
        'VIACEP'
        'API TECH TEENS')
    end
  end
  object tabCEP: TPageControl
    Left = 0
    Top = 113
    Width = 982
    Height = 544
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 992
    ExplicitHeight = 554
    object TabSheet1: TTabSheet
      Caption = 'CEP'
      ExplicitWidth = 281
      ExplicitHeight = 154
      object Panel2: TPanel
        Left = 128
        Top = 18
        Width = 705
        Height = 473
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object edtEndereco: TLabeledEdit
          Left = 113
          Top = 88
          Width = 424
          Height = 32
          EditLabel.Width = 97
          EditLabel.Height = 24
          EditLabel.Caption = 'Endere'#231'o'
          TabOrder = 0
        end
        object edtBairro: TLabeledEdit
          Left = 113
          Top = 152
          Width = 424
          Height = 32
          EditLabel.Width = 61
          EditLabel.Height = 24
          EditLabel.Caption = 'Bairro'
          TabOrder = 1
        end
        object edtCidade: TLabeledEdit
          Left = 113
          Top = 216
          Width = 336
          Height = 32
          EditLabel.Width = 70
          EditLabel.Height = 24
          EditLabel.Caption = 'Cidade'
          TabOrder = 2
        end
        object edtUF: TLabeledEdit
          Left = 473
          Top = 216
          Width = 64
          Height = 32
          EditLabel.Width = 27
          EditLabel.Height = 24
          EditLabel.Caption = 'UF'
          TabOrder = 3
        end
        object edtMorador: TLabeledEdit
          Left = 113
          Top = 341
          Width = 424
          Height = 32
          EditLabel.Width = 84
          EditLabel.Height = 24
          EditLabel.Caption = 'Morador'
          TabOrder = 4
        end
        object edtIBGE: TLabeledEdit
          Left = 113
          Top = 405
          Width = 424
          Height = 32
          EditLabel.Width = 50
          EditLabel.Height = 24
          EditLabel.Caption = 'IBGE'
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'JSON'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 154
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 974
        Height = 505
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 360
        ExplicitTop = 224
        object TabSheet4: TTabSheet
          Caption = 'View 1'
          ExplicitWidth = 281
          ExplicitHeight = 154
          object memJSON: TMemo
            Left = 0
            Top = 0
            Width = 966
            Height = 466
            Align = alClient
            Color = 15395562
            ScrollBars = ssVertical
            TabOrder = 0
            ExplicitWidth = 984
            ExplicitHeight = 515
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'View 2'
          ImageIndex = 1
          ExplicitWidth = 281
          ExplicitHeight = 154
          object AdvMemo1: TAdvMemo
            Left = 0
            Top = 0
            Width = 966
            Height = 466
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -11
            AutoCompletion.Font.Name = 'Tahoma'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            AutoExpand = False
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'COURIER NEW'
            Font.Style = [fsBold]
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = 33554432
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clWhite
            SelBkColor = clNavy
            SelectionMode = smBlock
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvJSONMemoStyler1
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.6.6.0'
            WordWrap = wwRightMargin
            ExplicitLeft = 312
            ExplicitTop = 56
            ExplicitWidth = 350
            ExplicitHeight = 250
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Array'
      ImageIndex = 2
      ExplicitWidth = 984
      ExplicitHeight = 515
      object dbgCEP: TDBGrid
        Left = 0
        Top = 0
        Width = 974
        Height = 505
        Align = alClient
        DataSource = DataSource1
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -21
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CEP'
            Title.Alignment = taCenter
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Title.Alignment = taCenter
            Width = 314
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Title.Alignment = taCenter
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Title.Alignment = taCenter
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Morador'
            Title.Alignment = taCenter
            Width = 181
            Visible = True
          end>
      end
    end
  end
  object memTableTT: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 384
    Top = 392
    object memTableTTCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object memTableTTEndereco: TStringField
      FieldName = 'Endereco'
      Size = 100
    end
    object memTableTTBairro: TStringField
      FieldName = 'Bairro'
      Size = 100
    end
    object memTableTTCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object memTableTTUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object memTableTTMorador: TStringField
      FieldName = 'Morador'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = memTableTT
    Left = 832
    Top = 384
  end
  object memTableVIA: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 464
    Top = 392
    object StringField1: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object StringField2: TStringField
      FieldName = 'Logradouro'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'Bairro'
      Size = 100
    end
    object StringField4: TStringField
      FieldName = 'Localidade'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'IBGE'
      Size = 50
    end
  end
  object AdvJSONMemoStyler1: TAdvJSONMemoStyler
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'NULL'
          'TRUE'
          'FALSE')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'JSON Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ',:(){}[]='
        Info = 'Symbols'
      end>
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    HexIdentifier = '0x'
    Description = 'JSON'
    Filter = 'JSON Files (*.json)|*.json'
    DefaultExtension = '.json'
    StylerName = 'JSON'
    Extensions = 'json'
    RegionDefinitions = <
      item
        Identifier = '{'
        RegionStart = '{'
        RegionEnd = '}'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 156
    Top = 444
  end
  object AdvMemoSource1: TAdvMemoSource
    ReadOnly = False
    Left = 148
    Top = 508
  end
end
