inherited frm_request: Tfrm_request
  Caption = 'Manuten'#231#227'o: Pedido de Requisi'#231#227'o '
  ClientHeight = 668
  ClientWidth = 932
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 948
  ExplicitHeight = 707
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Width = 932
    Height = 613
    ExplicitWidth = 932
    ExplicitHeight = 613
    ClientRectBottom = 607
    ClientRectRight = 926
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 924
      ExplicitHeight = 579
      inherited cxGrid_1: TcxGrid
        Width = 918
        Height = 573
        ExplicitWidth = 918
        ExplicitHeight = 573
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid_1DBTableView1CustomDrawCell
          OnFilterDialogShow = cxGrid_1DBTableView1FilterDialogShow
          object cxGrid_1DBTableView1pco_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
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
            Width = 75
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
        Left = 6
        Top = 524
        Width = 659
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
        object SpeedButton2: TSpeedButton
          Left = 511
          Top = 1
          Width = 35
          Height = 22
          Caption = 'salve'
          OnClick = SpeedButton2Click
        end
        object SpeedButton1: TSpeedButton
          Left = 546
          Top = 1
          Width = 40
          Height = 22
          Caption = 'print'
          OnClick = SpeedButton1Click
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      OnShow = cxTabSheet_2Show
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 924
      ExplicitHeight = 579
      inherited cxPageControl_2: TcxPageControl
        Width = 918
        Height = 573
        ExplicitWidth = 918
        ExplicitHeight = 573
        ClientRectBottom = 567
        ClientRectRight = 912
        inherited cxTabSheet_3: TcxTabSheet
          OnShow = cxTabSheet_3Show
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 910
          ExplicitHeight = 539
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 910
            Height = 539
            ExplicitWidth = 910
            ExplicitHeight = 539
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
              Width = 733
              Height = 200
              PopupMenu = pupMenuRequisicao
              TabOrder = 6
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Enabled = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Enabled = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Enabled = False
                Navigator.Buttons.Append.Visible = False
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
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Buttons.Filter.Visible = False
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
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.GridMode = True
                  Properties.KeyFieldNames = 'pro_name'
                  Properties.ListColumns = <
                    item
                      FieldName = 'pro_name'
                    end>
                  Properties.ListSource = ds_product
                  Width = 250
                end
                object cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'poi_product_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.000;-0.000'
                  Width = 100
                end
                object cxGrid1DBTableView1pru_initials: TcxGridDBColumn
                  Caption = 'Und'
                  DataBinding.FieldName = 'pru_initials'
                  Width = 80
                end
                object cxGrid1DBTableView1poi_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'poi_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBTextEdit3: TcxDBTextEdit [3]
              Left = 154
              Top = 130
              DataBinding.DataField = 'poc_status_reason'
              DataBinding.DataSource = ds
              Enabled = False
              Style.HotTrack = False
              TabOrder = 5
              Width = 513
            end
            object looComboxSolicitante: TcxLookupComboBox [4]
              Left = 61
              Top = 103
              Properties.GridMode = True
              Properties.KeyFieldNames = 'sto_name'
              Properties.ListColumns = <
                item
                  FieldName = 'sto_name'
                end>
              Properties.ListSource = ds_stock
              Style.HotTrack = False
              TabOrder = 2
              Width = 270
            end
            object looComboxFuncionario: TcxLookupComboBox [5]
              Left = 397
              Top = 103
              Properties.GridMode = True
              Properties.KeyFieldNames = 'rec_name'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_employee
              Style.HotTrack = False
              TabOrder = 3
              Width = 270
            end
            object edtQTD: TcxCurrencyEdit [6]
              Left = 522
              Top = 401
              Properties.DisplayFormat = '0.000;-0.000'
              Style.HotTrack = False
              TabOrder = 9
              OnKeyDown = edtQTDKeyDown
              Width = 104
            end
            object btnSalvar_Item: TcxButton [7]
              Left = 632
              Top = 401
              Width = 25
              Height = 25
              Action = act_save_request_itns
              TabOrder = 10
            end
            object btnEditar_Item: TcxButton [8]
              Left = 663
              Top = 401
              Width = 25
              Height = 25
              Action = act_edit_request_itens
              TabOrder = 11
            end
            object btnCancel_Item: TcxButton [9]
              Left = 694
              Top = 401
              Width = 25
              Height = 25
              Action = act_cancel_request_itens
              TabOrder = 12
            end
            object btnExcluir_Item: TcxButton [10]
              Left = 725
              Top = 401
              Width = 25
              Height = 25
              Action = act_delete_request_itens
              TabOrder = 13
            end
            object edtUND: TcxTextEdit [11]
              Left = 396
              Top = 401
              Enabled = False
              Style.HotTrack = False
              TabOrder = 8
              Width = 59
            end
            object looComboxProduto: TcxLookupComboBox [12]
              Left = 61
              Top = 401
              Properties.GridMode = True
              Properties.KeyFieldNames = 'pro_name'
              Properties.ListColumns = <
                item
                  FieldName = 'pro_name'
                end>
              Properties.ListSource = ds_product
              Properties.OnCloseUp = looComboxProdutoPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 7
              Width = 303
            end
            object cxDBTextEdit2: TcxDBTextEdit [13]
              Left = 61
              Top = 130
              DataBinding.DataField = 'pco_status'
              DataBinding.DataSource = ds
              Enabled = False
              Style.HotTrack = False
              TabOrder = 4
              Width = 50
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Itens da Requisi'#231#227'o'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 2
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Motivo'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 513
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Estoque'
              Control = looComboxSolicitante
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 270
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'Funcion'#225'rio'
              Control = looComboxFuncionario
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 270
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Quantidade'
              Control = edtQTD
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 104
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnEditar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnCancel_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              CaptionOptions.Text = 'cxButton4'
              CaptionOptions.Visible = False
              Control = btnExcluir_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'UND'
              Control = edtUND
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Produto'
              Control = looComboxProduto
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 50
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarDockControl_1: TdxBarDockControl
    Width = 932
    ExplicitWidth = 932
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarManager_1Bar6: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxCancelReq'
        end
        item
          Visible = True
          ItemName = 'dxLibRequ'
        end>
    end
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.DropDownWidth = 250
      Properties.IncrementalSearch = False
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\requesicao'
    end
    object dxCancelReq: TdxBarButton
      Caption = 'Cancelar Requisi'#231#227'o'
      Category = 0
      Hint = 'Cancelar Requisi'#231#227'o'
      Visible = ivAlways
      OnClick = dxCancelReqClick
    end
    object dxLibRequ: TdxBarButton
      Caption = 'Liberar Requisi'#231#227'o'
      Category = 0
      Hint = 'Liberar Requisi'#231#227'o'
      Visible = ivAlways
      OnClick = dxLibRequClick
    end
  end
  inherited ds: TDataSource
    OnDataChange = dsDataChange
    Left = 615
  end
  inherited PopupMenu_1: TPopupMenu
    Left = 456
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 376
    Top = 0
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select pur.*, hex(pco_cod)as CodPurchase, sto_name from purchase' +
        '_order as pur'#10
      'left join stock as sto on sto.sto_cod = pur.stock_sto_cod'#10
      
        'where pur.pco_type = '#39'R'#39' and pur.contract_ctr_cod =unhex(:ctr_co' +
        'd)'#10
      
        'and sto.enterprise_ent_cod in (select enterprise_ent_cod '#10'from c' +
        'ontract_user_enterprise'
      
        ' where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))'#10'and pco_d' +
        'eleted_at is null')
    Left = 585
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
    Left = 424
  end
  inherited QExport4Dialog_1: TQExport4Dialog
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
    Left = 344
    Top = 0
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  object qry_employee: TFDQuery [13]
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select e.emp_cod, e.record_rec_cod, e.emp_type, e.emp_status, r.' +
        'rec_name, e.contract_ctr_cod from employee as e'#10
      'inner join record as r on e.record_rec_cod = r.rec_cod'
      'where e.contract_ctr_cod =:ctr_cod')
    Left = 664
    Top = 88
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 34
        Value = Null
      end>
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
      DisplayLabel = 'Nome'
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_employeeemp_cod: TBytesField
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_employeerecord_rec_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'record_rec_cod'
      Origin = 'record_rec_cod'
    end
    object qry_employeecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
  end
  object ds_employee: TDataSource [14]
    DataSet = qry_employee
    Left = 695
    Top = 88
  end
  object ds_stock: TDataSource [15]
    DataSet = qry_stock
    Left = 624
    Top = 88
  end
  object ds_purchase_order_iten: TDataSource [16]
    DataSet = qry_purchase_order_iten
    Left = 699
    Top = 343
  end
  object ds_product: TDataSource [17]
    DataSet = qry_product
    Left = 705
    Top = 136
  end
  object qry_product: TFDQuery [18]
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
    Left = 672
    Top = 136
    object qry_productproCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proCod'
      Origin = 'proCod'
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
    object qry_productpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
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
  inherited FDSchemaAdapter_1: TFDSchemaAdapter
    Top = 50
  end
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43285.646070636600000000
    Left = 500
    Top = 0
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frx_db_ItensRequisicao
        DataSetName = 'ItensRequisicao'
      end
      item
        DataSet = frx_db_parameter_stock
        DataSetName = 'paramentros'
      end
      item
        DataSet = frx_db_Requisicao
        DataSetName = 'Requisicao'
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
          Top = 41.236240000000000000
          Width = 718.110700000000000000
          Height = 96.105353430000000000
          Frame.Typ = [ftLeft]
        end
        object Requisicaosto_name: TfrxMemoView
          IndexTag = 1
          Left = 109.606370000000000000
          Top = 90.370130000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          DataField = 'sto_name'
          DataSet = frx_db_Requisicao
          DataSetName = 'Requisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Requisicao."sto_name"]')
        end
        object RequisicaoFuncionario: TfrxMemoView
          IndexTag = 1
          Left = 109.606370000000000000
          Top = 113.047310000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          DataField = 'Funcionario'
          DataSet = frx_db_Requisicao
          DataSetName = 'Requisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Requisicao."Funcionario"]')
        end
        object Requisicaopco_status: TfrxMemoView
          IndexTag = 1
          Left = 109.606370000000000000
          Top = 67.692950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'pco_status'
          DataSet = frx_db_Requisicao
          DataSetName = 'Requisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Requisicao."pco_status"]')
        end
        object Requisicaopoc_status_reason: TfrxMemoView
          IndexTag = 1
          Left = 297.700990000000000000
          Top = 67.692950000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataField = 'poc_status_reason'
          DataSet = frx_db_Requisicao
          DataSetName = 'Requisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Requisicao."poc_status_reason"]')
        end
        object Requisicaopco_id: TfrxMemoView
          IndexTag = 1
          Left = 2.779530000000000000
          Top = 43.354360000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataSet = frx_db_Requisicao
          DataSetName = 'Requisicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'N'#186' da Requisi'#231#227'o: [Requisicao."pco_id"] - Data: [Requisicao."pco' +
              '_dt_registration"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo12: TfrxMemoView
          Left = 2.779530000000000000
          Top = 20.559060000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REQUISI'#199#195'O')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 2.779530000000000000
          Top = 67.692950000000000000
          Width = 94.488250000000000000
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
        object Memo18: TfrxMemoView
          Left = 2.779530000000000000
          Top = 90.370130000000000000
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
        object Memo19: TfrxMemoView
          Left = 2.779530000000000000
          Top = 113.047310000000000000
          Width = 94.488250000000000000
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
        object Memo20: TfrxMemoView
          Left = 196.535560000000000000
          Top = 67.692950000000000000
          Width = 94.488250000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_ItensRequisicao
        DataSetName = 'ItensRequisicao'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 2.779530000000000000
          Top = 3.000000000000000000
          Width = 98.267780000000000000
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
        object Memo2: TfrxMemoView
          Left = 128.504020000000000000
          Top = 3.000000000000000000
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
        object Memo3: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.000000000000000000
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
        object Memo11: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
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
        object Line1: TfrxLineView
          Top = 24.677180000000000000
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
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_ItensRequisicao
        DataSetName = 'ItensRequisicao'
        RowCount = 0
        object ItensRequisicaopru_initials: TfrxMemoView
          IndexTag = 1
          Left = 453.543600000000000000
          Top = 1.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'pru_initials'
          DataSet = frx_db_ItensRequisicao
          DataSetName = 'ItensRequisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ItensRequisicao."pru_initials"]')
        end
        object ItensRequisicaopro_name: TfrxMemoView
          IndexTag = 1
          Left = 128.504020000000000000
          Top = 1.779530000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSet = frx_db_ItensRequisicao
          DataSetName = 'ItensRequisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ItensRequisicao."pro_name"]')
        end
        object ItensRequisicaopoi_product_quant: TfrxMemoView
          IndexTag = 1
          Left = 566.929500000000000000
          Top = 1.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'poi_product_quant'
          DataSet = frx_db_ItensRequisicao
          DataSetName = 'ItensRequisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ItensRequisicao."poi_product_quant"]')
        end
        object ItensRequisicaopro_id: TfrxMemoView
          IndexTag = 1
          Left = 2.779530000000000000
          Top = 1.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'pro_id'
          DataSet = frx_db_ItensRequisicao
          DataSetName = 'ItensRequisicao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ItensRequisicao."pro_id"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 219.212740000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        object paramentrosprs_req_day_exp: TfrxMemoView
          IndexTag = 1
          Left = 2.779530000000000000
          Top = 19.559060000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          DataSet = frx_db_parameter_stock
          DataSetName = 'paramentros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Esta requisi'#231#227'o ter'#225' vencimento ap'#243's  [paramentros."prs_req_day_' +
              'exp"]  dias, a contar da data da emiss'#227'o.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 2.559060000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object RequisicaoFuncionario1: TfrxMemoView
          IndexTag = 1
          Left = 158.740260000000000000
          Top = 143.976500000000000000
          Width = 400.630180000000000000
          Height = 49.133890000000000000
          DataSet = frx_db_Requisicao
          DataSetName = 'Requisicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Requisicao."Funcionario"]'
            'Requerente')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 137.708720000000000000
          Top = 142.417440000000000000
          Width = 445.984540000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 737.008350000000000000
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
        object Memo22: TfrxMemoView
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
  object qry_stock: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
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
    Left = 588
    Top = 88
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
  end
  object frx_db_iten: TfrxDBDataset
    UserName = 'Itens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'poi_id=poi_id'
      'purchase_order_pco_id=purchase_order_pco_id'
      'product_pro_id=product_pro_id'
      'poi_product_quant=poi_product_quant'
      'poi_dt_registration=poi_dt_registration'
      'pro_name=pro_name'
      'pru_initials=pru_initials')
    DataSet = qry_purchase_order_iten
    BCDToCurrency = False
    Left = 804
    Top = 202
  end
  object qry_parameter_stock: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from parameter_stock')
    Left = 121
    Top = 368
    object qry_parameter_stockprs_cod: TBytesField
      FieldName = 'prs_cod'
      Origin = 'prs_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_parameter_stockprs_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prs_id'
      Origin = 'prs_id'
    end
    object qry_parameter_stockprs_req_day_exp: TByteField
      AutoGenerateValue = arDefault
      FieldName = 'prs_req_day_exp'
      Origin = 'prs_req_day_exp'
    end
  end
  object frx_db_parameter_stock: TfrxDBDataset
    UserName = 'paramentros'
    CloseDataSource = False
    FieldAliases.Strings = (
      'prs_id=prs_id'
      'prs_req_day_exp=prs_req_day_exp'
      'dt_registration=dt_registration')
    DataSet = qry_parameter_stock
    BCDToCurrency = False
    Left = 407
    Top = 2
  end
  object qry_purchase_order_iten: TFDQuery
    Active = True
    IndexFieldNames = 'purchase_order_pco_cod'
    MasterSource = ds
    MasterFields = 'pco_cod'
    DetailFields = 'purchase_order_pco_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select purchase_order_iten.*, hex(poi_cod)as CodItens,pro_id,pro' +
        '_name,pru_initials from purchase_order_iten'#13#10#10
      ''
      'left join product on product_pro_cod =  pro_cod'#10
      'left join product_unit on product_unit_pru_cod = pru_cod'
      'where purchase_order_pco_cod =:pco_cod')
    Left = 544
    Top = 368
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
      Precision = 12
    end
    object qry_purchase_order_itenpoi_product_quant_served: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'poi_product_quant_served'
      Origin = 'poi_product_quant_served'
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
    object qry_purchase_order_itenpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_purchase_order_itenpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_purchase_order_itenpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_purchase_order_itenCodItens: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodItens'
      Origin = 'CodItens'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object Action_request: TActionList
    Images = cxImageList_1
    Left = 784
    Top = 128
    object act_save_request_itns: TAction
      ImageIndex = 6
      OnExecute = act_save_request_itnsExecute
    end
    object act_edit_request_itens: TAction
      ImageIndex = 5
      OnExecute = act_edit_request_itensExecute
    end
    object act_cancel_request_itens: TAction
      ImageIndex = 7
      OnExecute = act_cancel_request_itensExecute
    end
    object act_delete_request_itens: TAction
      ImageIndex = 8
      OnExecute = act_delete_request_itensExecute
    end
  end
  object pupMenuRequisicao: TPopupMenu
    Left = 815
    Top = 128
    object Excluir2: TMenuItem
      Action = act_delete_request_itens
      Caption = 'Excluir'
    end
    object Editar2: TMenuItem
      Action = act_edit_request_itens
      Caption = 'Editar'
    end
    object Cancelar1: TMenuItem
      Action = act_cancel_request_itens
      Caption = 'Cancelar'
    end
  end
  object frx_db_Requisicao: TfrxDBDataset
    UserName = 'Requisicao'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 464
  end
  object frx_db_ItensRequisicao: TfrxDBDataset
    UserName = 'ItensRequisicao'
    CloseDataSource = False
    DataSet = qry_purchase_order_iten
    BCDToCurrency = False
    Left = 808
    Top = 272
  end
end
