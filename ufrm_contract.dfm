inherited frm_contract: Tfrm_contract
  Caption = 'Manuten'#231#227'o: Contrato'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ctr_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_first_name'
            Width = 150
          end
          object cxGrid_1DBTableView1ctr_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_last_name'
            Width = 150
          end
          object cxGrid_1DBTableView1ctr_email: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_email'
            Width = 250
          end
          object cxGrid_1DBTableView1ctr_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_dt_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_dt_birth'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'ctr_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 245
              DataBinding.DataField = 'ctr_dt_registration'
              ExplicitLeft = 245
            end
            object dbedt_first_name: TcxDBTextEdit [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'ctr_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_phone1: TcxDBTextEdit [3]
              Left = 429
              Top = 103
              DataBinding.DataField = 'ctr_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dbedt_email: TcxDBTextEdit [4]
              Left = 59
              Top = 130
              DataBinding.DataField = 'ctr_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 316
            end
            object dbedt_last_name: TcxDBTextEdit [5]
              Left = 245
              Top = 103
              DataBinding.DataField = 'ctr_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            object dbedt_dt_birth: TcxDBDateEdit [6]
              Left = 429
              Top = 130
              DataBinding.DataField = 'ctr_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = dbedt_first_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = dbedt_phone1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = dbedt_email
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 316
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Sobrenome'
              Control = dbedt_last_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Aniv.'
              Control = dbedt_dt_birth
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
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
    PixelsPerInch = 96
    inherited dxBarButton_first: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_prior: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_next: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_last: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_insert: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_delete: TdxBarButton
      Visible = ivNever
    end
  end
  inherited ds: TDataSource
    DataSet = mem_contract
  end
  inherited PopupMenu_1: TPopupMenu
    inherited Primeiro1: TMenuItem
      Enabled = False
    end
    inherited Anterior1: TMenuItem
      Enabled = False
    end
    inherited Prximo1: TMenuItem
      Enabled = False
    end
    inherited ltimo1: TMenuItem
      Enabled = False
    end
    inherited Inserir1: TMenuItem
      Enabled = False
    end
    inherited Excluir1: TMenuItem
      Enabled = False
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited qry: TFDQuery
    BeforeOpen = qryBeforeOpen
    IndexFieldNames = 'ctr_cod'
    MasterFields = 'ctr_cod'
    DetailFields = 'ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'call proc_contract_read(:ctr_cod);')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftWideString
        ParamType = ptInput
        Value = Null
      end>
    object qryctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ctr_cod'
      Origin = 'ctr_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryctr_id: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
    end
    object qryctr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ctr_first_name'
      Origin = 'ctr_first_name'
      Size = 85
    end
    object qryctr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sobre Nome'
      FieldName = 'ctr_last_name'
      Origin = 'ctr_last_name'
      Size = 85
    end
    object qryctr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_email'
      Origin = 'ctr_email'
      Size = 65
    end
    object qryctr_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ctr_phone1'
      Origin = 'ctr_phone1'
      Size = 15
    end
    object qryctr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aniv.'
      FieldName = 'ctr_dt_birth'
      Origin = 'ctr_dt_birth'
    end
    object qryctr_user_license: TWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Licen'#231'a'
      FieldName = 'ctr_user_license'
      Origin = 'ctr_user_license'
    end
    object qryctr_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ctr_status'
      Origin = 'ctr_status'
      FixedChar = True
      Size = 1
    end
    object qryctr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ctr_deleted_at'
      Origin = 'ctr_deleted_at'
    end
    object qryctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_dt_registration'
      Origin = 'ctr_dt_registration'
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
    ReportOptions.LastChange = 43286.747143391200000000
    Datasets = <
      item
        DataSet = frx_db_contrato
        DataSetName = 'Contrato'
      end
      item
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
          AllowVectorExport = True
          Left = 137.338590000000000000
          Top = 7.779530000000000000
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 4.559060000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 24.354360000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 43.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 63.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 84.488250000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 11.456710000000000000
          Top = 10.559060000000000000
          Width = 124.724409450000000000
          Height = 86.929131420000000000
          DataField = 'ent_image1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456695350000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 196.535560000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 39.181200000000000000
          Width = 718.110700000000000000
          Height = 151.181200000000000000
          Frame.Typ = []
        end
        object Contratoctr_first_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 116.787477240000000000
          Top = 94.417440000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_first_name'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_first_name"]')
        end
        object Contratoctr_last_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 116.787477240000000000
          Top = 119.094620000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_last_name'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_last_name"]')
        end
        object Contratoctr_email: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.370347240000000000
          Top = 167.110390000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_email'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_email"]')
        end
        object Contratoctr_phone1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 116.787477240000000000
          Top = 167.110390000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_phone1'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_phone1"]')
        end
        object Contratoctr_status: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 350.708937240000000000
          Top = 43.960730000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_status'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_status"]')
        end
        object Contratoctr_user_license: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 116.787477240000000000
          Top = 68.874150000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_user_license'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_user_license"]')
        end
        object Contratoctr_id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 116.787477240000000000
          Top = 43.960730000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_id'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_id"]')
        end
        object Contratoctr_dt_birth: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 116.787477240000000000
          Top = 143.228510000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_dt_birth'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_dt_birth"]')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 43.960730000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 94.417440000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 119.094620000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sobrenome:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 167.110390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 343.559277240000000000
          Top = 167.110390000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 275.118337240000000000
          Top = 43.960730000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 68.874150000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Licen'#231'as:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 143.228510000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nascimento:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Contrato')
          ParentFont = False
        end
        object enterpriseent_add_bus_city: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 19.677180000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[enterprise."ent_add_bus_city"] / [enterprise."ent_add_bus_state' +
              '"] - [Date]')
          ParentFont = False
        end
      end
    end
  end
  object frx_db_contrato: TfrxDBDataset
    UserName = 'Contrato'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 672
    Top = 56
  end
  object str_proc_contract_update: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_contract_update'
    Left = 810
    Top = 291
    ParamData = <
      item
        Position = 1
        Name = 'p_ctr_cod'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end
      item
        Position = 2
        Name = 'p_ctr_first_name'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 3
        Name = 'p_ctr_last_name'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 4
        Name = 'p_ctr_email'
        DataType = ftString
        ParamType = ptInput
        Size = 65
      end
      item
        Position = 5
        Name = 'p_ctr_phone1'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 6
        Name = 'p_ctr_dt_birth'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'p_ctr_status'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object mem_contract: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ctr_cod'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ctr_id'
        DataType = ftLargeint
      end
      item
        Name = 'ctr_first_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ctr_last_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ctr_email'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'ctr_phone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ctr_dt_birth'
        DataType = ftDate
      end
      item
        Name = 'ctr_user_license'
        DataType = ftWord
      end
      item
        Name = 'ctr_status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ctr_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'ctr_dt_registration'
        DataType = ftDateTime
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
    Left = 770
    Top = 187
    object mem_contractctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ctr_cod'
      Origin = 'ctr_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object mem_contractctr_id: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
    end
    object mem_contractctr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ctr_first_name'
      Origin = 'ctr_first_name'
      Size = 85
    end
    object mem_contractctr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sobre Nome'
      FieldName = 'ctr_last_name'
      Origin = 'ctr_last_name'
      Size = 85
    end
    object mem_contractctr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_email'
      Origin = 'ctr_email'
      Size = 65
    end
    object mem_contractctr_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ctr_phone1'
      Origin = 'ctr_phone1'
      Size = 15
    end
    object mem_contractctr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aniv.'
      FieldName = 'ctr_dt_birth'
      Origin = 'ctr_dt_birth'
    end
    object mem_contractctr_user_license: TWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Licen'#231'a'
      FieldName = 'ctr_user_license'
      Origin = 'ctr_user_license'
    end
    object mem_contractctr_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ctr_status'
      Origin = 'ctr_status'
      FixedChar = True
      Size = 1
    end
    object mem_contractctr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ctr_deleted_at'
      Origin = 'ctr_deleted_at'
    end
    object mem_contractctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_dt_registration'
      Origin = 'ctr_dt_registration'
    end
  end
end
