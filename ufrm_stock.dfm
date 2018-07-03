inherited frm_stock: Tfrm_stock
  Caption = 'Manuten'#231#227'o Estoques'
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
          object cxGrid_1DBTableView1sto_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'sto_id'
          end
          object cxGrid_1DBTableView1Empresa: TcxGridDBColumn
            DataBinding.FieldName = 'Empresa'
          end
          object cxGrid_1DBTableView1sto_name: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'sto_name'
            Width = 250
          end
          object cxGrid_1DBTableView1sto_type: TcxGridDBColumn
            DataBinding.FieldName = 'sto_type'
            Width = 50
          end
          object cxGrid_1DBTableView1sto_status: TcxGridDBColumn
            DataBinding.FieldName = 'sto_status'
            Width = 50
          end
          object cxGrid_1DBTableView1sto_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'sto_dt_registration'
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
              Left = 63
              DataBinding.DataField = 'sto_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 236
              DataBinding.DataField = 'sto_dt_registration'
              ExplicitLeft = 236
            end
            object cxDBTextEdit3: TcxDBTextEdit [2]
              Left = 63
              Top = 157
              DataBinding.DataField = 'sto_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 303
            end
            object cxDBComboBox2: TcxDBComboBox [3]
              Left = 236
              Top = 103
              DataBinding.DataField = 'sto_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            object cxDBComboBox1: TcxDBComboBox [4]
              Left = 63
              Top = 103
              DataBinding.DataField = 'sto_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'G - GERENCIAL'
                'F - FISCAL')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object looComboxEmpresa: TcxLookupComboBox [5]
              Left = 63
              Top = 130
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ent_last_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ent_last_name'
                end>
              Properties.ListSource = frm_dm.ds_enterprise
              Properties.OnPopup = looComboxEmpresaPropertiesPopup
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Estoque'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Empresa'
              Control = looComboxEmpresa
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\estoque'
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 464
    Top = 104
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select stock.*, hex(sto_cod)as CodStock from stock '#10'where contra' +
        'ct_ctr_cod =:ctr_cod'
      'and enterprise_ent_cod in '
      
        '(select enterprise_ent_cod from contract_user_enterprise where c' +
        'ontract_user_ctr_usr_cod =:ctr_usr_cod)'
      'and sto_deleled_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftString
        ParamType = ptInput
        Size = 85
        Value = Null
      end
      item
        Name = 'CTR_USR_COD'
        DataType = ftString
        ParamType = ptInput
        Size = 85
        Value = Null
      end>
    object qryenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrysto_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sto_id'
      Origin = 'sto_id'
    end
    object qrysto_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'sto_type'
      Origin = 'sto_type'
      FixedChar = True
      Size = 1
    end
    object qrysto_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'sto_status'
      Origin = 'sto_status'
      FixedChar = True
      Size = 1
    end
    object qrysto_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'sto_dt_registration'
      Origin = 'sto_dt_registration'
    end
    object qrysto_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'sto_name'
      Origin = 'sto_name'
      Size = 35
    end
    object qryEmpresa: TStringField
      FieldKind = fkLookup
      FieldName = 'Empresa'
      LookupDataSet = frm_dm.qry_enterprise
      LookupKeyFields = 'ent_cod'
      LookupResultField = 'ent_first_name'
      KeyFields = 'enterprise_ent_cod'
      Size = 60
      Lookup = True
    end
    object qrysto_cod: TBytesField
      FieldName = 'sto_cod'
      Origin = 'sto_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrysto_deleled_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sto_deleled_at'
      Origin = 'sto_deleled_at'
    end
    object qryCodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodStock'
      Origin = 'CodStock'
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
    ReportOptions.LastChange = 43284.678698530090000000
    Left = 167
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frxDBD_Estoque
        DataSetName = 'Estoque'
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
        Frame.Typ = []
        Height = 132.283464570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Align = baHidden
          Top = 0.779530000000001000
          Width = 718.110700000000000000
          Height = 115.003003430000000000
          Frame.Typ = [ftLeft]
        end
        object Memo16: TfrxMemoView
          Left = 139.000000000000000000
          Top = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 109.606370000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 165.456710000000000000
          Top = 7.559060000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'ent_first_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_first_name"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 165.456710000000000000
          Top = 27.354360000000000000
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
          Left = 165.456710000000000000
          Top = 46.811070000000000000
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
          Left = 165.456710000000000000
          Top = 66.811070000000000000
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
          Left = 165.456710000000000000
          Top = 87.488250000000000000
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
          Left = 5.779530000000000000
          Top = 3.779530000000000000
          Width = 132.283464570000000000
          Height = 94.488188980000000000
          DataField = 'ent_image1'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Estoque
        DataSetName = 'Estoque'
        RowCount = 0
        object Line1: TfrxLineView
          Top = 19.559060000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Estoque
        DataSetName = 'Estoque'
        RowCount = 0
        object Estoquesto_name: TfrxMemoView
          IndexTag = 1
          Left = 158.519790000000000000
          Top = 3.779530000000020000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'sto_name'
          DataSet = frxDBD_Estoque
          DataSetName = 'Estoque'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Estoque."sto_name"]')
        end
        object Memo12: TfrxMemoView
          Left = 3.559060000000000000
          Top = 3.779530000000020000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Unidade de Estoque:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 487.559370000000000000
          Top = 3.779530000000020000
          Width = 60.472480000000000000
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
        object Estoquesto_status: TfrxMemoView
          IndexTag = 1
          Left = 559.370440000000000000
          Top = 3.779530000000020000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'sto_status'
          DataSet = frxDBD_Estoque
          DataSetName = 'Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Estoque."sto_status"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385826771653500000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = 'enterprise."ent_first_name"'
        KeepTogether = True
        object enterpriseent_first_name: TfrxMemoView
          IndexTag = 1
          Left = 116.944960000000000000
          Top = 3.779529999999990000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataField = 'ent_first_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_first_name"]')
        end
        object enterpriseent_last_name: TfrxMemoView
          IndexTag = 1
          Left = 116.944960000000000000
          Top = 26.456710000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_last_name"]')
        end
        object Memo1: TfrxMemoView
          Left = 3.559060000000000000
          Top = 3.779529999999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.559060000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Fantasia:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.559060000000000000
          Top = 49.133890000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 336.157700000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
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
        object enterpriseent_cnpj: TfrxMemoView
          IndexTag = 1
          Left = 116.944960000000000000
          Top = 49.133890000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'ent_cnpj'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_cnpj"]')
        end
        object enterpriseent_email: TfrxMemoView
          IndexTag = 1
          Left = 407.968770000000000000
          Top = 49.133890000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'ent_email'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_email"]')
        end
        object Shape1: TfrxShapeView
          Align = baHidden
          Width = 718.110700000000000000
          Height = 80.987233430000100000
          Frame.Typ = [ftLeft]
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Top = 3.779530000000020000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxDBD_Estoque: TfrxDBDataset
    UserName = 'Estoque'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 160
    Top = 104
  end
end
