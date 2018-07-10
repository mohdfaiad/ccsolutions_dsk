inherited frm_stock_entry: Tfrm_stock_entry
  Caption = 'Manuten'#231#227'o: Entrada de Produtos'
  ClientHeight = 558
  OnClose = FormClose
  OnShow = FormShow
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 503
    Properties.ActivePage = cxTabSheet_2
    ExplicitHeight = 503
    ClientRectBottom = 497
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 469
      inherited cxGrid_1: TcxGrid
        Height = 463
        ExplicitHeight = 463
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid_1DBTableView1CustomDrawCell
          object cxGrid_1DBTableView1pde_id: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'pde_id'
            Width = 75
          end
          object cxGrid_1DBTableView1pde_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'pde_status'
            Width = 70
          end
          object cxGrid_1DBTableView1sto_name: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'sto_name'
            Width = 250
          end
          object cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn
            Caption = 'Fornecedor'
            DataBinding.FieldName = 'sup_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1pco_id: TcxGridDBColumn
            Caption = 'N'#186' Pedido'
            DataBinding.FieldName = 'pco_id'
            Width = 70
          end
          object cxGrid_1DBTableView1pde_invoice: TcxGridDBColumn
            Caption = 'N'#186' Nota'
            DataBinding.FieldName = 'pde_invoice'
            Width = 120
          end
          object cxGrid_1DBTableView1pde_invoice_dt_emission: TcxGridDBColumn
            Caption = 'Dt. Emiss'#227'o Nota'
            DataBinding.FieldName = 'pde_invoice_dt_emission'
            Width = 120
          end
          object cxGrid_1DBTableView1pde_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg'
            DataBinding.FieldName = 'pde_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 469
      inherited cxPageControl_2: TcxPageControl
        Height = 463
        ExplicitHeight = 463
        ClientRectBottom = 457
        inherited cxTabSheet_3: TcxTabSheet
          OnShow = cxTabSheet_3Show
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 429
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 429
            ExplicitHeight = 429
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
            object cxDBComboBox1: TcxDBComboBox [2]
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
            object looComboxFornecedor: TcxLookupComboBox [3]
              Left = 84
              Top = 184
              Properties.GridMode = True
              Properties.KeyFieldNames = 'sup_last_name'
              Properties.ListColumns = <
                item
                  FieldName = 'sup_last_name'
                end>
              Properties.ListSource = ds_supplier
              Style.HotTrack = False
              TabOrder = 7
              Width = 443
            end
            object looComboxPed_Compra: TcxLookupComboBox [4]
              Left = 84
              Top = 130
              Properties.GridMode = True
              Properties.KeyFieldNames = 'pco_id'
              Properties.ListColumns = <
                item
                  FieldName = 'pco_id'
                end>
              Properties.ListSource = ds_purchase_order
              Properties.OnCloseUp = looComboxPed_CompraPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [5]
              Left = 231
              Top = 130
              DataBinding.DataField = 'pde_invoice'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [6]
              Left = 406
              Top = 130
              DataBinding.DataField = 'pde_invoice_dt_emission'
              DataBinding.DataSource = ds
              Properties.DateButtons = [btnClear]
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object looComboxEstoque: TcxLookupComboBox [7]
              Left = 84
              Top = 157
              Properties.GridMode = True
              Properties.KeyFieldNames = 'sto_name'
              Properties.ListColumns = <
                item
                  FieldName = 'sto_name'
                end>
              Properties.ListSource = ds_stock
              Style.HotTrack = False
              TabOrder = 6
              Width = 443
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Fornecedor'
              Control = looComboxFornecedor
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 443
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Ped. Compra'
              Control = looComboxPed_Compra
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avBottom
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'NF'
              Offsets.Left = 2
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
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
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Estoque'
              Control = looComboxEstoque
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 443
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Produtos'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 429
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 17
              Top = 38
              Width = 728
              Height = 250
              PopupMenu = pupMenuRequisicao
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
                Navigator.Buttons.Filter.ImageIndex = 12
                DataController.DataSource = ds_product_entry_itens
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                OptionsData.Editing = False
                object cxGrid1DBTableView1pei_id: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'pei_id'
                  Width = 75
                end
                object cxGrid1DBTableView1pro_name: TcxGridDBColumn
                  Caption = 'Produto'
                  DataBinding.FieldName = 'pro_name'
                  Width = 250
                end
                object cxGrid1DBTableView1pru_initials: TcxGridDBColumn
                  Caption = 'UND'
                  DataBinding.FieldName = 'pru_initials'
                  Width = 70
                end
                object cxGrid1DBTableView1pei_product_quant: TcxGridDBColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'pei_product_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0.000;-0.000'
                  Width = 100
                end
                object cxGrid1DBTableView1pei_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'pei_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object btnSalvar_Item: TcxButton
              Left = 590
              Top = 294
              Width = 25
              Height = 25
              Action = act_save_entry_itens
              TabOrder = 4
            end
            object btnEditar_Item: TcxButton
              Left = 621
              Top = 294
              Width = 25
              Height = 25
              Action = act_edit_entry_itens
              TabOrder = 5
            end
            object btnCancel_Item: TcxButton
              Left = 652
              Top = 294
              Width = 25
              Height = 25
              Action = act_cancel_entry_itens
              TabOrder = 6
            end
            object btnExcluir_Item: TcxButton
              Left = 683
              Top = 294
              Width = 25
              Height = 25
              Action = act_delete_entry_itens
              TabOrder = 7
            end
            object edtUND: TcxTextEdit
              Left = 347
              Top = 294
              Enabled = False
              Style.HotTrack = False
              TabOrder = 2
              Width = 70
            end
            object looComboxProduto: TcxLookupComboBox
              Left = 60
              Top = 294
              Properties.GridMode = True
              Properties.KeyFieldNames = 'pro_name'
              Properties.ListColumns = <
                item
                  FieldName = 'pro_name'
                end>
              Properties.ListSource = ds_product
              Properties.OnCloseUp = looComboxProdutoPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 1
              Width = 255
            end
            object edtQTD: TcxCurrencyEdit
              Left = 484
              Top = 294
              Properties.DisplayFormat = '0.000;-0.000'
              Style.HotTrack = False
              TabOrder = 3
              OnKeyDown = edtQTDKeyDown
              Width = 100
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
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnEditar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton4'
              CaptionOptions.Visible = False
              Control = btnCancel_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnExcluir_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'UND'
              Control = edtUND
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 70
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Produto'
              Control = looComboxProduto
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 255
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Quantidade'
              Control = edtQTD
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarButton_delete: TdxBarButton
      Visible = ivNever
    end
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.IncrementalSearch = False
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\entrada estoque'
    end
  end
  inherited ActionList_1: TActionList
    inherited Action_delete: TAction
      Enabled = False
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
    Left = 496
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
    Active = True
    AfterInsert = qryAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT pro_enty.*, hex(pde_cod)as CodProEnty,hex(pro_enty.stock_' +
        'sto_cod)as CodStock, sto.sto_name,'#10'supp.sup_first_name, '
      
        'supp.sup_last_name, pur_ord.pco_id,pur_ord.pco_status,pur_ord.po' +
        'c_status_reason FROM product_entry as pro_enty'
      
        'left join purchase_order as pur_ord on pur_ord.pco_cod = pro_ent' +
        'y.purchase_order_pco_cod'
      'left join stock as sto on sto.sto_cod = pro_enty.stock_sto_cod'
      
        'left join supplier as supp on supp.sup_cod = pro_enty.supplier_s' +
        'up_cod'
      'where pro_enty.contract_ctr_cod =unhex(:ctr_cod)'#10
      
        'and sto.enterprise_ent_cod in (select enterprise_ent_cod '#10'from c' +
        'ontract_user_enterprise '
      
        'where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))'#10'and pde_de' +
        'leted_at is null')
    Left = 592
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
    object qrypde_cod: TBytesField
      FieldName = 'pde_cod'
      Origin = 'pde_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrysupplier_sup_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'supplier_sup_cod'
      Origin = 'supplier_sup_cod'
    end
    object qrypurchase_order_pco_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'purchase_order_pco_cod'
      Origin = 'purchase_order_pco_cod'
    end
    object qrystock_sto_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_cod'
      Origin = 'stock_sto_cod'
    end
    object qrypde_invoice: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pde_invoice'
      Origin = 'pde_invoice'
    end
    object qrypde_invoice_serie: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pde_invoice_serie'
      Origin = 'pde_invoice_serie'
    end
    object qrypde_invoice_dt_emission: TDateField
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
    object qrypde_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pde_id'
      Origin = 'pde_id'
    end
    object qrypde_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pde_status'
      Origin = 'pde_status'
      FixedChar = True
      Size = 1
    end
    object qrypde_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pde_deleted_at'
      Origin = 'pde_deleted_at'
    end
    object qrypde_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pde_dt_registration'
      Origin = 'pde_dt_registration'
    end
    object qryCodProEnty: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProEnty'
      Origin = 'CodProEnty'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qrysto_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_name'
      Origin = 'sto_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qrysup_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_first_name'
      Origin = 'sup_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qrysup_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_last_name'
      Origin = 'sup_last_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qrypco_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pco_id'
      Origin = 'pco_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrypco_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pco_status'
      Origin = 'pco_status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrypoc_status_reason: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'poc_status_reason'
      Origin = 'poc_status_reason'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
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
  inherited QImport3Wizard_1: TQImport3Wizard [11]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  object ds_product_entry_itens: TDataSource [12]
    DataSet = qry_product_entry_itens
    Left = 543
    Top = 98
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [13]
  end
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43285.658927395830000000
    Left = 231
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frxDBD_Entrada
        DataSetName = 'Stock_Entrada'
      end
      item
        DataSet = frxDBD_Entrada_Itens
        DataSetName = 'Stock_Entrada_Itens'
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
        Height = 158.740157480315000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Align = baHidden
          Top = 40.456710000000000000
          Width = 718.110700000000000000
          Height = 99.884883430000000000
          Frame.Typ = [ftLeft]
        end
        object Memo1: TfrxMemoView
          Left = 212.362400000000000000
          Top = 46.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status Entrada:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 4.338590000000000000
          Top = 46.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' do Pedido:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 4.338590000000000000
          Top = 68.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 4.338590000000000000
          Top = 91.488250000000000000
          Width = 94.488250000000000000
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
          Left = 4.338590000000000000
          Top = 114.606370000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Nota Fiscal:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 268.700990000000000000
          Top = 116.496135000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Emiss'#227'o:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 485.559370000000000000
          Top = 19.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Entrada:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 19.779530000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENTRADA DO ESTOQUE')
          ParentFont = False
        end
        object Stock_Entradapde_dt_registration: TfrxMemoView
          IndexTag = 1
          Left = 578.268090000000000000
          Top = 19.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'pde_dt_registration'
          DataSet = frxDBD_Entrada
          DataSetName = 'Stock_Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada."pde_dt_registration"]')
          ParentFont = False
        end
        object Stock_Entradapco_id: TfrxMemoView
          IndexTag = 1
          Left = 110.385900000000000000
          Top = 46.456710000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'pco_id'
          DataSet = frxDBD_Entrada
          DataSetName = 'Stock_Entrada'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada."pco_id"]')
        end
        object Stock_Entradapde_invoice_dt_emission: TfrxMemoView
          IndexTag = 1
          Left = 377.953000000000000000
          Top = 116.496135000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'pde_invoice_dt_emission'
          DataSet = frxDBD_Entrada
          DataSetName = 'Stock_Entrada'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada."pde_invoice_dt_emission"]')
        end
        object Stock_Entradapde_invoice: TfrxMemoView
          IndexTag = 1
          Left = 110.385900000000000000
          Top = 116.496135000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'pde_invoice'
          DataSet = frxDBD_Entrada
          DataSetName = 'Stock_Entrada'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada."pde_invoice"]')
        end
        object Stock_Entradasto_name: TfrxMemoView
          IndexTag = 1
          Left = 110.385900000000000000
          Top = 91.488250000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          DataField = 'sto_name'
          DataSet = frxDBD_Entrada
          DataSetName = 'Stock_Entrada'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada."sto_name"]')
        end
        object Stock_Entradasup_last_name: TfrxMemoView
          IndexTag = 1
          Left = 110.385900000000000000
          Top = 68.692950000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          DataField = 'sup_last_name'
          DataSet = frxDBD_Entrada
          DataSetName = 'Stock_Entrada'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada."sup_last_name"]')
        end
        object Stock_Entradapde_status: TfrxMemoView
          IndexTag = 1
          Left = 326.260050000000000000
          Top = 46.456710000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'pde_status'
          DataSet = frxDBD_Entrada
          DataSetName = 'Stock_Entrada'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada."pde_status"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Entrada_Itens
        DataSetName = 'Stock_Entrada_Itens'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 4.338590000000000000
          Top = 8.559060000000000000
          Width = 94.488250000000000000
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
        object Memo17: TfrxMemoView
          Left = 112.385900000000000000
          Top = 8.559060000000000000
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
        object Memo18: TfrxMemoView
          Left = 574.488560000000000000
          Top = 4.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 442.205010000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
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
        object Line2: TfrxLineView
          Top = 29.236240000000000000
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
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Entrada_Itens
        DataSetName = 'Stock_Entrada_Itens'
        RowCount = 0
        object Stock_Entrada_Itenspro_id: TfrxMemoView
          IndexTag = 1
          Left = 4.338590000000000000
          Top = 1.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSet = frxDBD_Entrada_Itens
          DataSetName = 'Stock_Entrada_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada_Itens."pro_name"]')
        end
        object Stock_Entrada_Itenspro_name: TfrxMemoView
          IndexTag = 1
          Left = 112.385900000000000000
          Top = 1.000000000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSet = frxDBD_Entrada_Itens
          DataSetName = 'Stock_Entrada_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada_Itens."pro_name"]')
        end
        object Stock_Entrada_Itenspru_initials: TfrxMemoView
          IndexTag = 1
          Left = 442.205010000000000000
          Top = 1.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'pru_initials'
          DataSet = frxDBD_Entrada_Itens
          DataSetName = 'Stock_Entrada_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada_Itens."pru_initials"]')
        end
        object Stock_Entrada_Itenspei_product_quant: TfrxMemoView
          IndexTag = 1
          Left = 574.488560000000000000
          Top = 1.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'pei_product_quant'
          DataSet = frxDBD_Entrada_Itens
          DataSetName = 'Stock_Entrada_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Entrada_Itens."pei_product_quant"]')
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 548.031850000000000000
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
        object Memo11: TfrxMemoView
          Left = 10.559060000000000000
          Top = 25.236240000000000000
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
        object Memo9: TfrxMemoView
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
        object Memo10: TfrxMemoView
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
  object ds_purchase_order: TDataSource
    DataSet = qry_purchase_order
    Left = 424
    Top = 88
  end
  object qry_supplier: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      #10'select sup_cod, contract_ctr_cod, sup_id, sup_first_name, '#10
      
        'sup_last_name, sup_cnpj, hex(sup_cod)as CodSupplier from supplie' +
        'r')
    Left = 576
    Top = 96
    object qry_suppliersup_cod: TBytesField
      FieldName = 'sup_cod'
      Origin = 'sup_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_suppliercontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_suppliersup_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sup_id'
      Origin = 'sup_id'
    end
    object qry_suppliersup_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_first_name'
      Origin = 'sup_first_name'
      Size = 85
    end
    object qry_suppliersup_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_last_name'
      Origin = 'sup_last_name'
      Size = 85
    end
    object qry_suppliersup_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_cnpj'
      Origin = 'sup_cnpj'
      Size = 25
    end
    object qry_supplierCodSupplier: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodSupplier'
      Origin = 'CodSupplier'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_supplier: TDataSource
    DataSet = qry_supplier
    Left = 608
    Top = 96
  end
  object qry_stock: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select st.sto_name, st.sto_cod, st.sto_id,st.contract_ctr_cod,st' +
        '.enterprise_ent_cod, hex(st.sto_cod) as codStock  from stock st'#13 +
        #10#10
      'left join contract co on co.ctr_cod = st.contract_ctr_cod'#13#10#10
      'left join enterprise en on en.ent_cod = st.enterprise_ent_cod '#10
      
        'where st.sto_status = '#39'A'#39' and st.contract_ctr_cod =unhex(:ctr_co' +
        'd)'#10
      'and st.enterprise_ent_cod in (select enterprise_ent_cod '
      
        'from contract_user_enterprise where contract_user_ctr_usr_cod =u' +
        'nhex(:ctr_usr_cod))')
    Left = 648
    Top = 96
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
    object qry_stocksto_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_name'
      Origin = 'sto_name'
      Size = 35
    end
    object qry_stocksto_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sto_id'
      Origin = 'sto_id'
    end
    object qry_stocksto_cod: TBytesField
      FieldName = 'sto_cod'
      Origin = 'sto_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_stockcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_stockenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object qry_stockcodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codStock'
      Origin = 'codStock'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_stock: TDataSource
    DataSet = qry_stock
    Left = 680
    Top = 96
  end
  object qry_product: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select hex(pro.pro_cod) as CodProduct, pro.pro_name, pro.pro_cod' +
        ', pro.contract_ctr_cod,'#10
      'uni.pru_name, uni.pru_initials, pro.pro_id from product as pro'#10
      
        'left join product_unit as uni on uni.pru_cod = pro.product_unit_' +
        'pru_cod '#13#10#10
      'where pro.pro_type = '#39'P'#39'  order by pro.pro_name')
    Left = 712
    Top = 96
    object qry_productCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_productpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 85
    end
    object qry_productpro_cod: TBytesField
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_productcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_productpru_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_name'
      Origin = 'pru_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_productpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_productpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 744
    Top = 96
  end
  object frxDBD_Entrada: TfrxDBDataset
    UserName = 'Stock_Entrada'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 160
    Top = 48
  end
  object frxDBD_Entrada_Itens: TfrxDBDataset
    UserName = 'Stock_Entrada_Itens'
    CloseDataSource = False
    DataSet = qry_product_entry_itens
    BCDToCurrency = False
    Left = 200
    Top = 48
  end
  object qry_purchase_order: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT pur_ord.*, hex(pur_ord.pco_cod)as CodPurchase, hex(pur_or' +
        'd'#10'.stock_sto_cod)as CodStock FROM purchase_order as pur_ord'#10
      'left join stock as sto on sto.sto_cod = pur_ord.stock_sto_cod'#10
      'where pur_ord.pco_status = '#39'L'#39' and pur_ord.pco_type = '#39'C'#39#10
      
        'and pur_ord.contract_ctr_cod =unhex(:ctr_cod)'#10'and sto.enterprise' +
        '_ent_cod in (select enterprise_ent_cod '#10'from contract_user_enter' +
        'prise'
      
        ' where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))'#10'and pco_d' +
        'eleted_at is null')
    Left = 394
    Top = 89
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
    object qry_purchase_orderpco_cod: TBytesField
      FieldName = 'pco_cod'
      Origin = 'pco_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_purchase_ordercontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_purchase_orderemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qry_purchase_orderstock_sto_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_cod'
      Origin = 'stock_sto_cod'
    end
    object qry_purchase_orderpco_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pco_id'
      Origin = 'pco_id'
    end
    object qry_purchase_orderpco_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pco_type'
      Origin = 'pco_type'
      FixedChar = True
      Size = 1
    end
    object qry_purchase_orderpoc_status_reason: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'poc_status_reason'
      Origin = 'poc_status_reason'
      Size = 45
    end
    object qry_purchase_orderpco_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pco_status'
      Origin = 'pco_status'
      FixedChar = True
      Size = 1
    end
    object qry_purchase_orderpco_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pco_deleted_at'
      Origin = 'pco_deleted_at'
    end
    object qry_purchase_orderpco_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pco_dt_registration'
      Origin = 'pco_dt_registration'
    end
    object qry_purchase_orderCodPurchase: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodPurchase'
      Origin = 'CodPurchase'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_purchase_orderCodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodStock'
      Origin = 'CodStock'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object qry_product_entry_itens: TFDQuery
    Active = True
    IndexFieldNames = 'product_entry_pde_cod'
    MasterSource = ds
    MasterFields = 'pde_cod'
    DetailFields = 'product_entry_pde_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT product_entry_itens.*,pro_id,pro_name, pru_name, pru_init' +
        'ials,'#10'hex(pei_cod)as CodEntyItens,'
      
        'hex(product_pro_cod)as CodProduct, '#10'hex(product_entry_pde_cod)as' +
        ' CodEntyPDE FROM product_entry_itens'#13#10#10
      
        'left join product on pro_cod = product_pro_cod'#10'left join product' +
        '_unit on pru_cod = product_unit_pru_cod'#13#10#10
      'where product_entry_pde_cod =:pde_cod ')
    Left = 512
    Top = 96
    ParamData = <
      item
        Name = 'PDE_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_product_entry_itenspei_cod: TBytesField
      FieldName = 'pei_cod'
      Origin = 'pei_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_entry_itensproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_product_entry_itensproduct_entry_pde_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_entry_pde_cod'
      Origin = 'product_entry_pde_cod'
    end
    object qry_product_entry_itenspei_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pei_id'
      Origin = 'pei_id'
    end
    object qry_product_entry_itenspei_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pei_product_quant'
      Origin = 'pei_product_quant'
      Precision = 12
    end
    object qry_product_entry_itenspei_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pei_deleted_at'
      Origin = 'pei_deleted_at'
    end
    object qry_product_entry_itenspei_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pei_dt_registration'
      Origin = 'pei_dt_registration'
    end
    object qry_product_entry_itenspro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_product_entry_itenspro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_product_entry_itenspru_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_name'
      Origin = 'pru_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_product_entry_itenspru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_product_entry_itensCodEntyItens: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEntyItens'
      Origin = 'CodEntyItens'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_product_entry_itensCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_product_entry_itensCodEntyPDE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEntyPDE'
      Origin = 'CodEntyPDE'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object Action_entry_itens: TActionList
    Images = cxImageList_1
    Left = 880
    Top = 96
    object act_save_entry_itens: TAction
      Hint = 'Salvar'
      ImageIndex = 6
      OnExecute = act_save_entry_itensExecute
    end
    object act_edit_entry_itens: TAction
      Hint = 'Editar'
      ImageIndex = 5
      OnExecute = act_edit_entry_itensExecute
    end
    object act_cancel_entry_itens: TAction
      Hint = 'Cancelar'
      ImageIndex = 7
      OnExecute = act_cancel_entry_itensExecute
    end
    object act_delete_entry_itens: TAction
      Hint = 'Excluir'
      ImageIndex = 8
      OnExecute = act_delete_entry_itensExecute
    end
  end
  object pupMenuRequisicao: TPopupMenu
    Left = 847
    Top = 96
    object Excluir2: TMenuItem
      Action = act_delete_entry_itens
      Caption = 'Excluir'
    end
    object Editar2: TMenuItem
      Action = act_edit_entry_itens
      Caption = 'Editar'
    end
    object Cancelar1: TMenuItem
      Action = act_cancel_entry_itens
      Caption = 'Cancelar'
    end
  end
  object qry_stock_iten: TFDQuery
    Active = True
    IndexFieldNames = 'stock_sto_cod'
    MasterSource = ds
    MasterFields = 'stock_sto_cod'
    DetailFields = 'stock_sto_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select stock_iten.*,hex(stock_sto_cod)as CodStock, hex(product_p' +
        'ro_cod)as CodProduct from stock_iten'
      'where stock_sto_cod = :stock_sto_cod')
    Left = 352
    Top = 88
    ParamData = <
      item
        Name = 'STOCK_STO_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 45
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
  end
end
