inherited frm_stock_iten: Tfrm_stock_iten
  Caption = 'Manuten'#231#227'o: Itens em Estoques'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    OnPageChanging = cxPageControl_1PageChanging
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1sto_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'sto_id'
            Width = 75
          end
          object cxGrid_1DBTableView1sto_type: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'sto_type'
            Width = 75
          end
          object cxGrid_1DBTableView1sto_name: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'sto_name'
            Width = 250
          end
          object cxGrid_1DBTableView1sto_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'sto_status'
            Width = 75
          end
          object cxGrid_1DBTableView1sto_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg'
            DataBinding.FieldName = 'sto_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          OnShow = cxTabSheet_3Show
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'sto_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'sto_dt_registration'
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 168
              Width = 728
              Height = 225
              PopupMenu = PopupMenu1
              TabOrder = 3
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.ConfirmDelete = True
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 12
                DataController.DataSource = ds_qry_stock_iten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                object cxGrid1DBTableView1sti_id: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'sti_id'
                  Width = 75
                end
                object cxGrid1DBTableView1pro_name: TcxGridDBColumn
                  Caption = 'Produto'
                  DataBinding.FieldName = 'pro_name'
                  Width = 250
                end
                object cxGrid1DBTableView1pru_initials: TcxGridDBColumn
                  Caption = 'Und'
                  DataBinding.FieldName = 'pru_initials'
                  Width = 70
                end
                object cxGrid1DBTableView1sti_product_quant: TcxGridDBColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'sti_product_quant'
                  Width = 100
                end
                object cxGrid1DBTableView1sti_product_quant_min: TcxGridDBColumn
                  Caption = 'Qtd M'#237'nima'
                  DataBinding.FieldName = 'sti_product_quant_min'
                  Width = 100
                end
                object cxGrid1DBTableView1sti_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'sti_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 59
              Top = 103
              DataBinding.DataField = 'sto_name'
              DataBinding.DataSource = ds
              Enabled = False
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 294
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 2
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Itens do estoque'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 254
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 225
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\itens de estoque'
    end
  end
  inherited ActionList_1: TActionList
    inherited Action_delete: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select stock.*, hex(sto_cod) as codStock  from stock'#13#10#10
      'where sto_status = '#39'A'#39#13#10#10
      'and contract_ctr_cod =unhex(:ctr_cod)'#13#10#10
      'and enterprise_ent_cod in (select enterprise_ent_cod '#13#10#10
      
        'from contract_user_enterprise where contract_user_ctr_usr_cod =u' +
        'nhex(:ctr_usr_cod))')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 45
        Value = Null
      end
      item
        Name = 'CTR_USR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 45
        Value = Null
      end>
    object qrysto_cod: TBytesField
      FieldName = 'sto_cod'
      Origin = 'sto_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object qrysto_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sto_id'
      Origin = 'sto_id'
    end
    object qrysto_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_type'
      Origin = 'sto_type'
      FixedChar = True
      Size = 1
    end
    object qrysto_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_name'
      Origin = 'sto_name'
      Size = 35
    end
    object qrysto_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_status'
      Origin = 'sto_status'
      FixedChar = True
      Size = 1
    end
    object qrysto_deleled_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sto_deleled_at'
      Origin = 'sto_deleled_at'
    end
    object qrysto_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sto_dt_registration'
      Origin = 'sto_dt_registration'
    end
    object qrycodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codStock'
      Origin = 'codStock'
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
    ReportOptions.LastChange = 43287.692406261600000000
    Left = 879
    Top = 41
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frx_db_stock
        DataSetName = 'stock'
      end
      item
        DataSet = frx_db_stock_itens
        DataSetName = 'stock_itens'
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.842519690000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Align = baHidden
          Top = 39.897650000000000000
          Width = 718.110700000000000000
          Height = 80.987233430000000000
          Frame.Typ = [ftLeft]
        end
        object Memo4: TfrxMemoView
          Left = 1.779530000000000000
          Top = 97.370130000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 190.756030000000000000
          Top = 47.236240000000000000
          Width = 64.252010000000000000
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
        object Memo6: TfrxMemoView
          Left = 1.779530000000000000
          Top = 72.354360000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 19.779530000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CONSULTA DO ESTOQUE')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 1.779530000000000000
          Top = 47.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object Estoquesto_type: TfrxMemoView
          IndexTag = 1
          Left = 94.488250000000000000
          Top = 47.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'sto_type'
          DataSet = frx_db_stock
          DataSetName = 'stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock."sto_type"]')
          ParentFont = False
        end
        object Estoquesto_status: TfrxMemoView
          IndexTag = 1
          Left = 260.787570000000000000
          Top = 47.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'sto_status'
          DataSet = frx_db_stock
          DataSetName = 'stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock."sto_status"]')
          ParentFont = False
        end
        object Estoquesto_name: TfrxMemoView
          IndexTag = 1
          Left = 94.488250000000000000
          Top = 97.370130000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          DataField = 'sto_name'
          DataSet = frx_db_stock
          DataSetName = 'stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock."sto_name"]')
          ParentFont = False
        end
        object enterpriseent_last_name: TfrxMemoView
          IndexTag = 1
          Left = 94.488250000000000000
          Top = 72.354360000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_last_name"]')
          ParentFont = False
        end
        object enterpriseent_add_bus_city: TfrxMemoView
          IndexTag = 1
          Align = baRight
          Left = 548.031850000000000000
          Top = 20.220470000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[enterprise."ent_add_bus_city"] / [enterprise."ent_add_bus_state' +
              '"], [Date]')
          Formats = <
            item
              FormatStr = 'dd mmm yyyy'
              Kind = fkDateTime
            end
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
        Height = 28.346456690000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_stock_itens
        DataSetName = 'stock_itens'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 97.181200000000000000
          Top = 4.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 499.031850000000000000
          Top = 4.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd Atual')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 4.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 621.165740000000000000
          Top = 4.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd M'#237'nima')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 410.582870000000000000
          Top = 4.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 25.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_stock_itens
        DataSetName = 'stock_itens'
        RowCount = 0
        object Estoque_Itenspro_id: TfrxMemoView
          IndexTag = 1
          Left = 3.779530000000000000
          Top = 0.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'pro_id'
          DataSet = frx_db_stock_itens
          DataSetName = 'stock_itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock_itens."pro_id"]')
          ParentFont = False
        end
        object Estoque_Itenspro_name: TfrxMemoView
          IndexTag = 1
          Left = 97.181200000000000000
          Top = 0.779530000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSet = frx_db_stock_itens
          DataSetName = 'stock_itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock_itens."pro_name"]')
          ParentFont = False
        end
        object Estoque_Itenspru_initials: TfrxMemoView
          IndexTag = 1
          Left = 410.582870000000000000
          Top = 0.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'pru_initials'
          DataSet = frx_db_stock_itens
          DataSetName = 'stock_itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock_itens."pru_initials"]')
          ParentFont = False
        end
        object Estoque_Itenssti_product_quant: TfrxMemoView
          IndexTag = 1
          Left = 499.031850000000000000
          Top = 0.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'sti_product_quant'
          DataSet = frx_db_stock_itens
          DataSetName = 'stock_itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock_itens."sti_product_quant"]')
          ParentFont = False
        end
        object Estoque_Itenssti_product_quant_min: TfrxMemoView
          IndexTag = 1
          Left = 621.165740000000000000
          Top = 0.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'sti_product_quant_min'
          DataSet = frx_db_stock_itens
          DataSetName = 'stock_itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[stock_itens."sti_product_quant_min"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 525.354670000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 5.559060000000000000
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
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 28.015770000000000000
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
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Top = 1.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 102.047224570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 137.338590000000000000
          Top = 3.779530000000000000
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
        object Memo11: TfrxMemoView
          Left = 148.456710000000000000
          Top = 0.559060000000000000
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
        object Memo12: TfrxMemoView
          Left = 148.456710000000000000
          Top = 20.354360000000000000
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
          Top = 39.811070000000000000
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
          Top = 59.811070000000000000
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
          Top = 80.488250000000000000
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
          Top = 6.559060000000000000
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
    end
  end
  object qry_stock_iten: TFDQuery
    Active = True
    IndexFieldNames = 'stock_sto_cod'
    MasterSource = ds
    MasterFields = 'sto_cod'
    DetailFields = 'stock_sto_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select stock_iten.*, hex(sti_cod)as CodStockItens, hex(stock_sto' +
        '_cod)as CodStock, '
      
        'hex(product_pro_cod)as CodProduct,pro_id, '#10'pro_name, pru_name, p' +
        'ru_initials from stock_iten'#13#10#10
      ''
      'left join product on pro_cod = product_pro_cod'#10
      'left join product_unit on pru_cod = product_unit_pru_cod'#13#10#10
      ''
      'where stock_sto_cod =:sto_cod')
    Left = 589
    Top = 90
    ParamData = <
      item
        Name = 'STO_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_stock_itensti_cod: TBytesField
      FieldName = 'sti_cod'
      Origin = 'sti_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_stock_itenstock_sto_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_cod'
      Origin = 'stock_sto_cod'
    end
    object qry_stock_itenproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_stock_itenproduct_department_prd_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_department_prd_cod'
      Origin = 'product_department_prd_cod'
    end
    object qry_stock_itenproduct_sector_prs_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_sector_prs_cod'
      Origin = 'product_sector_prs_cod'
    end
    object qry_stock_itensti_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sti_id'
      Origin = 'sti_id'
    end
    object qry_stock_itensti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant'
      Origin = 'sti_product_quant'
      Precision = 12
    end
    object qry_stock_itensti_product_quant_min: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant_min'
      Origin = 'sti_product_quant_min'
      Precision = 12
    end
    object qry_stock_itensti_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sti_deleted_at'
      Origin = 'sti_deleted_at'
    end
    object qry_stock_itensti_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sti_dt_registration'
      Origin = 'sti_dt_registration'
    end
    object qry_stock_itenCodStockItens: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodStockItens'
      Origin = 'CodStockItens'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_stock_itenCodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodStock'
      Origin = 'CodStock'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_stock_itenCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_stock_itenpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_stock_itenpru_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_name'
      Origin = 'pru_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_stock_itenpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_stock_itenpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_qry_stock_iten: TDataSource
    DataSet = qry_stock_iten
    Left = 621
    Top = 90
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 719
    Top = 98
    object ExibirItensabaixodoestoqueminmo1: TMenuItem
      Caption = 'Exibir Itens abaixo do estoque min'#237'mo'
      OnClick = ExibirItensabaixodoestoqueminmo1Click
    end
    object ExibirtodososItens1: TMenuItem
      Caption = 'Exibir todos os Itens'
      OnClick = ExibirtodososItens1Click
    end
  end
  object frx_db_stock: TfrxDBDataset
    UserName = 'stock'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 840
    Top = 40
  end
  object frx_db_stock_itens: TfrxDBDataset
    UserName = 'stock_itens'
    CloseDataSource = False
    DataSet = qry_stock_iten
    BCDToCurrency = False
    Left = 808
    Top = 40
  end
end
