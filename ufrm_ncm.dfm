inherited frm_ncm: Tfrm_ncm
  Caption = 'Manuten'#231#227'o: NCM'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ncm_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'ncm_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ncm_code: TcxGridDBColumn
            Caption = 'C'#243'digo NCM'
            DataBinding.FieldName = 'ncm_code'
            Width = 100
          end
          object cxGrid_1DBTableView1ncm_description: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_description'
            Width = 350
          end
          object cxGrid_1DBTableView1ncm_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'ncm_status'
            Width = 70
          end
          object cxGrid_1DBTableView1ncm_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 68
              DataBinding.DataField = 'ncm_id'
              ExplicitLeft = 68
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 241
              DataBinding.DataField = 'ncm_dt_registration'
              ExplicitLeft = 241
            end
            object cxDBMemo1: TcxDBMemo [2]
              Left = 68
              Top = 130
              DataBinding.DataField = 'ncm_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 4
              Height = 89
              Width = 294
            end
            object cxDBButtonEdit1: TcxDBButtonEdit [3]
              Left = 68
              Top = 103
              DataBinding.DataField = 'ncm_code'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbComboxStatus: TcxDBComboBox [4]
              Left = 241
              Top = 103
              DataBinding.DataField = 'ncm_status'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'C'#243'digo'
              Control = cxDBButtonEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = dbComboxStatus
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\ncm'
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select ncm.*, hex(ncm_cod)as CodNCM from ncm'
      'where contract_ctr_cod = :ctr_cod'
      'and ncm_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryncm_cod: TBytesField
      FieldName = 'ncm_cod'
      Origin = 'ncm_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryncm_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_id'
      Origin = 'ncm_id'
    end
    object qryncm_code: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ncm_code'
      Origin = 'ncm_code'
      Required = True
      Size = 10
    end
    object qryncm_description: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ncm_description'
      Origin = 'ncm_description'
      Required = True
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object qryncm_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ncm_dt_registration'
      Origin = 'ncm_dt_registration'
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryncm_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_status'
      Origin = 'ncm_status'
      FixedChar = True
      Size = 1
    end
    object qryncm_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_deleted_at'
      Origin = 'ncm_deleted_at'
    end
    object qryCodNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodNCM'
      Origin = 'CodNCM'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  inherited QExport4Dialog_1: TQExport4Dialog
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43286.349616631960000000
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frx_db_NCM
        DataSetName = 'NCM'
      end>
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
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 105.826754570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 137.338590000000000000
          Top = 5.779530000000000000
          Width = 7.559060000000000000
          Height = 90.708720000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 148.456710000000000000
          Top = 2.559060000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_last_name"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 148.456710000000000000
          Top = 22.354360000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:       [enterprise."ent_cnpj"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 148.456710000000000000
          Top = 41.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Endere'#231'o: [enterprise."ent_add_bus_address"], n'#186' [enterprise."en' +
              't_add_bus_number"], [enterprise."ent_add_bus_street"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          Left = 148.456710000000000000
          Top = 61.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'CEP:        [enterprise."ent_add_bus_zipcode"] - [enterprise."en' +
              't_add_bus_city"] - [enterprise."ent_add_bus_state"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 148.456710000000000000
          Top = 82.488250000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Fone:       [enterprise."ent_phone1"] / [enterprise."ent_phone2"' +
              '] - E-mail : [enterprise."ent_email"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Picture1: TfrxPictureView
          Left = 11.456710000000000000
          Top = 8.559060000000000000
          Width = 124.724409450000000000
          Height = 86.929131420000000000
          DataField = 'ent_image1'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 498.897960000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Left = 10.559060000000000000
          Top = 2.779530000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Endere'#231'o: [enterprise."ent_add_bus_address"], n'#186' [enterprise."en' +
              't_add_bus_number"] - [enterprise."ent_add_bus_street"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          Left = 10.559060000000000000
          Top = 23.236240000000000000
          Width = 695.433520000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CEP: [enterprise."ent_add_bus_zipcode"] - [enterprise."ent_add_b' +
              'us_city"] - [enterprise."ent_add_bus_state"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133872910000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_NCM
        DataSetName = 'NCM'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Top = 26.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'dico ID')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 108.504020000000000000
          Top = 26.000000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'dico NCM')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 252.756030000000000000
          Top = 26.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o NCM')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 631.929500000000000000
          Top = 26.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 47.677180000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_NCM
        DataSetName = 'NCM'
        RowCount = 0
        object NCMncm_id: TfrxMemoView
          IndexTag = 1
          Left = 1.779530000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'ncm_id'
          DataSet = frx_db_NCM
          DataSetName = 'NCM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[NCM."ncm_id"]')
        end
        object NCMncm_code: TfrxMemoView
          IndexTag = 1
          Left = 108.504020000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'ncm_code'
          DataSet = frx_db_NCM
          DataSetName = 'NCM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[NCM."ncm_code"]')
        end
        object NCMncm_description: TfrxMemoView
          IndexTag = 1
          Left = 252.756030000000000000
          Top = 3.779530000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'ncm_description'
          DataSet = frx_db_NCM
          DataSetName = 'NCM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[NCM."ncm_description"]')
        end
        object NCMncm_status: TfrxMemoView
          IndexTag = 1
          Left = 631.929500000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'ncm_status'
          DataSet = frx_db_NCM
          DataSetName = 'NCM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[NCM."ncm_status"]')
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Top = 1.779530000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 24.566929130000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.220470000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTA DOS C'#211'DIGOS NCM CADASTRADOS')
          ParentFont = False
        end
      end
    end
  end
  object frx_db_NCM: TfrxDBDataset
    UserName = 'NCM'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 264
    Top = 48
  end
end
