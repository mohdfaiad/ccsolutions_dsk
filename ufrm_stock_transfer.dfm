inherited frm_stock_transfer: Tfrm_stock_transfer
  Caption = 'Manuten'#231#227'o: Transfer'#234'ncias'
  ClientHeight = 569
  OnClose = FormClose
  ExplicitTop = -43
  ExplicitHeight = 608
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 514
    Properties.ActivePage = cxTabSheet_2
    ExplicitHeight = 497
    ClientRectBottom = 508
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 463
      inherited cxGrid_1: TcxGrid
        Height = 474
        ExplicitHeight = 457
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1prt_id: TcxGridDBColumn
            DataBinding.FieldName = 'prt_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1employee_emp_id_request: TcxGridDBColumn
            DataBinding.FieldName = 'employee_emp_id_request'
            Width = 75
          end
          object cxGrid_1DBTableView1employee_emp_id_agent: TcxGridDBColumn
            DataBinding.FieldName = 'employee_emp_id_agent'
            Width = 75
          end
          object cxGrid_1DBTableView1employee_emp_id_lecturer: TcxGridDBColumn
            DataBinding.FieldName = 'employee_emp_id_lecturer'
            Width = 75
          end
          object cxGrid_1DBTableView1stock_sto_id_exit: TcxGridDBColumn
            DataBinding.FieldName = 'stock_sto_id_exit'
            Width = 75
          end
          object cxGrid_1DBTableView1stock_sto_id_entrance: TcxGridDBColumn
            DataBinding.FieldName = 'stock_sto_id_entrance'
            Width = 75
          end
          object cxGrid_1DBTableView1prt_status: TcxGridDBColumn
            DataBinding.FieldName = 'prt_status'
            Width = 50
          end
          object cxGrid_1DBTableView1prt_status_reason: TcxGridDBColumn
            DataBinding.FieldName = 'prt_status_reason'
            Width = 200
          end
          object cxGrid_1DBTableView1prt_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'prt_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 463
      inherited cxPageControl_2: TcxPageControl
        Height = 474
        ExplicitHeight = 457
        ClientRectBottom = 468
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 423
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 440
            ExplicitHeight = 437
            inherited dbedt_id: TcxDBTextEdit
              Left = 73
              DataBinding.DataField = 'prt_id'
              ExplicitLeft = 73
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 266
              DataBinding.DataField = 'prt_dt_registration'
              ExplicitLeft = 266
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 222
              Width = 728
              Height = 155
              TabOrder = 10
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
                Navigator.Buttons.Filter.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsItens
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.NoDataToDisplayInfoText = '<Nenhum dado a ser exibido>'
                object cxGrid1DBTableView1pti_id: TcxGridDBColumn
                  DataBinding.FieldName = 'pti_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1product_pro_id: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownListStyle = lsFixedList
                  Properties.DropDownWidth = 350
                  Properties.KeyFieldNames = 'product_pro_id'
                  Properties.ListColumns = <
                    item
                      Caption = 'Nome'
                      Width = 250
                      FieldName = 'pro_name'
                    end
                    item
                      Caption = 'C'#243'd. ID'
                      Width = 75
                      FieldName = 'product_pro_id'
                    end
                    item
                      Caption = 'Quant.'
                      Width = 75
                      FieldName = 'sti_product_quant'
                    end>
                  Properties.ListSource = ds_product
                  Width = 250
                end
                object cxGrid1DBTableView1pti_product_quant: TcxGridDBColumn
                  DataBinding.FieldName = 'pti_product_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = ',0.0000;-,0.0000'
                  Width = 75
                end
                object cxGrid1DBTableView1pti_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'pti_dt_registration'
                  Options.Editing = False
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBButtonEdit1: TcxDBButtonEdit [3]
              Left = 73
              Top = 103
              DataBinding.DataField = 'purchase_order_pco_id'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
              Left = 73
              Top = 157
              DataBinding.DataField = 'stock_sto_id_exit'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.KeyFieldNames = 'sto_id'
              Properties.ListColumns = <
                item
                  FieldName = 'sto_name'
                end
                item
                  FieldName = 'sto_id'
                end>
              Properties.ListSource = ds_stock_exit
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [5]
              Left = 266
              Top = 157
              DataBinding.DataField = 'stock_sto_id_entrance'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'sto_id'
              Properties.ListColumns = <
                item
                  FieldName = 'sto_name'
                end
                item
                  FieldName = 'sto_id'
                end>
              Properties.ListSource = ds_stock_exit
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBSpinEdit5: TcxDBSpinEdit [6]
              Left = 453
              Top = 130
              DataBinding.DataField = 'employee_emp_id_lecturer'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox [7]
              Left = 73
              Top = 130
              DataBinding.DataField = 'employee_emp_id_request'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'emp_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'rec_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'emp_id'
                end>
              Properties.ListSource = ds_employee
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBSpinEdit4: TcxDBSpinEdit [8]
              Left = 266
              Top = 130
              DataBinding.DataField = 'employee_emp_id_agent'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBComboBox1: TcxDBComboBox [9]
              Left = 266
              Top = 103
              DataBinding.DataField = 'prt_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ABERTO'
                'F - FECHADO'
                'C - CANCELADO'
                'T - TRANSITO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [10]
              Left = 453
              Top = 103
              DataBinding.DataField = 'prt_status_reason'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
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
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 155
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#250'm. Req.'
              Control = cxDBButtonEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Est. Sa'#237'da'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Est. Entrada'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Conferente'
              Control = cxDBSpinEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Solicitante'
              Control = cxDBLookupComboBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Respons'#225'vel'
              Control = cxDBSpinEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
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
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Motivo'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
      end
    end
  end
  object DBGrid1: TDBGrid [2]
    Left = 24
    Top = 497
    Width = 681
    Height = 120
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu
    Left = 520
  end
  inherited PopupMenu_1: TPopupMenu
    OnPopup = PopupMenu_1Popup
    Left = 552
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
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    BeforePost = qryBeforePost
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from product_transfer')
    object qryprt_id: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'prt_id'
      Origin = 'prt_id'
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
    object qryemployee_emp_id_request: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Solicitante'
      FieldName = 'employee_emp_id_request'
      Origin = 'employee_emp_id_request'
    end
    object qryemployee_emp_id_agent: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'employee_emp_id_agent'
      Origin = 'employee_emp_id_agent'
    end
    object qryemployee_emp_id_lecturer: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Conferente'
      FieldName = 'employee_emp_id_lecturer'
      Origin = 'employee_emp_id_lecturer'
    end
    object qrystock_sto_id_exit: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Est. Sa'#237'da'
      FieldName = 'stock_sto_id_exit'
      Origin = 'stock_sto_id_exit'
    end
    object qrystock_sto_id_entrance: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Est. Entrada'
      FieldName = 'stock_sto_id_entrance'
      Origin = 'stock_sto_id_entrance'
    end
    object qryprt_status: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'prt_status'
      Origin = 'prt_status'
      FixedChar = True
      Size = 1
    end
    object qryprt_status_reason: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Motivo'
      FieldName = 'prt_status_reason'
      Origin = 'prt_status_reason'
      Size = 50
    end
    object qryprt_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'prt_dt_registration'
      Origin = 'prt_dt_registration'
    end
    object qrypurchase_order_pco_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm. Req.'
      FieldName = 'purchase_order_pco_id'
      Origin = 'purchase_order_pco_id'
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
    Left = 304
  end
  inherited frxReport_1: TfrxReport
    Left = 463
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qry_product_transfer_iten: TFDQuery
    AfterInsert = qry_product_transfer_itenAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'product_transfer_prt_id'
    MasterSource = ds
    MasterFields = 'prt_id'
    DetailFields = 'product_transfer_prt_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from product_transfer_iten'
      'where product_transfer_prt_id = :prt_id')
    Left = 455
    Top = 290
    ParamData = <
      item
        Name = 'PRT_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_product_transfer_itenpti_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'pti_id'
      Origin = 'pti_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_product_transfer_itenproduct_transfer_prt_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto ID'
      FieldName = 'product_transfer_prt_id'
      Origin = 'product_transfer_prt_id'
    end
    object qry_product_transfer_itenproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto ID'
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_product_transfer_itenpti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant.'
      FieldName = 'pti_product_quant'
      Origin = 'pti_product_quant'
      Precision = 12
    end
    object qry_product_transfer_itenpti_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pti_dt_registration'
      Origin = 'pti_dt_registration'
    end
  end
  object dsItens: TDataSource
    DataSet = qry_product_transfer_iten
    Left = 527
    Top = 146
  end
  object qry_stock_iten: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from stock_iten'
      'where stock_sto_id = :stock')
    Left = 351
    Top = 130
    ParamData = <
      item
        Name = 'STOCK'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
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
  object qry_product: TFDQuery
    IndexFieldNames = 'stock_sto_id'
    MasterSource = ds
    MasterFields = 'stock_sto_id_exit'
    DetailFields = 'stock_sto_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select product_pro_id,pro_name,stock_sto_id,sti_product_quant fr' +
        'om stock_iten'#13#10#10
      'inner join product on pro_id = product_pro_id'#13#10#10
      ''
      'where stock_sto_id = :stock_sto_id_exit'
      'order by pro_name')
    Left = 672
    Top = 224
    ParamData = <
      item
        Name = 'STOCK_STO_ID_EXIT'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
    object qry_productproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_productpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_productstock_sto_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_id'
      Origin = 'stock_sto_id'
    end
    object qry_productsti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant'
      Origin = 'sti_product_quant'
      DisplayFormat = ',0.00'
      Precision = 12
    end
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 648
    Top = 144
  end
  object qry_stock_exit: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      #10'select sto_id,sto_name,contract_ctr_id  from stock'#13#10#10
      'where contract_ctr_id = :ctr_id'#10
      'order by sto_name')
    Left = 687
    Top = 146
    ParamData = <
      item
        Name = 'CTR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object qry_stock_exitsto_id: TFDAutoIncField
      FieldName = 'sto_id'
      Origin = 'sto_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_stock_exitsto_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_name'
      Origin = 'sto_name'
      Size = 50
    end
    object qry_stock_exitcontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
  end
  object ds_stock_exit: TDataSource
    DataSet = qry_stock_exit
    Left = 719
    Top = 146
  end
  object qry_employee: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select e.emp_id, e.record_rec_id, e.emp_type, e.emp_status, r.re' +
        'c_name, e.contract_ctr_id from employee as e'#10'inner join record a' +
        's r on e.record_rec_id = r.rec_id')
    Left = 496
    Top = 104
  end
  object ds_employee: TDataSource
    DataSet = qry_employee
    Left = 592
    Top = 104
  end
  object qry_purchase_order: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from purchase_order'
      '')
    Left = 303
    Top = 418
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
  object qry_purchase_order_iten: TFDQuery
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'purchase_order_pco_id'
    MasterFields = 'pco_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from purchase_order_iten'
      'where purchase_order_pco_id = :pco_id')
    Left = 416
    Top = 457
    ParamData = <
      item
        Name = 'PCO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_purchase_order_itenpoi_id: TFDAutoIncField
      FieldName = 'poi_id'
      ReadOnly = True
    end
    object qry_purchase_order_itenpurchase_order_pco_id: TIntegerField
      FieldName = 'purchase_order_pco_id'
    end
    object qry_purchase_order_itenproduct_pro_id: TIntegerField
      FieldName = 'product_pro_id'
    end
    object qry_purchase_order_itenpoi_product_quant: TBCDField
      FieldName = 'poi_product_quant'
      Precision = 12
    end
    object qry_purchase_order_itenpoi_product_quant_served: TBCDField
      FieldName = 'poi_product_quant_served'
      Precision = 12
    end
    object qry_purchase_order_itenpoi_dt_registration: TDateTimeField
      FieldName = 'poi_dt_registration'
    end
  end
  object DataSource1: TDataSource
    DataSet = qry_purchase_order_iten
    Left = 296
    Top = 520
  end
end