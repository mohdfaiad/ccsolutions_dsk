object frm_print_default: Tfrm_print_default
  Left = 0
  Top = 0
  Caption = 'Default Imprimir'
  ClientHeight = 691
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  ShowHint = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel_1: TdxBevel
    Left = 0
    Top = 27
    Width = 1008
    Height = 50
    Align = alTop
    Shape = dxbsFrame
    Style = dxbsRaised
    ExplicitLeft = 328
    ExplicitTop = 33
    ExplicitWidth = 50
  end
  object dxBarDockControl_1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 27
    Align = dalTop
    BarManager = dxBarManager_1
  end
  object pgctrl_import: TcxPageControl
    Left = 0
    Top = 77
    Width = 1008
    Height = 614
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsht_data
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 608
    ClientRectLeft = 2
    ClientRectRight = 1002
    ClientRectTop = 27
    object tbsht_data: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 0
      object cxGrid_1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 994
        Height = 575
        Align = alClient
        Images = cxImageList_1
        TabOrder = 0
        LockedStateImageOptions.Text = 'Aguarde por favor...'
        object cxGrid_1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = cxImageList_1
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 1
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.ImageIndex = 2
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 3
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.ImageIndex = 4
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.ImageIndex = 8
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.ImageIndex = 5
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.ImageIndex = 6
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.ImageIndex = 7
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.ImageIndex = 9
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Hint = 'Filtrar'
          Navigator.Buttons.Filter.ImageIndex = 3
          Navigator.Buttons.Filter.Visible = True
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = ds
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Images = cxImageList_1
          NewItemRow.InfoText = 'Click aqui para adicionar uma nova linha'
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '<Nenhum dado a ser exibido>'
          OptionsView.Footer = True
          OptionsView.Indicator = True
        end
        object cxGrid_1Level1: TcxGridLevel
          GridView = cxGrid_1DBTableView1
        end
      end
    end
  end
  object dxBarManager_1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cxImageList_1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 864
    Top = 8
    PixelsPerInch = 96
    object dxBarManager_1Bar1: TdxBar
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1716
      FloatTop = 133
      FloatClientWidth = 116
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem_1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager_1Bar3: TdxBar
      Caption = 'Fechar'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 153
      DockedTop = 0
      FloatLeft = 2185
      FloatTop = 207
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_close'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem_1: TdxBarSubItem
      Caption = 'Exportar Dados'
      Category = 0
      Visible = ivAlways
      ImageIndex = 1
      ItemLinks = <>
    end
    object dxBarButton_close: TdxBarButton
      Action = Action_close
      Category = 0
    end
  end
  object cxImageList_1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 525185
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00824B4B004E1E1F00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00824B4B00824B4B00A64B4B00A94D4D004E1E1F00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00824B4B00824B4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B
          4B00824B4B00824B4B00824B4B00824B4B00824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00D4585900CB555600C9545500C9525300B74F52004E1E1F00FE8B
          8C00FB9A9C00F8AAAB00F7B5B600F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00D75C5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B5
          4A0013C1480016BD48000CBC4100F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00DD636400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB4
          4D001CBF4C001EBC4C0013BC4500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00E3686900DD656600DA636400DE666700C6595B004E1E1F0026B1
          490016BC48001BBB490010BB4300F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00EB6D6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8
          970050D16F0042C966002DC75800F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00F2737400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2
          CC00FFFFD700FFFFD400E6FCC700F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00F8787900F0757600EE727300F0737400D16566004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD700F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00FE7F8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00FF838400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00FF888900FF828300FF818200FF828300E07374004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00824B4B00E2757600FE818200FF868700E57677004E1E1F00FAEB
          C500FCFBD100FCFBCF00FCFBD100F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B
          4B00824B4B00824B4B00824B4B00824B4B00824B4B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00824B4B00824B4B004E1E1F00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000060000000C000000060000
          0001000000030000000D000000120000000D0000000300000000000000000000
          000000000000000000000000000100000006040F094716492EF005100A4A0000
          00070000000C103924C4175132FF113923C50000000C00000000000000000000
          000000000000000000000000000402070429195538EC44CB9FFF195538EC0207
          042B0000001527714CFF44D8A9FF27714CFF0000001200000000000000000000
          000000000000000000020102011613412ACE71C8AEFF4DDBAFFF6FC8ADFF1342
          29CF0103022626714CFF49DAACFF26714CFF0000001200000000000000000000
          000000000000000000050E2E1F7622704CFF23714CFF53DDB2FF23714BFF2571
          4CFF0F2E1F8024704CFF4EDCB0FF23714CFF0000001000000000000000080000
          000C0000000D0000000F000000140000002121704CFF8FEDD5FF22714CFF0000
          00290000002A22704CFF53DDB2FF22714AFF000000190000000916407CBF1F59
          ADFF1F58ADFF1E56ACFF1E55ABFFA8BBD8FF20714BFF9BF0DAFF20704BFF6486
          89FF125130FF21704BFF66E2BEFF20714BFF125030FF072113762261B3FF9DE0
          F9FF8DDAF8FF8DDAF7FF386FBCFFCFE9F3FF1F704BFF9EF0DCFF1F714BFFC0DA
          E3FF498C72FF9BD5C3FF91EDD4FF7FD1B8FF1B583CCA010302132569B9FFA7E4
          FAFF8DDAF8FF8DDAF8FF3A77C1FFD0EAF5FF1D714BFFCBF8EEFF1E704AFFCEE8
          F2FFBEDCE2FF3D8868FFB5E7DAFF276E4FE803090622000000032770BCFF649E
          D5FF3C7FC5FF3C7FC5FF3C7FC5FFB7CEE6FF42866FFF1C714AFF41866FFFB7CE
          E6FFAAC6E3FF95B6C3FF267654FF06150E430000000300000000BE9385FFFCF8
          F7FFFBF7F5FFFCF7F5FFD0AA9EFFFBF9F8FFF9F8F7FFF8F6F5FFE7D9D4FFFBF9
          F7FFFBF6F4FFFBF9F8FFE0CEC8FF0000000C0000000000000000BF9689FFFCF8
          F7FFFBF6F6FFFBF6F5FFCCA598FFFBF7F4FFFAF7F4FFFAF7F3FFC9A092FFFBF6
          F4FFFBF6F3FFFBF6F4FFBD9082FF000000080000000000000000C1998CFFD4B0
          A4FFCBA495FFCBA395FFCCA395FFCCA395FFCBA395FFCBA294FFCBA294FFCBA2
          95FFCBA294FFCBA294FFBE9486FF000000070000000000000000C29B8FFFFCF9
          F8FFFCF8F6FFFDF9F7FFCCA497FFFCF8F7FFFCF8F6FFFCF8F6FFCCA495FFFCF8
          F6FFFBF8F6FFFCF8F7FFC0978AFF000000060000000000000000C39E91FFFDFB
          FBFFFDFBFBFFFDFBFAFFDFC5BAFFFDFBFBFFFDFBFBFFFEFBFBFFDFC4B9FFFDFB
          FAFFFDFBFAFFFDFBFAFFC19A8DFF00000005000000000000000091776EC0C4A0
          94FFC4A094FFC49F93FFC39F93FFC49F92FFC49F92FFC39E91FFC39E91FFC39E
          91FFC39D91FFC39D90FF90746BC0000000030000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000060000000C000000060000
          0001000000030000000D000000120000000D0000000300000000000000000000
          000000000000000000000000000100000006040F094716492EF005100A4A0000
          00070000000C103924C4175132FF113923C50000000C00000000000000000000
          000000000000000000000000000402070429195538EC44CB9FFF195538EC0207
          042B0000001527714CFF44D8A9FF27714CFF0000001200000000000000000000
          000000000000000000020102011613412ACE71C8AEFF4DDBAFFF6FC8ADFF1342
          29CF0103022626714CFF49DAACFF26714CFF0000001200000000000000000000
          000000000000000000050E2E1F7622704CFF23714CFF53DDB2FF23714BFF2571
          4CFF0F2E1F8024704CFF4EDCB0FF23714CFF0000001000000000000000080000
          000C0000000D0000000F000000140000002121704CFF8FEDD5FF22714CFF0000
          00290000002A22704CFF53DDB2FF22714AFF3E3E3E5700000009845F54BFB785
          74FFB88575FFB78473FFB78474FFDCCBC5FF20714BFF9BF0DAFF20704BFF808F
          7FFF125130FF21704BFF66E2BEFF20714BFF125030FF07211376B98879FFFAF5
          F3FFF9F3EEFFF9F2EFFFC69A8DFFF3F0EFFF1F704BFF9EF0DCFF1F714BFFE2E1
          E0FF518D71FF9BD5C3FF91EDD4FF7FD1B8FF1B583CCA01030213BB8C7DFFFBF7
          F4FFF9F3F0FFF9F3F1FFC79C8EFFF5F3F2FF1D714BFFCBF8EEFF1E704AFFF2F0
          EFFFDFE3E0FF408868FFB5E7DAFF276E4FE80309062200000003BC8F81FFD7B8
          ADFFD0AB9FFFD0AA9DFFCFA99CFFE7D9D4FF4D896BFF1C714AFF4D896AFFE7D9
          D4FFE4D2CDFFBABFB4FF2A7753FF06150E430000000300000000BE9385FFFBF7
          F6FFFAF6F4FFFBF6F4FFCCA397FFFBF9F8FFF9F8F7FFF8F6F5FFE7D9D4FFFBF9
          F7FFFBF6F4FFFBF9F8FFE0CEC8FF0000000C0000000000000000BF9689FFFCF8
          F7FFFBF6F5FFFBF6F4FFC9A092FFFBF7F4FFFAF7F4FFFAF7F3FFC9A092FFFBF6
          F4FFFBF6F3FFFBF6F4FFBD9082FF0000000800000000000000001F59AEFF497B
          C3FF3568B8FF3568B8FF3568B8FF3568B8FF3568B9FF3568B8FF3568B8FF3568
          B9FF3568B8FF3568B8FF1C4FA7FF0000000700000000000000002261B3FF92D6
          F6FF81CFF4FF80CFF4FF386FBCFF80D0F4FF81CFF4FF80D0F5FF386FBCFF80D0
          F4FF81CFF4FF81CFF4FF1D55ABFF0000000600000000000000002569B9FFADE4
          F9FFACE4F9FFACE4F9FF6FA2D7FFACE4F9FFADE4F9FFACE4F9FF6FA2D7FFADE3
          F9FFACE4F9FFACE3F9FF205BB0FF0000000500000000000000001D538BC0276F
          BCFF276EBBFF276DBBFF266BBAFF266BB9FF266AB9FF2569B8FF2467B7FF2567
          B7FF2465B6FF2364B6FF1A4985C0000000030000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000365C70785490AFBB6AB5DCEC6AB5DCEC5490AFBB365C7078000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          0000000000000000000000000000000000004343438100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF43434381000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          0000365C70785490AFBB6AB5DCEC6AB5DCEC5490AFBB365C7078000000000000
          000000000000000000000000000043434381848484FF848484FF2A28254D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000043434381848484FF848484FF848484FF848484FF4343
          4381000000000000000000000000000000000000000000000000000000000000
          00000000000043434381848484FF848484FF848484FF848484FF848484FF8484
          84FF434343810000000000000000000000000000000000000000000000000000
          000043434381848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF4343438100000000000000000000000000000000000000004343
          4381848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF43434381000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ds: TDataSource
    DataSet = mem
    Left = 832
    Top = 8
  end
  object qry: TFDQuery
    Left = 800
    Top = 8
  end
  object mem: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 768
    Top = 8
  end
  object popup_1: TdxRibbonPopupMenu
    BarManager = dxBarManager_1
    ItemLinks = <>
    UseOwnFont = False
    Left = 960
    Top = 8
    PixelsPerInch = 96
  end
  object ActionList_1: TActionList
    Images = cxImageList_1
    Left = 928
    Top = 8
    object Action_close: TAction
      Caption = 'Fechar'
      Hint = 'Fechar Formul'#225'rio'
      ImageIndex = 0
      OnExecute = Action_closeExecute
    end
  end
  object QExport4Dialog_1: TQExport4Dialog
    HelpFile = 'AExportDialog.hlp'
    DataSet = mem
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss'
    Formats.CurrencyFormat = 'R$ #,###,##0.00'
    RTFOptions.CaptionStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.CaptionStyle.Font.Color = clBlack
    RTFOptions.CaptionStyle.Font.Height = -13
    RTFOptions.CaptionStyle.Font.Name = 'Arial'
    RTFOptions.CaptionStyle.Font.Style = [fsBold]
    RTFOptions.CaptionStyle.AllowHighlight = True
    RTFOptions.CaptionStyle.Alignment = talCenter
    RTFOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.DataStyle.Font.Color = clBlack
    RTFOptions.DataStyle.Font.Height = -13
    RTFOptions.DataStyle.Font.Name = 'Arial'
    RTFOptions.DataStyle.Font.Style = []
    RTFOptions.DataStyle.AllowHighlight = True
    RTFOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.FooterStyle.Font.Color = clBlack
    RTFOptions.FooterStyle.Font.Height = -13
    RTFOptions.FooterStyle.Font.Name = 'Arial'
    RTFOptions.FooterStyle.Font.Style = []
    RTFOptions.FooterStyle.AllowHighlight = True
    RTFOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.HeaderStyle.Font.Color = clBlack
    RTFOptions.HeaderStyle.Font.Height = -13
    RTFOptions.HeaderStyle.Font.Name = 'Arial'
    RTFOptions.HeaderStyle.Font.Style = []
    RTFOptions.HeaderStyle.AllowHighlight = True
    RTFOptions.StripStyles = <>
    HTMLPageOptions.TextFont.Charset = DEFAULT_CHARSET
    HTMLPageOptions.TextFont.Color = clWhite
    HTMLPageOptions.TextFont.Height = -11
    HTMLPageOptions.TextFont.Name = 'Arial'
    HTMLPageOptions.TextFont.Style = []
    CSVOptions.Comma = ';'
    PDFOptions.PageOptions.MarginLeft = 1.170000000000000000
    PDFOptions.PageOptions.MarginRight = 0.570000000000000000
    PDFOptions.PageOptions.MarginTop = 0.780000000000000000
    PDFOptions.PageOptions.MarginBottom = 0.780000000000000000
    PDFOptions.HeaderFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.HeaderFont.UserFont.Color = clWindowText
    PDFOptions.HeaderFont.UserFont.Height = -13
    PDFOptions.HeaderFont.UserFont.Name = 'Arial'
    PDFOptions.HeaderFont.UserFont.Style = []
    PDFOptions.HeaderFont.Charset = ANSI_CHARSET
    PDFOptions.CaptionFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.CaptionFont.UserFont.Color = clWindowText
    PDFOptions.CaptionFont.UserFont.Height = -13
    PDFOptions.CaptionFont.UserFont.Name = 'Arial'
    PDFOptions.CaptionFont.UserFont.Style = []
    PDFOptions.CaptionFont.Charset = ANSI_CHARSET
    PDFOptions.DataFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.DataFont.UserFont.Color = clWindowText
    PDFOptions.DataFont.UserFont.Height = -13
    PDFOptions.DataFont.UserFont.Name = 'Arial'
    PDFOptions.DataFont.UserFont.Style = []
    PDFOptions.DataFont.Charset = ANSI_CHARSET
    PDFOptions.FooterFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.FooterFont.UserFont.Color = clWindowText
    PDFOptions.FooterFont.UserFont.Height = -13
    PDFOptions.FooterFont.UserFont.Name = 'Arial'
    PDFOptions.FooterFont.UserFont.Style = []
    PDFOptions.FooterFont.Charset = ANSI_CHARSET
    XLSOptions.PageFooter = 'Page &P of &N'
    XLSOptions.SheetTitle = 'Sheet 1'
    XLSOptions.CaptionFormat.Font.Style = [xfsBold]
    XLSOptions.HyperlinkFormat.Font.Color = clrBlue
    XLSOptions.HyperlinkFormat.Font.Underline = fulSingle
    XLSOptions.NoteFormat.Alignment.Horizontal = halLeft
    XLSOptions.NoteFormat.Alignment.Vertical = valTop
    XLSOptions.NoteFormat.Font.Size = 8
    XLSOptions.NoteFormat.Font.Style = [xfsBold]
    XLSOptions.NoteFormat.Font.Name = 'Tahoma'
    XLSOptions.FieldFormats = <>
    XLSOptions.StripStyles = <>
    XLSOptions.Hyperlinks = <>
    XLSOptions.Notes = <>
    XLSOptions.Charts = <>
    XLSOptions.Pictures = <>
    XLSOptions.Images = <>
    XLSOptions.Cells = <>
    XLSOptions.MergedCells = <>
    ODSOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.HeaderStyle.Font.Color = clBlack
    ODSOptions.HeaderStyle.Font.Height = -13
    ODSOptions.HeaderStyle.Font.Name = 'Arial'
    ODSOptions.HeaderStyle.Font.Style = []
    ODSOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.FooterStyle.Font.Color = clBlack
    ODSOptions.FooterStyle.Font.Height = -13
    ODSOptions.FooterStyle.Font.Name = 'Arial'
    ODSOptions.FooterStyle.Font.Style = []
    ODSOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.CaptionRowStyle.Font.Color = clBlack
    ODSOptions.CaptionRowStyle.Font.Height = -13
    ODSOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODSOptions.CaptionRowStyle.Font.Style = []
    ODSOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.DataStyle.Font.Color = clBlack
    ODSOptions.DataStyle.Font.Height = -13
    ODSOptions.DataStyle.Font.Name = 'Arial'
    ODSOptions.DataStyle.Font.Style = []
    ODSOptions.StripStylesList = <>
    ODTOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.HeaderStyle.Font.Color = clBlack
    ODTOptions.HeaderStyle.Font.Height = -13
    ODTOptions.HeaderStyle.Font.Name = 'Arial'
    ODTOptions.HeaderStyle.Font.Style = []
    ODTOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.FooterStyle.Font.Color = clBlack
    ODTOptions.FooterStyle.Font.Height = -13
    ODTOptions.FooterStyle.Font.Name = 'Arial'
    ODTOptions.FooterStyle.Font.Style = []
    ODTOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.CaptionRowStyle.Font.Color = clBlack
    ODTOptions.CaptionRowStyle.Font.Height = -13
    ODTOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODTOptions.CaptionRowStyle.Font.Style = []
    ODTOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.DataStyle.Font.Color = clBlack
    ODTOptions.DataStyle.Font.Height = -13
    ODTOptions.DataStyle.Font.Name = 'Arial'
    ODTOptions.DataStyle.Font.Style = []
    ODTOptions.StripStylesList = <>
    ODTOptions.Border.BorderStyle = bsODFSolid
    XlsxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.HeaderStyle.Font.Color = clBlack
    XlsxOptions.HeaderStyle.Font.Height = -15
    XlsxOptions.HeaderStyle.Font.Name = 'Calibri'
    XlsxOptions.HeaderStyle.Font.Style = []
    XlsxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.CaptionRowStyle.Font.Color = clBlack
    XlsxOptions.CaptionRowStyle.Font.Height = -15
    XlsxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    XlsxOptions.CaptionRowStyle.Font.Style = []
    XlsxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.DataStyle.Font.Color = clBlack
    XlsxOptions.DataStyle.Font.Height = -15
    XlsxOptions.DataStyle.Font.Name = 'Calibri'
    XlsxOptions.DataStyle.Font.Style = []
    XlsxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.FooterStyle.Font.Color = clBlack
    XlsxOptions.FooterStyle.Font.Height = -15
    XlsxOptions.FooterStyle.Font.Name = 'Calibri'
    XlsxOptions.FooterStyle.Font.Style = []
    XlsxOptions.StripStylesList = <>
    DocxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.HeaderStyle.Font.Color = clBlack
    DocxOptions.HeaderStyle.Font.Height = -15
    DocxOptions.HeaderStyle.Font.Name = 'Calibri'
    DocxOptions.HeaderStyle.Font.Style = []
    DocxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.CaptionRowStyle.Font.Color = clBlack
    DocxOptions.CaptionRowStyle.Font.Height = -15
    DocxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    DocxOptions.CaptionRowStyle.Font.Style = []
    DocxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.DataStyle.Font.Color = clBlack
    DocxOptions.DataStyle.Font.Height = -15
    DocxOptions.DataStyle.Font.Name = 'Calibri'
    DocxOptions.DataStyle.Font.Style = []
    DocxOptions.StripStylesList = <>
    DocxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.FooterStyle.Font.Color = clBlack
    DocxOptions.FooterStyle.Font.Height = -15
    DocxOptions.FooterStyle.Font.Name = 'Calibri'
    DocxOptions.FooterStyle.Font.Style = []
    AccessOptions.TableName = 'EXPORT_TABLE'
    Left = 704
    Top = 8
  end
  object ACBrEnterTab_1: TACBrEnterTab
    EnterAsTab = True
    Left = 736
    Top = 8
  end
end
