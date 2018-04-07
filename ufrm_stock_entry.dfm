inherited frm_stock_entry: Tfrm_stock_entry
  Caption = 'Manuten'#231#227'o: Entrada de Produtos'
  ClientHeight = 447
  OnClose = FormClose
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 392
    Properties.ActivePage = cxTabSheet_2
    ExplicitHeight = 392
    ClientRectBottom = 386
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 358
      inherited cxGrid_1: TcxGrid
        Height = 352
        ExplicitHeight = 352
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1pde_id: TcxGridDBColumn
            DataBinding.FieldName = 'pde_id'
            Width = 75
          end
          object cxGrid_1DBTableView1supplier_sup_id: TcxGridDBColumn
            DataBinding.FieldName = 'supplier_sup_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownWidth = 350
            Properties.KeyFieldNames = 'sup_id'
            Properties.ListColumns = <
              item
                FieldName = 'sup_first_name'
              end>
            Properties.ListSource = ds_supplier
            Width = 250
          end
          object cxGrid_1DBTableView1purchase_order_pco_id: TcxGridDBColumn
            DataBinding.FieldName = 'purchase_order_pco_id'
            Width = 85
          end
          object cxGrid_1DBTableView1pde_status: TcxGridDBColumn
            DataBinding.FieldName = 'pde_status'
            Width = 70
          end
          object cxGrid_1DBTableView1pde_invoice: TcxGridDBColumn
            DataBinding.FieldName = 'pde_invoice'
            Width = 100
          end
          object cxGrid_1DBTableView1pde_dt_emission: TcxGridDBColumn
            DataBinding.FieldName = 'pde_invoice_dt_emission'
            Width = 100
          end
          object cxGrid_1DBTableView1pde_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'pde_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 358
      inherited cxPageControl_2: TcxPageControl
        Height = 352
        Properties.ActivePage = cxTabSheet1
        ExplicitHeight = 352
        ClientRectBottom = 346
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 318
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 318
            ExplicitHeight = 318
            inherited dbedt_id: TcxDBTextEdit
              Left = 84
              DataBinding.DataField = 'pde_id'
              ExplicitLeft = 84
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 257
              DataBinding.DataField = 'pde_dt_registration'
              ExplicitLeft = 257
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [2]
              Left = 84
              Top = 157
              DataBinding.DataField = 'stock_sto_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'sto_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'sto_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'sto_id'
                end>
              Properties.ListSource = ds_stock
              Style.HotTrack = False
              TabOrder = 4
              Width = 294
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox [3]
              Left = 84
              Top = 184
              DataBinding.DataField = 'purchase_order_pco_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'pco_id'
              Properties.ListColumns = <
                item
                  FieldName = 'pco_dt_registration'
                end
                item
                  FieldName = 'pco_id'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = ds_purchase_order
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [4]
              Left = 257
              Top = 184
              DataBinding.DataField = 'pde_invoice'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [5]
              Left = 432
              Top = 184
              DataBinding.DataField = 'pde_invoice_dt_emission'
              DataBinding.DataSource = ds
              Properties.DateButtons = [btnClear]
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [6]
              Left = 84
              Top = 130
              DataBinding.DataField = 'supplier_sup_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'sup_id'
              Properties.ListColumns = <
                item
                  Caption = 'Raz'#227'o'
                  Width = 250
                  FieldName = 'sup_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'sup_id'
                end>
              Properties.ListSource = ds_supplier
              Style.HotTrack = False
              TabOrder = 3
              Width = 294
            end
            object cxDBComboBox1: TcxDBComboBox [7]
              Left = 84
              Top = 103
              DataBinding.DataField = 'pde_status'
              DataBinding.DataSource = ds
              Enabled = False
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ABERTO'
                'E - EFETIVADO'
                'C - CANCELADO')
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 3
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Estoque'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Ped. Compra'
              Control = cxDBLookupComboBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'NF'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Emis.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Fornecedor'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Produtos'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 318
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 17
              Top = 38
              Width = 728
              Height = 250
              TabOrder = 0
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
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Visible = True
                DataController.DataSource = ds_product_entry
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                object cxGrid1DBTableView1product_pro_id: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownListStyle = lsFixedList
                  Properties.DropDownWidth = 250
                  Properties.KeyFieldNames = 'pro_id'
                  Properties.ListColumns = <
                    item
                      Caption = 'Nome'
                      Width = 250
                      FieldName = 'pro_name'
                    end
                    item
                      Caption = 'C'#243'd. ID'
                      Width = 75
                      FieldName = 'pro_id'
                    end>
                  Properties.ListSource = ds_product
                  Width = 250
                end
                object cxGrid1DBTableView1pei_product_quant: TcxGridDBColumn
                  DataBinding.FieldName = 'pei_product_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.0000;-0.0000'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Itens da Nota Fiscal'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 268
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 250
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [4]
  end
  inherited ds: TDataSource [5]
  end
  inherited ACBrEnterTab_1: TACBrEnterTab [6]
  end
  inherited PopupMenu_1: TPopupMenu [7]
    OnPopup = PopupMenu_1Popup
    object ConfirmaEntrada1: TMenuItem
      Caption = 'Confirmar entrada'
      OnClick = ConfirmaEntrada1Click
    end
    object Cancelarentrada1: TMenuItem
      Caption = 'Cancelar entrada'
      OnClick = Cancelarentrada1Click
    end
  end
  inherited QExport4Dialog_1: TQExport4Dialog [8]
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited cxImageList_1: TcxImageList [9]
    FormatVersion = 1
  end
  inherited qry: TFDQuery [10]
    AfterInsert = qryAfterInsert
    BeforePost = qryBeforePost
    BeforeDelete = qryBeforeDelete
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from product_entry')
    Left = 592
    object qrypde_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'pde_id'
      Origin = 'pde_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrysupplier_sup_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor ID'
      FieldName = 'supplier_sup_id'
      Origin = 'supplier_sup_id'
    end
    object qrypurchase_order_pco_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ped. Compra ID'
      FieldName = 'purchase_order_pco_id'
      Origin = 'purchase_order_pco_id'
    end
    object qrypde_dt_registration: TDateTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pde_dt_registration'
      Origin = 'pde_dt_registration'
    end
    object qrystock_sto_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estoque ID'
      FieldName = 'stock_sto_id'
      Origin = 'stock_sto_id'
    end
    object qrypde_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'pde_status'
      Origin = 'pde_status'
      FixedChar = True
      Size = 1
    end
    object qrypde_invoice: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pde_invoice'
      Origin = 'pde_invoice'
    end
    object qrypde_invoice_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pde_invoice_serie'
      Origin = 'pde_invoice_serie'
    end
    object qrypde_invoice_dt_emission: TDateField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'pde_invoice_dt_emission'
      Origin = 'pde_invoice_dt_emission'
    end
    object qrypde_document: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pde_document'
      Origin = 'pde_document'
      Size = 25
    end
    object qryped_cost_delivery: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cost_delivery'
      Origin = 'ped_cost_delivery'
      Precision = 12
    end
  end
  inherited QImport3Wizard_1: TQImport3Wizard [11]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  object qry_product_entry: TFDQuery [12]
    AfterInsert = qry_product_entryAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'product_entry_pde_id'
    MasterSource = ds
    MasterFields = 'pde_id'
    DetailFields = 'product_entry_pde_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from product_entry_itens'#10
      'where product_entry_pde_id = :pde_id')
    Left = 391
    Top = 210
    ParamData = <
      item
        Name = 'PDE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_product_entrypei_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'pei_id'
      Origin = 'pei_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_product_entryproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_product_entryproduct_entry_pde_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_entry_pde_id'
      Origin = 'product_entry_pde_id'
    end
    object qry_product_entrypei_product_quant: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant.'
      FieldName = 'pei_product_quant'
      Origin = 'pei_product_quant'
      Precision = 12
    end
    object qry_product_entrypei_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pei_dt_registration'
      Origin = 'pei_dt_registration'
    end
  end
  object ds_product_entry: TDataSource [13]
    DataSet = qry_product_entry
    Left = 487
    Top = 98
  end
  object qry_stock_iten: TFDQuery [14]
    Active = True
    IndexFieldNames = 'stock_sto_id'
    MasterSource = ds
    MasterFields = 'stock_sto_id'
    DetailFields = 'stock_sto_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from stock_iten'
      'where stock_sto_id = :stock_sto_id')
    Left = 359
    Top = 90
    ParamData = <
      item
        Name = 'STOCK_STO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
    object qry_stock_itensti_id: TFDAutoIncField
      FieldName = 'sti_id'
      Origin = 'sti_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_stock_itenstock_sto_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_id'
      Origin = 'stock_sto_id'
    end
    object qry_stock_itenproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_stock_itenproduct_department_prd_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_department_prd_id'
      Origin = 'product_department_prd_id'
    end
    object qry_stock_itenproduct_sector_prs_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_sector_prs_id'
      Origin = 'product_sector_prs_id'
    end
    object qry_stock_itensti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant'
      Origin = 'sti_product_quant'
      Precision = 12
    end
    object qry_stock_itensti_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sti_dt_registration'
      Origin = 'sti_dt_registration'
    end
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [15]
  end
  inherited frxReport_1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qry_purchase_order: TFDQuery
    AfterInsert = qryAfterInsert
    BeforeDelete = qryBeforeDelete
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'SELECT * FROM purchase_order'#10#10
      
        'where pco_id not in (select purchase_order_pco_id from product_e' +
        'ntry'#10
      'where pde_status = '#39'E'#39')'#10'and pco_type = '#39'C'#39)
    Left = 592
    Top = 200
    object qry_purchase_orderpco_id: TFDAutoIncField
      FieldName = 'pco_id'
      Origin = 'pco_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_purchase_ordercontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qry_purchase_orderemployee_emp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_id'
      Origin = 'employee_emp_id'
    end
    object qry_purchase_orderstock_sto_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_id'
      Origin = 'stock_sto_id'
    end
    object qry_purchase_orderpco_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pco_type'
      Origin = 'pco_type'
      FixedChar = True
      Size = 1
    end
    object qry_purchase_orderpco_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pco_status'
      Origin = 'pco_status'
      FixedChar = True
      Size = 1
    end
    object qry_purchase_orderpoc_status_reason: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'poc_status_reason'
      Origin = 'poc_status_reason'
      Size = 45
    end
    object qry_purchase_orderpco_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pco_dt_registration'
      Origin = 'pco_dt_registration'
    end
  end
  object ds_purchase_order: TDataSource
    DataSet = qry_purchase_order
    Left = 616
    Top = 96
  end
  object qry_supplier: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    BeforeDelete = qryBeforeDelete
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from supplier')
    Left = 520
    Top = 96
  end
  object ds_supplier: TDataSource
    DataSet = qry_supplier
    Left = 552
    Top = 96
  end
  object qry_stock: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    BeforeDelete = qryBeforeDelete
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from stock')
    Left = 512
    Top = 176
  end
  object ds_stock: TDataSource
    DataSet = qry_stock
    Left = 680
    Top = 96
  end
  object qry_product: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    BeforeDelete = qryBeforeDelete
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product')
    Left = 656
    Top = 144
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 688
    Top = 144
  end
end
