inherited frm_print_astpp: Tfrm_print_astpp
  Caption = 'Faturas: ASTPP'
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel_1: TdxBevel
    ExplicitLeft = 0
    ExplicitTop = 21
    ExplicitWidth = 1008
  end
  inherited pgctrl_import: TcxPageControl
    inherited tbsht_data: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1000
      ExplicitHeight = 581
      inherited cxGrid_1: TcxGrid
        ExplicitHeight = 575
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1cli_account_code_astpp: TcxGridDBColumn
            DataBinding.FieldName = 'cli_account_code_astpp'
            Width = 100
          end
          object cxGrid_1DBTableView1imp_from: TcxGridDBColumn
            DataBinding.FieldName = 'imp_from'
            Width = 125
          end
          object cxGrid_1DBTableView1imp_to: TcxGridDBColumn
            DataBinding.FieldName = 'imp_to'
            Width = 125
          end
          object cxGrid_1DBTableView1imp_duration: TcxGridDBColumn
            DataBinding.FieldName = 'imp_duration'
            Width = 75
          end
          object cxGrid_1DBTableView1imp_date: TcxGridDBColumn
            DataBinding.FieldName = 'imp_date'
            Width = 125
          end
          object cxGrid_1DBTableView1imp_type: TcxGridDBColumn
            DataBinding.FieldName = 'imp_type'
            Width = 175
          end
          object cxGrid_1DBTableView1imp_rate: TcxGridDBColumn
            DataBinding.FieldName = 'imp_rate'
            Width = 100
          end
          object cxGrid_1DBTableView1imp_total: TcxGridDBColumn
            DataBinding.FieldName = 'imp_total'
            Width = 100
          end
        end
      end
    end
  end
  object cxLabel1: TcxLabel [3]
    Left = 8
    Top = 33
    Caption = 'Cliente'
    Transparent = True
  end
  object dblkupcmbbox_client: TcxDBLookupComboBox [4]
    Left = 8
    Top = 50
    DataBinding.DataSource = ds
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownWidth = 350
    Properties.ListColumns = <
      item
        Width = 275
        FieldName = 'cli_first_name'
      end
      item
        Width = 75
        FieldName = 'cli_id'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsClient
    TabOrder = 7
    Width = 250
  end
  object cxLabel2: TcxLabel [5]
    Left = 264
    Top = 33
    Caption = 'Per'#237'odo'
    Transparent = True
  end
  object dt_start: TcxDateEdit [6]
    Left = 264
    Top = 50
    EditValue = 0d
    Properties.Kind = ckDateTime
    TabOrder = 3
    Width = 150
  end
  object dt_end: TcxDateEdit [7]
    Left = 436
    Top = 50
    EditValue = 0d
    Properties.InputKind = ikMask
    Properties.Kind = ckDateTime
    TabOrder = 4
    Width = 150
  end
  object cxLabel3: TcxLabel [8]
    Left = 420
    Top = 51
    Caption = 'a'
    Transparent = True
  end
  object cxButton1: TcxButton [9]
    Left = 592
    Top = 50
    Width = 25
    Height = 21
    Action = Action_filter
    SpeedButtonOptions.Flat = True
    SpeedButtonOptions.Transparent = True
    TabOrder = 8
  end
  inherited mem: TFDMemTable [10]
    Active = True
    FieldDefs = <
      item
        Name = 'cli_account_code_astpp'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'imp_from'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'imp_to'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'imp_duration'
        DataType = ftTime
      end
      item
        Name = 'imp_date'
        DataType = ftDateTime
      end
      item
        Name = 'imp_type'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'imp_rate'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'imp_total'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end>
    StoreDefs = True
    object memcli_account_code_astpp: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Conta ASTPP'
      FieldName = 'cli_account_code_astpp'
      Origin = 'cli_account_code_astpp'
      Size = 65
    end
    object memimp_from: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Origem'
      FieldName = 'imp_from'
      Origin = 'imp_from'
      Size = 50
    end
    object memimp_to: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Destino'
      FieldName = 'imp_to'
      Origin = 'imp_to'
      Size = 50
    end
    object memimp_duration: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dura'#231#227'o'
      FieldName = 'imp_duration'
      Origin = 'imp_duration'
    end
    object memimp_date: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'imp_date'
      Origin = 'imp_date'
    end
    object memimp_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'imp_type'
      Origin = 'imp_type'
      Size = 50
    end
    object memimp_rate: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'imp_rate'
      Origin = 'imp_rate'
      Precision = 12
    end
    object memimp_total: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Total'
      FieldName = 'imp_total'
      Origin = 'imp_total'
      Precision = 12
    end
  end
  inherited popup_1: TdxRibbonPopupMenu [11]
    PixelsPerInch = 96
  end
  inherited ActionList_1: TActionList [12]
    object Action_filter: TAction
      Hint = 'Filtrar Informa'#231#245'es'
      ImageIndex = 3
      OnExecute = Action_filterExecute
    end
  end
  inherited dxBarManager_1: TdxBarManager [13]
    PixelsPerInch = 96
  end
  inherited cxImageList_1: TcxImageList [14]
    FormatVersion = 1
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
  inherited ds: TDataSource [15]
  end
  object memClient: TFDMemTable [16]
    Active = True
    FieldDefs = <
      item
        Name = 'cli_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cli_first_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'cli_last_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'cli_id'
        DataType = ftLongWord
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 928
    Top = 56
    object memClientcli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_cod'
      Origin = 'cli_cod'
      Size = 32
    end
    object memClientcli_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object memClientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 85
    end
    object memClientcli_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      Size = 85
    end
  end
  inherited QExport4Dialog_1: TQExport4Dialog [17]
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss'
    Formats.CurrencyFormat = 'R$ #,###,##0.00'
  end
  object dsClient: TDataSource [18]
    DataSet = memClient
    Left = 960
    Top = 56
  end
  object frxReport: TfrxReport [19]
    Version = '6.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43347.903410810180000000
    ReportOptions.LastChange = 43347.903410810180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 736
    Top = 56
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  inherited qry: TFDQuery [20]
  end
end
