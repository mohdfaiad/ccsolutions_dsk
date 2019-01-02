inherited frm_stock_transfer: Tfrm_stock_transfer
  Caption = 'Manuten'#231#227'o: Transfer'#234'ncias'
  ClientHeight = 686
  ClientWidth = 980
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 996
  ExplicitHeight = 725
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Width = 980
    Height = 631
    Properties.ActivePage = cxTabSheet_2
    ExplicitWidth = 980
    ExplicitHeight = 631
    ClientRectBottom = 625
    ClientRectRight = 974
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 972
      ExplicitHeight = 597
      inherited cxGrid_1: TcxGrid
        Width = 966
        Height = 591
        ExplicitWidth = 966
        ExplicitHeight = 591
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid_1DBTableView1CustomDrawCell
          object cxGrid_1DBTableView1prt_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'prt_id'
            Width = 75
          end
          object cxGrid_1DBTableView1StockEntra: TcxGridDBColumn
            Caption = 'Estoque de Entrada'
            DataBinding.FieldName = 'StockEntra'
            Width = 250
          end
          object cxGrid_1DBTableView1ID_Pedido: TcxGridDBColumn
            Caption = 'N'#186' do Pedido'
            DataBinding.FieldName = 'ID_Pedido'
            Width = 75
          end
          object cxGrid_1DBTableView1StatusPedido: TcxGridDBColumn
            Caption = 'Status do Pedido'
            DataBinding.FieldName = 'StatusPedido'
            Width = 100
          end
          object cxGrid_1DBTableView1employeeLiberacao: TcxGridDBColumn
            Caption = 'Resp. Libera'#231#227'o'
            DataBinding.FieldName = 'employeeLiberacao'
            Width = 250
          end
          object cxGrid_1DBTableView1poc_status_reason: TcxGridDBColumn
            Caption = 'Obs. Pedido'
            DataBinding.FieldName = 'poc_status_reason'
            Width = 150
          end
          object cxGrid_1DBTableView1StockSaida: TcxGridDBColumn
            Caption = 'Estoque de Sa'#237'da'
            DataBinding.FieldName = 'StockSaida'
            Width = 250
          end
          object cxGrid_1DBTableView1prt_status: TcxGridDBColumn
            Caption = 'Status Transfer'#234'ncia'
            DataBinding.FieldName = 'prt_status'
            Width = 100
          end
          object cxGrid_1DBTableView1prt_status_reason: TcxGridDBColumn
            Caption = 'Obs. Transfer'#234'ncia'
            DataBinding.FieldName = 'prt_status_reason'
            Width = 150
          end
          object cxGrid_1DBTableView1employeeConferente: TcxGridDBColumn
            Caption = 'Resp. Confer'#234'ncia'
            DataBinding.FieldName = 'employeeConferente'
            Width = 250
          end
          object cxGrid_1DBTableView1prt_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg'
            DataBinding.FieldName = 'prt_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 972
      ExplicitHeight = 597
      inherited cxPageControl_2: TcxPageControl
        Width = 966
        Height = 591
        ExplicitWidth = 966
        ExplicitHeight = 591
        ClientRectBottom = 585
        ClientRectRight = 960
        inherited cxTabSheet_3: TcxTabSheet
          OnShow = cxTabSheet_3Show
          ExplicitWidth = 958
          ExplicitHeight = 557
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 958
            Height = 557
            ExplicitWidth = 958
            ExplicitHeight = 557
            inherited dbedt_id: TcxDBTextEdit
              Left = 88
              DataBinding.DataField = 'prt_id'
              ExplicitLeft = 88
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 301
              DataBinding.DataField = 'prt_dt_registration'
              ExplicitLeft = 301
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 249
              Width = 827
              Height = 232
              PopupMenu = pupMenuTransf
              TabOrder = 11
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
                Navigator.Buttons.Filter.Visible = True
                OnCellDblClick = cxGrid1DBTableView1CellDblClick
                DataController.DataSource = ds_transfer_iten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                OptionsView.NoDataToDisplayInfoText = '<Nenhum dado a ser exibido>'
                object cxGrid1DBTableView1pti_id: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'pti_id'
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
                object cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn
                  Caption = 'Qtd da Requisi'#231#227'o'
                  DataBinding.FieldName = 'poi_product_quant'
                  Width = 100
                end
                object cxGrid1DBTableView1poi_product_quant_served: TcxGridDBColumn
                  Caption = 'Qtd j'#225' Atendida'
                  DataBinding.FieldName = 'poi_product_quant_served'
                  Width = 100
                end
                object cxGrid1DBTableView1pti_product_quant: TcxGridDBColumn
                  Caption = 'Qtd A Liberar'
                  DataBinding.FieldName = 'pti_product_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '0.000;-0.000'
                  Width = 100
                end
                object cxGrid1DBTableView1pti_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'pti_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object looComboxNumeroRequisicao: TcxLookupComboBox [3]
              Left = 88
              Top = 103
              Properties.GridMode = True
              Properties.KeyFieldNames = 'pco_id'
              Properties.ListColumns = <
                item
                  FieldName = 'pco_id'
                end>
              Properties.ListSource = ds_purchase_order
              Properties.OnCloseUp = looComboxNumeroRequisicaoPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object looComboxEstoqueSaida: TcxLookupComboBox [4]
              Left = 88
              Top = 184
              Properties.GridMode = True
              Properties.KeyFieldNames = 'sto_name'
              Properties.ListColumns = <
                item
                  FieldName = 'sto_name'
                end>
              Properties.ListSource = ds_stock_exit
              Properties.OnCloseUp = looComboxEstoqueSaidaPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 9
              Width = 300
            end
            object cxDBComboBox1: TcxDBComboBox [5]
              Left = 460
              Top = 103
              DataBinding.DataField = 'prt_status'
              DataBinding.DataSource = ds
              Enabled = False
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ABERTO'
                'F - FECHADO'
                'C - CANCELADO'
                'T - TRANSITO')
              Style.HotTrack = False
              TabOrder = 4
              Width = 127
            end
            object edtSolicitante: TcxTextEdit [6]
              Left = 88
              Top = 130
              Enabled = False
              Style.HotTrack = False
              TabOrder = 5
              Width = 300
            end
            object edtEst_Entrada: TcxTextEdit [7]
              Left = 88
              Top = 157
              Enabled = False
              Style.HotTrack = False
              TabOrder = 6
              Width = 300
            end
            object looComboxProduto: TcxLookupComboBox [8]
              Left = 62
              Top = 487
              Properties.GridMode = True
              Properties.KeyFieldNames = 'pro_name'
              Properties.ListColumns = <
                item
                  FieldName = 'pro_name'
                end>
              Properties.ListSource = ds_product
              Properties.OnCloseUp = looComboxProdutoPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 12
              Width = 357
            end
            object edtUND: TcxTextEdit [9]
              Left = 451
              Top = 487
              Style.HotTrack = False
              TabOrder = 13
              Width = 70
            end
            object edtQTD: TcxCurrencyEdit [10]
              Left = 588
              Top = 487
              Properties.DisplayFormat = '0.000;-0.000'
              Style.HotTrack = False
              TabOrder = 14
              OnKeyDown = edtQTDKeyDown
              Width = 100
            end
            object btnSalvar_Item: TcxButton [11]
              Left = 694
              Top = 487
              Width = 25
              Height = 25
              Action = act_save_transf_itens
              TabOrder = 15
            end
            object btnEditar_Item: TcxButton [12]
              Left = 725
              Top = 487
              Width = 25
              Height = 25
              Action = act_edit_transf_itens
              TabOrder = 16
            end
            object btnCancel_Item: TcxButton [13]
              Left = 756
              Top = 487
              Width = 25
              Height = 25
              Action = act_cancel_transf_itens
              TabOrder = 17
            end
            object btnExcluir_Item: TcxButton [14]
              Left = 787
              Top = 487
              Width = 25
              Height = 25
              Action = act_delete_transf_itens
              TabOrder = 18
            end
            object edtStatusPedido: TcxDBTextEdit [15]
              Left = 301
              Top = 103
              DataBinding.DataField = 'StatusPedido'
              DataBinding.DataSource = ds
              Enabled = False
              Style.HotTrack = False
              TabOrder = 3
              Width = 87
            end
            object looComboxEmployee_Emp_ID_Lecturer: TcxLookupComboBox [16]
              Left = 460
              Top = 184
              Properties.GridMode = True
              Properties.KeyFieldNames = 'rec_name'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_employee
              Properties.OnCloseUp = looComboxEmployee_Emp_ID_LecturerPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 10
              Width = 261
            end
            object looComboxEmployee_emp_ID_Agent: TcxLookupComboBox [17]
              Left = 460
              Top = 157
              Properties.GridMode = True
              Properties.KeyFieldNames = 'rec_name'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_employee
              Properties.OnCloseUp = looComboxEmployee_emp_ID_AgentPropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 8
              Width = 261
            end
            object edtMotivo: TcxDBTextEdit [18]
              Left = 460
              Top = 130
              DataBinding.DataField = 'prt_status_reason'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 261
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Itens da transfer'#234'ncia'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 192
              SizeOptions.Width = 841
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 2
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 232
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#186' Requisi'#231#227'o'
              Control = looComboxNumeroRequisicao
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Est. Sa'#237'da'
              Control = looComboxEstoqueSaida
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 300
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 127
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Solicitante'
              Control = edtSolicitante
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 300
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Est. Entrada'
              Control = edtEst_Entrada
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 300
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Produto'
              Offsets.Left = 2
              Control = looComboxProduto
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 357
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'UND'
              Control = edtUND
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 70
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Quantidade'
              Control = edtQTD
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnEditar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnCancel_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              CaptionOptions.Text = 'cxButton5'
              CaptionOptions.Visible = False
              Control = btnExcluir_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              CaptionOptions.Text = 'Status do Pedido'
              Control = edtStatusPedido
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 87
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'Conferente'
              Control = looComboxEmployee_Emp_ID_Lecturer
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 261
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Respons'#225'vel'
              Control = looComboxEmployee_emp_ID_Agent
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 261
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Motivo'
              Control = edtMotivo
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 261
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              Index = 1
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarDockControl_1: TdxBarDockControl
    Width = 980
    ExplicitWidth = 980
  end
  inherited dxBarManager_1: TdxBarManager
    Left = 718
    Top = 24
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\transferencia'
    end
  end
  inherited ActionList_1: TActionList
    Left = 792
    Top = 24
  end
  inherited ds: TDataSource
    Left = 672
    Top = 24
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu
    Left = 512
    Top = 40
  end
  inherited PopupMenu_1: TPopupMenu
    OnPopup = PopupMenu_1Popup
    Left = 832
    Top = 24
    object ConfirmarTransfernciaSaida1: TMenuItem
      Caption = 'Confirmar Transfer'#234'ncia - Sa'#237'da'
      OnClick = ConfirmarTransfernciaSaida1Click
    end
    object ConfirmarTransfernciaEntrada1: TMenuItem
      Caption = 'Confirmar Transfer'#234'ncia - Entrada'
      OnClick = ConfirmarTransfernciaEntrada1Click
    end
    object CancelarTransferncia1: TMenuItem
      Caption = 'Cancelar Transfer'#234'ncia'
      OnClick = CancelarTransferncia1Click
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 1573614
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 608
    Top = 24
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
      
        'select trans.*, sai.sto_name as StockSaida, ent.sto_name as Stoc' +
        'kEntra, hex(prt_cod)as CodTransf,hex(trans.stock_sto_id_entrance' +
        ')as CodStockEntrance, '
      
        'pur_ord.pco_status as StatusPedido, pur_ord.poc_status_reason, p' +
        'ur_ord.pco_id as ID_Pedido, hex(trans.purchase_order_pco_id)as C' +
        'odPurchase from product_transfer as trans'
      
        'left join purchase_order as pur_ord on pur_ord.pco_cod = trans.p' +
        'urchase_order_pco_id'
      'left join stock as sai on sai.sto_cod = stock_sto_id_exit'#13#10#10
      'left join stock as ent on ent.sto_cod = stock_sto_id_entrance'#13#10#10
      
        'where trans.contract_ctr_cod =:ctr_cod '#10'and prt_deleted_at is nu' +
        'll ')
    Left = 642
    Top = 24
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryprt_cod: TBytesField
      FieldName = 'prt_cod'
      Origin = 'prt_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryemployee_emp_id_request: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_id_request'
      Origin = 'employee_emp_id_request'
    end
    object qryemployee_emp_id_agent: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_id_agent'
      Origin = 'employee_emp_id_agent'
    end
    object qryemployee_emp_id_lecturer: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_id_lecturer'
      Origin = 'employee_emp_id_lecturer'
    end
    object qryStockSaida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'StockSaida'
      Origin = 'sto_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryStockEntra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'StockEntra'
      Origin = 'sto_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryStatusPedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'StatusPedido'
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
    object qryID_Pedido: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Pedido'
      Origin = 'pco_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrystock_sto_id_exit: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_id_exit'
      Origin = 'stock_sto_id_exit'
    end
    object qrystock_sto_id_entrance: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_id_entrance'
      Origin = 'stock_sto_id_entrance'
    end
    object qrypurchase_order_pco_id: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'purchase_order_pco_id'
      Origin = 'purchase_order_pco_id'
    end
    object qryprt_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prt_id'
      Origin = 'prt_id'
    end
    object qryprt_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prt_status'
      Origin = 'prt_status'
      FixedChar = True
      Size = 1
    end
    object qryprt_status_reason: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prt_status_reason'
      Origin = 'prt_status_reason'
      Size = 35
    end
    object qryprt_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prt_deleted_at'
      Origin = 'prt_deleted_at'
    end
    object qryprt_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prt_dt_registration'
      Origin = 'prt_dt_registration'
    end
    object qryCodTransf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodTransf'
      Origin = 'CodTransf'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryCodStockEntrance: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodStockEntrance'
      Origin = 'CodStockEntrance'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryCodPurchase: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodPurchase'
      Origin = 'CodPurchase'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryemployeeLiberacao: TStringField
      FieldKind = fkLookup
      FieldName = 'employeeLiberacao'
      LookupDataSet = qry_employee
      LookupKeyFields = 'emp_cod'
      LookupResultField = 'rec_name'
      KeyFields = 'employee_emp_id_agent'
      Size = 80
      Lookup = True
    end
    object qryemployeeConferente: TStringField
      FieldKind = fkLookup
      FieldName = 'employeeConferente'
      LookupDataSet = qry_employee
      LookupKeyFields = 'emp_cod'
      LookupResultField = 'rec_name'
      KeyFields = 'employee_emp_id_lecturer'
      Size = 80
      Lookup = True
    end
    object qryemployeeSolicitante: TStringField
      FieldKind = fkLookup
      FieldName = 'employeeSolicitante'
      LookupDataSet = qry_employee
      LookupKeyFields = 'emp_cod'
      LookupResultField = 'rec_name'
      KeyFields = 'employee_emp_id_request'
      Size = 80
      Lookup = True
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
  inherited FDSchemaAdapter_1: TFDSchemaAdapter
    Left = 320
  end
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43285.646260879600000000
    Left = 319
    Top = 0
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frxDBD_Stock_Transfer
        DataSetName = 'Stock_Transfer'
      end
      item
        DataSet = frxDBD_Tranfer_Itens
        DataSetName = 'Tranfer_Itens'
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
        Height = 196.535437950000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 442.779530000000000000
          Top = 18.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Transfer'#235'ncia:')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 1.779530000000000000
          Top = 38.677180000000000000
          Width = 714.331170000000000000
          Height = 139.842610000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          Left = 4.779530000000000000
          Top = 42.795300000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Requisi'#231#227'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 263.275820000000000000
          Top = 42.795300000000000000
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
        object Memo4: TfrxMemoView
          Left = 4.779530000000000000
          Top = 65.913420000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Solicitante:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 4.779530000000000000
          Top = 89.370130000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque de Sa'#237'da:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 4.779530000000000000
          Top = 112.047310000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque de Entrada:')
          ParentFont = False
        end
        object Stock_Transferprt_dt_registration: TfrxMemoView
          IndexTag = 1
          Left = 574.740260000000000000
          Top = 18.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'prt_dt_registration'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."prt_dt_registration"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 1.779530000000000000
          Top = 19.000000000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TRANSFER'#202'NCIA DE ESTOQUE')
          ParentFont = False
        end
        object Stock_TransferStockSaida: TfrxMemoView
          IndexTag = 1
          Left = 149.181200000000000000
          Top = 89.370130000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'StockSaida'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."StockSaida"]')
          ParentFont = False
        end
        object Stock_TransferStockEntra: TfrxMemoView
          IndexTag = 1
          Left = 149.181200000000000000
          Top = 112.047310000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'StockEntra'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."StockEntra"]')
          ParentFont = False
        end
        object Stock_TransferemployeeSolicitante: TfrxMemoView
          IndexTag = 1
          Left = 149.181200000000000000
          Top = 65.913420000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'employeeSolicitante'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."employeeSolicitante"]')
        end
        object Stock_TransferemployeeLiberacao: TfrxMemoView
          IndexTag = 1
          Left = 149.181200000000000000
          Top = 134.724490000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'employeeLiberacao'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."employeeLiberacao"]')
        end
        object Stock_TransferemployeeConferente: TfrxMemoView
          IndexTag = 1
          Left = 149.181200000000000000
          Top = 156.960730000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'employeeConferente'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."employeeConferente"]')
        end
        object Stock_TransferID_Pedido: TfrxMemoView
          IndexTag = 1
          Left = 149.181200000000000000
          Top = 42.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_Pedido'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."ID_Pedido"]')
        end
        object Stock_Transferprt_status: TfrxMemoView
          IndexTag = 1
          Left = 331.307360000000000000
          Top = 42.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'prt_status'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."prt_status"]')
        end
        object Stock_Transferprt_status_reason: TfrxMemoView
          IndexTag = 1
          Left = 505.795610000000000000
          Top = 42.795300000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'prt_status_reason'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."prt_status_reason"]')
        end
        object Memo21: TfrxMemoView
          Left = 4.779530000000000000
          Top = 134.724490000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Resp. Libera'#231#227'o:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 4.779530000000000000
          Top = 156.960730000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Resp. Conferente:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 414.307360000000000000
          Top = 42.795300000000000000
          Width = 86.929190000000000000
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 582.047620000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.346456690000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Tranfer_Itens
        DataSetName = 'Tranfer_Itens'
        RowCount = 0
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 26.456710000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 6.338590000000000000
          Top = 4.559060000000000000
          Width = 79.370130000000000000
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
        object Memo8: TfrxMemoView
          Left = 94.488250000000000000
          Top = 4.559060000000000000
          Width = 90.708720000000000000
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
        object Memo9: TfrxMemoView
          Left = 506.236550000000000000
          Top = 4.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd Solicitada')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 428.307360000000000000
          Top = 4.559060000000000000
          Width = 64.252010000000000000
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
        object Memo19: TfrxMemoView
          Left = 617.283860000000000000
          Top = 4.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd Atendida')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Tranfer_Itens
        DataSetName = 'Tranfer_Itens'
        RowCount = 0
        object Tranfer_Itenspro_name: TfrxMemoView
          IndexTag = 1
          Left = 94.488250000000000000
          Top = 1.000000000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."pro_name"]')
        end
        object Tranfer_Itenspro_id: TfrxMemoView
          IndexTag = 1
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'pro_id'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."pro_id"]')
        end
        object Tranfer_Itenspru_initials: TfrxMemoView
          IndexTag = 1
          Left = 428.307360000000000000
          Top = 1.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'pru_initials'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."pru_initials"]')
        end
        object Tranfer_Itenspoi_product_quant: TfrxMemoView
          IndexTag = 1
          Left = 506.236550000000000000
          Top = 1.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'poi_product_quant'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."poi_product_quant"]')
        end
        object Tranfer_Itenspti_product_quant: TfrxMemoView
          IndexTag = 1
          Left = 617.283860000000000000
          Top = 1.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'pti_product_quant'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."pti_product_quant"]')
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 536.693260000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 1.779530000000000000
          Top = 1.779530000000000000
          Width = 714.331170000000000000
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
        object Memo24: TfrxMemoView
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
        object Memo25: TfrxMemoView
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
  inherited ACBrCEP_1: TACBrCEP
    Left = 352
  end
  object ds_transfer_iten: TDataSource
    DataSet = qry_product_transfer_iten
    Left = 671
    Top = 81
  end
  object qry_stock_iten: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select stock_iten.*, pro_name, pru_name, pru_initials, '#10'hex(stoc' +
        'k_sto_cod)as CodStock,'#10' hex(product_pro_cod)as CodProduct from s' +
        'tock_iten'#10
      'left join product on pro_cod = product_pro_cod'#13#10#10
      'left join product_unit on pru_cod = product_unit_pru_cod'#13#10#10
      'where stock_sto_cod =:sto_cod'#13#10#10
      'order by pro_name')
    Left = 575
    Top = 80
    ParamData = <
      item
        Name = 'STO_COD'
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
  object qry_product: TFDQuery
    Active = True
    IndexFieldNames = 'stock_sto_cod'
    MasterSource = ds_stock_exit
    MasterFields = 'sto_cod'
    DetailFields = 'stock_sto_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select stock_iten.*, pro_name, pru_name, pru_initials, '#10'hex(stoc' +
        'k_sto_cod)as CodStock,'
      'hex(product_pro_cod)as CodProduct from stock_iten'#10
      'left join product on pro_cod = product_pro_cod'#10
      'left join product_unit on pru_cod = product_unit_pru_cod'#13#10#10
      'where stock_sto_cod =:sto_cod'
      'order by pro_name')
    Left = 832
    Top = 81
    ParamData = <
      item
        Name = 'STO_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 45
        Value = Null
      end>
    object qry_productsti_cod: TBytesField
      FieldName = 'sti_cod'
      Origin = 'sti_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_productstock_sto_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_cod'
      Origin = 'stock_sto_cod'
    end
    object qry_productproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_productproduct_department_prd_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_department_prd_cod'
      Origin = 'product_department_prd_cod'
    end
    object qry_productproduct_sector_prs_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_sector_prs_cod'
      Origin = 'product_sector_prs_cod'
    end
    object qry_productsti_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sti_id'
      Origin = 'sti_id'
    end
    object qry_productsti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant'
      Origin = 'sti_product_quant'
      Precision = 12
    end
    object qry_productsti_product_quant_min: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant_min'
      Origin = 'sti_product_quant_min'
      Precision = 12
    end
    object qry_productsti_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sti_deleted_at'
      Origin = 'sti_deleted_at'
    end
    object qry_productsti_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sti_dt_registration'
      Origin = 'sti_dt_registration'
    end
    object qry_productpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
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
    object qry_productCodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodStock'
      Origin = 'CodStock'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_productCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 864
    Top = 81
  end
  object qry_stock_exit: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select st.sto_name, st.sto_cod, st.sto_id,st.contract_ctr_cod,st' +
        '.enterprise_ent_cod,'
      
        'hex(st.sto_cod) as codStock  from stock st where st.sto_status =' +
        ' '#39'A'#39' and st.contract_ctr_cod =unhex(:ctr_cod) '
      
        'and st.enterprise_ent_cod in (select enterprise_ent_cod from con' +
        'tract_user_enterprise where contract_user_ctr_usr_cod =unhex(:ct' +
        'r_usr_cod))')
    Left = 871
    Top = 127
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
    object qry_stock_exitsto_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_name'
      Origin = 'sto_name'
      Size = 35
    end
    object qry_stock_exitsto_cod: TBytesField
      FieldName = 'sto_cod'
      Origin = 'sto_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_stock_exitsto_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sto_id'
      Origin = 'sto_id'
    end
    object qry_stock_exitcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_stock_exitenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object qry_stock_exitcodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codStock'
      Origin = 'codStock'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_stock_exit: TDataSource
    DataSet = qry_stock_exit
    Left = 903
    Top = 124
  end
  object qry_employee: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select hex(e.emp_cod)as CodEmployee, hex(e.record_rec_cod)as Cod' +
        'Record, e.emp_cod,'#10
      
        'e.record_rec_cod, e.emp_type, e.emp_status,r.rec_name, e.contrac' +
        't_ctr_cod from employee as e'#13#10#10
      'left join record as r on e.record_rec_cod = r.rec_cod'#13#10#10
      'where e.contract_ctr_cod =:ctr_cod')
    Left = 896
    Top = 80
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_employeeCodEmployee: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEmployee'
      Origin = 'CodEmployee'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_employeeemp_cod: TBytesField
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_employeeCodRecord: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodRecord'
      Origin = 'CodRecord'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
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
  end
  object ds_employee: TDataSource
    DataSet = qry_employee
    Left = 922
    Top = 80
  end
  object ds_purchase_iten: TDataSource
    DataSet = qry_purchase_order_iten
    Left = 800
    Top = 80
  end
  object frxDBD_Stock_Transfer: TfrxDBDataset
    UserName = 'Stock_Transfer'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 352
  end
  object frxDBD_Tranfer_Itens: TfrxDBDataset
    UserName = 'Tranfer_Itens'
    CloseDataSource = False
    DataSet = qry_product_transfer_iten
    BCDToCurrency = False
    Left = 384
  end
  object ds_purchase_order: TDataSource
    DataSet = qry_purchase_order
    Left = 736
    Top = 80
  end
  object qry_purchase_order: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT pur_ord.*, hex(pur_ord.pco_cod)as CodPurchase, hex(pur_or' +
        'd.employee_emp_cod)as CodEmployee,'
      
        'hex(pur_ord'#10'.stock_sto_cod)as CodStock, sto.sto_name FROM purcha' +
        'se_order as pur_ord'#10
      'left join stock as sto on sto.sto_cod = pur_ord.stock_sto_cod'#10
      'where pur_ord.pco_status = '#39'L'#39' and pur_ord.pco_type = '#39'R'#39#10
      
        'and pur_ord.contract_ctr_cod =unhex(:ctr_cod)'#10'and sto.enterprise' +
        '_ent_cod in (select enterprise_ent_cod '#10'from contract_user_enter' +
        'prise'
      
        'where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))'#10'and pco_de' +
        'leted_at is null')
    Left = 704
    Top = 80
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
    object qry_purchase_orderCodEmployee: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEmployee'
      Origin = 'CodEmployee'
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
    object qry_purchase_ordersto_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_name'
      Origin = 'sto_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_purchase_orderFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = qry_employee
      LookupKeyFields = 'emp_cod'
      LookupResultField = 'rec_name'
      KeyFields = 'employee_emp_cod'
      Size = 80
      Lookup = True
    end
  end
  object qry_purchase_order_iten: TFDQuery
    Active = True
    IndexFieldNames = 'purchase_order_pco_cod'
    MasterSource = ds_purchase_order
    MasterFields = 'pco_cod'
    DetailFields = 'purchase_order_pco_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select purchase_order_iten.*, hex(poi_cod)as CodItens,hex(produc' +
        't_pro_cod)as CodProduct, pro_name,pru_initials from purchase_ord' +
        'er_iten'#13#10#10
      'left join product on product_pro_cod =  pro_cod'#10
      'left join product_unit on product_unit_pru_cod = pru_cod'
      'where purchase_order_pco_cod =:pco_cod')
    Left = 768
    Top = 80
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
    object qry_purchase_order_itenCodItens: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodItens'
      Origin = 'CodItens'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
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
    object qry_purchase_order_itenCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object qry_product_transfer_iten: TFDQuery
    Active = True
    IndexFieldNames = 'product_transfer_prt_cod'
    MasterSource = ds
    MasterFields = 'prt_cod'
    DetailFields = 'product_transfer_prt_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select prt_cod,trans_itens.*,pro_id,pro_name,pru_initials,ord_it' +
        'ens.poi_product_quant_served,ord_itens.poi_product_quant, '
      
        'hex(pti_cod)as CodTrnsfItens,'#10'hex(product_transfer_prt_cod)as Co' +
        'dTransf, hex(trans_itens.product_pro_cod)as CodProduct from prod' +
        'uct_transfer'#13#10#10
      
        'inner join product_transfer_iten as trans_itens on trans_itens.p' +
        'roduct_transfer_prt_cod = prt_cod'#10
      'inner join product  on pro_cod = trans_itens.product_pro_cod '#10
      'inner join product_unit on pru_cod = product_unit_pru_cod'#10
      
        'inner join purchase_order_iten as ord_itens on ord_itens.purchas' +
        'e_order_pco_cod = purchase_order_pco_id and ord_itens.product_pr' +
        'o_cod = trans_itens.product_pro_cod'
      'where trans_itens.product_transfer_prt_cod =unhex(:prt_cod)')
    Left = 640
    Top = 81
    ParamData = <
      item
        Name = 'PRT_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_product_transfer_itenpti_cod: TBytesField
      FieldName = 'pti_cod'
      Origin = 'pti_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_transfer_itenprt_cod: TBytesField
      FieldName = 'prt_cod'
      Origin = 'prt_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_transfer_itenproduct_transfer_prt_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_transfer_prt_cod'
      Origin = 'product_transfer_prt_cod'
    end
    object qry_product_transfer_itenproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_product_transfer_itenpti_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pti_id'
      Origin = 'pti_id'
    end
    object qry_product_transfer_itenpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_product_transfer_itenpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_product_transfer_itenpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_product_transfer_itenpoi_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'poi_product_quant'
      Origin = 'poi_product_quant'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object qry_product_transfer_itenpoi_product_quant_served: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'poi_product_quant_served'
      Origin = 'poi_product_quant_served'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object qry_product_transfer_itenpti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pti_product_quant'
      Origin = 'pti_product_quant'
      Precision = 12
    end
    object qry_product_transfer_itenpti_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pti_deleted_at'
      Origin = 'pti_deleted_at'
    end
    object qry_product_transfer_itenpti_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pti_dt_registration'
      Origin = 'pti_dt_registration'
    end
    object qry_product_transfer_itenCodTrnsfItens: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodTrnsfItens'
      Origin = 'CodTrnsfItens'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_product_transfer_itenCodTransf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodTransf'
      Origin = 'CodTransf'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_product_transfer_itenCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_stock_iten: TDataSource
    DataSet = qry_stock_iten
    Left = 608
    Top = 80
  end
  object pupMenuTransf: TPopupMenu
    Left = 871
    Top = 176
    object Excluir2: TMenuItem
      Caption = 'Excluir'
      Hint = 'Excluir'
      ImageIndex = 8
      OnClick = act_delete_transf_itensExecute
    end
    object Editar2: TMenuItem
      Caption = 'Editar'
      Hint = 'Editar'
      ImageIndex = 5
      OnClick = act_edit_transf_itensExecute
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 7
      OnClick = act_cancel_transf_itensExecute
    end
  end
  object Action_Transf_itens: TActionList
    Images = cxImageList_1
    Left = 912
    Top = 176
    object act_save_transf_itens: TAction
      Hint = 'Salvar'
      ImageIndex = 6
      OnExecute = act_save_transf_itensExecute
    end
    object act_edit_transf_itens: TAction
      Hint = 'Editar'
      ImageIndex = 5
      OnExecute = act_edit_transf_itensExecute
    end
    object act_cancel_transf_itens: TAction
      Hint = 'Cancelar'
      ImageIndex = 7
      OnExecute = act_cancel_transf_itensExecute
    end
    object act_delete_transf_itens: TAction
      Hint = 'Excluir'
      ImageIndex = 8
      OnExecute = act_delete_transf_itensExecute
    end
  end
end
