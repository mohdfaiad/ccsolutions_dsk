inherited frm_stock_iten: Tfrm_stock_iten
  Caption = 'Manuten'#231#227'o: Itens em Estoques'
  OnClose = FormClose
  ExplicitTop = -36
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    OnPageChanging = cxPageControl_1PageChanging
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1sto_id: TcxGridDBColumn
            DataBinding.FieldName = 'sto_id'
            Width = 75
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'enterprise_ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1sto_name: TcxGridDBColumn
            DataBinding.FieldName = 'sto_name'
            Width = 250
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
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
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
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Visible = True
                DataController.DataSource = ds_qry_stock_iten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1product_pro_id: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1pro_name: TcxGridDBColumn
                  DataBinding.FieldName = 'pro_name'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Options.Editing = False
                  Width = 250
                end
                object cxGrid1DBTableView1sti_product_quant: TcxGridDBColumn
                  DataBinding.FieldName = 'sti_product_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0.0000;-0.0000'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1sti_product_quant_min: TcxGridDBColumn
                  DataBinding.FieldName = 'sti_product_quant_min'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.0000;-0.0000'
                  Width = 75
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
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from stock')
    object qrysto_id: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'sto_id'
      Origin = 'sto_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryenterprise_ent_id: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Empresa ID'
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
    end
    object qrysto_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'sto_name'
      Origin = 'sto_name'
      Size = 50
    end
    object qrysto_status: TStringField
      Alignment = taCenter
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
    Left = 391
    Top = 186
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qry_stock_iten: TFDQuery
    Active = True
    IndexFieldNames = 'stock_sto_id'
    MasterSource = ds
    MasterFields = 'sto_id'
    DetailFields = 'stock_sto_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select product_pro_id,pro_name,sti_product_quant,'
      'sti_product_quant_min,stock_sto_id from stock_iten, product'#13#10#10
      ''
      'where pro_id= product_pro_id'
      'and stock_sto_id=:sto_id')
    Left = 583
    Top = 98
    ParamData = <
      item
        Name = 'STO_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 4
      end>
    object qry_stock_itenproduct_pro_id: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_stock_itenpro_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_stock_itensti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant.'
      FieldName = 'sti_product_quant'
      Origin = 'sti_product_quant'
      Precision = 12
    end
    object qry_stock_itensti_product_quant_min: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant. Min.'
      FieldName = 'sti_product_quant_min'
      Origin = 'sti_product_quant_min'
      Precision = 12
    end
    object qry_stock_itenstock_sto_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estoque ID'
      FieldName = 'stock_sto_id'
      Origin = 'stock_sto_id'
    end
  end
  object ds_qry_stock_iten: TDataSource
    DataSet = qry_stock_iten
    Left = 615
    Top = 98
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 647
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
end