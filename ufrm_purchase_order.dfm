inherited frm_purchase_order: Tfrm_purchase_order
  Caption = 'Manuten'#231#227'o: Pedidos de Compra'
  ClientHeight = 640
  ClientWidth = 1018
  OnClose = FormClose
  ExplicitWidth = 1034
  ExplicitHeight = 679
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage [0]
    Left = 0
    Top = 55
    Width = 1018
    Height = 585
    Align = alClient
    ExplicitLeft = 344
    ExplicitTop = 247
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  inherited cxPageControl_1: TcxPageControl
    Width = 1018
    Height = 585
    ExplicitWidth = 1018
    ExplicitHeight = 585
    ClientRectBottom = 579
    ClientRectRight = 1012
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1010
      ExplicitHeight = 551
      inherited cxGrid_1: TcxGrid
        Width = 1004
        Height = 545
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 1004
        ExplicitHeight = 545
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid_1DBTableView1CustomDrawCell
          object cxGrid_1DBTableView1pco_id: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'pco_id'
            Width = 75
          end
          object cxGrid_1DBTableView1sto_name: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'sto_name'
            Width = 250
          end
          object cxGrid_1DBTableView1Funcionario: TcxGridDBColumn
            Caption = 'Funcion'#225'rio'
            DataBinding.FieldName = 'Funcionario'
            Width = 250
          end
          object cxGrid_1DBTableView1pco_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'pco_status'
            Width = 50
          end
          object cxGrid_1DBTableView1poc_status_reason: TcxGridDBColumn
            Caption = 'Descri'#231#227'o Status'
            DataBinding.FieldName = 'poc_status_reason'
            Width = 250
          end
          object cxGrid_1DBTableView1pco_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg'
            DataBinding.FieldName = 'pco_dt_registration'
            Width = 125
          end
        end
      end
      object FlowPanel1: TFlowPanel
        Left = 3
        Top = 497
        Width = 662
        Height = 26
        Alignment = taLeftJustify
        Anchors = [akLeft, akBottom]
        TabOrder = 1
        object Shape1: TShape
          Left = 1
          Top = 1
          Width = 18
          Height = 24
          Brush.Color = 33023
          DragCursor = crDefault
          Pen.Color = 4227327
          Shape = stCircle
        end
        object lbAberto: TLabel
          Left = 19
          Top = 1
          Width = 84
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          Caption = ' - (A) Aberto'
          DragCursor = crDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          OnClick = lbAbertoClick
        end
        object Shape2: TShape
          Left = 103
          Top = 1
          Width = 18
          Height = 24
          Brush.Color = clRed
          DragCursor = crDefault
          Pen.Color = 4227327
          Shape = stCircle
        end
        object lbCancelado: TLabel
          Left = 121
          Top = 1
          Width = 96
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          Caption = ' - (C) Cancelado'
          DragCursor = crDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          OnClick = lbCanceladoClick
        end
        object Shape3: TShape
          Left = 217
          Top = 1
          Width = 18
          Height = 24
          Brush.Color = clBlue
          DragCursor = crDefault
          Pen.Color = 4227327
          Shape = stCircle
        end
        object lbFechado: TLabel
          Left = 235
          Top = 1
          Width = 84
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          Caption = '- (F) Fechado'
          DragCursor = crDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          OnClick = lbFechadoClick
        end
        object Shape4: TShape
          Left = 319
          Top = 1
          Width = 18
          Height = 24
          Brush.Color = clGreen
          DragCursor = crDefault
          Pen.Color = 4227327
          Shape = stCircle
        end
        object lbLiberado: TLabel
          Left = 337
          Top = 1
          Width = 72
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          Caption = '- (L) Liberado'
          DragCursor = crDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          OnClick = lbLiberadoClick
        end
        object Shape5: TShape
          Left = 409
          Top = 1
          Width = 18
          Height = 24
          Brush.Color = clBlack
          DragCursor = crDefault
          Pen.Color = 4227327
          Shape = stCircle
        end
        object lbTodos: TLabel
          Left = 427
          Top = 1
          Width = 84
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          Caption = ' - (T) Todos'
          DragCursor = crDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          OnClick = lbTodosClick
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1010
      ExplicitHeight = 551
      inherited cxPageControl_2: TcxPageControl
        Width = 1004
        Height = 545
        ExplicitWidth = 1004
        ExplicitHeight = 545
        ClientRectBottom = 539
        ClientRectRight = 998
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 996
          ExplicitHeight = 511
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 996
            Height = 511
            ExplicitWidth = 996
            ExplicitHeight = 511
            inherited dbedt_id: TcxDBTextEdit
              Left = 61
              DataBinding.DataField = 'pco_id'
              ExplicitLeft = 61
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 234
              DataBinding.DataField = 'pco_dt_registration'
              ExplicitLeft = 234
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 195
              Width = 768
              Height = 200
              PopupMenu = pupMenuPedido
              TabOrder = 6
              object cxGrid1DBTableView1: TcxGridDBTableView
                PopupMenu = pupMenuPedido
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = ds_purchase_order_iten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                object cxGrid1DBTableView1poi_id: TcxGridDBColumn
                  Caption = 'C'#243'digo ID'
                  DataBinding.FieldName = 'poi_id'
                  Width = 70
                end
                object cxGrid1DBTableView1pro_name: TcxGridDBColumn
                  Caption = 'Produto'
                  DataBinding.FieldName = 'pro_name'
                  Width = 300
                end
                object cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'poi_product_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0.000;-0.000'
                  Width = 100
                end
                object cxGrid1DBTableView1pru_initials: TcxGridDBColumn
                  Caption = 'Und'
                  DataBinding.FieldName = 'pru_initials'
                  Width = 70
                end
                object cxGrid1DBTableView1poi_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'poi_dt_registration'
                  Width = 110
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object looComboxProduto: TcxLookupComboBox [3]
              Left = 62
              Top = 401
              Properties.GridMode = True
              Properties.KeyFieldNames = 'proCod'
              Properties.ListColumns = <
                item
                  FieldName = 'pro_name'
                end>
              Properties.ListSource = ds_product
              Properties.OnCloseUp = looComboxProdutoPropertiesCloseUp
              Properties.OnPopup = cxLookupComboBox1PropertiesPopup
              Style.HotTrack = False
              TabOrder = 7
              Width = 356
            end
            object btnSalvar_Item: TcxButton [4]
              Left = 667
              Top = 401
              Width = 25
              Height = 24
              Action = act_save_purchase_order_iten
              OptionsImage.Images = cxImageList_1
              TabOrder = 10
            end
            object btnEditar_Item: TcxButton [5]
              Left = 698
              Top = 401
              Width = 25
              Height = 25
              Action = act_edit_purchase_order_iten
              OptionsImage.Images = cxImageList_1
              TabOrder = 11
            end
            object btnCancel_Item: TcxButton [6]
              Left = 729
              Top = 401
              Width = 25
              Height = 25
              Action = act_cancel_purchase_order_iten
              OptionsImage.Images = cxImageList_1
              TabOrder = 12
            end
            object btnExcluir_Item: TcxButton [7]
              Left = 760
              Top = 401
              Width = 25
              Height = 25
              Action = act_delete_purchase_order_iten
              OptionsImage.Images = cxImageList_1
              TabOrder = 13
            end
            object edtUnd: TcxTextEdit [8]
              Left = 448
              Top = 401
              Enabled = False
              Style.HotTrack = False
              TabOrder = 8
              Width = 50
            end
            object edtQTD: TcxCurrencyEdit [9]
              Left = 565
              Top = 401
              Properties.DisplayFormat = '0.000;-,0.000'
              Style.HotTrack = False
              TabOrder = 9
              OnKeyDown = edtQTDKeyDown
              Width = 96
            end
            object cxDBComboBox1: TcxDBComboBox [10]
              Left = 61
              Top = 130
              DataBinding.DataField = 'pco_status'
              DataBinding.DataSource = ds
              Enabled = False
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ABERTO'
                'F - FECHADO'
                'C - CANCELADO')
              Style.HotTrack = False
              TabOrder = 4
              Width = 50
            end
            object lookupComboxStock: TcxLookupComboBox [11]
              Left = 61
              Top = 103
              Properties.GridMode = True
              Properties.KeyFieldNames = 'sto_name'
              Properties.ListColumns = <
                item
                  FieldName = 'sto_name'
                end>
              Properties.ListSource = ds_stock
              Properties.OnPopup = lookupComboxStockPropertiesPopup
              Style.HotTrack = False
              TabOrder = 2
              Width = 270
            end
            object cxDBTextEdit2: TcxDBTextEdit [12]
              Left = 154
              Top = 130
              DataBinding.DataField = 'poc_status_reason'
              DataBinding.DataSource = ds
              Enabled = False
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 513
            end
            object lookupComboxEmployee: TcxLookupComboBox [13]
              Left = 397
              Top = 103
              Properties.GridMode = True
              Properties.KeyFieldNames = 'rec_name'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_employee
              Properties.OnPopup = cxLookupComboBox2PropertiesPopup
              Style.HotTrack = False
              TabOrder = 3
              Width = 270
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahLeft
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 782
              ItemIndex = 1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Itens do Pedido de Compra'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 150
              SizeOptions.Width = 765
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
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
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Produto'
              Offsets.Left = 2
              Control = looComboxProduto
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 356
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnEditar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnCancel_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnExcluir_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Und'
              Control = edtUnd
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 50
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Quantidade'
              Control = edtQTD
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 96
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 50
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Estoque'
              Control = lookupComboxStock
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 270
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Motivo'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 513
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Funcion'#225'rio'
              Control = lookupComboxEmployee
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 270
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
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
  inherited dxBarDockControl_1: TdxBarDockControl
    Width = 1018
    ExplicitWidth = 1018
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarManager_1Bar2: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem_1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 133
          Visible = True
          ItemName = 'cxlooComBoxRep'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_report_edit'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_report_preview'
        end>
    end
    inherited dxBarManager_1Bar4: TdxBar
      DockedLeft = 515
    end
    inherited dxBarManager_1Bar5: TdxBar
      DockedLeft = 664
    end
    inherited dxBarManager_1Bar6: TdxBar
      DockedLeft = 810
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxCancelPed'
        end
        item
          Visible = True
          ItemName = 'dxLiberarPed'
        end>
    end
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\pedido de compra'
    end
    object dxCancelPed: TdxBarButton [25]
      Caption = 'Cancelar Pedido'
      Category = 0
      Hint = 'Cancelar Pedido de Compra'
      Visible = ivAlways
      OnClick = dxCancelPedClick
    end
    object dxLiberarPed: TdxBarButton [26]
      Caption = 'Liberar Pedido'
      Category = 0
      Hint = 'Liberar Pedido de Compra'
      Visible = ivAlways
      OnClick = dxLiberarPedClick
    end
  end
  inherited ActionList_1: TActionList
    inherited Action_print_edit: TAction
      AutoCheck = True
      OnExecute = Action_print_editExecute
    end
  end
  inherited ds: TDataSource
    OnDataChange = dsDataChange
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 456
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select pur.*, hex(pco_cod)as CodPurchase, sto_name from purchase' +
        '_order as pur'#10
      'left join stock as sto on sto.sto_cod = pur.stock_sto_cod'#10
      
        'where pur.pco_type = '#39'C'#39' and pur.contract_ctr_cod =unhex(:ctr_co' +
        'd)'#10
      
        'and sto.enterprise_ent_cod in (select enterprise_ent_cod '#10'from c' +
        'ontract_user_enterprise'
      
        ' where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))'#10'and pco_d' +
        'eleted_at is null')
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
    object qrypco_cod: TBytesField
      FieldName = 'pco_cod'
      Origin = 'pco_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qrystock_sto_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_cod'
      Origin = 'stock_sto_cod'
    end
    object qrypco_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pco_id'
      Origin = 'pco_id'
    end
    object qrypco_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pco_type'
      Origin = 'pco_type'
      FixedChar = True
      Size = 1
    end
    object qrypoc_status_reason: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'poc_status_reason'
      Origin = 'poc_status_reason'
      Size = 45
    end
    object qrypco_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pco_status'
      Origin = 'pco_status'
      FixedChar = True
      Size = 1
    end
    object qrypco_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pco_deleted_at'
      Origin = 'pco_deleted_at'
    end
    object qrypco_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pco_dt_registration'
      Origin = 'pco_dt_registration'
    end
    object qryCodPurchase: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodPurchase'
      Origin = 'CodPurchase'
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
    object qryFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = qry_employee
      LookupKeyFields = 'emp_cod'
      LookupResultField = 'rec_name'
      KeyFields = 'employee_emp_cod'
      Size = 60
      Lookup = True
    end
  end
  inherited ACBrEnterTab_1: TACBrEnterTab
    Left = 520
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
    ReportOptions.LastChange = 43287.584886122680000000
    Left = 551
    Top = 96
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frxDBD_Pedido_Itens
        DataSetName = 'purchase_Itens'
      end
      item
        DataSet = frxDBD_Pedido_Compra
        DataSetName = 'purchase_order'
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
        Height = 158.740157480000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Top = 37.436800020000000000
          Width = 718.110700000000000000
          Height = 99.830979980000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Top = 110.708720000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Funcion'#225'rio:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.889763780000000000
          Top = 64.015770000000000000
          Width = 90.708720000000000000
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
        object purchase_orderpco_status: TfrxMemoView
          IndexTag = 1
          Left = 103.606370000000000000
          Top = 64.015770000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'pco_status'
          DataSet = frxDBD_Pedido_Compra
          DataSetName = 'purchase_order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_order."pco_status"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 1.889763780000000000
          Top = 39.779530000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'N'#186' do Pedido:  [purchase_order."pco_id"]  -  Data: [purchase_ord' +
              'er."pco_dt_registration"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object purchase_orderFuncionario: TfrxMemoView
          IndexTag = 1
          Left = 103.606370000000000000
          Top = 110.708720000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          DataField = 'Funcionario'
          DataSet = frxDBD_Pedido_Compra
          DataSetName = 'purchase_order'
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_order."Funcionario"]')
        end
        object purchase_ordersto_name: TfrxMemoView
          IndexTag = 1
          Left = 103.606370000000000000
          Top = 87.692950000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          DataField = 'sto_name'
          DataSet = frxDBD_Pedido_Compra
          DataSetName = 'purchase_order'
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_order."sto_name"]')
        end
        object Memo8: TfrxMemoView
          Left = 1.889763780000000000
          Top = 87.692950000000000000
          Width = 90.708720000000000000
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
        object purchase_orderpoc_status_reason: TfrxMemoView
          IndexTag = 1
          Left = 287.480520000000000000
          Top = 64.015770000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          DataField = 'poc_status_reason'
          DataSet = frxDBD_Pedido_Compra
          DataSetName = 'purchase_order'
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_order."poc_status_reason"]')
        end
        object Memo17: TfrxMemoView
          Left = 189.433210000000000000
          Top = 64.015770000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Obs. Status:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.338590000000000000
          Top = 17.000000000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO DE COMPRA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Pedido_Itens
        DataSetName = 'purchase_Itens'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 1.889763780000000000
          Top = 10.559060000000000000
          Width = 86.929190000000000000
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
        object Line1: TfrxLineView
          Left = 3.118120000000000000
          Top = 32.236240000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 104.385900000000000000
          Top = 10.559060000000000000
          Width = 181.417440000000000000
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
        object Memo6: TfrxMemoView
          Left = 590.590910000000000000
          Top = 10.559060000000000000
          Width = 102.047310000000000000
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
        object Memo18: TfrxMemoView
          Left = 472.441250000000000000
          Top = 10.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Pedido_Itens
        DataSetName = 'purchase_Itens'
        RowCount = 0
        object purchase_Itensproduct_pro_id: TfrxMemoView
          IndexTag = 1
          Left = 1.889763780000000000
          Top = 1.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'pro_id'
          DataSet = frxDBD_Pedido_Itens
          DataSetName = 'purchase_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_Itens."pro_id"]')
        end
        object purchase_ItensProduto: TfrxMemoView
          IndexTag = 1
          Left = 104.385900000000000000
          Top = 1.779530000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSet = frxDBD_Pedido_Itens
          DataSetName = 'purchase_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_Itens."pro_name"]')
        end
        object purchase_Itenspru_initials: TfrxMemoView
          IndexTag = 1
          Left = 472.441250000000000000
          Top = 1.779530000000020000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'pru_initials'
          DataSet = frxDBD_Pedido_Itens
          DataSetName = 'purchase_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_Itens."pru_initials"]')
        end
        object purchase_Itenspoi_product_quant: TfrxMemoView
          IndexTag = 1
          Left = 590.590910000000000000
          Top = 1.779530000000020000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'poi_product_quant'
          DataSet = frxDBD_Pedido_Itens
          DataSetName = 'purchase_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[purchase_Itens."poi_product_quant"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 177.637910000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 6.559060000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 154.960730000000000000
          Top = 141.063080000000000000
          Width = 400.630180000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.811070000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Mamaus / Amazonas - [FormatDateTime('#39'DDDDDD'#39',Date)]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo12: TfrxMemoView
          Left = 151.181200000000000000
          Top = 140.622140000000000000
          Width = 404.409710000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[purchase_order."Funcionario"]'
            'Requerente')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 702.992580000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
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
        object Memo21: TfrxMemoView
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
  object ds_purchase_order_iten: TDataSource
    DataSet = qry_purchase_order_iten
    Left = 824
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
      
        'select hex(pro.pro_cod) as proCod, pro.pro_name, pro.pro_cod, pr' +
        'o.contract_ctr_cod,'#10
      'uni.pru_name, uni.pru_initials, pro.pro_id from product as pro'#10
      
        'left join product_unit as uni on uni.pru_cod = pro.product_unit_' +
        'pru_cod '#13#10#10
      'where pro.pro_type = '#39'P'#39'  order by pro.pro_name')
    Left = 664
    Top = 96
    object qry_productproCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proCod'
      Origin = 'proCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
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
    object qry_productpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
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
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 696
    Top = 96
  end
  object qry_employee: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select e.emp_cod, e.emp_id, e.record_rec_cod, e.emp_type, e.emp_' +
        'status, r.rec_name, e.contract_ctr_cod,'
      'hex(e.emp_cod) as codEmployee from employee as e'#10
      'inner join record as r on e.record_rec_cod = r.rec_cod'#10
      'where e.emp_status = '#39'A'#39
      'and e.contract_ctr_cod =:ctr_cod')
    Left = 728
    Top = 96
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_employeeemp_cod: TBytesField
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_employeeemp_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'emp_id'
      Origin = 'emp_id'
    end
    object qry_employeerecord_rec_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'record_rec_cod'
      Origin = 'record_rec_cod'
    end
    object qry_employeeemp_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_type'
      Origin = 'emp_type'
      FixedChar = True
      Size = 1
    end
    object qry_employeeemp_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_status'
      Origin = 'emp_status'
      FixedChar = True
      Size = 1
    end
    object qry_employeerec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_employeecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_employeecodEmployee: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codEmployee'
      Origin = 'codEmployee'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
  end
  object ds_employee: TDataSource
    DataSet = qry_employee
    Left = 760
    Top = 96
  end
  object frxDBD_Pedido_Compra: TfrxDBDataset
    UserName = 'purchase_order'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 520
    Top = 96
  end
  object frxDBD_Pedido_Itens: TfrxDBDataset
    UserName = 'purchase_Itens'
    CloseDataSource = False
    DataSet = qry_purchase_order_iten
    BCDToCurrency = False
    Left = 488
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
    Left = 600
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
    object qry_stocksto_cod: TBytesField
      FieldName = 'sto_cod'
      Origin = 'sto_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_stocksto_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sto_id'
      Origin = 'sto_id'
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
    Left = 632
    Top = 96
  end
  object pupMenuPedido: TPopupMenu
    Left = 903
    Top = 50
    object Excluir2: TMenuItem
      Action = act_delete_purchase_order_iten
      Caption = 'Excluir'
    end
    object Editar2: TMenuItem
      Action = act_edit_purchase_order_iten
      Caption = 'Editar'
    end
    object Cancelar1: TMenuItem
      Action = act_cancel_purchase_order_iten
      Caption = 'Cancelar'
    end
  end
  object Action_purchase_order: TActionList
    Images = cxImageList_1
    Left = 896
    Top = 152
    object act_save_purchase_order_iten: TAction
      Hint = 'Salvar'
      ImageIndex = 6
      OnExecute = act_save_purchase_order_itenExecute
    end
    object act_edit_purchase_order_iten: TAction
      Hint = 'Editar'
      ImageIndex = 5
      OnExecute = act_edit_purchase_order_itenExecute
    end
    object act_cancel_purchase_order_iten: TAction
      Hint = 'Cancelar'
      ImageIndex = 7
      OnExecute = act_cancel_purchase_order_itenExecute
    end
    object act_delete_purchase_order_iten: TAction
      Hint = 'Excluir'
      ImageIndex = 8
      OnExecute = act_delete_purchase_order_itenExecute
    end
  end
  object qry_purchase_order_iten: TFDQuery
    Active = True
    IndexFieldNames = 'purchase_order_pco_cod'
    MasterSource = ds
    MasterFields = 'pco_cod'
    DetailFields = 'purchase_order_pco_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select purchase_order_iten.*, hex(product_pro_cod)as codProduct,' +
        'pro_id, '#10'pro_name, pru_name, pru_initials, '
      'hex(poi_cod)as iten_Cod  from purchase_order_iten'#13#10#10
      'left join product on pro_cod = product_pro_cod'#13#10#10
      'left join product_unit on pru_cod = product_unit_pru_cod'#13#10#10
      'where purchase_order_pco_cod = :pco_cod')
    Left = 795
    Top = 97
    ParamData = <
      item
        Name = 'PCO_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_purchase_order_itenpoi_cod: TBytesField
      FieldName = 'poi_cod'
      Origin = 'poi_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_purchase_order_itenpurchase_order_pco_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'purchase_order_pco_cod'
      Origin = 'purchase_order_pco_cod'
    end
    object qry_purchase_order_itenproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_purchase_order_itenpoi_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'poi_id'
      Origin = 'poi_id'
    end
    object qry_purchase_order_itenpoi_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'poi_product_quant'
      Origin = 'poi_product_quant'
      EditFormat = '0.000;-0.000'
      Precision = 12
    end
    object qry_purchase_order_itenpoi_product_quant_served: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'poi_product_quant_served'
      Origin = 'poi_product_quant_served'
      EditFormat = '0.000;-0.000'
      Precision = 12
    end
    object qry_purchase_order_itenpoi_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'poi_deleted_at'
      Origin = 'poi_deleted_at'
    end
    object qry_purchase_order_itenpoi_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'poi_dt_registration'
      Origin = 'poi_dt_registration'
    end
    object qry_purchase_order_itenpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_purchase_order_itenpru_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_name'
      Origin = 'pru_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_purchase_order_itenpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_purchase_order_iteniten_Cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_Cod'
      Origin = 'iten_Cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_purchase_order_itencodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codProduct'
      Origin = 'codProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_purchase_order_itenpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
