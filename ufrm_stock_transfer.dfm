inherited frm_stock_transfer: Tfrm_stock_transfer
  Caption = 'Manuten'#231#227'o: Transfer'#234'ncias'
  ClientHeight = 530
  OnClose = FormClose
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 475
    ExplicitHeight = 475
    ClientRectBottom = 469
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 441
      inherited cxGrid_1: TcxGrid
        Height = 435
        ExplicitHeight = 435
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
      ExplicitHeight = 441
      inherited cxPageControl_2: TcxPageControl
        Height = 435
        ExplicitHeight = 435
        ClientRectBottom = 429
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 401
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 401
            ExplicitHeight = 401
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
              Properties.OnPopup = cxDBLookupComboBox1PropertiesPopup
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
              Properties.OnPopup = cxDBLookupComboBox2PropertiesPopup
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
              Properties.OnPopup = cxDBLookupComboBox3PropertiesPopup
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
  inherited dxBarManager_1: TdxBarManager
    Left = 624
    Top = 96
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\transferencia'
    end
  end
  inherited ActionList_1: TActionList
    Top = 104
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
    DesignInfo = 1049272
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
    Left = 88
    Top = 344
    object qryprt_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'prt_id'
      Origin = 'prt_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryemployee_emp_id_request: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Solicitante'
      FieldName = 'employee_emp_id_request'
      Origin = 'employee_emp_id_request'
    end
    object qryemployee_emp_id_agent: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'employee_emp_id_agent'
      Origin = 'employee_emp_id_agent'
    end
    object qryemployee_emp_id_lecturer: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Conferente'
      FieldName = 'employee_emp_id_lecturer'
      Origin = 'employee_emp_id_lecturer'
    end
    object qrystock_sto_id_exit: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Est. Sa'#237'da'
      FieldName = 'stock_sto_id_exit'
      Origin = 'stock_sto_id_exit'
    end
    object qrystock_sto_id_entrance: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Est. Entrada'
      FieldName = 'stock_sto_id_entrance'
      Origin = 'stock_sto_id_entrance'
    end
    object qryprt_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'prt_status'
      Origin = 'prt_status'
      FixedChar = True
      Size = 1
    end
    object qryprt_status_reason: TStringField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Motivo'
      FieldName = 'prt_status_reason'
      Origin = 'prt_status_reason'
      Size = 50
    end
    object qryprt_dt_registration: TDateTimeField
      Alignment = taRightJustify
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
    object qryStock_Saida: TStringField
      FieldKind = fkLookup
      FieldName = 'Stock_Saida'
      LookupDataSet = qry_stock_exit
      LookupKeyFields = 'sto_id'
      LookupResultField = 'sto_name'
      KeyFields = 'stock_sto_id_exit'
      Size = 50
      Lookup = True
    end
    object qrySolicitante: TStringField
      FieldKind = fkLookup
      FieldName = 'Solicitante'
      LookupDataSet = qry_employee
      LookupKeyFields = 'emp_id'
      LookupResultField = 'rec_name'
      KeyFields = 'employee_emp_id_request'
      Size = 50
      Lookup = True
    end
    object qryStock_Entrada: TStringField
      FieldKind = fkLookup
      FieldName = 'Stock_Entrada'
      LookupDataSet = qry_stock_exit
      LookupKeyFields = 'sto_id'
      LookupResultField = 'sto_name'
      KeyFields = 'stock_sto_id_entrance'
      Size = 50
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
    Left = 304
  end
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43200.474512581020000000
    Left = 103
    Top = 88
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.047244090000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 132.283550000000000000
          Height = 98.267780000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000054800
            00040E080600000009F4D2670000001974455874536F6674776172650041646F
            626520496D616765526561647971C9653C0000038469545874584D4C3A636F6D
            2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22
            EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
            64223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F7265
            20352E362D633133382037392E3135393832342C20323031362F30392F31342D
            30313A30393A30312020202020202020223E203C7264663A52444620786D6C6E
            733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F3032
            2F32322D7264662D73796E7461782D6E7323223E203C7264663A446573637269
            7074696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D22
            687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F22
            20786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F
            6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D
            6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F786170
            2F312E302F2220786D704D4D3A4F726967696E616C446F63756D656E7449443D
            22786D702E6469643A63353831373636622D616233632D663834662D62396435
            2D6537353565303230316634632220786D704D4D3A446F63756D656E7449443D
            22786D702E6469643A3136423237333332364235333131453741443342433741
            3042394141364137302220786D704D4D3A496E7374616E636549443D22786D70
            2E6969643A313642323733333136423533313145374144334243374130423941
            41364137302220786D703A43726561746F72546F6F6C3D2241646F6265205068
            6F746F73686F702043432032303137202857696E646F777329223E203C786D70
            4D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D
            22786D702E6969643A38346266616138392D353266382D656634352D39633935
            2D393862613431643064333366222073745265663A646F63756D656E7449443D
            2261646F62653A646F6369643A70686F746F73686F703A33646139663065332D
            363638312D313165372D393762652D393563303131653037326662222F3E203C
            2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F78
            3A786D706D6574613E203C3F787061636B657420656E643D2272223F3E7CD3E6
            0F0000F74B4944415478DAECDD07B46455B52EE045962441104CA0888A8A0123
            1811153167316714510CE8553167C51CAE62C0882026CC59E12906E0FA0C080A
            26C084820A080690F0E6BCFBF4F3D87638A7CFAE9A55B5BF6F8C7F14DD74D7F9
            778B5DA766EDB5D65A975E7A69030000000018A2B50C480100000080A1322005
            0000000006CB801400000000182C03520000000060B00C480100000080C13220
            050000000006CB801400000000182C03520000000060B00C480100000080C132
            20050000000006CB801400000000182C03520000000060B00C480100000080C1
            3220050000000006CB801400000000182C03520000000060B00C480100000080
            C13220050000000006CB801400000000182C03520000000060B00C4801000000
            80C13220050000000006CB801400000000182C03520000000060B00C48010000
            0080C13220050000000006CB801400000000182C03520000000060B00C480100
            000080C13220050000000006CB801400000000182C03520000000060B00C4801
            00000080C13220050000000006CB801400000000182C03520000000060B00C48
            0100000080C13220050000000006CB801400000000182C03520000000060B00C
            480100000080C13220050000000006CB801400000000182C03520000000060B0
            0C480100000080C13220050000000006CB801400000000182C03520000000060
            B00C480100000080C13220050000000006CB801400000000182C035200000000
            60B00C480100000080C13220050000000006CB801400000000182C0352000000
            0060B00C480100000080C13220050000000006CB801400000000182C03520000
            000060B00C480100000080C13220050000000006CB801400000000182C035200
            00000060B00C480100000080C13220050000000006CB801400000000182C0352
            0000000060B00C480100000080C13220050000000006CB801400000000182C03
            520000000060B00C480100000080C13220050000000006CB801400000000182C
            03520000000060B00C480100000080C13220050000000006CB80140000000018
            2C03520000000060B00C480100000080C13220050000000006CB801400000000
            182C03520000000060B00C480100000080C13220050000000006CB8014000000
            00182C03520000000060B00C480100000080C13220050000000006CB80140000
            0000182C03520000000060B00C480100000080C13220050000000006CB801400
            000000182C03520000000060B00C480100000080C13220050000000006CB8014
            00000000182C03520000000060B00C480100000080C13220050000000006CB80
            1400000000182C03520000000060B00C480100000080C13220050000000006CB
            801400000000182C03520000000060B00C480100000080C13220050000000006
            CB801400000000182C03520000000060B00C480100000080C132200500000000
            06CB801400000000182C03520000000060B00C480100000080C1322005000000
            0006CB801400000000182C03520000000060B00C480100000080C13220050000
            000006CB801400000000182C03520000000060B00C480100000080C132200500
            00000006CB801400000000182C03520000000060B00C480100000080C1322005
            0000000006CB801400000000182C03520000000060B00C480100000080C13220
            050000000006CB801400000000182C03520000000060B00C480100000080C132
            20050000000006CB801400000000182C03520000000060B00C480100000080C1
            3220050000000006CB801400000000182C03520000000060B00C480100000080
            C13220050000000006CB801400000000182C03520000000060B00C4801000000
            80C13220050000000006CB801400000000182C03520000000060B00C48010000
            0080C13220050000000006CB801400000000182C03520000000060B00C480100
            000080C13220050000000006CB801400000000182C03520000000060B00C4801
            00000080C13220050000000006CB801400000000182C03520000000060B00C48
            0100000080C13220050000000006CB801400000000182C03520000000060B00C
            480100000080C13220050000000006CB80140000000018ACB56EF8DAFF5BDD01
            00000000A0840129F46393C86522978D6C1CD920B2F9DCBFCB9F5B27B26E64D3
            E57EDF6691B5ABCB03F4E4E4C817231754179941F95A92AF2DF93A32FF35272D
            7B2D596FEEDFCDB745757160D0FE19F94CE467D545A6DCFAAD7B8FB1F1DC3FE7
            FB8C7C6F91AF03F97AB0E1DCAF5BF6BE23E5EBC266D5C501A6C45906A4F0EFF2
            8DE795225B452E37F778F9B9C74C7E93B1F95CE6FF33C050FD367244E4B0C8F7
            ABCB4C817CEDB862FBD7EBCAB2D79965AF39CBBFBE6CD6BCC105A6CF19917744
            DE15F95D759909B24DEBFECECFD781FC006BCBB9C7F9FF3CFFE7F2432FEF3500
            46EB92C85D0C4819926D23DB45AE3CF7B87DEBBE39B9C2DCBFCBC1E846D52501
            A6C0DF234746DE1739AA75DF540CDD5AAD7B2DC9D796ABCC65FEEBCCB26CB8A6
            5F00600A1C1F7953E4A3ADBB7B7428F20EFFFC3B7F87D6FDFD9F7FF76F3BEF31
            DF67E46074BDEAA200FC8797445E6840CA2CC9E526578FEC38F7B8C3DC63E6AA
            ADFBC6058035F7EDD6DD0DF4F1C879D5650AE4EBC8355AF73A33FF3526FF39DF
            18AF5F5D10A0409EFAFBF9C8AB23DFA82E334279A7FFB522576BDDDFFBCB923F
            CE01A86DB300A6CF5722778E5C6C40CA34CA37A0D78C5C2772DD798FF986D5A7
            B200FD3AB375CBE7DFD9BA3D46872007A1D79ECBFCD7991C86AEB384E7059825
            7987E8E191D7464EAC2ED3A35CDABEECEFFE9DE7FE39B34D7531007A955B85ED
            12392B7F6040CA24CB4F61F353DAEBB77F1F86E6DD3BEB56970398717917D0C1
            914FB4D93D7429879D3904BD5EEBDE045F7BEE718766100AB032FF881CD2BA3B
            467F5D5D668972EBAD9BCEE526AD7BAF71A5EA52008C5C7EC8B747E49BCB7EC2
            809449B1EC4DEA8DE79253FC1BB6FF3C8D1780D1C965F3EF8FBC3D725275999E
            E5076B39FCBC51EB5E67F2313F80B3F734C0C25CD8BA83970E6ADD5D37D326EF
            0CBD59FBD73034FFF90AD5A50028F18CC8EBE6FF840129557293F25D5BF78DC9
            6EADFB4665D3EA520003757AE42DADBB23E8DCEA323DC983316EDEBAD79A4C0E
            4537AE2E0530852E6ADD87677988C5AFAACB2C42EE0D7DEB79B9767521002642
            AE90BB6FEBF6D0FEFF0C481997DC1FF45691DBCC3D5EA3BA1000ED3B9137B4EE
            9B848BAACB2C51BEF1CDD797656F84AF5A5D0860067C31F2F4C88FAB8B2CC0D6
            91DB45EE10B97DEBB64B0180F97ED1BA1B27FEE3A610035246250FB2C86F4C72
            4F871C8A5ABE02301972107A64EB06A3C7569759829D5AF71AB3EC7566EBEA42
            0033E4FB916747BE5C5D6415728BAE5C8D96A70FEFD5BA37BC4E92076065720F
            ED5BB4EE35EE3F1890D2977C637AC7D60D4533DB571702E0DFFC35F2AEC81B5B
            B7A47EDA6C1BB953FBD7EBCC15AB0B01CCA0DF479E1B795FE492EA322B905B72
            E56BC13D22778D6C595D0880A9F1B8D6BD1F5A210352D6944F6C01A6C3D991B7
            46DE14F963759945C84395F213DEBDE69207F7AD555D0A6046E530340FE8CBE1
            E839D56596B359E49E91BD5BF701D906D58500983A1F883C6255BFC08094C5C8
            6F4E72209A9FD8E627B73EB105985C7F6ADDC98C391CFD4B759905BA5CE42EAD
            7B9DC955099B55170218807C43F884C8FF54179927EF14CDD7821C8AEED90C45
            01587327B6EEF0D6BFADEA171990B23ADBB5EE13DBFC06E5B691F5AA0B01B04A
            CB06A3792AFDF9D5651620F7ACBE57E4EEAD3B64699DEA420003911F9E3DAF75
            1FA44DC272FA1C82E66BC1835A7753C686D58500987AE7B56EF5F3C9ABFB8506
            A4ACC8D522F79BCB4D9B258D00D3209744BEB6754BE9277D307AADD6BDC6DC37
            B24B75198001FA42EBF662FB4D759170DDC863220F8B6C555D068099F2C0C887
            17F20B0D4859260F55CA4F6BF30DEB8DABCB00B060B954E4CD9157B76EBFD149
            758DF6AFD799EB55970118A8BC6BF480C8BB8B7B6CD2BA37AD8F8EEC56FD8702
            C04CFAEFC8FE0BFDC506A4C3969FD03EA0756F586FD9DC290A304D2E8ABC33F2
            B2C819D56556E20AADDB3F2E5F676E565D0660E0BED1BA032A4E2BEC709DC853
            5BF7BAB049F51F080033EBF8C8AD23172EF43718900E4FEE219A7BFBE4A7B57B
            367B8A024CA34F440E8C9C525D6405720FB95C3AFFC8C81ECD9EA200D52E8EBC
            38F28AB97F1EB7BC09230FDECB3B57F76C6ECA0060B4FE1CB951E4F4C5FC2603
            D2E1D8A9757BFB3C3C72F9EA3200AC916323CF8C1C535D640572D97CEE67F7E0
            C896D56500F85FBF8B3C347274C1D7BE4CE421ADBB6374E7EA3F080006E1D2C8
            DD229F5FEC6F34209D6DB96C25F77A7B6CEB96D003309DCE8A3C3BF2DED6BDE8
            4F8ACD5AB7843E07A3F6AF06982C5F6EDD70F4AC317FDD8D23FB459ED1DC9801
            C078E56A89E7AEC96F34209D4D376FDD12FADCF8FCB2D565005863B9CFE8C191
            17B4EE94FA49904B23733F9F47B56E38BA61752100FECD259117B6EE4DE22563
            FCBA06A30054CAD512B9A5CB1A6D2763403A3B366ADD129627466E505D068025
            FB7AE4C99113AA8BCCD9B475FB8AE69BDF9DAACB00B042E7451E16F9D418BF66
            BE0F7942EBB680311805A0421E5A9BFB8EFE7E4D9FC08074FA5DB57543D1DC5F
            748BEA32002C59BEB83F3D72449B8CE5F4D78C3CA975271F5B950030B97E11B9
            57E4C4317DBD755BB7C54AAE72D8A6FAE20118ACBC63340F87FDC6529EC48074
            7ADDA2756FA0EFD99C100C300B7239FD9B222F8A9C5F5D26DCAE75AF3377694E
            1C06987447451E10F9D398BEDEBD232F8F5CBBFAC20118BC3CABE1A0A53E8901
            E97459BB759F0AE71BD65B549701A037F962BC4FE4FBC53DF26EA03CDC2FF78F
            73E812C07438B475ABC9FE3986AF759DC81B5BB7C71B0054FB4CEB6E1C5CF2CA
            3B03D2E9B07EEBF67DFBAFC88ED56500E8CDDF5AB73431EF1CBDA8B047EE1FF7
            D8C80191EDABFF500058B0D7B5EE3DC2A8B764C903985E14794A64BDEA8B0680
            705AEBF61D3DBB8F2733209D6CF98635F7F5C93B79AE545D06805EE5214C8F8E
            FCB2B043EE299A076BE460D4C11A00D32307A239187DDD18BE56DE2DFA8EC8D5
            AA2F1A00E65CD8BA95D5BD0D350D4827D32691FD234F6DDEB002CC9ABC6B34F7
            C9796BE492A20E9B479ED6BAD71A07FC014C975C4A9F4BEA0F1DF1D7C9D7871C
            C03EB2D98B1A80C9B25FE4E03E9FD08074B2E41DA3F93FF2B3225B559701A077
            DF8C3C2AF2F3A2AFBF69EB06A399CDABFF300058B41C8E3E28F2F1117F9DFBB4
            EE83BC6DAB2F1800967378E4217D3FA901E964B84CE4F1ADBBA3C8372100B327
            DFD0E65EA3AF895C5CF0F57365C2135BB71CF372D57F1800AC91DCAB3A87A31F
            1BE1D7C80FD2DE167968F5C502C00AFC2472B3C8F97D3FB10169AD3C2DF8E191
            1746B6AB2E03C0489CD2BA4F382B5E70F390BF7D22CF6B3E80039866F9E15A0E
            473F3AC2AF91075D1C11B946F5C502C00AFCB575C3D11F8FE2C90D48EBDC2D72
            50E43AD545001899B7479EDEBA7D47C729F78ABB7FE4E5911DABFF100058921C
            8E3E38F291113D7FBE663CB975EF4D36A8BE580058895CDD70D8A89EDC8074FC
            7689BC3EB27B75110046E69CD6DDB939CA65902BB36BE40D738F004CB73CAD3E
            579C7D7044CFBF65E4BD917B545F2800ACC23B22FB8EF20B18908ECF15222F6B
            DD29906B57970160648E8F3C3072EA98BF6E6ED5F2AAB9AFEDB46180D97060EB
            FE6E1F859D229F6E96D40330D9BE17B945E482517E1103D2D1CBFDDF0E883CB7
            75876400309BF22E9F37469ED5BA4399C665A3C8735AF75AB361F51F0200BD39
            38B2DF889E7BCFC887239B575F2400AC42AECCCB3DB2477EF38901E968EDDEBA
            FDE7AE555D048091CA53141FD5C6BFA4FEAE91B744AE56FD070040AFF2CECEFB
            B46EFFD1BEE57EA3B9E5D73AD5170900AB9037A0DCAB75AF892367403A1A5B45
            5EDBBAFD822C7304986D2747EE3DF7382E576CDDDDAAF7AFBE78007A775C648F
            D6FF017F39107D5BE471D51708000BF0EAD6ADCE1B0B03D27EE530F491ADFB1F
            71ABEA32008CDCC75BF7F7FEF963FA7AB987752EB7CC3DAD37ABBE78007AF79B
            C8CD23BFEBF979F374FA235A77270E004CBA635AF761E145E3FA8206A4FDC94D
            CEF354ADDB54170160E472B9C78B222F9DFBE771D8A575AF3337ADBE780046E2
            1F91DBB6EEB0BF3E6D1CF964E40ED51708000BF087D6ED3BDAF78785AB6440BA
            747920469E2E99B7FDAE5F5D068091CBBB45730B954F8CE9EBE5017F2F89EC1F
            59B7FAE20118997D2287F4FC9C5B443E1FD9B5FAE200600172EFED3C48F0A871
            7F6103D2A5D92DF2BEC835AB8B003016797A622E4F3C614C5F2FEFF6C937CBDB
            575F380023F5DEC8A37B7ECE6D225F8E5CBFFAE20060819EDFBAEDC4C6CE8074
            CD5CA67577F31CD09CFE083014B9E4F1EE9133C7F0B57239E46B22FB3687FD01
            CCBA135BB7EF689F87326D1D393A72DDEA8B038005FA62E42E6D7C5B98FD1B03
            D2C5BB49E4FD91EB541701606C8E8C3C34F2F7317CADDCCBFA3D91AB575F3400
            2397AF2BB9B7F4493D3EE796AD5B9A7883EA8B038005FA55EBF61DFD53550103
            D285CB3B45739FD117377BC0010CC9EB22CF8C5C32E2AFB35EEB5627E4D75ABB
            FAA201188BFD2207F7F87C1BB56E387AF3EA0B038005BAB07537891C5759C280
            7461B68B1CDA9C500F3024B941F8D3226F19C3D7CABDAC3FD89C500F30247D2F
            25CC03633F15D9ABFAC20060119EDCC6F39E6B950C4857EF0191774436AF2E02
            C0D85CD0BA25F51F1BC3D77A4CE44DADDB77148061383BB273E4773D3E676ECF
            F2A8EA0B038045F868EBE66EE50C48572E0F62CA37AC8FAB2E02C0589DD7BA93
            EA8F1AF1D7D924F2F6C843AA2F1880B17B44E4033D3EDFD323AFADBE28005884
            5322378BFCA5BA4832205DB16B443E12B961751100C62A3705CFA589DF1DF1D7
            C9BB86F2D3D29DAA2F1880B1FB72E44E3D3EDF5D5BB7B47E9DEA0B038005FA5B
            64D7C88FAA8B2C6340FA9FEE1F392472D9EA22008CD5EF23778C9C38E2AF93CB
            1FFFBB75076900302CF986303F243BB5A7E7BB5EE498C866D51706008B90EF89
            DE575D623E03D27FC94F5C5FD5BAE5296B55970160AC7E15D9B375CB3C466583
            D66DDDF2F8EA8B05A0CC81AD7BCFD1872D5B77E2EF8ED51705008BF0EEC863AB
            4B2CCF80B4B355E488C8EDAB8B003076BF6CDDDFFFA78DF06B5CA9754BEA77AB
            BE5800CAFC3472FDD61D04B8547943C7A72377ABBE280058841F446E11F97B75
            91E51990B676A3C82722DB55170160EC7E11D93DF29B117E8D5BB56E38BA6DF5
            C50250EACE912FF6F45CCF8C1C547D4100B008E7466E12F97975911519FA80F4
            7EADDBF360E3EA22008C5DDE39BA7BE4D723FC1AB9B74E9E54BF7EF5C50250EA
            A8D6DF6AB59B46BE1559AFFAA20060812E6DDD0CEEC8EA222B33D401692E4979
            6EE425CD7EA30043948763ECDEBABD474761D9BED6CFA8BE5000CAE59BC29B45
            BEDBC373E58D1DDF8B5CB3FAA2006011DE1039A0BAC4AA0C71407A99C87B220F
            AA2E024089BC63F4366D747B8E6E1A39BCD9170E80CE47227BF7F45C0747F6AD
            BE200058845CF5B047E4C2EA22AB32B401699EF4989B99DFB2BA080025CE6ADD
            A6E0A3DAF7E60A91CF4576A9BE500026C23F23D76EDD9ED74B956F2EBFDAAC80
            03607AE4FBAF3CFB6794673EF4624803D2AB45BE10B9567511004AE4A6E0B78E
            FC6844CF7FDDD60D47B7AFBE500026C65B234FEAE179368A9C10B97AF50501C0
            025D1CB96BE44BD54516622803D2DCC8FC33916DAA8B0050E26FADBBF3E6B811
            3DFFEEADDB707C8BEA0B056062E452C21D22BFEDE1B95E1E794EF50501C022BC
            38F2A2EA120B35840169BE21FE546493EA220094C837A877897C6D44CF7F8FD6
            ED2FB741F585023051DE1B79740FCFB353E48791F5AB2F080016E8CBAD7B0F76
            717591859AF50169DECAFBB1D61DCC04C0F0E4C9C10F8B1C36A2E7CF03FFDE1F
            59AFFA420198289744768EFCA487E7CA7D476F5F7D4100B040B9DF68EE3B7A56
            7591C598E501699E14F981E6935680213B30F2AA113DF73EAD3B4D789DEA8B04
            60E27C3272EF1E9E2757297CAAFA62006081F270C2DBB5EEE4FAA932AB03D247
            45DED5BC690518B21C5EEE37A2E77E6AE4F5CD49C200ACD86E916397F81CB93A
            E1A4C835AA2F060016E8E9AD7B9F3475667140BA7FE44DCD9B568021FB74E43E
            6D347BDE3C3FF292EA0B046062FD9FD6DD3DB3544F88BCADFA62006081F2D0DA
            FBB56E9BB3A9336B03D25C4AF98AEA1200943AA17577EEFCADE7E7CD0FDE72B9
            FE33AB2F10808976AFB6F465F11B457E1EB942F5C500C002E46BD64D22E75617
            5953B33420CDC1E881D52500287546E466ADDB18BC4F391C7D6BEBEEE6018095
            3935B263EB0E695A8AFC30EEA0EA8B018005F87BE49691EF5717598A591990BE
            38F282EA120094CA3B46F7881CD7F3F3E670F48D9127575F200013EFBF22AF5D
            E2736C18392D72F9EA8B018005C8C36B0FA92EB154B330207D5EE4A5D5250028
            95FBDC3C3872C4089EFB759103AA2F108089777EE42A917396F83C7910E01BAA
            2F060016E0FD91475697E8C3B40F48F374ACA57E420BC0F4CB21E63346F0BCB6
            6F0160A1F2EE997D96F81CEB467E11D9AEFA620060357E14D9B5F57FF6438969
            1E903AD51180745464CFD6FF89F5CF89BCBCFAE200981AB7887C6789CF91AB21
            0EABBE1000588DF322378D9C525DA42FD33A20DDBB75DF38AC535D048052BF6A
            DD698967F5FCBC3E840360314E8AECDCC3F37C2FB24BF5C500C06AE45CEE23D5
            25FA348D03D23B463E1B59BFBA0800A52E68DD69897DBF903D287268F3211C00
            0B975B7FBD7E89CFB15BE4DBD5170200ABF196368307D84EDB80F4E6AD5B4AB9
            51751100CAED1739B8E7E7DC23F285E643380016EEA2C89522672EF1793E1079
            58F5C500C02A1C17B94DE4C2EA227D9BA601E98EADFB4475EBEA220094CBE51C
            7BF7FC9CD78B1C13D9ACFAE200982A5F69DD5ED84BB165E437910DAB2F060056
            E24F911B474EAF2E320AD33220CDA1680E4777AC2E0240B99FB7EE85F92F3D3E
            E7955B77B0C695AB2F0E80A9F398C87B96F81C4F6ADD92450098449746EEDABA
            D57633691A06A4B99C3E97D5DFBCBA0800E572DFD13C25F87B3D3E67DE319A77
            8E5EAFFAE200983AB9C4709BC8394B7C1E87330130C95E1E795E7589519AF401
            E95A910F461E5C5D048089F0D4C89B7A7CBE3C88E953ADFB341400162B0F8FBD
            FB129F233FA03BA1FA420060258E6EDD81E917571719A5491F903E37F2B2EA12
            004C842F47F66ADDF28EBEBCB675270F03C09AD82772C8129FE3959167575F08
            00ACC019AD5BE1F087EA22A336C903D27B473EDEBABB480118B6DC103CEFB039
            A3C7E77C74E4DDD51706C0D4BA247295C8EF96F01CF95EE7D4C8F6D5170300CB
            C93B466FD7BAEDC866DEA40E486FD0BA439936AA2E02C044B84FE4133D3EDFAD
            235F8DAC5F7D61004CADE322BB2EF139F29C8563AB2F040056E0599157579718
            97491C906E11F96E6487EA22004C84F7451ED5E3F35D31922F7EDB565F180053
            ED0591972EF1390E8A3CB3FA420060399F8EDCABF5BBBDD9449BB401691E96F1
            99C89DAB8B00301172D9E2CE91B37B7ABEBC63F4A8C82DAB2F0C80A977D3D6DD
            D8B114A744AE597D2100304F6EFD72E3D6DF7BB0A9306903D217B7EE93580048
            77897CA1C7E77B7364FFEA8B0260EAE59BC6AD5AB70FE99ACAC1E829D5170200
            F35CD0BA9B49266A58380E933420CD37C19F6D0E6502A0F3BED6EFD2FA07470E
            ABBE28006642EE8B7D9F253EC793226FA9BE100098E70991B75797A8302903D2
            2B47BEDFBA4F6101A0EFA5F53B45FE27B249F58501301372B8F9D6253E476E2D
            76B7EA0B01803987471E525DA2CA240C4873DFD1A35B77A23000A43E4FADDFB0
            75270D5FAFFAA2009819D78DFC7809BF3FF7C4FE53F3C11D0093E127ADDB5BFB
            AFD545AA4CC280F46591E75697006062F4B16C71BE8323FB565F140033E3CFAD
            5BF9B694937D776FDD4D2200502D87A2391CFD4975914AD503D2DBB6EE34E1B5
            ABFF20009808E745AE1DF96D4FCF77CFC827AB2F0A8099928707DE6589CFF18A
            C881D5170200AD5B567F7875896A9503D24D233F8C5CADFA0F018089F1B4C81B
            7B7AAEBCBBE7C4C836D51705C04C7961E4254B7C8EAF476E537D21000C5EAEB6
            DBAFBAC424A81C90BE33B24FF51F000013E307AD5BDA71514FCFF7B1C87DAB2F
            0A8099B367E42B4BF8FDEB46CE8D6C547D21000C5A0E046F19B9A0BAC824A81A
            90E69294CFE6D7AFFE03006022E43E6EB9EDCA313D3D5F2E13F960F545013093
            B6889CB384DF7FE3C877AB2F0280413BBB75AF47A7561799141503D22D233F8A
            5CB1FAE2019818B9E7CD437A7AAE2BB5EE75668BEA8B0260E69CD696BE45D813
            23FF5D7D21000C56DE9C9267357CA6BAC824A91890E69BE007555F380013E3FC
            C84EAD9F83997265C2E7237B555F140033E9D3AD7B53B91487461E5A7D21000C
            D6AB23CFAA2E3169C63D20BD7FE423D5170DC044C9537C5FD5D3733D2EF28EEA
            0B026066E5E14C2F5CE273FC2CB263F585003048B9A5D9ED221757179934E31C
            906EDBBA258F5B555F34001323F7BCB976EB6763F01D223F8C6C527D5100CCAC
            FB453EBE84DFBF69EB0E6872160300E3F687C82E9133AA8B4CA2710E483F1C79
            40F505033051F275E1A33D3DD75723B7AFBE200066DA75223F59C2EFCFD382BF
            597D11000C4EDE317AC7C8D1D54526D5B806A4776DDDA9F500B0CCF1915D5BB7
            49F852E55E6E87565F100033EDA2C846917F2EE1399E10795BF585003038CF8D
            BCA2BAC4241BC78074E3C88991AB565F2C001365F7C8D77B789E2D232747B6AE
            BE200066DACF23D758E273BC39B27FF5850030285F68DD8D8B7DDC9832B3C631
            20CDD3B1FEABFA42019828B9AAE0EE3D3DD72191C7545F100033EFF3AD7B83B9
            145F8AEC597D21000CC6E9911B47FE545D64D28D7A40BA73E4FB9175AB2F1426
            D4D9D505A0407E7279EBC88F7B78AE5CA2FFEDE6B00B58914B5A77180CD08F77
            469EBDC4E7382DB27DF58530B5CE69EE0003162EF71DCD0FF68EAF2E320D463D
            203D2A72BBEA8B8411FB7BEB4EE2CE13E17E1739B375A7C2E58FF3539ABF44CE
            9B7B3C67EEF1A2EAD23003D68E1C17B949751118B1F35BF7E9FFEF5BF7FA92AF
            33BF9D7BCCD799F3DA7FBECE5C5C5D1AF80FEBB5EEFBC675AA8B3031FED8BA43
            BF4E6BDDFB88CCB2BFDFF303AEBFCC3DBAA90260C4463920BD7FE423D517083D
            B9B07577BB657E1AF9E5BC9C515D0E06EAB191775597809EFCA375AF31B96FFB
            CFDABFBFCE9C595D0EE8C5555BF7A13AC3947FB7E707BBDF89FCB075FBA75BF2
            0A3021463520CDD31DF393B0EDAA2F10D6407E4A7B6CE4BB91135AF7663587A2
            EEFA84C9B179EBFE7FE96026A651BE21CED799FC26EC4773C9C35FDCF509B3ED
            36AD9FC309990E7F6EDD9EEBB977EDD1CD875D00136D5403D2E7475E527D71B0
            4079C7CE31AD7BB39A9FEAE6A7B9F6F681C9F686C853AB4BC002E4EB497ED8F6
            CDD6BDCEE41E503FAD2E05947848E483D52518A97FB66E20FAEED69D1AED060B
            8029318A01E9B6AD5B3EB049F5C5C14AFC2AF2B5D6ED919B8F96C8C374B97AEB
            3ED858BFBA08AC442E8B9FFF3A7356752160221C18794575094622F77F7EEB5C
            BCB7009842A31890BE23F2B8EA0B8379F214DFBC33F453914FB76EFB07607A7D
            3472BFEA12304F2E8DCF3B4497BDCEFCA2BA1030910E8EEC5B5D825EE5DFFF6F
            6EDDEAC973AACB00B0E6FA1E905EA7751B4EAF5B7D610C5E2E6FF96AE413AD7B
            B3FA87EA42402F6ED1BA41D45AD54518BC0B225F8C7CB2757BCCFDB1BA1030F1
            F2FBD27B5597A037B92DD7235B7723060053AEEF01690EA2EE5E7D510C56EEF3
            96FBBB1D1EF970B3A4116651EE177CABEA120C56AE48C8FF060F8B7C2C727675
            2160AA7CAB751FF431FDF27DEF83227FAB2E02403FFA1C90EE1AF94EF5053148
            BF8E1CD2BA4DEF7F595D0618993BB7EEE00318B75C32FFAEC8875AB78F35C09A
            382572CDEA122CD9FB22FB34073001CC943E07A4B99CF9F6D517C460E45D3C79
            3264EE799B03938BAB0B0123954BEABF1BB95175110623B76AF94CEB5E67F27B
            9C4BAA0B01532FB7E2B85C7509962457103CAC752BD70098217D0D48F768DD29
            AD306AB9F979BE59CD4DEE4FAF2E038C4D1ECAF4D1EA120CC29991B7B5EE8ED1
            DF559701664A7EF0E2AC86E97552E466CDB27A8099D4D780340FCCB865F5C530
            D37218FAC6C8BB23E7559701C66AEDC80991EB561761A6FD3CF2BAD62D9DFC47
            751960E66C1C39BFBA046B2C97D3E770F4FBD54500188D3E06A4B9ACFEABD517
            C2CC3A31F28AD6DD39669F1F1826778F324AB975C32B5B771ABD65F4C0A85CA1
            B92B7D9ABD35F2A4EA12008C4E1F03D2A322B7ABBE10664E6E62FFE2D69D46EF
            0D2B0C57EE3D9A776BDCA0BA083327EF4A7E61E453CD5E72C0E86D1F39ADBA04
            6BE4EF91AB45FE505D0480D159EA803497D57FB3FA229829790A7D0E460F6FEE
            18055ABB5BEB0ECA81BEFCA47583D18F371FC001E373BDD67D30C3F4C93DA91F
            575D0280D15AEA80344F0FBF73F5453013FE127949E42D910BABCB0013E3B8D6
            EDF9054B95A747E760F49DCD0770C0F8ED12F95E7509D6C86E9163AB4B00305A
            4B1990E6A7A03F6CDDF247585379F7CEFB22CF8B9C515D069828BB478EAE2EC1
            D4CB61E8DB23CF8F9C535D0618AC5B458EA92EC1A2FD267295EA12008CDE5206
            A4EF8F3CBCFA02986A7930462E57711A24B0227968CE3DAB4B30D57218B16FE4
            C7D54580C133209D4E1F883CA2BA0400A3B7A603D23C85F1B4C8FAD517C0543A
            3FF282C89B231757970126D28EAD3BAC6DEDEA224CA5BC53F459ADDB37CE014C
            C02430209D4E7943D0A1D5250018BD351D90BEB4754BA261B1BE10D9AF39C513
            58B55C12FDF8EA124CA53C7C69FF66DB1660B218904EA79D5AF7812D00336E4D
            06A49789FC3AB2557579A6CA799103228754170126DEE691DF4636AA2EC254F9
            73E4899123AA8B00AC8001E9F4C9956EF9BD8803640106604D06A40F6BDD5E2C
            B050790AF58323BFAC2E024C85A744DE585D82A97254EBF688FB4D7511809530
            209D3EA74676A82E01C078ACC980F4DB91DDAA8B331572DFB7835A7772F045D5
            6580A9B056EB0ED4D9A9BA085321EFEEC93DAD5F15B9A4BA0CC02ADC28B2C6A7
            E352E26B913B549700603C163B20BD6173E2380B736EEB3635FF74751160AAEC
            D1BA3724B03A67451ED8BABB470126DDF52227549760513E1A7940750900C663
            B103528766B0102746EE13F959751160EA7C2472FFEA124CBCE323F76BDD9EE8
            00D360FBE690D269F3DEC8A3AB4B00301E8B1990E606D57922EC65AB4B33D172
            B8F198C8F9D54580A973B9C8EF22EB571761A2BDBB7587315D505D046011B66D
            DD7B29A6C7C191FDAA4B00301E8B1990E6213B87551766A2E57EA307B66EEF51
            80C5DA3FF2E6EA124CAC7C6D794EEBF61B0598361B46FE565D82453120051890
            C50C48BF1CB963756126521EC09477F3BCB3BA0830D5BE17D9A5BA041329EF16
            7D54E443D5450096E0C2C87AD52558B00F441E515D0280F158E88074BBC8A991
            B5AB0B3371FEDABAFD02BF505D04986AD78FFCB0BA0413E9ECC8BD22DFA82E02
            B0447F885CBEBA040B7664E4BED52500188F850E489F1D79657559264EBE69BD
            4BE4D8EA22C0D4CB2D3A9E595D8289F3C7C89E91EF571701E8C18F23D7AE2EC1
            82E50773B7AD2E01C0782C74409A6F4C6E585D9689926F5A73CB851F541701A6
            DE5AAD5BA5B07D751126CAEF23B76FDD400160161C1DD9BDBA040BF6DBC895AB
            4B00301E0B19905E2B7272755126CA59AD7BD3FAA3EA22C04CD835F29DEA124C
            945FB7EE43B853AA8B00F4E888C8DED52558B03C1C7093E6702D804158C880F4
            85911755176562FC3972BBC809D5458099F1C6C853AA4B3031F243B85B447E5E
            5D04A067AF893CA3BA048B92AB28ED910E30000B19909E14B94E755126C2B9AD
            DB0BEEF8EA22C0CCC8C3FF7E15B95275112642BECEDCBA59A100CCA62747DE54
            5D8245D92F7270750900466F7503D26B36CBDBE85C18B973E4A8EA22C04CB979
            73D01B9D5CC2788766BB056076DD2BF289EA122CCAC722F7AF2E01C0E8AD6E40
            9A4B405E535D9272B9FFCEC3228755170166CE2B22075697A0DCC5917B463E57
            5D0460846E1CF96E750916250FA6DD267249751100466B7503D26322B7AA2E49
            B9E7475E565D029849B671213D31F2B6EA120023B675E4CCEA122C5A1E1AF8D5
            EA12008CD6AA06A4978F9CD1BAFDE118AEBC6B34EF1EBDB4BA083073768CFCAC
            BA04E5726FB7FDAA4B008C491E78BA45750916E52391BDAB4B00305AAB1A903E
            3CF2FEEA82943A2EB27BE41FD5458099F4D4C81BAA4B502AEFC8D9AB754BEC01
            86C00ABDE97351EBCEE638B5BA0800A3B3AA0169DE39F8E0EA8294C9E53FBB44
            7E575D0498599F6FDDE16F0CD3E9911BB5EE6E2A80A17847E471D52558B40F44
            1E515D0280D159D9803497D5E7F2FACB5717A4446E429E77F47CA5BA0830B336
            889C1DD9B0BA08252E8CDCA6752B150086E4299137569760D172BBB15B47BE55
            5D0480D158D980D4098BC39607323DBFBA0430D3EED07C0833644F8FBCBEBA04
            40813CF0E7CBD5255823BF68DDCA87BF541701A07F2B1B901E18794575394AFC
            9FD60D2EEC07078CD2AB23FF555D82129F8ADCBB39FC0F18A62B467E5B5D8235
            F6E9C87D9AF74A0033676503D22F45F6AC2EC7D89D17B97EE4B4EA22C0CC3B3E
            72D3EA128CDD59919D5BB7CF35C050E580F48AD525586387461EDDBAC39B0098
            112B1A90AE1B3927B2717539C62E378C7F57750960E66DDABAFD47D7A92EC2D8
            DD3FF2B1EA1200C53E19B967750996245743EC1DB9A0BA0800FD58D18074D7C8
            77AA8B317679D7709E266DC923306A7908DC17AA4B307647441E545D0260023C
            27F2F2EA122C599ED99143D25F56170160E9563420CD3DE15E5D5D8CB1CA8DC6
            AF1BF94D751160105E1979767509C62A97D6EF14F9737511800970DBD6EDFBCF
            F4FB6BE4459137472EAC2E03C09A5BD18034379EBE7B7531C6EA1991D7559700
            06E39B915B569760AC1E19797F75098009B151EBB6345BAFBA08BDF979E4A591
            C39BBD4901A6D28A06A47970C2D6D5C5189B1323BB342FE4C078E43ED779D7FA
            86D545189B6F476ED56CE10230DF3722B7AE2E41EFF200AE43E662751EC01459
            7E407AD5C8A9D5A5189B7CB3BA47B3C407189F1BB76ECF2E86E1E2C84D223FA8
            2E0230619ED7BA3B0E994DF9FA7754EB0EE4FA4CE4D7D5850058B5E507A40F8C
            7CA8BA1463E3C00C60DCF68D1C5C5D82B1795BE489D525002690837187236F4A
            F961E4E8C83191E35B77A729001364F90169EE4379407529C6223711BF7673EA
            22305EEF6DDD7E94CCBEDC4A61C7D61DD004C0BF5BA7755B9B6D595D84127F8A
            9C14F9F15C721567DE65FABBE67513A0C4F203D2AF476E535D8AB1F8EFC8FED5
            2580C1C93B28AE5F5D82B1786EE415D5250026D84723F7AB2EC1C4F947E40FAD
            3BC8EBDC798F7F9FFBF71744FE565D1226D8D92BF8B97F46CE8F5CD2BAFF3FE5
            0D637F6DDDFFAFFE31F7EFF2FF5BE7CC85019A3F205DAB75FF215CB6BA142397
            7F115CBD752FBC00E3B241E4BCE6D4DE21C8D7977C9DF96B75118009F6E8C8BB
            AB4B00F01F72C87ACE0AF287B9E49DDE67CCFBE78C0349A7DCFC01692E83FB59
            7521C6E26591E757970006E78691EF5797602C72BB9E375497009870976BDD1B
            6C1F1C024CB78B5AB76DCA69915F454E9F7BCC9C3AF7785E7549566DFE80F4DE
            9123AB0B31727937CF55237FAC2E020CCE2322EFAB2EC1C8E5EBCBF6CDF23F80
            85F85264CFEA12008C5C0E504F8EFC3472CABCE4B930175597E3DF07A42F88BC
            B8BA1023F796C893AB4B0083E420C061C8EF255E545D02604A3C36F2AEEA1200
            94C9FD517350FA83C809738F1907B68DD9FC01E9E19107551762A4F25389DC4A
            E1F4EA22C0207D21B2577509462AEF1ACDBB47AD52005898AD5AB7CC7EDDEA22
            004C94DFB66E509A43BBEFCCE5DCEA52B36CFE8034F785BB61752146EAB0C843
            AB4B008395FBEF5CB5BA0423659502C0E27D3172A7EA12004CB44B223F8E1C1F
            F956EB06A63FA92E354B960D48F304FBBF4436A92EC448ED1A39AEBA04304897
            69DD1EC86B57176164F2E4CE6BB76E8910000BF780C887AB4B0030757E1FF9DA
            BCFCAABAD0345B3620BD4AF30739EB7E14B97E750960B0F2EF9F1F569760A48E
            89DCA6BA04C0145ABF754B29B7AA2E02C054CB03A07250FAE5B938347511960D
            486F1FF96A751946EA29913757970006EB7E918F569760A41E1E39B4BA04C094
            7A7DE469D5250098197F6FDD9CEFD391CF44FE505D68D22D1B90EE1379677519
            46E682C895227FAA2E020CD633230755976064CE895CB175DF8801B078D7899C
            545D02809994FB97E6768B9F8C1CD1AC205FA16503D297479E535D8691F94864
            EFEA12C0A0BD2DF284EA128CCC3B22FB5697009872DF8CDCB2BA0400332DCF0D
            C8ADB10E6FDD0ABF3F57179A14CB06A479BAF983ABCB3032B9F1BBA5AD40A5CF
            47EE5C5D8291B963B3550FC05239AC098071BA30F2C5C8075B7777E93FAB0B55
            5A3620F569E5ECCAE58E978F9C5F5D0418B41323D7AD2EC148E4F62DDB462EAA
            2E0230E5D68DFC22B25D7511000627F7287D77E45D91D3AACB54583620FD75E4
            CAD5651889FC14E0DED52580C1CB0F6936AE2EC148BC27F298EA120033220F56
            7D63750900062BF72BFD52E4ED91CF452EAE2E342E39205DBB7587F8AC5B5D86
            9170AA30506DB3D61DE2C36CBA7BE4B3D5250066C48691D3235B57170160F07E
            19796DE4FD91BF559719B51C906E138FBFAF2EC248E4E6BBF9BFEF59D5458041
            BB56E4E4EA128C447EC0BA45737A3D409F9E1D7965750900987366E4BF236F6D
            337CA8530E486F108F3FA82EC2489C10B941750960F06E1739AABA0423F1F5C8
            EED52500664C6E499377ED5CBEBA0800CCF3D7D6ED519A1FE29D595DA66F3920
            BD53EB4EAD62F6E4FE454FAB2E010CDE03231FAA2EC148BC20F2D2EA12003328
            BF877F7D75090058813C5FE24DAD5B7E3F335BA9E580F491F1F8DEEA228CC43D
            229FA92E010CDE53236FA82EC148DC2AF2ADEA1200336883D66D4F73D5EA2200
            B01267470E8ABCA5CDC01EA539203D201E5F575D84DEE5C963976B3334CD07A6
            56DE61F8BCEA12F42EBF09DA3CF2CFEA2200336AEFC811D525006035CE883C2B
            F2C1D69D8533957240EA8DEB6CFA69EB0E4601A8767064DFEA12F4EED8C86ED5
            250066D85A916322B7AC2E02000B902BCBF68F7CBFBAC89AC80169DE0AFBA4EA
            22F4EEF0C843AA4B00840F471E505D82DEE52996BE7F0018AD1B46BE1B59A7BA
            08002CC0C59177B4EE46CCB3ABCB2C460E480F8BC7075717A177CF68B64E0026
            C397227B5697A0778F89BCA7BA04C000BCB97577E400C0B438AB7567511C5E5D
            64A17240FAF978BC7375117AB747E4E8EA1200AD5B8A7DF3EA12F4EE466D4A97
            CF004C994D232746B6AB2E02008BF4E9D66DB776467591D5C90169EE6B73ABEA
            22F46EEBC81FAB4B00841F4576AE2E41AF2E8A6CD41CD004302E7943CBE7AB4B
            00C01AF873E409918F541759951C90FE201E6F505D845EE5C9F55B5497009873
            7A73D7CBAC3935B2437509808139A475DB9B00C0347A7F64BFC8DFAA8BAC480E
            48F3B4F36B5417A157DF8BDCB8BA04C09C3F45B6AC2E41AFBED2EC2B0B306EB9
            D4FE8791AB5517018035945BC6DC3F72727591E5E580D49D3DB3274F8C7E6075
            098039E7462E5B5D825EBDBD75CB640018AF5B44BE1E59B7BA0800ACA1F35BB7
            2FE961D545E6CB01A93B7B66CF2B23CFA92E0130E7D2EA02F4EE9991D7549700
            18A80323AFA82E01004B94375D3C25726175919403D2DCAF72B3EA22F42AF774
            38B8BA04C01C03D2D9B3779BF04DD60166D8DA914F45EE565D040096285745DC
            AF4DC021E306A4B329F773F8587509803906A4B3E70E91AF55970018B07CFFF6
            9DC8B5AB8B00C012FD2272E7C8CF2A4BE48034D7FE6F5CFDA741AFF6881C5D5D
            02A0757B8F9E5B5D82DEDDB07507850050270FDAFD9FE6661700A6DF5991BB47
            8EAB2A90035277F6CC9E9D232755970068DD9BB673AA4BD0BB2B46CEA82E01C0
            FFDE71F399C83AD545006089FE16B957E42B155FDC8074366D1BF94375098066
            403AAB366813B2993A00FF7B70DE41D52500A00717B4EEBC834F8DFB0B1B90CE
            A64D23E75797006806A4B3283FD9B5350FC064795DE480EA1200D083BC11E341
            9123C7F9450D4867D35AD50500E61890CE9EDC5376F3EA1200FC9BFCFEFFD0C8
            43AA8B00400F7248FA8036C63B4973407A5E3C6E527DE5F4CA801498147947FB
            5FAA4BD0AB3323DB549700E03FAC1BF978E41ED54500A0073924CDBDB68F1AC7
            17CB0169DED9E3E4C3D9E1CE1E60D258A9305B7E15D9BEBA04002BB47EEBEEB6
            D9ABBA0800F420B78FBC431BC3E9F606A4B3C78014983406A4B3E5D4C80ED525
            0058A93C48EF13ADBBEB0600A6DD59915B447E3ECA2F9203D2FC425B555F2DBD
            31200526CDC591B5AB4BD09B5F4476AC2E01C02AE59DA41F89DCB3BA0800F4E0
            A7919BB56EE6351239203D3D1EB7ABBE527A63400A4C1A2B15668B25F600D361
            9DC87B220FAF2E02003DF852E4AEADBB01A77739203D311EAF5B7D95F426FF43
            59B7BA04C03CBF8B5CA1BA04BDF97DF3BF27C0B4C8C35B5F1E39B0BA0800F4E0
            3591678EE2897340FADD78BC71F515D22BA7D80393E49791AB5597A037562A00
            4C9F4747DE1E59AFBA08002C419E6F71DFD6EDB5DDAB1C901E138FB7AABE427A
            B561E41FD52500E69C10B95E75097A735EE4B2D5250058B4DB473E1AD9A2BA08
            002C41DEB071A3D6DD88D39B1C907E2E1EEF527D75F46AEBC81FAB4B00CC3936
            72F3EA12F42AB77219C9DE3F008CD44E914F47AE515D040096E0B8D6DDEC7951
            5F4F9803D243E3F1A1D55746AFF21B9F53AA4B00CCF962E44ED525E8D5369133
            AB4B00B046729B94F746EE555D040096E0259117F6F56439207D4B3C3EA9FAAA
            E8D5AD23DFAC2E0130E788C8DED525E8D575223FA92E01C01ACB330B9E1A39A8
            D9971480E994778FEE1AF9BF7D3C590E4873E2FAFCEAABA257F78E7CB2BA04C0
            9C8323FB5697A057B78D7CA3BA04004B966F2C3F1CD9AEBA0800AC811F456E12
            B970A94F9403D2A7C5E3EBABAF885E3D36F2EEEA1200735E1A795E75097A9527
            471E595D02805E6C15796BE401D54500600DE44D9F2F5BEA93E480F491ADDB83
            86D9D1CB7F1C003DC9257C6FA82E41AFF68FFC777509007A75FFC8DB5A373005
            8069F18FC8CE915F2CE54972407AC778FC72F5D5D0AB4322FB5497009893FB8F
            1E515D825EE5C0FB80EA1200F42E0FE17B7B73801300D3E57391BB2DE5097240
            7A8378FC41F595D0ABAF44F6AC2E013067F7C8D1D525E8D5A723F7AC2E01C0C8
            3C24F29AC815AA8B00C002ED15F9D29AFEE61C905E3E1EFF507D15F4EAD4C80E
            D52500E65C2B727275097A959BA15FBFBA040023B579E445912746D6AD2E0300
            AB7152E486AD3BDD7ED17240BA763C5ED0BCE8CD928B239BB46E1F06806A9B45
            CEA92E41AFFE1AD9347269751100462E3F10CB7DA76F5D5D040056E35191F7AD
            C96FCC01693EFE3A72E5EAABA057BB345B270093E3FCC8C6D525E8D5D523BFAC
            2E01C058AC157950E49591EDAACB00C04A9CDEBA158C172CF6372E1B907E3372
            CBEAABA0570F8F1C5A5D02604E2E77B84E75097A75DFC891D5250018AB0D23FB
            470E6CDD127C009834B935CCDB16FB9B960D480F8B3CB8FA0AE8D5EB234FAF2E
            0130E7F3913B5797A0572F8B3CBFBA040025B6883C23F2E4D66DED05009322EF
            22BD66E4C2C5FCA66503D297479E537D05F4EA98C86DAA4B00CCC94FF09E505D
            825E7D2E72B7EA120094DA3AF2B4C87EADDB731C0026C16322EF59CC6F583620
            7D7CE4EDD5EDE955EEF7979FECAED1E95D003D7B56E455D525E8D5EF2357A82E
            01C044B86CEB86A44F896C5B5D0680C1FB7164E7B6884365970D48EF18F97275
            7B7AB75BE4D8EA120061EFC811D525E8DD4E9153AA4B0030312E137964E4BF22
            3B54970160D0F68A7C69A1BF78D98074FBC869D5CDE95D6E9EEE8E2D60125C3F
            F2C3EA12F46EDFC83BAA4B003071D68EDCB5750765DC71EEC700304E9F8DDC7D
            A1BF78D98074ADD62DC9DEA8BA3DBDCA49F95ED525005AF7FA92AF336B5517A1
            577957F083AA4B0030D1766CDD076A8F8A6C595D0680C1B82472B5C8AF16F28B
            970D4853DED973FDEAF6F4EAAFADDB87F49FD545005AF7C27495EA12F4CA3EA4
            002CD486ADDB722707A5B76AEE2A0560F45E1679FE427EE1FC01E987230FA86E
            4EEF6E17F93FD525005AB7D7F51DAB4BD0BB5D223FA82E01C054D92EF2B0C843
            5BB79F35008C42DEA49377915EB2BA5F387F40FAE2C80BAA9BD3BB37B7EE3449
            806A6F8A3CB9BA04BDCBEF1F5E545D0280A975B3D60D4BEF13B96275190066CE
            1D225F5BDD2F9A3F20BD6FE463D5ADE95D4ECBAF1AB9B4BA0830788F891C525D
            82DEE5163D37AC2E01C0D4CB25F7BB46EED5BAF7A63B5417026026BC37F2E8D5
            FDA2F903D2DC3CFB67D5AD19899B46BE5B5D0218BCBC43E4B8EA128C447E0FF1
            8BEA1200CC943C1F23EF2ABD47EB3E8873D023006BE29CC836910B57F58BE60F
            48F313BBBF4436AE6E4EEF5E11796E750960F0F224FB7C9D59A7BA08BD7B56E4
            D5D525009859976FDD3EE6993B45B6AD2E04C054B94BE40BABFA05F307A4E9D8
            C8CDAB5BD3BBD35BB74465B59BD2028CD8C9916B5597A077274576AE2E01C060
            5C2FB267EB0EA4DD2DB265752100265A6EF5B6CFAA7EC1F203D2B7459E50DD9A
            91D83DF2F5EA12C0E07D28F2C0EA128C44BE413DB6BA040083934BEF776ADDEB
            D02D5BB78F69FE78EDEA62004C8C3322576EABB87170F901E9235BB77929B3E7
            B0C843AB4B0083F7B4C8EBAB4B3012EF88EC5B5D0200C266ADDBFBFC0673C93B
            4EAF1359AFBA180065F275E17F56F62F971F90E68BC649D58D19890B5A372DFF
            63751160D0F2CE8E6F56976024727FD92B44FE565D04005660FDC8B5DBBF06A6
            D76CDDB63F579BFB7700CCB63C9BE7152BFB97CB0F487319429EEEB469756B46
            E2F99197559700062D0F6A3A37B26E75114662BFC8C1D525006011F2F0C8ED22
            3BCE2507A7576FDDCD25576CDDC9C7004CBF6F446EBBB27FB9FC80347D2DB247
            756B4622F75CC84F482FA82E020CDA0F5A77F706B3E7E7ADBB1BC7A18000CC8A
            BCBB3407A5576EFF1A9AE6E35691AD23979F7BDCBCB9D1086092E52C2CFFAEFE
            C78AFEE58A06A42F8D3CAFBA3523F3B8C8BBAA4B0083F6D6D6DD69C86CBA6FE4
            C8EA1200502057C8E49BEF2D22976DDDCA990DE67E7C99C886ADDB1F35FF79E3
            79BF67F9C1EA0673BF1758B8FCFFDE5A73FF9CFFFFDB6CEEE7321B54976362E4
            966FDF5ED1BF58D18074CFC897AA1B33323F8EEC1CB9B4BA0830587B478EA82E
            C1C8E449F6BB559700008039F9E1C4B2BBBFAF32F7B843EB563EE57C64CBEA82
            8CCDB322AF5ED1BF58D1807493C8D9CDFE70B3ECFE918F559700062BBF39F96D
            750946EAF691A3AA4B0000C002E4D0F4A691DB446EDDBAEDC0D6A92EC5487C32
            72EF15FD8B150D48D3F1ADFB8F83D97472EB4E6EBCA8BA083058B957E5D5AB4B
            3032C7B5EE2E52AB1500009836B93CFFAEADDB3AEACEADBB0395D97056EBF68E
            FE0F2B1B90BE26F28CEAD68CD4A322EFAB2E010CD6BB238FAE2EC148E527B39F
            AC2E0100004B90FB053F30F2E4C8F5ABCBD08B6BB4EE869D7FB3B201E95E912F
            543766A44E6FDD7E1B4EB4072A3C287278750946EAC4D62D4F72A23D0000B3E0
            B691174576AF2EC292AC70DBC9950D48F3F6E1DC87D4495FB3EDBF22AFAD2E01
            0CD2D691DF47D6AE2EC248ED1339A4BA040000F428574AE5CA6B5B864DA79747
            9EB7FC4FAE6C409ABEDABA4316985DE747766A0E4B016A7C3F72C3EA128C54EE
            F193AB15CEAE2E0200003DDA28F2FAC8E3AB8BB0689F89DC63F99F5CD580F459
            915755B766E48E68DD525780713B28F2CCEA128CDCC191FDAA4B0000C008E4B9
            0AEF88AC5B5D8405FB59E49ACBFFE4AA06A4BB44BE57DD9AB1D8237274750960
            706E1739AABA04237771E466CDF7140000CCA6BBB76E4FCBF5AB8BB020F9FE24
            0FDFFAB733795635204D7990CF76D5CD19B9935B3710FF4775116050D66BDD12
            ECCDAA8B3072FF13D9AD75DF8C0000C0AC7948E4D0C85AD54558909D2327CDFF
            89D50D48DF167942756BC6E2D5ADDB5601609C0E8B3CB8BA046391AF31AFAE2E
            010000239207373DA3BA040B9277FD7E76FE4FAC6E407AA7C817AB5B33167957
            CFAD23DFA92E020C4A0E470FAB2EC158E42A859B464EAC2E02000023904BEC8F
            8FDCA0BA08ABF5E4C85BE6FFC4EA06A41B44FE18D9A4BA3963F1CBD69D287D5E
            7511603072797D2EB35FAFBA08637142EBF623BD60A94F0400001368D7C8B79B
            A5F693EE0D9103E6FFC4EA06A4294F39DFBBBA3963E3547B60DCBE14D9B3BA04
            6393DBF73CB1BA0400008CC891917B579760953ED2969B752E64407A9FC8C7AB
            9B33564F8ABCB5BA0430188F8DBCABBA0463955B2B7CA8BA0400008CC08D22AB
            1DB651EA5B915BCDFF89850C48378C9CD92CB31F920B5BF71FCAFF54170106E1
            7291339A65F643727EEB96DAFFA4BA0800008CC071ADFB7E97C9F48BC88EF37F
            622103D27478B3EC7A684E6FDD611A6755170106C132FBE1F971E4169173AB8B
            000040CFF210A037559760A5F2EC9DCBCEFF89850E4873EF8423ABDB3376F989
            C7EEAD3B791860941E1D79777509C62E07E3778D5C5C5D0400007AB443EBEE52
            6472E58AF9FF3FEF5AE88074FDD62D7FDCB2BA3D637758E461914BAB8B00332D
            3FBDFB7DEB5EA418968323FB55970000809EE5CADCEDAA4BB052578EFC76D90F
            163A204D79688F3730C3F4AAC881D52580999787F63CB0BA0425F235E655D525
            0000A04787461E5A5D8295BA6EEBB6FDFA5F8B1990EE1AF94E757BCAE4FE196F
            A92E01CCB43B473E5F5D8212B94AE191910F54170100809ED88774B2ED163976
            D90F1633204DA744AE597D0594C837AFFB347B0402A3B36EE4D7916DAB8B5022
            F721CD03213F5A5D0400007A9087D07EA9BA042BB5579BF7BFCF6207A4CF8EBC
            B2FA0A28936F5E1FD1BA7D490146E1A0C833AB4B50E6C2C87D239FAD2E020000
            4B9437189E525D8295BA5BE473CB7EB0D801E936915FB5EED026862987A40F89
            7CB8BA083093AED1BA6F22D6AA2E42990B22F78E7CA1BA0800002CC1A691BF54
            9760A5EE13F9C4B21F2C76409A72E9DBFDAAAF825239247D4CE4FDD5458099F4
            D5C8EDAB4B502AEF24CD03BB3EB1D42702008042F97DED7AD52558A1BCF9EFF0
            653F589301E91D225FA9BE0ACAE59EA40744DE585D0498390F68EE52A7B58B5A
            B7F7F5FBAA8B0000C01A3A27B25975095668C903D25CF698CB1FAF517D254C84
            57470E8C5C525D049819B98D4B1ED674F9EA2294CB0FE35E1079597511000058
            0306A493EBF191772EFBC19A0C48D3D322AFAFBE1226462E817C78E4FCEA22C0
            CC7869E479D52598181F883CAE75FB930200C0B430209D5CFB450E5EF683351D
            906EDEBABB7B36A9BE1A26C60F22778FFCA6BA083013AE1039BDD9AF877FF956
            EB36523FB3BA0800002CD0B991CB569760857A1990A63747F6AFBE1A26CAEF5B
            F7E6F53BD5458099F0A1D61DD403CB9CD6BA13EE7F505D04000056639DD6EDAB
            CF64EA6D40BA63EBF6225DBBFA8A9828FF8C3CAB7587375D5A5D06986ABB44BE
            575D8289F38FC853DABCFD8200006002E5990A7FA82EC14AF536204D47B6EE4E
            0E58DE27238F6ADD7E1B006BEAE8C8EED52598488745F66DF6BF06006032DD28
            B2A4A11B23F598C87B96FD60A903D29B468EAFBE2226D6A99187344BEE813577
            A7C817AB4B30B14E6EDD360C3FAC2E020000CBB95FE4A3D52558A99C571DBEEC
            074B1D90A6AF466E5F7D554CAC8B23FF8FBD3B81BF6D2AFF38FE188A8C09858A
            AB0C91925929DD8A4C49452A21A9502A533429A21145A9282A53A3A48950E9A6
            C9F4272591E4964C19CA9CF9BFBED639DDE338F37AF65E7B9FFD79BF5ECFCB75
            EFEFB77E6B9FDF397B78D65ACF3A2CC401C6EEC30026A365F66BE4EE042AEBBE
            101F09718851E309000000D5A13CC881B93B81BEB6B6B832FE111E09D28D42FC
            34F751A1F22E0DB163888B73770440ED6C1BE2DBB93B81CA3B2FC44E16679502
            000000B99D1562E3DC9D405FAF08715AFB7F3C12A4724188B5731F192A4F1B38
            6986CFC742DC93BB33006A439B012AE9B562EE8EA0F2746D3938C4A72DCE2C05
            00000072789CC53D5916C8DD11F4F5528B7B5E3CC22B41BA45881FE73E32D486
            6A93BEDB78CF00189D66A01F9FBB13A80D25D4770F7176EE8E000000A0915E10
            E237B93B8181B4AFD285EDFFF14A90CAF9ADC6815169A7FB3D42FC2377470054
            DEBC21FE1462A5DC1D416D3C6C71A7FBFD425C9FBB330000006814AD68DA3B77
            2730D02AD6519ECB3341CA2C524C42CB213F1FE2E316A79F03403FDB87383177
            27503B775ADC2CF0D3AD3F03000000457A7C88D92196CEDD110CF4D410D7B5FF
            C733412ADA2061DDDC47885ABAD9626DD22F1A75E300F4368FC559A42BE7EE08
            6A49B348B593E8D78CDDEE010000509C3784F846EE4E6028D587FDDFFE38DE09
            52EDCE7556EE2344ADFDCDE26CD2132C6EEA04009DD8D11EA9B48CE6A321BE15
            E2C1DC9D010000C054D106B39784582D7747309012A38FDA40CB3B412A4A906E
            9CFB48517BB3437C2AC4578D19A500E698CB62CDEBB5737704B5F7178B0372AA
            53CA8C5200000078786B8863727702435D1BE2699D7F51448274AD1017587C88
            0552FD33C4E1218E0D717BEECE00A8848D42FC3477273035B47241F5498F0F71
            57EECE000000A0B65473F4D2104FCADD110C7591C5FCE5FF149120152D5B7B5D
            EEA3C554B9C362DDB8CF85B82A77670064C76A0578FBB7C5D17E6D1C784DEECE
            000000A056B45FC24F8C6794BAD0EF6AF3CEBF282A41BA82C5ACF97CB98F1853
            E7A1103F0AF1E510671AF5E380A65AD3E26A85B97377045347CBEDBF6731597A
            B6C5EB0E00000030C86743BC3B772730324DC0DBB9F32F8A4A90CA6121F6C97D
            C4986AAA19A11AA55A16C9AC52A079BE625D1735C09996DF1FD70A6695020000
            A09703431C90BB13188BF622F860E75F1499205D34C4952196CC7DD4987A0F87
            F885C5D20EA784B8357787009462298B1BED2C9CBB23987A5AADA0B20EBACEFC
            20C46DB93B04000080ECB4AC5EB5ECF7C8DD118CEDED218EEEFC8B2213A4B26B
            F70F040A76BFC5CD5BBE6D3CC4024DF081101FCBDD0934CABD21CEB0982C55C9
            173676020000681E6DC874528897E6EE0826F28A10A775FE45D1095265D32F0E
            F19CDC478E46D243AC6696FED0E243EC3F73770880BBF9435C1662F9DC1D4123
            DD13E2671607E474837543EE0E010000A050DA034165BE3E65EC565F67CF0DF1
            C7CEBF283A412A2F0AF14BFDACDC478FC6D39B5FB37EB4E9C6AF43DC99BB4300
            5C6C69712004C849E55E7E6FF13AA3A4E9EF2C2650010000507F4A8C6E16E2E0
            106BE4EE0C92A94CDBA37242652448E5B8106FCA7DF44007ED52AC1DB067B542
            0FB277E4EE1480896996F82B727702E8A0550CE7595CC930CBE23587E5F80000
            00F5B24088ED43EC1D62E5DC9D810BADFA5ABAFB2FCB4A903E39C415219E98FB
            5500FA7828C4E521CE0F7161EBBF9784B82F77C7008C444BECB5D47EFEDC1D01
            FAD0464F7FB2982855E83A73A9C5DAD9000000A80E3D5368B6E8B61657AB2D98
            BB4370F59B102FECFECBB212A4B27B88CFE77E1580316896E99516932E7F6AC5
            9F43FCD558360954D1FE1697BC0075A1E4A80690DBD799CB5A7195C519A80000
            00289E6689AE1DE22521668658DF987831CDBE66B18EECA394992055BD06D57D
            7C7EEE570270707D88D9ADB83AC43F2C4ED3FE57881B5B7FBE3B77278186797C
            888B423C3B77478044AA67AAEB8CAE2FB343FC2DC43516AF2D37B5FE4DD71B06
            EB00000046336F8865422CDB8A152D6E28AECD7A9E6931678566D82FC4A1DD7F
            59668254560BA11FF8F8DCAF065002D59ABBD9626DD33B5BFFFD4FEBBF0FB4BE
            46FFFF70EE8E0215708CC55973A95E10E257C60D0E9A41D796EEEBCC6D216EB7
            B8A45FFE9DBB93006AC3EB5ADCA64D7ADF1362F1DC0706A03154D651E79E2784
            58ACF5FFEDFF2E15629EDC1D442568EF8AD3BAFFB2EC04A91C14E243B95F0D00
            40A5FCD8627D1F0F47867867EE030200A0464EB6586BCFD3BE210EC97D600000
            747986C5955A8F9223413A5F888B43AC92FB15010054CA2621CE726867618B9B
            DF2C9BFB800000A8016D54BAAEC559E85E360C71B6315B0B00502DB78458A2D7
            3FE448908A2EC0BF352E98008039F480A61A401EBB7A6F1CE24C8B4B6C000040
            6F2A09A567B3CB1CDB5CDA624DF0A5721F1C00005D7E66F159F131722548E5A3
            213E98EB8703002A699F109F716AEBA810BBE53E2000002A6CBB10DF746C4F9B
            A068E6E88B721F1800003D7C2AC4FB7AFD43CE04A9366ABAD0E2AE6100008836
            2E5BD9E20EDDA9160A7189C51A330000E0D13E1FE25DCE6D1E6671B01300802A
            52BDED937BFD43CE04A93C2FC479C6AEF60080394E0AB183535BAA81F60B6357
            7B00003A9D1BE2C521EE736C736B8B0F9D94B7010054D50A21AEEAF50FB913A4
            B29FC529AE0000C8C32136B2B844CF8376D0DD37F741010050113785582BC435
            8E6DAE14E2FC108BE63E380000FAF87788C52D3E6F3E461512A49AD5A35D8B5F
            96BB230080CAF88BC50D9BEE75684BAB143453668DDC07050040660F86D8DCE2
            F39797052C5E67299D0600A8B2D3436CD1EF1FAB9020956542FCC16226170000
            3930C4479CDA7A96C5BAD70BE63E28000032DA3FC4C79CDB54699C37E63E3000
            0086F840884FF4FBC7AA244865AB10A71A356B0000D17F43AC6E7136A9879D42
            7C2DF741010090C96921B6B43E4B0B27F48E105FC87D6000008C40FB53FCAADF
            3F5629412A4784D8237727000095F16B8B9B483CE4D4DEF12176CC7D50000094
            EC6A8B7547FFEDD8E6BA161F34D97017005075778778920D28E156B504A92EAE
            E784582F7747000095B16788CF3AB5A53A6917845835F74101005012ADC8D820
            C4458E6D2E11420F92CBE63E380000467066884D077D41D512A4B29CC58B2DF5
            4801007297C58D1FAE766A6F158B4952EA9102009AE06D218E756C6F1E8BCBF5
            37C97D6000008CE8BD210E19F405554C90CA66217E6C71877B00007E1E6263F3
            AB9BB65D88AFE73E2800000AA6DADB3B3BB779608803721F18000063785E884B
            067D415513A4F261F3DBBD1800507FEF34DF8D200EB7B87C1F008069F47B8B4B
            EBEF766C53CB13357B94892C0080BAB82EC4D36CC8649B2A2748B59BFDF742BC
            2A7747000095A007BC35435CE1D49E9608FE2CC4CCDC07060080B3DB2C6ECA74
            95639B94420300D491CACCBC6DD8175539412A8B863837C4B3727704005009AA
            1DAAD930F73BB5B764880B8D4D260000D34333645E1DE2078E6D6A33DDDF8458
            3BF7C1010030264DBC1C7A4DAC7A8254560A71BEC56429000007996FED33CD4A
            FD95C51DEE0100A8BB4F85789F739B4785D82DF781010030A63B433C39C43DC3
            BEB00E095279698833423C2E77470000D93D18E28516571878D92AC4A916CBBB
            00005057B3426C64F15AE965871027E43E30000026704A886D46F9C2BA2448E5
            ED21BE98BB1300804A981D628D10FF716C53B36D3E91FBC00000989036A1D0AA
            881B1DDB7C8EC5014956590000EAE8F521BE3DCA17D629412A4784D823772700
            0095F0DD10AF756EF3F8103BE63E300000C6A4DADC5A75F76BC73655E24CA5CE
            56CA7D7000004CE0AE104F69FD77A8BA2548B5E3B076B67F65EE8E00002A6177
            F35D5DA04D287E62F121130080BAD83BC4E18EEDA9E4CCC921B6CE7D6000004C
            E89B21B61BF58BEB9620152DEF383BC47AB93B0200C8EEBF21D60F7189639B9A
            31A34D9B9E93FBE0000018811299AFB3B87BBD97F7843834F781010090E01521
            4E1BF58BEB9820952543FC36C40AB93B0200C8EE2F21D60D719B639B4F0BF1BB
            D67F0100A8AACB2D5E03EF706C73438B1352E6C97D7000004CE8FA10CB867860
            D46FA86B8254941C3D27C4D2B93B0200C84E3BD06B19A0E7EC19CD20D575E689
            B90F0E00801E54534DC9D1CB1CDBD4B3D5452196CA7D70000024382CC4BEE37C
            439D13A4A287D759219E94BB230080ECDE1FE293CE6DAA9C8B66D1B07B2F00A0
            6A5457ED9B8EEDCD6BF19AF7A2DC07060040828742AC1CE2AFE37C53DD13A4A2
            87D79F87583077470000593D1862138BD7044FDAB0491B373D3EF7010200D0F2
            F910EF726E53B36DF6C97D600000243A33C4A6E37ED33424488587570080DC14
            629D107F776E77AB10A718F5D80000F99D1BE2C521EE736C53656AB4D9D35CB9
            0F0E0080444A8E9E39EE374D4B8254B43B951E5E49920240B3FDD1E2CEF6773B
            B7FBC610C71B495200403E1A085C2BC4358E6DAE14E2FC108BE63E3800001269
            59BD96D73F34EE374E5382545E63B10E0F49520068B622366D929D421C6B2449
            0100E5532999CD439CE5D8A66A6C6B46EA73721F1C00000EDE1DE2C849BE71DA
            12A4B24D886F190FAF00D0740787F87001EDEE6C3149CA3244004099744D3BD8
            B9CD1342EC90FBC0000070707B886543DC36C9374F638254B60DF10D23490A00
            4DA6D9A37AE8FB7A016DEF12E26823490A002887F65BD8C27C5746EC16E2A8DC
            0706008093A40932D39A201596DB0300B4818536F2FB4D016DEF642CB7070014
            6FB6C5BAA3B73AB6B9B6C56B23CF4A008069F09F10CBB7FE3B91694E908A366E
            FA6E88F972770400908D36B47881C582DDDEDE607179E2BCB90F12003095EE0D
            B14108CF87B6C55BED2D97FBE000007072408883521A98F604A96C1CE2FB160B
            9003009A49C95125496F2AA06D562C00008AB26B882F3BB6377788D3426C9AFB
            C0000070A215169A3D7A7B4A234D4890CA0B43FC30C462B93B0200C8E63C8BCB
            EDEF2EA06D3D686AC5C282B90F120030358EB758CEC59366D81C98FBC0000070
            F4C1101F4F6DA4290952796E8833422C9DBB2300806C3458A6199F0F16D0F6FA
            1667E53C29F74102006AEF128B2B1F3C07F536B1789DA2763600605A5C1762E5
            1077A636D4A404A968CAED592156C8DD110040362785D8D17C77026E5B35C499
            219E96FB200100B5759BC54D99AE726C53F546F5E0B778EE830300C0D14E1657
            5C246B5A82549E12E2C716776E040034D31121F62AA86D3D849E6E31590A00C0
            383478F7EA103F706C5335B2B5633DCF3F008069726188F5423CE4D1581313A4
            A21A71DFB2B8CB3D00A0990E0CF19182DA56CDEBEF859899FB200100B5F2A910
            EF736EF3A810BBE53E3000001CA964DAF3435CE0D5605313A4A2DA3B4786787B
            EE8E0000B2D92FC4A105B5AD193B5F0DF1C6DC070900A88559213632DF3AD93B
            843821F7810100E0EC0B21DEE9D9609313A46DFB86F86488B97377040090C51E
            213E5750DB738538C8E2CE8A73E53E500040656993893543DCE8D8E673429C1B
            6281DC07070080A36B2C5EE36EF36C940469B44588AF87583477470000A553BD
            B75D431C53E0CFD8D6E26CD205731F2C00A072EE0FF1D210BF766C53CF35E787
            5829F7C10100E048CF6E2F0FF133EF864990CEB1B2C562E82BE7EE0800A0742A
            ECBD4B88AF14F833560FF1FD1033721F2C00A052F60E71B8637B5AB1707288AD
            731F180000CEB4F26F8F221A2641FA688B843829C496B93B0200289D46235597
            FA4B05FE8C25427C27C44B721F2C00A012BE6B7195C1C38E6DEE13E2B0DC0706
            0080B32B42AC11E29E221A2741FA58AA45AA5D8DA9170700CDA307D477592CFA
            5D9479437CA6F5730000CDA507BD7543DCEED8E68B429C6DF15A0300C0B47820
            C40616CBC7148204697FDB84F85A888572770400502A2549B5DCF188827FCE9B
            431C1562BEDC070C0028DDDD1693A37F726C73A9101785583AF7C10100E04C93
            183F5EE40F20413AD873439C1AE219B93B020028DD011677A02FD2FA214E09B1
            4CEE830500946A7B8B9BC47A99C7E2CCD10D731F180000CEB48FC36BCCB71CCD
            6390201DEE89166792BE2A77470000A5D32C52CD262DF262AC193F2784D838F7
            C102004AF1C510BB3BB77948887D731F180000CE548E66BD10B715FD8348908E
            46B548F70CF1A9108FCBDD190040A93448F6B6100F16F83354FF5ACB46346B75
            9EDC070C00288C6AA7A94EE87D8E6DBEDAE26A04F64F00004C933B2C2647FF5C
            C60F23413A1E2D85FC668819B93B0200289596756C6705ED98D841BBDB7FC3E2
            AC5200C074B939C45A21FEE1D8E68A212E08B168EE830300C09156F0BDD6E200
            602948908E4F4BEEB5A9C6EB7377040050AADF86D832C4AD05FF9C25431C1BE2
            95B90F1800E046AB10360F7196639B0B84F89DC57D1300009826EF0FF1C9327F
            2009D2C9A9B0FA17422C92BB230080D25C1E62B310B30BFE395A26B95B88C32C
            3E000300EAEDC3210E766E53F5AB77C87D60000038D3A4C47794FD434990A699
            6171F7C917E4EE0800A034D75B9C495AC60574951027855833F741030026F693
            105B98EF867F1A443B2AF7810100E04C39360DFE15BA637D2F2448D369338D7D
            427C24C4FCB93B030028C55D162FDCA796F0B3B439E0FE213E1062DEDC070E00
            18CB6C8B75473DCBB3AC1DE237211E9FFBE000007074B6C5D57A9E1B198E8C04
            A99F55431C6FF186050030FD1E0AF1BE108796F4F3747DD17566D5DC070E0018
            C9BD213630DF15078BB7DA5B2EF7C10100E0E8BC109B84B82D57074890FAD2CC
            1E1592D54C1F467401A019B4A1926AE4DC5FC2CF9ACFE28A05AD5C6036290054
            DBAE21BEECD8DEDC214E0BB169EE030300C0D18521360EF19F9C9D20415A0CCD
            EE39C6A84D0A004DA11DEEB70D716D493F4F354995985D23F78103007AD28CFF
            9D9CDB3C20C481B90F0C000047178478B9654E8E0A09D2E26884F7ED213E1162
            E1DC9D010014EE068B49D25F95F4F33483746F8B0FCB4FC87DF00080FFB9C4E2
            4489BB1DDBD4B243CD1E9D27F7C10100E0E41C8B9BDFDE9EBB234282B4784F0F
            716488AD7277040050382DB37F4F88CF95F8335708F1458BCB52000079A976DA
            3A21AE746C73598B754797C87D70000038D1A0DF6B43DC93BB236D2448CBB385
            C507E667E4EE0800A070DF08F136F39D3D348C6E300E0FF1D4DC070F000DF570
            88AD439CEAD8A6F635D0CA8475731F1C00004E8E0EF1AE100FE4EE482712A4E5
            D21248ED78FC5E8B1B6D0000A6979658EA41F9AA127FE6421637717AB7B18913
            0094EDD010FB39B7F9058B1B01020050770F86D8D7E2A48ECA21419A8796431E
            12E2D5B93B020028D4BF436C1FE2F4927FAE360BFCB4B1D33100944575D45E6A
            F1E1CFCB1B439C94FBC00000707097C5EBDA0F7277A41F12A479E9264AF54957
            CDDD11004061B4E4F2B0101FB458A3B44CAFB238A36985DC2F02004CB1EB43AC
            6971B33E2FCF0E717E8805721F1C000089AE0BF14A8BF5B42B8B04697E5A02B9
            8BC52591145E0780E9A507DDD787B8BAE49FABFA75AAF1B37F8827E67E110060
            CAA87E9A263DFCCAB1CD452C5E3356CE7D70000024D2F5715BF31D442C0409D2
            EAD08D906A16ED6DB156290060FADC1E62D710DFCAF0B3170FF17E8BC9D2C7E7
            7E2100604AEC13E2338EEDCD15E23B21B6C97D60000024D02A3AD51AD51E3C95
            DA8CA91F12A4D5B374888F86D8D1D8600300A6D5D743EC1EE2B60C3F7B46888F
            5B9CCD3A57EE1702006AECBB1667C53CECD8A612AE87E53E30000012DC1C62E7
            103FCADD91719020AD2ED5253D28C46B8C07580098467F0FB1538859997EFE1A
            1607E436CFFD4200400D5D11625D8B2B03BCBC28C4D9C6240900407DE93AA609
            7FD7E6EEC8B8489056DFDA16EB93F2000B00D3E7218B4B333F1CE29E4C7D78A1
            C501B997E47E3100A026EEB6981CFD93639B4B85B8C8E26A320000EA46CF321F
            08F1398BCF38B54382B43E9E1FE280109BE4EE0800C0DD5F42BC2DC43919FBA0
            04A9AE332FCEFD620040C56D6FB1548A97792CCEB8D930F78101003081F32CAE
            8CBB3C7747529020AD1F8D567F30C496C6D27B009826AA61F7458B1B29DD91B1
            1F5AE2A919AD1BE57E4100A082749EDEDDB9CD4342EC9BFBC0000018D39D21F6
            0F71A4D574D6682712A4F5A5DA714A94BE3AC4DCB93B030070F38F10BB85F849
            E67EAC6FF18647255E18900300B3F32D0E22DDE7D8A6EEE54F31CEB300807AD1
            064CEFB2B8AFC25420415A7F2B5BDCED524570E7CBDD1900809BE343EC1DE2D6
            CCFD784E88FD42BC2EC4E372BF2800908976E45DCBE220969715435C1062D1DC
            070700C088AE0AB167881FE7EE883712A4D34385DDF7B038EBE889B93B030070
            7163887787F84EEE8E04CB86D82BC45B432C94BB330050A207436C11E24CC736
            1708F1DB10ABE73E38000046A0E5F49FB4B8C16CAECD650B458274FA2C1CE24D
            161FA857CCDD1900808B332C2E61F96BEE8E581C84D38652AAC1B75CEECE0040
            090E0CF111E7368FB378CF0E0040953D10E2048BA5B7AECFDD992291209D5EAA
            4BAABA719A55FA32A3AE1100D4DD7F437CAA155518B5D5AECBAA9DA7EBCC0B73
            7706000AA2012ACD1EF5DC7C6297105FCA7D6000000CA00D64BF17E24321FE9C
            BB33652041DA0CAB86787B881D8C1A47005077AAFBA3DD8E4FCDDD910EDA38F0
            1D215E6F2CBF07303DB4F184EA8EDEE2D8A6DAFB8DB1770000A0BAB459EC0116
            EB64370609D266D143AB1E5EF510BB46EECE000092FCCCE2ECCDCB7277A48306
            E13418A741B955737706001268A7FA0D425CE8D8E69342E8E16B46EE830300A0
            87D32D9694393F7747722041DA5CEB85D8D9E2AEC4CC2A05807A524DA02F5B1C
            E1BD397767BA6C18E2CD21B6B5B8190900D489067A8E766C4FE5AE4E0BB159EE
            030300A08336223CD96219AFDFE7EE4C4E2448B16088D75A7C887D9151AB1400
            EAE88E10878438C2E20E9355A241380DC669506EBDDC9D0180119C186247E736
            55C3EDA0DC070600408B9E198EB7B82BFDDF7277A60A4890A29376BDD7D2C837
            867846EECE0000C6A69D250F0E718CC5D9A555B35A88ED436C17E2E9B93B0300
            3D5C12E20521EE766C73138BB347E7C97D700080C6BB3AC4E7437C25C46DB93B
            53252448D18B6691AAE69292A5DB58AC970400A88F2B437C20C4291677A0AC9A
            B943CCB4789D794D8845727708002C3E28AE63F11CEA65598B754797C87D7000
            80C6BA3FC4F7431C6B711F83877277A88A48906218EDB0F9728BCB235F1962E1
            DC1D02008CECBC10EF0FF18BDC1D19E00921B6B0789DD9DCA8570A200F0D266D
            1DE254C7361F1FE25721D6CD7D70008046BADCE24CD11342FC2B7767AA8E0429
            C6A187581596D743AC1E6617CCDD2100C04894203DD8AA9D28155D57B6B4B8B1
            D3A616AF3B0050864343ECE7DCE61742BC23F78101001A45AB2134D8F7358B83
            74555C4D5649244831A9F9436C1C622B8B334B97CCDD2100C050BA49FA6888B3
            727764044A962A49AAEBCC2B422C96BB4300A6D639215E6A71275F2FAAE97F52
            EE03030034C25D217E14E2DB217E12E2DEDC1DAA2312A4F0A082F3AA59AA44A9
            66963E2B77870000039D6B7146E9E9B93B32A2792DD62CD575462B1956C8DD21
            0053439BDBAD19E206C7369F1DE27CA3640800A0384A822A19AAA4A892A377E5
            EE50DD9120451166587C80D58C9F99C6CD210054956E020EB2785355A7E5374A
            906A29BE66986E68715503008CEB018B33477FE5D8A6369D537274E5DC070700
            983AFF0E7186C50D97F4DFDB7377689A902045D1F4D0AAD9A52F6BC55A16679C
            0200AAE3B21047843831C47F7377664C1A847B51888D2C5E67560F3177EE4E01
            A885F784F8B4637B7385F84E886D721F1800606AFCD1623254A192300FE4EED0
            B422418AB2A986DCCC102FB1F840FB5CE3411600AA42BB5B7E31C45156DF9D2E
            97B038236CA6C5EB8C96BACE95BB53002AE79410AF35DFD9F37B85F84CEE0303
            00D4DAAD217E16E2A71693A2FFCCDDA1A620418ADC160DF1428B4B24F55FCD30
            9D2F77A700A0E1348BF484109FB538BBB4CE16B739D719AD6850ADC1C7E5EE14
            80ACFE12625D8B3BFD7AD179E66CE3FC020018CF7D16F70738D362525449BA87
            7277AA894890A26A7453A98757DDB4AEDF8A67E4EE1400349466566923A7232D
            EE7C5FA73AA5FDA8F48BAE33EBD99CEBCCB2B93B05A034775BFCDCFFD1B1CDA7
            84B828C432B90F0E0050794A7E5E12E217AD9815E2CEDC9D020952D4C3932CCE
            2C5DC3E243ADFEAB0D3A589A0F00E5B9D2E2D2FBE32C16889F264FB639D797F6
            7F9F99BB53000AB1A3C57ACB5E545B5F4B2167E63E300040656945D6D9AD501D
            D15B7277088F45821475A51D42570DF19C10AB59AC31A73F3F3977C70060CA69
            F6D5B7431C13E277B93B53A027DAA3AF2FEDFF2E9EBB630026767488B73BB7F9
            C910EFCD7D600080CAB827C485217EDB0ADD2FDF94BB53188E0429A68D36E758
            B9152BB5427FD64C206A9B02802F2D5155A2F4EB160BCA378106E29E6573AE31
            2BB5FE7FF9108FCFDD39007DE961557588EF736C73AB10A71A1BC1014053A96E
            FFA51697CCFFDE622D51FDF9FEDC1DC3F84890A22974E3BAB4C57AA6CB77C4D3
            2DD68B5A2EC402B93B090035756F881F5A5C7EAF02F30FE6EE50062AFBF2547B
            F435A67D9D796AEBBF4FC8DD49A0A16E0EB17688BF3BB6A9724F4ABA2E9AFBE0
            000085538DD0BFB5E2728B4950854A503D90BB73F04182149843CB29DB0FB19A
            21B4A4C5E4E992AD582AC462AD5824776701A0A2AE0B71522B3C37419906AAA9
            ADEB8A36856A5F579ED2FAF3935B7F6E5F6716CEDD59604A68C0660B8B83375E
            34A8AE6593ABE73E38004032AD2CD040DAF5ADB821C4351693A157B5FE7B63EE
            4EA278244881C9A8207FFB21563307945C5DC8E20DF342ADBFD39F355B686E9B
            33BB400FBCF376B433AFF1100C607AFDC162A2F4E2DC1DA9215D1F748D515255
            8372BA8EE87AA16BCB8216AF3BFAF3FC16AF49ED81BB455AFFDFF6388BD725A0
            A94E0F71B8739B3B877843EE0303003C32B3B37339FB6D167789D7ACCE3B2C2E
            81BFA7F5758ADB5B7FAF0D476F69C51DB90F02D54082140000000000004063CD
            F5F0C30FE7EE0300000000000000644182140000000000004063912005000000
            000000D05824480100000000000034160952000000000000008D458214000000
            0000004063912005000000000000D05824480100000000000034160952000000
            000000008D4582140000000000004063912005000000000000D0582448010000
            0000000034160952000000000000008D45821400000000000040639120050000
            00000000D05824480100000000000034160952000000000000008D4582140000
            000000004063912005000000000000D058244801000000000000341609520000
            00000000008D4582140000000000004063912005000000000000D05824480100
            000000000034160952000000000000008D458214000000000000406391200500
            0000000000D05824480100000000000034160952000000000000008D45821400
            00000000004063912005000000000000D0582448010000000000003416095200
            0000000000008D4582140000000000004063912005000000000000D058244801
            00000000000034160952000000000000008D4582140000000000004063912005
            000000000000D05824480100000000000034160952000000000000008D458214
            0000000000004063912005000000000000D05824480100000000000034160952
            000000000000008D4582140000000000004063912005000000000000D0582448
            0100000000000034160952000000000000008D45821400000000000040639120
            05000000000000D05824480100000000000034160952000000000000008D4582
            140000000000004063912005000000000000D058244801000000000000341609
            52000000000000008D4582140000000000004063912005000000000000D05824
            480100000000000034160952000000000000008D458214000000000000406391
            2005000000000000D05824480100000000000034160952000000000000008D45
            82140000000000004063912005000000000000D0582448010000000000003416
            0952000000000000008D4582140000000000004063912005000000000000D058
            24480100000000000034160952000000000000008D4582140000000000004063
            912005000000000000D05824480100000000000034160952000000000000008D
            4582140000000000004063912005000000000000D05824480100000000000034
            160952000000000000008D4582140000000000004063912005000000000000D0
            5824480100000000000034160952000000000000008D45821400000000000040
            63912005000000000000D0582448010000000000003416095200000000000000
            8D4582140000000000004063912005000000000000D058244801000000000000
            34160952000000000000008D4582140000000000004063CDF5BCC3FE2F771F00
            000000000000208BDC09D225433C33C4D2AD3FCF1FE209219E18E28E10F786B8
            25C40D21FE16E2EA10F7E7EC3050338F0FB160EE4E94E0DFB93B80D2E97DFD8C
            10CB5ABC7ECC67F1DAA1EBC84321EEB6781D515C13E2AF16AF2578AC7942CCB0
            F85A2E63F1B55DC4E2F5786E9BF33AEA73F68F105784B82D77A7F188B9423CDD
            E2EFEEA92116B5F8FB9BBFF55FFDDEEE0CF1DF103787B8D6E2FDD4ADB93B0ED4
            903E6FCB877856EBBF4F0EF1148BD71E9D2B17B078EDB9B7F5DFDB2D5E7FFED9
            8A6938772E6CF1D94DE79D252C9E6B74BD58B075DC3AD7B4CF3BD7B58E7F7688
            0773771CB5F6B8100BE5EE4409FE13621A97F72AD7B37CEBBF8B5BBCBFD4B943
            F72C3A27EA7CD9BE4FB9DEE27DCABF72771AA5592AC46A36E73DA26BEB62163F
            F77AAFE8BDF180C56BEA3D16AF2BBA9FD575F5CA10377A76A6CC04A94E6A2F0A
            B161887543AC6EF103328EFB425C1AE28210BF0EF133F37DE05D3FC4E965BD20
            3DE8664209609D1C7553A15FB64E107F0EF1C7D69F1F2AB80F3B87382CE36B50
            841786B8ACE49FF9F3106B38B4A3CFCA5F13BE7FBB105F2FF9D87398ABF5DF6D
            427C39B1AD73436C3EE46B523E27FA5C6F60791214A99FEF23421C94A1DF4A7E
            AE17E2C521D6B178FD58768276EE0AF19710BF6BC56F2D9E579B66B9102FB178
            6E5C3BC42A160753C6A11B139D57F53AFED2E235F93EC73EEA7DBA73621B7AAF
            1EE1D8A72A50025BBF3B9D43F4BB7BB6C5A4CCB86E0A71B1CDB99F52DC59E271
            28A132DBA19D2795D8E73D437C38B18D61E750FD1E562DF1983AE92155F79F7A
            6FE8F37D95C5078F0B5B7F6E220D1EE9D9459F395D7FF4994B1D749E1DE20F21
            7E6FF1DCA973E83DB90FB40F5D7BD70AF17C8BE71C5D7F9F36413B4A9C5E6EF1
            BDA47BAC5F589EF794C767F8AB21DE93A1EFD6EAFB9E896D947D1F37DBE2F93E
            C50C8B9FC31F97D8EF5C34D8A273F1CB437C2BB1AD519E678AA081139D2FF53B
            D339F33936D97B4083F23A57B6EF53CEB13C1362941B5A7FC2EFD533F8BB32F4
            39B5DF5264FE4439928D2CE6055F60E9F7724AA6B7AFAB7A9FFCCAE2FDCC448A
            4E90EAC3B06588D786D8C4E24881278DB0E806FF648B2791D989EDE98DF0AB22
            5F90449A4DAB5FFAD9217E6871268FB7B787F862EE0375F65C8B09E6B2E864F4
            3BA7B67423B357C2F7372D41EA71BCBA08BF68C8D7A47E4E7E14622B2B7F9438
            B5DF9F0CF1FE92FAAAEBC7AB42BCC6E245B4A899D01A7D3C2DC4F72D0E6C4CEB
            2A85952C5E8B15AB17D0BE926B675ABC1EEBFA94FAC0AFF7E9DB13DBD07BF593
            051C6BD9560EF1068BE78CE715F433343A7F5688EF5A3C3F4D7C6339A2459D7E
            C65CE94D8CEC7D213E91D8C6B073A86EF09F53E2318D4A49D3F343CCB278AE4C
            19B8AD833543BCCDE2F5E7C905FF2C250F95C8F889C573E79F331FBBAEB5AFB4
            38E0AC244D51B3F6749CDF6DC51F4A3A368FCFF05121DE51527FBB7DA2750C29
            CABC8F139DE7174D6C4349433DA3372941BA85C3F18EF23CE34593165E1FE2D5
            1627F7CC5DC0CFD00CC25916EF33751D2A6B86A972432F4CF87EBD2EDF2EA9AF
            9EFDF6CE9FCCB0785DDD36C40A051FBB26145E62F1B9E40721CEB3319EB98B4A
            906A8AEC1E21DE68715A6C19F44228717854EB8598642947D513A49D1E6EF555
            B3E5BE637E0FF52448D37DC3E2C3AC07DD586819D3A4337B48908EAF8C04A968
            06C2A78B7F695CFB5DC68DF5FAAD7E2A9157D6F5A34D8350FAFCEABC7A69C93F
            BB08F35ABC59D520CBF34BFCB9BAB9D7E7F0F336F9C37ED313A49AB9A6DFDDBB
            ADBC079C36256C7433FFD9101715F4334890F656D50469379D1FBF17E2789BAE
            59F89B86F890C5192DB9E83D70A2C5D7F6A6127FAEDE774AFC6D6FE52F65D63D
            FAE7429C6471B0A62824484990565D9D12A4BAFE6E6C7156F3A656EEF558791E
            0D28E93EE59705FFACD444A396856B26ED95E5BC346EFDF6CA9F68605FB3DF35
            F0364FC9AF419B96E4EBF9EE581B6180D73B41AA07DB8F58FCB094F921E9A69B
            355D008EB3F11287754A9076D22FFD508B17ED0712DB22419A46753366DBF8CB
            5507D9D5265F364E82747C652548B51C594B50CE2DFCD5F1EB779137D65A65B0
            BFA55DCC3DCDB2B8CC5B4B54EA560F4A89518DD2BED7E272FA5CF4BA6976AE96
            F35D30E6F7363541AA7A4BFADDED67797F776DBA273AD0E200B42712A4BDD525
            41DAA6C9099AF9A873E5ACDC9D49A0B2065F08313377473A68A04249680D34FD
            B6C09FA3A58E075B5C8A9BF3D94D547F50BF07BD9F8A28F94182940469D5D521
            41AAD9A17ADEFA80C5124DB96935B1CE619A555AC4FD7A6AA2B1DD474D54B8B7
            C4D725778254AB2F949FD2A05B11338A27A1F7874A741E6DF1FDD2B374A55782
            54D3AA75C2D514E2DC17D74ECA10EF6D71B9D828EA9A206D539D08CD36F97942
            1B2448D3E804BDBF739B9AA931E9031309D2F195952095BF5B7C3829ABA64E15
            13A43AFEC32D268BAB483735BA093C23774746A465D81FB77C750CFB39C5E2F5
            78D4D2304D4C906AC6E82156FCD2A349E8FDBF8FF9D5A32241DA5BDD12A49D74
            FFACC47E99837EA9E66AF559933BE6CBDD990154B353034DB31CDBD4B3DB0121
            76B2EA3CBCB65DDFEADBD72C7DE2472712A42448ABAEEA09D299213E633EFB6C
            78D3B5672FF3BF06792448A5EC7347CE04E9D616EFE38B2E519342F7B31FB3B8
            62EA512BCF5313A4BAB1D8B3D578D94B21C7A1138C3E30C3A6D4D63D412ACA8C
            2BD9A00BE824CBEE49904E4E37D7AA67B844016D6B838059137C1F09D2F19599
            20152D1151ADCD326629562941AA9D703FD1EA53D51ECE7AD1C0D36E56DDDA7B
            DAC1FC98109BE5EEC800DAA554F70B9A1D346C43A7262548B56BE7972CAEBEA9
            32252AB49C4D4B90536BCC9220EDADCE0952D1754CCBD8341852F51D88556BF3
            048B7546EB4289520D545C9CD086AEB77A76D380FE241BBC9549C7B9A3F995BC
            21414A82B4EAAA9A2055A24B65305E97EFA51989AE41C7593C4F7A4D3EF14A90
            8A5EBFEF94F45AE44890EA9E4C03FDB936B29B8412A57ABFFC6F224C4A825475
            1135B2F7B2DC4735A27B5A077FD480AF99860469DB4F2DCE46B96BCCEF23413A
            39DDC41D5F50DB2A48BDED04DF4782747C652748450F938717F3D2B8F6DBEBC6
            5ABBE1EAF7548525C4E3D07544B35AF4BBF29CD5924A0FF85FB178635D07BA19
            D14DE2A087DEA6244877B0B884367597DF3269376AAD18BA24A10D12A4BDD53D
            41DA76ABC501A5937377A40F0DD069F386326B337BD192409D3394E41C776055
            B34695C0DE20F7418C413549B532EB70EBB31C720C24484990565D1513A41A78
            3FCEAA3D1BB0DBB5169776CF7268CB3341AADFED5A21AE2AE135283B41AAFBB1
            AF5A5C9550475A71FEA610FF9E3441AA17FB542B66A65CD174B3F6568B05737B
            1DD7B42448453BA9EBA476DB18DF43827472DACCA2A825074AC66896D13FC7FC
            3E12A4E3CB9120BDAFF533CF2FE4D5F1EBB7C78DB5CA806873AA790B3ED622A9
            9EA63691FA7BE67EE87DAF1999653EEC78D16C52BD17BED2E7DFA73D41AA42F5
            47847867EE8E4C48490B25C0261D142441DADBB42448DB54E74B89BC32EBAE0D
            A31AF14A8ECECCDD91047A907BE598DF53E767B7F631EB1E2FA53629095212A4
            5557A504A9AEAF7AAF7CD4AA554271545A36AD1259AA8399B24ACF33412ACA17
            6823C0A2AF8B6527483570B77BC1C754A4D921560CF1C024095265E3B5035495
            6BF50CA34D9C5E618FDD5D77DA12A4A2E2F95B5A576D850148904E46F5136715
            FC337481FAD098DF4382747C3912A4323BC49A566C3DD29C09526D3EA38BE72E
            051E5F99B4998466D1A5D47C4EA1B2365A1EBA4DEE172291126C7A4F742FB99F
            E604A91E16B5C4EAE5B93BE2400FEC1FB4F11F3E4890F6366D0952F98DC564DE
            ADB93BD2A24D2FDF96BB1389D6B3F10654A7E1D94D7E6FB1CEF6A8B5ACBB9120
            25415A75554990EA5CA173C6F6B95F1007BACFD4397F92D283E29D20156D4657
            F400799909D29D2CAE2CAF339DD71F59693E6E82F45D16EB4FD57114A19B9210
            BA61FB75C7DF4D638254544C799F11BF9604E96454E0779225F0E3B8D1E2F2A8
            61B5FB3A91201D5FAE04A968473D2D972EAA1E69AE04E9FCAD63DBA4A0E3CA45
            33BBB519D29525FF5CD58D53AD9C227627CD4175F5F4D07B47C7DF4D6B827449
            8B257056CFDD1147AA9FAADFD538E72D12A4BD4D63825454964103C9B9EB92EA
            3CF3FDDC2F4622EDC03B4EBD626D42A5F7DD343CBBC97516DF4B93D40327414A
            82B4EAAA90205DA0F5B35F92FBC570A4FD1EB4F26B9C67E8B62212A4A2090EA7
            1478CC6525489FD1FABAAAD7B41EE4FAD6716875D45809D2B758DC00625A2EB0
            A2FA9C2FB539A3B0D39A20D5438B4E72BF1CE16B49908E4F494BD5122963C9B0
            EAD59D34C6D793201D5FCE04A9EC61B1107A11722448B59C510FA455DE3C6852
            DA55F880927FA646F5B5D4B0EA1BFA8C4B256166DA9C9BD7694C90EAC1E71C9B
            CE0498CE597B8CF1F524487B9BD604A9E83E4CF7DC3767FAF91AA8BBC2E23D5B
            9D293978CE885FAB8D320ECDDDE102A8DCD48621AE1EF3FB48909220ADBADC09
            5225B9748FF9D2DC2F4401BE6B71E5D7A8AB6ADB8A4A90EAF7AC95837F2BE878
            CB4A90AA74CBAB0A3A86B26822E167DAFF336A825433E354D47B9EDCBD77A659
            3FEBD89C1A9DD39A20159513D01B7DD8C6222448C7A79BCFB2766B3BD7C6DB54
            8004E9F87227489520D2B9E88202DA2E3B41AA6B864647B72AE05872D3716934
            BAA8D9BEBDE8F5FC9E8D5F7BAE0EBADF5BD39620554904CD945D2F77470A34CE
            F98104696FD39C20950B2D3E78DF91DAD004B40AAEA8C1C7B28C93F078638813
            6DBA26B6745252419B4DDD30C6F7902025415A753913A4D37C8FD9A64946DA54
            799C7BF7A212A4A2449CEA914E32B3B5E87E8F923F59DFE204873AD3A0ED0CEB
            D8D87C9404E9735B075EE769B3BDDC64F10DD9B944639A13A4F2668BBBD00D42
            82743C7AE8552DA4328BDE6BF7BB8B46FC5A12A4E3CB9D2015CD8AD0A8A24702
            C1B3DFE3DE581F66A397F7A813D541D383D9DD25FFDC8F84F870EE832F80963E
            BDDA1EBD43F1B425487553FEC6DC9D28C1EB2CD6571D8604696FD39E20156D96
            5A7449A26E7A9F5C6AB1244A9D6D6E716F8161747D3ADBE20A8E69A6FBB597D9
            E8C90512A42448AB2E6782D4E3FD55079AD4F4E931BEBEC804A91C6971D3526F
            652448BF6971566E9DA98EFEC73BFF625882542734CD625AB1A40E6A1450F589
            B4FE5F17F5C5422C6371730F4FBA906E6A713647278F04A98EE18809BEAFF378
            7573BC8AF9DFF85F6AC36FBC3D123F4A1E7CCBB9EF29BE6A31215E04157DFE72
            C9C7739CC564F7283453C3F3464889E0E725B6A19BA50B9D5F93F672E3694990
            8A4671559FC6738662990952254A74E12C2B81A11ABDBA7E2869A972178B587C
            BF2EE6FC73F4333448F1CF928EAB4D1B0B2A9158C6EBA942F6D786B8C5E2AA83
            852DBE964F2EE0675D6CF1DADB9D6C9EA604A976F5FC7C493F4BE70BFDEE74CD
            D3BD8EEE9F54F7F4A921E62EE1E7EBF7A859B2970EF93A12A4BD792448756F3B
            CE32764D8058C8E20C0A2D3F2FE335DDCB26BB579E94DE93E73AB6A7D75789DE
            591697EDDF6EF15CA9F7B5CE952B59BC8F5FDBE24A358FCD91FEAFD5DE303A4F
            EBBCBA8CE3F10EA263D73947B382758ED17BE969ADFF96417B63EC39E2D79220
            AD6F82F4591637ABF5E2F13C73A7F99E57444B953593ADEC04A97EAE9E3BCABA
            A6AAE6633BE7A37BF6C52D9E37CA2857A725F67A6EFCC5885F5F748254B6B6F8
            FA7B2A3A41AA73BCAE855E9BFFDD63B1249BEAF4FFA9D5F6BD169FE7F42CA77C
            A4CE03FADC6A356DEA7945747E5ADEBAEE4787254895E47A9DD341F7A2175D6F
            068D722AA9767B8FAF51CD20FD82341AFAEAD67F536FF2FBCDA4F44890FEB1D5
            DF547AA0D1F24D2D097A96437B6DBAB91AF44BF748FCA81C431366CAE49A91A0
            13881E6272D4F1CABDABE230D39420158D281EE9D85E5909523D1CEA01ADC895
            073A8FA94E926E702EB139A552BA3D25C4B32DFE4E3560A08BEAA4836E4A38CD
            B4F29793E84157E71AEF646F9B12A23F69856A55ABFC4CAF722C7AF0567258BB
            AF6B33B1D45A7E4A323FDF7A279BA72541AAF79EDEAB45EE1EADF763FBB3A004
            5BAF99CDED7B29D52357C98B714AB58CEB328B33E0EF1DF03524487BF34890EA
            5CF7EB09BF77418BEF0D3D3C6A564851F53A752ED52AAEB1768A4DA07AD11F72
            6A4B75CA547BFACE11BF5E9F7D2549376FC5A41BB4E99C7BEA085FF7032B7689
            ECAD1693C3DA2C4AE79E6BFB7C9DDE3B7A66D3F5420FFF0B17D8A757B58E7B18
            12A4F54D90DE96D846378FE719AF67FEA2FA37EAF3D6D216EF319F54D0B1483B
            E7A3FB14AD82EC55664593C534B03433C49616EF578A1AD8D5A40A3DBFDF3AC2
            D7969120D5E744F74DE3D6552EB2DFC312A43AEF8E724D1A85DEEBBB584C9C8F
            42EF8BD52C4E78D46745F7139324D73573F483DD7F392841AA0B71113B6B3DD4
            6AF7109B6C16994617DE1962578B27CC710DBA30542941DAA65FF6072CDED879
            8CAA0CDBD19E04E9E874E23E3BD3CF7EAFC5CF50D9489046652548BD1F22CB48
            90EAA2A5D7B088048C5E8FE3421C6E7157E44928C9A8C1275D88D71AF37B770A
            717C01C7354C510FBC9A21AAD7F2E8D69FC7A1C49436C950125F3749E3DEC42A
            89A7CD46FADD074C438254F5BC944058A780B6F559F89AC55978937C1634F0AA
            7B813799FF2A1D39D06249887E4890F6963B41DA499FE94D42EC6FF13AE44D13
            23F4D918561BDF835E8F0D1CDA19760F3D0ACD56D9AE15A30EB02B79A1678B61
            2B4AB491E7090EC7D98B9E6FF4FED533DCBD637EAF661A6D6FF1DE7546017DD3
            209B5ECB61B56D499092206D23413A4751F798CAF968B29DEE3327C9F9689045
            F798FABC3DA180FE7D25C45B47F8BA3212A47241EBE778D5232D3A41AAD9FB1E
            A501CEB2387838EEE6599D340359A57B745DD5B57E947B43CDD49E613D269CF5
            4B906AD68F36F5F11E39D62F7E371BBD7EE2201A89D44D9B96558C5A63472700
            CD42ED778351C504699B92713A51A6CEC8FA4B889507FC3B09D2D1691A78AECD
            6754F75437D90FA536342612A45199B57AB5118146153D6E0ECB4890EA1C7F54
            01AF833E6FDA25FB1F8E6DEABCAA878D978FF0B5AAA7BA6F01C7358CC767AE9B
            6E42BE6071E0EDF6C4B6640D8B898399237EBDAEC11A84FDFE80AF9986046951
            E7092D3FD203C35F531BB2783FA032311B3AF7510914BD2FFEDCE7DF4990F656
            A5046927CD00D439E329CEEDBEB3D56ED174FD5C24B10DADDED16C7ECFDAE0EB
            5A3C4F68B5DEA00480EEA9BF31A42D2591F4795BCAB17FA287C7FD2C0E4EA696
            FCD1F39AAEA31F34FF84C72875FC489092206D2341EAF7737A39DFE2F3C0C50E
            6D69729CCA14793F73EB7CA69565B3867C5D590952D146827B38B55574827496
            C5890EA994D0FCADD331CB332D4EA4D48AF1417BC42871BF77AF7FE89720D508
            9FE74385DE809AC2AA252929D9E15E56B078D11E3632AC03D503C0A04D35AA9C
            2015DD209DE4D08E6E70FFD5E7DF48908E46EF3BD59D9A74EABF46F8774CECC3
            A84B8A3C91208DCADECC4C3336B67168A7E804A96E82AFB23892E745093CD5FA
            1D65E397496989860AB6F79BCD739AC51B33EFEBD7305A35A06B8A679915D5C9
            D6C3F83905F4F70D16DF5FC356778C92B8AC7B825483B84A607AD66D55D2519B
            0B78D733559251AF959621CFE3D8EE192136EBF36F24487BAB6A82549478535D
            E9998E6D6A99A3067BEF29A0BF6D3A1FFDDBA11D3DF0AF57501FB5B241C9044D
            FAE83E67E83CA265A7C366DA7A961168D37258DD578DB353FC28B43452CB6D3D
            F7B8D0F559D7F0BF0CF81A12A42448DB489016738FA9893BAA15FB11F39FC4F3
            168BF73FF33BB6A9125D6B0EE96B9909D25126108CAAE804A926F02C9FD847BD
            EEFA7DDEEF70BCDD54DE46F9280DCA75BFC755FB5689D4EB7A7D63AF04E982AD
            03F6BAA9D734612582BE5DC081B7E903AEE4AB96A2F74A580DAA73D6A9EA0952
            F9B9C5D18E147A6039A3CFBF91201D8D92297B4FF8BDFA4C6876B6EA76A42C43
            D62CA25166BE7922411A959D20158F99364527483F6EBE37DE9A2DAAE4E59F53
            1B1A41BF72262A14AE0138EF9BF351E8DAE9B9A45FAFA36A0B5E9BDAD000CB59
            BC06F45B92ABE3D9698476EA9E20D50A97831DDB53824735B97E53609FD5BE06
            223C1F3E3430DDEBBE8A04696F554E908ACA319C68BEFB13A8D67E919B98E99C
            34DBA11DAD7E1BB72CCBB834AB72678B332C976EFD9D96807E65C8F729C1AADA
            751E9B56B4A9F48AEE3B8A1A1854D24BF7931EA50FDA3489648701FF4E829404
            691B09D2782FF635C73E2BE9A4DAD5454EDED173F3E9365999C57EF4ECF8CD01
            FF5E66825474BFA7A4EDECC4768A4E906A7541EA84180DFCE99EB3C80928CA0D
            6A05F9876DCEE775E079BC578254B5750E73EA900E56B39E3CB2E0A350ED01CD
            CCEBDC0C41334675721865597F1D12A4AAD1705A621B9ABAFDB93EFF46827438
            D552BAC6263F39B76703EAA6F798847E6894491B8094913C6A23411AE548906A
            F698924E29254A8A4C90EAF330DBFC1ED0346B468341D738B5372A6D64A7CF68
            7B23B4E79BCF52E671796F02A763D0FBE7A612FAAE6BB012A1DD499459166B1A
            8E525FA9CE0952253994DC5F22B5A1163D18CEB458B3B1681A74D3864FA3962E
            1A46F72BAFE8F1F724487BAB7A825434CB5889A8D73BB5A7CF8A66127AD55DEB
            A6D7F30F0EED6896AB268F8CBA39530A95D3DACBE23974ED115E9B032D4E14F1
            A24900EF29E13835294783FD5E35CBF5B0ADFBE27EB348499092206D6B7A8254
            49234D00F09A3D7A5FABCF3F2BE8F5E8A4F23D9ADDEEF5BC7149ABCD7E2544CA
            4E908A562CE87797725D2C3A41AA1C9B47A994611B887BD17B5E03684A94BECC
            0624A0BB13A4BAD1D4F2C8D4E9B26D458F0AF732D3E20DB96E2EF446D732E41F
            8EF8BD7548906A66931EDA534E0A7D6B2E1809D251E87DFDB984EF6FCFE0D512
            4C4DED5E28A1AD516A2E7922411AE548908ACECF9AC132E98D629109520DBC1C
            E1749C4AE22999972331292A43A2550F5AB2986B23B68D2C3E387AC891E8D5FD
            840AB8BFABF5FFE32668EB9C20D532B0639DDAD2CDB1AE1965BE0FB599CA894E
            6DE93E4C754EAFECFA7B12A4BDD521412ABAC7D6FDF29A4EED697647519329F4
            4CF337A7B6F41EF85441FDEC450F74C396A96A56AF56C879ADFCD33D941E2253
            EB8D8E6A498BF5E756706A4FD79D3DFBFC1B095212A46D4D4F906A30F44CA7BE
            EA5CA17346EAF3D738D47FCD24F52A0BA40919BFE8F36F3912A432285F338AA2
            13A41E9F6DF12A2337AAA1D7D5EE04E94CEBFFE618976ACB6C5DE2C176D2C384
            6EB4349A3ACEC3511D12A4A2D19997257CFFA0258E244807D3C3D86536F988DB
            DF433CC3E67C30B56C6AE784FE68C74E6D1A50C68C0621411AE54A908A96C04E
            BABCB1C804A966B7ADEE707CBAD1D252DFD499F2A9E6B2F21E107BD1EFF9B50E
            EDE818B43B691145F887D16BA88749CD34D366247F19E37BEB9C203DD7FC6A15
            EA41FFB3198E41CBEE76726AEB108BB5ED3B9120EDAD2E0952D1EC763D447894
            64F8AEF99CEF7A5102EE5FC9AD441AB0507DB8DCD7A74EBA5E8E3A116418AD48
            D26C9EBB531B1A93067E9524F598B9AE41386DEAD26BE615095212A46D4D4F90
            9E6C7E49A9B2669C77F3ACBBAC25F6DBF5F9B75C0952DDBF6BF070D292054527
            48675B2C61E34189E0C39DDA4AD69D20F5BA21BE35C44A216EC9786C9A2A3DEE
            CE697549907E29C42E09DF3F28534F8274302D0F3D23E1FB35ADBBB32E9D6A2F
            A53EC894B50BAC90208D72264865F7097F7E510952CD22F25A1EA1F7F23B9DDA
            AA2BCD2ED7E6251E4B575476E64D198F45A3FB5AF238EE12D7BA264855F4DD6B
            A6AE0643354B2247A25EEF41254B9EEAD096CA64CCB0478FD89320EDAD4E0952
            D13DCD471CDA51ED3ACDDCBFBDA07E7AEC62DFA6F7B11ECC0F36FF4D4826A17B
            FAD738B4A3B2681AC84A29E393C233D9D16F4632095212A46D4D4E90EA5CA87B
            4C8FC12D2DD3D7334051255206D1ECF90BCDE777A041215D837A4D38CA952015
            D523554EEBEF137C6FD10952EFD745F92D25DACB9AF4D5576782546F328DBA79
            4C95CD35E321555D12A4A917C87E35C18404E9604A8E6E32E1F7EAE673863D76
            B3303D84A6D480D18C56ED085AC6433409D228778254F548B5647ADC41A0A212
            A49A21B6AFC371E91AA4C1358FC4499DE961F7148776EEB2F87A5E97DA500675
            4D907AD571D78E9EBA97B8BCE4FE775262FD38A7B6D60F715EC7FF9320EDAD6E
            0952D590D480C0520E6D6965C4770AEAA7EAB9ADE3DCA612034A0E6BC55C911B
            4C0CA2124D2AA1325F6A439637F1272ADB7085C5D99FA95422A7578D5C12A424
            48DB9A9C20D567E39B63B6D5CFA0A5E965D0CFFFB9535BDACBE6E41E7F9F3341
            2A5A95F4621B3F095D7482541BF9EDEA7CAC7A0ED43DB49E01B2254A3B13A4DA
            69F4970E6D6A4442F57EEEC97550099A9220ED77E3202448FB53A2410FAB933E
            90F54B4C2BB1744862DF5472A18C1A752448A3DC0952514D3F2D851B67C64D51
            0952256A9FE7704CFB8538D4EB05AA31D5EEDEDDA19DB26B147BAA6B825437EA
            2F7568472B7A52CAAF78509D26252C3C6A036A7658E7263224487BAB5B8254F6
            B747AF8C99943EF31EE7BD5EBC06F17AD126534A36A87C55999B668AEE297FE4
            D08E9ED934FBFDFA92FBDF2DB5C67F9B5632AA266B77E29A042909D2B6262748
            BD560C6B95CBC6051DFF3894A09DE9D0CE7121DEDCE3EF732748659232064527
            483D13EDDDF47957BE4A1B42EA7D5CEA4AAACE04A996351CE4D0A646530F2CF3
            201CD52541AA8BF36E09DF3F68C92509D2FE74D3F6AE84EFDFCA7AD789D2947E
            2D417C5C42DB5A4AF4EA125E0312A451EAE744CBF2E67638DE41831D45F4BBD7
            8DB576EABED1E17874315CCEFC6F82EB48B3C257496C4337131AD4C9B5D155AA
            3A2648553F4FEFDFD4656BFADD6955C06525F6BD1FAF848506E06776FC3F09D2
            DEEA9820D53540B3D453EE61443332572BA88F1A442E6377E54B2DDEE7292EB0
            E297E06BA6CD3E0EED1C6369A5BBBC6846AC565979AC66D4B2DFEE5536244849
            90B63539417AB5C5158DA93635BF8D9E526843EE531DDAD1667ECFECF1F7A989
            468F673EDD172A8F30CE8058D10952AF6BFF30D7B48E5BD75525C30B2FE7D099
            20D587700B8736B55BE9381B3154495D12A43A19BD3CE1FB3F63FD6FA83C12A4
            5A86BE7FC1AFC120BA887A27057471D60774D21DE7750251F2E7813EFFAE13FB
            AB12FAA7767552FF87F3717723411AA57E4E3488A025A7CF703866F5E5E831BE
            D63B41AA7AC6274FD056B7E3ACF7C86DD3786D28A20D2F36C87D3009EA9820D5
            67FA770EEDA88D1794D8EF4116B738AB2CF50658F5BD54F7AC3DA38B04696F75
            4C90CA59963E93480F808B593183647A38BDCA7C9202A3D2C0A17659D6EAA19F
            5A31F555F57BF638CFEB7CE371EEF290BA79699B92984775FD1D095212A46D4D
            4D906A63DF6B1DFAD7ABB6782EBA3FD17DCAE20E6D69D252F73D786AA2B1FDB9
            4DBD5FD1CC78D5231DF559BFE804A978D5C01E9596DDEB7EA37D6DBDA1881FD2
            992055D67CF9C4F68A1CFD2D431D12A4BAC9D30737E524A0E4E867FAFC5B1596
            0EA71A546375527B59FFD76C143A397E60C0BF7B2C931AF6333C90208D523F27
            BAC1D64380C7AEADDADC42F5487F3FC2D7169120FD98F9BCEFAA32129D9BDE7B
            E738B453F77205754C906A06D6971CDAA9D46E9E16933B1B39B4A301A1AB5B7F
            2641DA5B5D13A4DA58EF488776D6B3582FB4CA7D9C8466BCE8F942F7A7BAD7F3
            1AC4D766B84F4A6C439B7FE8F92FC76670BD6C66F1E137954AD574AFFA22414A
            82B4ADA90952DD6BFFC4A17F83265BE5E035B032D31E5B723235D1A8DFC19616
            EFCB5369204BF548EF1FE16BCB4890EAF9F3B70EC735095DB394C8D475F5C7AD
            3FBB5CC7DA095215F7D6660EF324B6A7594CA90F3439D52141EAD1C77E4BBD85
            04E963A5D661D3E8DA8A160721FA99D7E24DEA3209FD54A1FEA75B4C98158504
            69E49120D50DB6D7F255CDDA573DD23B0AEE77AF1B6B9577D82AB1FF7A78D4CC
            A1BB1D5E8BBA7B5B882F3BB4D3BD294EDDD43141AA1A517B3BB433CA4D699934
            00F231877674FD68273E4890F656D704E95A1677134EA5F24CDF28A88F1A8CD4
            440E8F9ABAA9F4F0F52D8B6572AE99B00DAFD50655A877DC492BB5746E487D26
            D5C04EF76A3B12A42448DB9A9A204D9DF0D3A6E7ECD30A3AF649EC60B184602A
            9530EC1EE8F64890EA7E7C96F9AC0ED2E4875192AD652448A5EC59A4FD68005E
            3551755DFD434A43ED04E96A23BE00C3BCD56206BFAEEA9020D50E9FAF4D6C43
            23C5B3FBFC1B09D2C752F2E7FB09DF3F6A116B8F1B1FD596F5B840F4438234F2
            4A90EAE15E17168FFAB1DF6C1D7F91FDEE7563EDF140AF1B87F51D5E8369E0B1
            99884A6E6877E9C2EBF414A88E0952ED669DFA59D643A0060BAA329B4B669ACF
            2EB59D33634990F656D704A9067935D1227545C487CD67C3A77EF470AA19FAA9
            C9372F1A40D76C2ECD6CD5B2C1713EF75A5AEFF17B7E4B88AFE67E21BA786CFC
            A865A8CB75FD1D095212A46D4D4D90A6EEA7D156C4EF248506BEAE7468A7D7CC
            588F04A97E17CB86B8C8D24B01E83AF14A1BFEFE282B41BA54EBEB96483C2E4F
            1AB0FDACC51270F78EFBCDED04E94BCC67076C4DF9F5581A984BD513A4332DFE
            9E521E0834DAFC9401FF4E82F4B1527725D6263ADF1EE1EB7472D74CC094DFAF
            360558D7F1D8BB91208DBC12A4A29B0C3D0CCC7038FE5D6DF0ECC32212A43759
            FA45F1588B3327117742DE31B10D8DA27AD4B7CDA98E09528F9D4EB5BC78BD12
            FB3C0AED067DA3433B9DE70F12A4BDD535412ABA7F5931B10D5DBF762DB89F39
            97DA0FA2D74FEF8F13AD7FBDFA4E9A2CF11D879FAB73D66F721F7C17CDAE7D5D
            621B1A209CAFEBEF489092206D6B6A8254CF48C326530CA31AA64F2BE8B827A5
            41AF7B2CBD5E7AAF8DA6BD12A4A2FC8456F1A6DEBBA8BC8A36A21B548FB4AC04
            A9284FA2C1BED441526FBA7755B995232CD62F1D493B41AABA083F1CF59B06E8
            AC2F5547554E906AD6A73E5C294BB065D80EF324481F6D558BBB924E7A22D3B2
            F7A7DAE833B966591C684851E4D25A12A491678254D669FDDCD40B8B6E0E540F
            E69282FADDEBC65A3360522FF445CF1AAA138F5988457EC6CA52C704A9EA00AF
            9ED88606D35E5F629F47A573CBFC896D749EF74890F656E704A9C7464DDFB5F4
            5552A3F868880F96F07326F1678BB3ADCF18F2755A0A7AD4F0E686D2EC1F8F01
            104F5A42FA1E87769420EDBCFF26414A82B4ADA909528F4DB935A0923A185C04
            8F413ABD3E5B76FD9D678254BCCE6FFA3DCCB4FE036A65264845D7EE93AC7A49
            52513E46E5A2B4D27DE8C662ED04A9475241AA78911D475513A49A4DA29B468F
            D19A61F59D48903E9A6633A4CC6C534DBA714E821E3554F4FD6F723AFE6E2448
            23EF04A9EC693E1BB3A85EAEEA91F61A29F34E907A2539F6309F5AACD3C023C9
            50C4467565AB638254BB64A7CEDCCDF9F03D88569F2C99D8866E9C7768FD9904
            696F754E907A0CEE9479EED232532DA79CB7A49F372E7D5E34DBB55F6248A558
            0E71F8394FB0626BD74FC2E3B3265ADD728B73BB2448C74382345FFF7A3DCFCC
            B2F4893855BDC754526BCDC43666595C59DDC93B41AA04A23682F2282DA66BC0
            7BFBFC5BD90952D9C462C9B7C51C8EAD08FA3D284732685F98FF2548BD3685D0
            8BE171C39B4BD512A46AE7DD2176329F7A494A9828897DD780AF21413A876A84
            A878FE1312DA5825C4E5637CFD0221AEB3B49B098D966BD6EACD0EAF413712A4
            511109523DE89F6AE91B1E49BF99E2554D90BEC37C66C24C22E5188AB849F458
            A65DD59BD771D43141FA4F8BE7DE14836E7673D22682CB26B6A104DAD6AD3F93
            20EDADCE09528FA59B659FBB74AE555993AA9624D1A08B6ACD5DD6E3DFBC9288
            657E8646A5679FCF3AB4A31AA49D4B50499092206D6B6A8254657CD6496C7794
            3D0F72F0B87FEEB52782778254746E523DD22725F657F54875CD3CBDC7BFE548
            908A563D6B80CF6343AA22E85CF2068B25017AF29E41DA7D21AA1B8F04A9666F
            6D3EC1F72DD60A2DA1D7EC2F155F4F1D05E9A607CEDD877C0D09D23934F3F3D0
            84EF9F3411A89BAFDD12FBBEBFF9EC3ADC8D046954448254740E503DD2E5C66B
            AEA75D421CE3DCEFEE1B6B2D5FF39879A2993C9F77686712554B906A59E52689
            6DA86EF246CEFD2A5B1D13A41E49C451AED3395C6F71803545E7C00D09D2DEEA
            9C20F5A81BA90D313D362D1C8736B4D3EF56AB38162AF9678F420F739B8638B7
            EBEFBD6690762F43AF02AFE4AFCEC7D738B74B82743C2448F3F5AFD7F38C4712
            F14716076EAAC623F95BC46BD6EF9AACD750D7BCD4FB184D885AC3E220BD67BF
            274D90CADC169F4355426DE9C4E32BC2832176B63EAB76DB09528F0FA1A4BC90
            55E09120AD2AD5A7503DCD613BBC91208DB4E44A23F7290FBBDA68E5C409BE4F
            27F7F313FBAF818A67DA6885FEC74182342A2A412A1AB9D4D28BD41A2E77B7DA
            EA3C27175183540F56A945D1550BEEE3896D4CAA6A09529553D93AB10D8D4AAF
            E5DCAFB2D53141AAEBEB0A896D742E43AF923B2C3D79745C8837B7FE4C82B4B7
            3A27483D6ADBE9FABD7D86BE8B3630D5B5480F75F325B6E54DC921FD5E3BAFE7
            5E3548BB97A15781578DD8EEC41A095212A46D4D4D90A66E3C2CB3ECB1CBD0AB
            4033ED57496CA3D70483A212A4A2322F7B391CBBDAD7EFA4F3B93F6782B44DAB
            70B522603F4B9F2DEB4D49522DB77F4CDEA09D209D19E2170E3F48A3BEDFCF7D
            B409A63941FA251B6D562209D2685B1B6DE7F97E7443A0D9C0F74CF8FD1E0F49
            4AB27C2FB18D6E2448A32213A4B24F88C31C5E0F957750C2BD5D8FB48804A91E
            AC522F7A5FB0586B2D87AA25488FB3F41AC23A9EAAD6FF19551D13A49AE195BA
            03BDEE41362CB1CFA3F04A66EA41601FE73649903E56AE04E985963E3053851A
            BC4FB6587A4CC9FC6766EE4B27CD50D72CA17FB7FE3FF53EB54DABD6FE2FF7C1
            75D1AC9ED481223DFC76D79725414A82B4ADA909D293436C93D8AE36E4AE6259
            123DEB2C98D8865E9F6DBBFEAEC804E9E35BEDAFEB70FCDD9FED2A2448DB5442
            50839F1A80ACD2040E4D26522980476D6EDC4E906A66E19F1C7E48CE59401EA6
            3541AAA9D7CFB2D146884990461A309899F0FDA9CB24B569CD1189C730CBFC47
            F8489046452748F5D0FF037BEC4E8A93E89C91564482543BEE3E2BB18F3F0DF1
            7287639D44D512A47A8D3D6A506A49CB0DCE7D2B531D13A41A204EAD21AC8D2E
            5397B27BD38DFB790EED2839FA99D69F4990F656E704E94D166723A6D0EBFB81
            0C7DEF45EF2D0D566CDD8A657277C81EBD09A77ECFE738B4A9FBA66FE63EB02E
            DA9D39B57E9D96D677AF0223414A82B4ADA909526D88FAAEC47635F8A0152555
            DADC4DF5DFFF99DC4AAC7DBC67D7DF159920951916CBAB3D31B1EFAA47AA328F
            6738F5BBA895E1AB59DCF15E913AE3D7C3EF2DDEE7DEDFFE8B768254D96B6550
            533702AAFBC610D39820D58745337B7F30E2D793208D23F41725F661758B0F3A
            93D20651D75ADA322FFDEE7512BA2CA18D6E2448A3A213A4A25999BA60A6D634
            94B784F8AA43BF7BDD58AB1651EA79FF568B3B643FE470ACE3AA5A8254BFAB63
            1DDAD18DC7779DFB56A63A264835A8B587433BDD75F372D3ECEE231DDAD167E5
            B4D69F4990F656D704A992FAD73BB4A3954E5F2AB9EFA3503D35CD0EDFCC623D
            D0B55A7F97834AE768C042335D6F74684F9FED77673A965EF44CAA59B20B24B6
            D36BA92C095212A46D4D4D90EE1DE2D30EFD7BB1F90CD0787995C58D6E53E9BE
            F3E8AEBF2B3A41DAEEBF567D7AD4237D9EC51C425513A49D9420D5BDE1A6ADBE
            A696979BD4A3360B6E274845DBDD2F9FD8B84E5EAAE1736FA6834B358D09D271
            2F842448E38EA63B267CFF05E63355DE63C303EF1B3912A451190952D10C8A59
            965EE3530360EBB58ECB3B41AA4D22F64DEC9FE8813375606212554B907ACD0A
            1AB5AC4A55D53141EA75FDDCC9E275A82AB48C77DBE456CC560CF1D7D69FBD12
            A44AA24C5ACA665C1EC9950F59ACAFD84F5D13A4DA6C62D481F8415E16E2EC92
            FB3E090DE869D5C366ADFF2E59E2CFD6CEBBEDCD6095484C9D75A4F7DCEA25F6
            7F98E787F8AD433BBD5672D53D41AAF3C74105BC2E4522419AAF7FBD9E67BCF6
            9D39C0D2DF8B9EBC6A79AA3E6B77D9C93212A4A2D9AB1E8355EAAF5690CE4AEC
            77D97B0B2DD4EAB7AEA94A98A6D6F41F8712CA33AC55C3B53341EA515C5DB634
            9F0F5E0ED39620D5D25A25FA1E1EE37B3C1EF034B57BFF8CC7AD8BE85F27FC5E
            2D0FD306474F48F8F9BB86F8B2C371E8047166621BAAC7F274F379101512A451
            5909525161EB4F39BC365A0AAF59A48726B4D12B41FAD610C738F4AFEC590D6D
            554B907ACD0A521B5A72F4A073FFCA52C704A906347EE3D08E124DAF2AB1DF83
            CC6FF1BDB448623B5A8AB7B0CDD940601EF3D9445089A99B4B7A2D3CCA5FBCC7
            06CFDEA96B82D463D9A66892C5BF4AEE7B2ACD24D5009FAE05BA475AD38A9DD9
            AC95169AD0A27B558FBAC7A232395714FB328D4CF73BFB39B4A3F7E3E7BBFEAE
            EE09528FFAF4BA0F7C4B897DD6B2D57913DBD0F5C27B85515313A47A26FC8743
            FF8A3CF6496863658FBAA82AA5D2BD1AA2AC04A9664FEA1E726D87E350C9CB0D
            13FB9D7BF3750DAA2BAFA8CF825EC3D4C942C3E8BEFB9181DECE04A9C745C3AC
            5A37F6E39AA604A912167AB81CF7E1D82341FA8D106FCCFD024C4889DD8313BE
            5F3B7A6BF6E81D0E7DD14DB746D15367266834CA6379A490208DCA4C90EA414B
            CBD83D06B0548778F184EFEF95C4D4CC93DF3BF44D1B50E8E6A6EC65F6554B90
            8A36D75AD9A19DFF5DEC6BA88E09522513354097BA4448D79119E6B36439956A
            2F7A946AD08C8CEE9D7335B33D653052948CBAB8A4D7E2384BDF40ED51CBB87A
            A8638254D7A8D9965E0E466DA4AE64AB82E542BCDEE24CF0D4FADCFDB4EBF97A
            95F5D0C3B4C7AEF1A974DFAB44C70C87B6B4CCF492AEBFAB7B82D4E319ADCC9A
            EF1E03BE5A21905A6EA197A6264845257C9EE6D0C75C2BBFBA79D549D7E4AA15
            7BFC7D590952D13550F734A9B3AE35394E2B0C5236D1CD9D20EDA4E350C9C89D
            2CED7731C8FFF2579D0952AF990F7AB8D583DDA433F8729A8604A946EA74B374
            D484DFDFE404A91E6A675BDCDC649A6856806A7C8C3393B81F12A45199095251
            525317CCA7A7BE40897A2548F540A3CD395277B2179594F84EC9C754C504A9EA
            1FEDEAD0CE2F2D6DB3B99CEA9820159547F038BF55256191BA61615BAFA5E5B3
            2D26935294B9C18C062C9F9FD8864A159C3CE0DFEB9820D5B2F89F39B453D77B
            C77E943856224A4B5153DF37DD4EB7783FF69A10A738B4A759D83342DC55E2EB
            D38B36B9FBBED3F1683672F7806BDD13A4DA7DFCE4C436B494D42339360A8FE7
            6A6DBC53C4BD6F9313A47A4EDACEA18F275A5A493A2FA9A5F1DAFA95A62A3341
            2A5EE7F554554A9076D2E0973673D4F9D073B58636B67D2407D49920D5B45565
            9A1774F8017AC04DAD9D9843DD13A47FB2B8DCF5DC84369A9C20D57BF65BB93B
            5110D5F2485DAE2F2448A3B213A4A2F3939215A94B9552F45B06AF73FE6B1DDA
            D76C0F8D4897B92CBC8A09528FF7719B6AE49D91DC4AF9EA9A20D54DDBC71CDA
            D14C54CD64B8A9E4FE77DAC0FC126D6AABBBAEA06A4DBE24B15D2DEDF6984137
            8CEE91759E489DC9A4992E170CF8F73A264895D0DACAA19D375B9CA55B24FD1E
            EF4F6E657C5AD2ACFA721ECF58A2F38266E72DDAFAB3C7D2432D6B4F29C1E3C1
            63104234EBBDD73D49DD13A45A7A7B41722BE56D04A873F311896DFCCEE2242E
            6F4D4E902A99E851E75C657274BDBABCA0D76014AA53A9FC87C7E63E6FB0DE79
            80B213A4A2959FEFF47881128C9A20CD755D9D693149EF39E0F3C8B9B133412A
            CA56BFC6A171CD54D388F22F521B2A595D13A4BA69D7EC0CCD3A4AADE9D5E404
            A92EC2EBE7EE4441BC4A5F90208D722448C5AB14CAA4FA25483D137AC396A07A
            AB6282543386B5BCDAE3A15737AE6B58AC015927754D903E3BC4A54E6D1D1BE2
            6D25F7BF4DA3F21A6CF5D87050352555D7AB7BE0E3CB0EC7D76F499C379507F8
            B9433BAA737ECB807FAF5B8254099BF32D7D1687DE1BAA99EC517FB99FC52CDE
            E3AB4CC2FF25B635097D96F45CE4B55C58C7A36B9766936EE6D0DEED164B02E4
            2AEDA1D9D5DF766AABDFCCF2BA2748F53BBFD5A11DAFBD1286D1E0EC26896D68
            3F8D1D0AE85B9313A49EF7986759FAEF388557EE4AA58D34EBBCD7F3408E04A9
            12BECA4BACE9706C931A2541AA6BBF56AB69B0DAA31CD3B89669FD7CAF0D9D1E
            D928B23B41EA7971523D394D81F5DA1C661CDA08400F575A9E364E21E2BA2648
            55FF6F1DF3D9F0A0A9095225467F97BB1305D232A3675A5CD298820469942B41
            AA0B911E86364D3CC649F54B906AE7413DD87A3CF869E69CAE1DB34B3AA62A26
            48C5EBA157347369CF82FA398C667EA81E9F66928C53E6A3AE0952D14C688F87
            26BD5E7AF0F869866350EDEACF3AB5F505EB3D13421B1679CC58D37BACE8EBB7
            EABABF35B18DF6ACBF41EA94205579153D9878D403D36CE29715DC5FD597579D
            790D16E97C544682A89B1253473BB5A5C198CBCC77F593EEEF5E693E2599C6A1
            5AFB7AEF2FE5D0D6EDAD76EEE9F16F754F908AEEB5869D4786D1E09777D9876E
            EAA366A9A6CEEC2B6A66739313A4667E9B73CBCE21BE56D0EB30886A527ECFA9
            AD1F5AFF95103912A4A2E77625EA52EB914E6A940469BB2C8AAE19875B3CC796
            3D9B541B15EA1ED063B9BDF257DFE84E906A8301D526F1A825271A39D2C36399
            CB25353AAF074B250C35B3406FCA1B46FCDEBA2648456F488F9DAE9B9A20D514
            EDED7377A260DAF972DFC436489046B912A4A2739C06459E9A789C9318B4D3BC
            76467DB3D3CFD112B299163771295A5513A45A1EE8558F55372E9A81E135CB77
            544AF06A44598973ED263CCE2ED7754E907A2C2B6CD3FD8BEE67FE5962FF7553
            AC07E8D40D94DA7A6D96222F0E31CBA1FD53CD6706493F3AE75E6D7120288536
            DB7BE590AFA95382D46347ED36DD7F15797ED2738D7E878B74FC9D1EEA741D2E
            73C6A4666C6946F5131DDA6A976BD0B39BCE135E0FD17B99DFF96B149E1B518A
            063376E9F36FD39020D57DC7E60EEDF42A7BE2E9C3213EE2D08E76E22EE2D9BC
            E90952CF3A97775A4CB87BAD9E198596556B6F86259CDAD36EE9FD5EEF5C0952
            F19CBC38AE6109529DBBB549D7F33AFE4EFFAF67C13F94DC57D541F718647D64
            1563778254344AF31EC70E6B44414BA8CA48926AA98F3EEC9D3B69EA17AB1A57
            B78CF0FD754E906AA45437D55725B6D3C404A90AF2CE369FFA2555A6A2F5FA6C
            DC93D00609D2286782D45AFDD352BD79128F755C8312A45EBB48B66934573770
            455F3BAA9A20F5DE344ECB875466E32705F5B7936E9ADE6B71539ECEF7E8381B
            0FD53941AAE48766CEA426D4DA2E0CB191C5D9D545D312336DD8F94CA7F606D5
            8F530256CB45E777F8394AB69E53D06BE2B553F82803D9754990EABE5A93203C
            EE9B3CEE4D86515DE00FF4F87BEDBDB0B7155FFBB49347ED5DE9FC3D6BE68ED7
            2A015D73B7B6589AA90C4A58BECFA92D0D06AA8EF9C57DFE7D1A12A49A51E931
            2146E7663DF73E94DA500F9A117CA5A527EDEF6BB5514489A0A62748B59F8172
            06CB8EDEDC409A94A6F35A1983B97A4F2821B6B6537B7F0BB192F57FDEC89920
            15ADC2C971CE199620ED3783573348759ED575F7BE92FAEA95BFEC9B20D50745
            6F728FBA146DCA7CEF64C5D540D303986E5EF5F0355F8F7FD743BB96A90D7BB8
            F048906A847A9709BE4F49E46D137FB6EA636D6C694B639A98206D2FBB6A026D
            14F0D584EF27411AE54E908AD76630E318942015AF07BF360D78E95C726F81C7
            54D504A978FF8E75A3A2E2FC458E46AB1ED09706BC2EA3AE76A8738254BC079B
            55E751B3864619EC9D947E77BA8F7896639B9A31F9A301FFAECD035FEEF07374
            EFA55ABBDE4964CDB2D232728FC1A8611B34491D12A49AD1ACBA731EB32045BB
            BC1F54607F556F4FEF8F85077C8D66D269466CCA26A7A3D2209547991CFD1E2E
            6CFD599F5D253B3C061B44D70A5D7B8BAE29A719861F766C4FF7A75B0EF8F769
            48906AB6D6C5C9ADCC793D3C92ADDDF4BED9DAA19D59E67B4FD9A9E90952D16C
            F1CF38F6594971E521FE5ED06B22BA67D7BDF7068E6DEE6E839FE972274895DB
            D280C61A8EC73C8A4109524D84F8BD0D7EFF2B9FA8FB703DCB155DB6A5DF20E8
            B8F48C7462AF04A97814CEEFA6175109C02B9DDBD59B450F63EB0CF93ADDE0EA
            E162D0924D8F04E9A427CBA787F88BA5DFDCA4EE02DAB404A9663F68A64F6A3D
            9FBAD04D554AC16712A4511512A4AAFFA6072D8FE4C2A8862548BD96CC76D2EF
            43352CAF2DE898AA9C20D572503DD87B95BD91769D20DD4878269E351B410330
            7AD81A366B64D8CDA859FD13A49A89A98485D7AED57285C559D59715D0DFD52D
            2E399EE1D8A606A7B5EC6ED08DB1C73D479B0668748DF21A8CD78401CDA6F5D8
            21559FE367DAF08784AA274895D853BD4BAFE5DC9AC1B9BC153B3B7AD4198AFA
            DDE833A001F3223E636D4A1E78CCDAEADE895C654C7677ECA76653E93A71A8F9
            3FDCEADE5B358E77736E77D820C434244845D7966738B4A3DFB1CAF99CEAD837
            5D773FEED4D628F70A9322411A5771282FE359B2EB3A8BEFA922CA37E85AA173
            B4E76BAEF3B1668F0E9AE9983B412ADA8C5203628B24B6338E4109D26D429C3C
            623B1A78D4EAB1B30BECAB66B2BEDAA19D4706F5FB254875D1FDB3F9EDB4D8A6
            E533BA3069B4E2AEC4B634C341238FFA108E5A9455C9042D31ECF721C8992095
            4F5B5CEA9342CBD556B158E368124D4B906AA4E0F8DC9D2859CA86162448A32A
            244845897D25BD9771686B14C312A4A2D962DE49436D6EA2916E9D5B3C1FD474
            73A84D330E9FF0FB8B4E908AE766399DAE68B57D56623B9A59A71BA5036DF499
            87FA1DEE14E284015F53F704A97CC8FC67C6A9D697CA1768A3178FA5911A68D1
            EB7C88F9DEF3E977AC019361F7549ADDA7072AAF12371A0CD7FBF1E6C476741F
            A57BC6E59CFAA58183519274554D90EAF7A3F7B33E539EA55DB42CBC88F35B9B
            96FA6AF9E438E52EF4DED55E06BA27FF85737F34A079A6433B1ADCD2E04BE792
            50DD07E8D9CDFB015AF77C3A47782D9DD5674BE5D7D673EEE728B588A72541EA
            39F3561BFCEAF77B6C623B7A16D7E082D7354FEF6D25EE6E746AAF1B09D24803
            DBA9BFFB6E5A62ADF781EE2BBC9658EBF94E3BA52FEEDCD74736E519F2355548
            908A268B7CD3F9F807E99720D57DA3263E8E7BAFA2A4A3EA966B86B9C7C6E26D
            3A4F28D1EF51375FCF3157F44B908A5771E55EF4B0AB91CEE36CBC5DE675F3AE
            59A07AA05521D64976ABD22F456FB05E7526722748556858A382A937372909CA
            A62548554CB8EC29EBB9E9E4BADD84DF4B8234AA4A82549484D0B2D832EA918E
            9220D528A71EF2BD96FA75528DC1835AC79B427DD46C7BED4ABD64423B652448
            35335333629E97DA501FBAE6E9FDA851F9716A002A71A4F3FC2E36591249D760
            AD2AE9B703E9342448F519F893F9CCF4E9A6D999BA4F4B4970BFD4E2B2A4F50B
            E89FCEC3A36E7CA841CA1D1D7FB6669B6B43B0496645E9C65F2BA87413EF5543
            5689EC952D2E371BA66A0952DD676BC9B212BC9EA51744F75F9AF157649D69F5
            7BBF84EFD7EFE3388B6549AE4BEC8B1EE234ABCA63F6A8AE09EBF6F87BCDB8FB
            BC43FBDDEEB0389354098A4967FBEA5AAB8D42353037DF846DF4A34937FADC5C
            3DE4EBA62541AA59ED7A5EF4DC3B41CF6E2A0B33C9A6657A4FEB7DB7E504DFDB
            8F6AE0BECAB1BD6E2448235DF3745EF21EB010CDC4D77D8AAEC5930EE8AACEA8
            EAD96F5240FFF44C31D3864FBCA84A825474FEF19E79DF4FBF0469EAC6515AF9
            A009122785B83CB18FCA0D6A307B4387E3D533904AF13C382841AA8B976626AD
            E2F003FBD18745D38535E556177BCD68D10C482D8FD243E162161F2CF460A837
            97EA907864878F0BB1B33DF603913B412A5E8969259227D98CA34909D23A6FCA
            9542A379336CB29B2012A4519512A4A251FB831DDBEB679404A9145D1F553B62
            9F68F1A6EB6F237CBD92C7AB594C666A769957B2B18C04A9A8D692CE55930C0A
            8EEA768BB3A514BA8EE90646D7635DA735534903787A0DB5147BE3D67F53E95C
            A4E52CBD6654792448F5407F7481AF5937BD56B3BBFE4E83B93FB5E27E774A32
            69369612CDA32470B4F47F2B8BF740453C108956B03CDB469FC5B9AAC5DD6FBD
            5F23AD94504247B3DA87AD5AD2C0B4CE0D9AA9BE9A733F4699D9D6569504A97E
            27BADE6B76D1CACEAF872829AA04DF4505B4DDA61516BA3E7894B9507F3530A7
            81246D4E352C11D749EF6BD563D47BD16BD33DADC4DBA7C7DFEB5AA764C7BAE3
            35373225475562410FB7E7D9F0E4B69EE574AFFD268B2BFE3C4B8E741A7526B2
            478254F7989E755347A1C944DD33AEB49FC09B9D7FCE5DAD76BF62F13E6B189D
            27749DD679C2E3F9BC93AE9D452EC925413A87AED74A08790F5CB429BFA3FB14
            2DC91EE59E5DF91FE531F4BE9A69C5DC3F2919A6FBD8514A3F562941AA8177DD
            DB143569A253AF04A912EABA4F79B6D3CF501E50F7AFA7B57ED638AB04B52256
            03335E13DD34E1E09144FCA004A9A8AEA77EA1D3B8BBF7911647313B552141AA
            CCB56619A4D6C4544D0DDDE4DF39E6F779244875414BBD01F1A60F60779D418D
            7EA46E8C55575A2AF7D109BE8F046954B504A91E8AF4D0B691639BBD8C9A2055
            7F6659DA0DC5A8B4EC4F9F6FD570BEC1E20DBE6EA6345B45493DDD006957DB85
            27FD010394952095D4995055A5BAE0AA6BD87DEDF54890964DC9835E1BD778EE
            303D88666BE8A15623F24A4E2A01AD0D37F539508D2D7D16745F5064A25D0913
            7D26CE18F3FB94442C6AB6901E84748ED0A0BF1ECEDAB5E8F540BF82C5070D25
            948A7838D4CDBE66E89E3FE2D77B24483528307BCCEFD1F951EFDD155B3FDF2B
            91D74F19B3BBBD374AEBA40124FD4EFFD80A0D4E684049355535F35809777DE6
            F41CA5F7F58ACE3F7FA6C57212BD68628BDEEFDE65D2BAE97CA70775CD92D7AC
            6D3D6FCCD53A7EEDABA0E4D90BCC6F26763F7AA8DDCC469BA1E69120CD41AB34
            BA575C6A46B7DE7BF316F433F51E57B25DC92DBDBFF5FAEAF7BB94C54113D597
            5EBEA09F5DE473421B09D2475389BF4F17742C9D740D56F249F7291A4CD5A438
            3D33E83E4593E2749FF23C2B7E55DC389B165729412AFAFC69626111CF359D7A
            25488B5CE67F73EBB8FED0FAB9B32D5E5315BA97D5009BAEA57A8FE83ED37B20
            507941E5078726484523948715F442E4A622D21FECF8FF2A2448658F1047381C
            9FDAD86BCCEFF1DC30A14ABA4F4E5A0EA2E5292937163AA9FF29C3B1E8E4905A
            8641373BBAE11AB7060809D2A86A0952D1CC30D58459CAB9DD4EA32648459F31
            3DA4A52C61AFBA3213A4BA39D0EC4ECF9D3BAB420FDA9A95DAB9B9C634254835
            C8AC6446114BD9ABE6409B6C158C1E8C743D2DA234474E9A3133CE40AC4782B4
            EA345B44B3758BDCD556D7433D88179D24CC419328F4803C2821B8830DAEF13C
            2D3440AA25B8A3D6A99CA604A96826F1B8CF7955A7F38292AFE715FC7348903E
            9A92DF3A371759D6A02A3443FAADFFDFDEBDC0EBB7D5F3E21F6E5D29A2D2ED28
            254A2E15A99C93AD483987CA2DE71CB209E5A8147209898A3FE1B845E5D24E1D
            5428215DA89D3F4A22922E44FBE8AA14BAB1D3E5CC8FB996B57EBFD6EFF73CCF
            9A63CE31E733DFEFD76BBC7697BDE61ACFB39E675E3E638CEFD8E1DF9F5B401A
            359E7737393B20CDECD1ACF6197375792B1948CF80CFBF5F4BB60948F385C952
            C6252C993E8D7CC00E93F0B904A499C59011BBA19B036426472E327FBCC3CFAC
            25204DD0F3AD038FF9A8D2D7C39D5AAD320C77EDDA1376FC1901696F8E0169A4
            0C4996F38E35F2BA4B401AA98F9AD91DFBB80A21A60C4823B37272D1DEC7D039
            372599117338D37F9F02D2C8062A79E0ABB123FA5C3DA5F40F57A70DBEC6AC7D
            DF42EA366616DD2E9BDBEC7B409A7BE45C5FC7DCB53E6A6C7A3A57A93FF7C82D
            FEBD7D5D75702833C1738FF1821D7E66DF02D24C96C8CA819ABB90B736D5B395
            80F47D5DB9F439C83E5F83721F7641E927396D6B8E0169E4BBF235231CF7D0D9
            01E914A16C2B3F53FA3D15FEDD360169E4E136F52C6FDBBAF795E5E13675812E
            3DF8EF730948237565B69DFA7D3E596E97253EFFB6E5BFBF868034CBEA72A3F1
            11038F99F775971BB35A12925C52FA919C2132A3E9821D7F4640DA9B6B401ADF
            5DFA595C63D835208D0426D91C6F8A4DA4A63675401AB9BEA4B0FC955BBFF88A
            3298979A98C7673CED5B401A79E8F8BD0DFFCE52E5A123F788EF18708CDC6BFE
            41E96784ED837CA61FBDE3CFEC73409ABA9DD948A1D66EE8E7925514993D5ABB
            26E21C64F6683E1FDB3CDC67824B664AD5AE533907291F92E7B75DEF47F72D20
            8D94A8796A19B774CA54F2BD4D3DC1B74CF0BB04A427CB20EE73CB7E0EE6E6FC
            99B21F6FDCF1E7E61A90E61AF7BC32DE67F078409A67B8ACF219A326796BB96F
            4DF9A9FFA82DBE6D401A59A692DA926315F59F5A1EC492BABFF3D8FF36A780F4
            030F8E5563D7D05D6A3DAD2120CDDFFD51038F97A5CCB58A029F46062CEE50E1
            38A9E3F1A21DFE7D01696FCE01692E6299B539C680D66902D2C86ED639E7EEC3
            0DFC712D02D2C8AC993C10EDC3F2D12C6BC9E7E3ECDDECF731208D847FCFDCE2
            DF5B920C14A644C23F0D3D50E997DAE7867FE9B3A42F2AA70BA6F635204D8DE8
            D4C87ED504BF2B651A1E5EFA807ADFA4D6E62EF57D733F907BA2BBB6EE784579
            6ECBBDDEAF9EE267F731208DEF2DFDDE024B967B810CA04C35F144407A6ED72F
            7D49A7EB8CF4DA5A4859BDACB23BCD3568AE01692427CA4AE1316A3D1F0F48F3
            FC969ADE294F3956DDE356BEE3E075FD875D02D2C8AE62F9B2DEBAF52B19204B
            BFB284EB7BCB3C77B13F2E359A9E58E1381969CE0DF72BB6F877D71090E66F34
            7497DA845B3FDDF0F56437D05D97C79FE48C29E55B1090F6E61C904666D024C4
            BF7AE5E39E36208DFF5EFAD95463ED92D942AB80342E28FDC6364B0EDA520B39
            D7B9E79EF0FFED6B401AB947C867671F6668E421EA2EA5EE92E93C24671070A9
            0300994C9020EB9DA7F8D97D0C48F3FDBE53D97DD6CE50772BFD860B436BB6CF
            4576693FCD666FA95F9DF3E92E35F7E62A9B30A6A6EF534FF9F3FB1A902EBD1C
            5E9EC7533777CAE5BB02D2F3BBEEC1EFAFB55B794BB9AE6652D1EB4EF9F3730E
            4823930C1E3BC2714FDAA42913341E538697819C8B8B4B3F78FBEEE3FFE3AE01
            696407A9FC11EED2FA159D4276C1BAB0F475B24E32B7803417BCEC925963B959
            1E626E5736D706DBF780F48283F76288DCA0A5DECFD835B4CE274B11B34C6DE8
            2C9BBC963CA46F3BF3A7F5057B1301E9919CF033D3A4E6D2F621016924F848A8
            7795915FFB1412EE6570E1B71AF621033D79505CE2287FAEB5D90DF3B5E7F8FF
            F739208DD424CDBDC8CD5B777A80CC0ACF77E0D2A1073A4102C6CC2A5EDAA64D
            99FD9473EF69EF0FF62D204DA9A8AF2FBBD57BAB299B2E3CA26BB76FFD460CF4
            BBA57FC0DF7563CDE3120E6696CC525772BCA6F4CF9EBBECAB70D27BB08F0169
            E4B9201327EED4BAB33BCA7369AEF5DBD4D5AD4940BA594A3965A2D6678FF41A
            A790C1D64CD018F2CC3EF780347EB66B77AF7CCC9302D2C8E7E27F973E535BEA
            F52452D2239BA7BECFE0ED6902D248EDC34C474D41FDA54CB3BDB86B5F51CE7F
            81995B401A39293DA3D2B1B6A987B5EF01E993CBF09B87BC877358BA556BF7CA
            6F3A38D636E670C13E1F01E9996A2FBB1A1A90C60D4B7FC335D64DE5D872339F
            121D79D0AAB1A478A80CD6E433FF19AD3BB2A5D4C37E68D71E52CE1AB13DCBBE
            07A49101E79F2CFD4DE6922410FDE683BE8F29032A59463BB45EF85472AF96D9
            6D431EC4F625207D43D7EE55EAAC82AA21AB6EF240B7C4CD6C2E2EFDBDD790FA
            BE873EBFF4754997F29D3A94EF569EE15E3FF038FB1C9046660BA7BCC4981BB7
            D4946B4966363FAEC1EF16906E279FA90CAC64D3BBA17B5F4CE93DA5BFD7CCAA
            E1770F3CD61202D2ACB8492DF8A12B648F3B57407A28A5DCB24AE3C623BFB631
            241C4DC98513CFABA70D480F7D7AE91FCCE63CCDF6CD5DBB7FE943AD4DB327E7
            189046468E6BD413CC7B71A3D2DFB89ECB3E07A499A9F4D765F8093E9FFB3F6C
            FD824ABFECE1C5158E93D20B29BAFC9E2DFEDDB95CB0CF45407AA6CC1EFD9DB2
            FB665CE75223208DCB1D1CEBDE6559375C7948CBE0608BCDD9CE277FE7FC5DB2
            41D79C072DB3014F7660DEE6BCB58680F450361BC9EC990F6FFD02B69000EFC2
            AEBD70A2DF975A68BF5EE6BFCC2FE7F4FB946133FC621F02D2CC62CBB9FD0D43
            0F54D98774ED3B0FFAB6940D9C12305F58EA84A387528227337BEFD8FAC56D21
            7529136AE6217CD333DC36F63D203D94520C0F2BF3BE1FC8F92133825B3D4F09
            48779330E9A2AEFDA7915E6F4DD96C27B32987AE183DB484803492F16486FD15
            2B1D6F53401A39C76425519E3FAE36C16BAC21E16726CBBDE65CFFC2D0803432
            CDF6C1A57F9099D3893817D28C486576DCB6758FE61A906663ACD470AA318DF9
            974B3FD5FC5CF63920CD97E19B071E270FF6737A78C98DC5AD2A1CE7734BBF0C
            6193B95DB0CF26207D5FD7287D3DD21A17AE5A01E9A12C6DC82CB4B92F337E4E
            E9574CFC5EEB8E6C708BD2D7A9BB65EB8E9CE54D5D7B40E997006D3310136B0A
            4823A145663B5C58E6396890D9D299F59BA0E234B53587489895F7E61BCAFCDE
            9B3CE4E773FA6B430F7460C90169EE9FBFB59C5C53784EAE71D0CFCC5CABF520
            595B82C19C33733EAF110C9E2DCF131796FE7B758DD62FF61C522228ABA45E56
            F1986B0948E3534B3F39688E834B19F4BA47D7FEBE611F04A4BB4BE693556919
            64BACC48AF7B889C37B32232CF2A6FAB78DCA504A491DADB8FA974AC6D02D243
            D9242AE57432D378AE41699E3FF26C918993E72DFB5323203D94E9B559BE3287
            3A3FB9A86696CF9FEEF873730D482337DFB5EABE66539173D5CDDBD7803423E5
            BF54866F689251D91F6BFD628EC90DFECF54384EEA18FED72DFEBD395EB08F13
            909E2CE7E504E043C385DA016939E8D385A51F68BBE684EFC92659FAF58BA50F
            84A69A2D57431E7C7383942551ADDFCFAC5AC8CDEA8F77EDAD3BFEECDA02D243
            37EDDA0F977EB6C61CA42442AE31991DF00F8DFB92D51BB9CFFCD4D66F4AE96F
            B4F31092C0A5E64CC9A505A409EF9ED9B51F2DDB0DB2CE496AB8DFF3A0B53E57
            1E9767980C06FCD504BF2B0FB5F90C27889CCBA668998870FF83F7A1B63505A4
            71D983D79CC92163EC72BDABBC86DC43FE62EB8E1401E91037E8DA0F96F9EC47
            93EBF1E34BFF593FCDF764932505A49181910B2B1C679780F45006B4F30C9212
            3B3597FB0FF5E7A57FEEDE6AC67ACD80F45066B06464F6CE65DA91FEDCC4A756
            559614EC1A8C1E9A73409A003A37CE35365CC9C923238A278DAEEC6B409A13E7
            5D071E232353D9D0E8CDAD5FCC31B9E1795D197EE3938B4B96D9BF62C3BF37E7
            0B760848CF2D33451E30F0186304A487B2ECFEC2D23FA8DD70BAB7E57DE4229A
            E0232B10A6DE75B9A63C186567CB8CE64E5D1F28E7A4D4414BB8FC96531E63AD
            01E9A15B977E40EE0B4ADD8DD6B6954D2D536B3733BC5FDDE0F79F4B0600F250
            96C0B6451DE35C2B33FB294BB55F32C2F1971290A66451EEAB722DFBEBD69D19
            2835F6B28AE6C2D26F84D46A63B06795FE733DE583F4A1D424CDACB084C52D66
            FF24684F39B10CA83DAD8C336B36D616901ECADF37138732A9A245509A99A209
            D4725D6FB561DBD904A4C3E55A95FB94FF59FA7BCEA965A3E1DCAF67E2D29803
            4A4B0B4833D895A5F643EFFD4F13901E9715AE1796BE367BAD7BE35DFD65E927
            E0A45CCDB62BD84609480F65742105B5134A7DCC882FFCA5A5FF726437D5D70D
            3CD69C03D2A835221099D1F30D27FCEFFB1A906649E0D0E50009DEBEACF50B39
            410AEED7D8342AB39636952098FB055B407A6E0959F200769B01C71833203D94
            00243597F3B7CC40DBD83BDEA766604614F350964DDC5E3AF2EF9B5A062A3FA7
            F437B0D9A0E34346FA3D19A47C7AE9AFC54F3EF8EF43AC3D203D9407E38CC667
            9399B183B3FCCD728EC88D64CAF1BC7DE4DF3754EED9B24C33355CC7AE299907
            FCD46DCC6CDA578EF87BE61A90BEEBA06F394F2620CEC3D75821564B59729FF3
            654A32E57E67ECBAC0099AF37D4B0DE2395C7B2E7BF0DAF3EC969557637FAFFE
            F6E0F53FB6F40FB2635B6B407A284BA4732F909A819F34729F1346A42CD123BA
            F6A4327D69964D04A4F55CBD6B5F5EFAFB94ACF0187367F37CAE52CF3EE78D3C
            EF4D316969690169241CCD757AC8CA80A101E9A1E42FD9743CCF741984BCF6C8
            AF3DF7E2BF51FA41FE53E57A6306A4C7DDFCE04DB95DE9BF38436A9566E4E979
            A55FD2939BB49A17D4B907A4B940BEBCD419A5C98E6E59AEF64767FDEFFB1A90
            D6905DA2E75883307FC71A27DED498CB0EAFE7DB0C60EE176C01E9F9651961EA
            915EF5943F3F45407A5C66F67C56E93F7759729C02E4436FBCFEE5E03DC88DC3
            B30FDA905DA797240FBB792FF3E09BF7F37A038F971D85F3FE65696DCAB6D4BC
            511590BEAF8F2B47F7521999AF513F3103CB17977E33B7DC53BD69DCB7681457
            38784F523E28E78B8FAE70CCDC23E57E2E81606EB473DFB9F5EC83015A07A429
            2D92CF44C298CC0CCD3DF6F34BBF32EB5F1AF6AB850C2ADEACF4F703A9EB9C67
            99A19FAD941AC97D779E3532A094F776AE4173CE2FF94E65C032F79979E01E7A
            FDCDE72B9B1C66B6E8534ABF59C694D61E901E97894CF9FBE69EA0D6F524CF11
            A9D9FE9B07EDF513BE47BB12908E239FD5ACF2B8DDC1EFBE728563E6BE24CFDF
            B94FC900FC6B277E4D4B0C48E32B4B3FB07B5AB502D2B3E5592E937572DEB9F9
            C17F1FB2522A83FB79A64BFDF3E483792E1934203355407A5C1ED0F286E746FF
            06072D0FED39315FF9E0FFCF0BCDB2BC7F3E687F53FA6030376859FE38D6F4FC
            CB95E17588F2071973395A02AC5AD3D8F3DE9EFD3074A5D22FC5E07D65D6C85C
            6F646B3C10467674BBF43CFF7F1E443F72E0EFC8F777AC8B5B960E0D5D1EB64D
            FF867E4F727E6B55CF2FE1E8696711E6E6B76589895C23F2C09AEBC6F50F5A3E
            8FB96E7CD8C13FF3F94DC89F87F92C91CFF938B3542E29FD0C9DD4371BBAD3F4
            BEC8A8FF2797A36B715A3ED7791FF319C9F73DA55872ADC892EBBC9FB91EE786
            29D7E34D253986483FAED4FA0DDA5102B44B26FA5DB9994C60917BA97C0F720D
            C8EEB279DF722F93BF61EEAB320B34E79B7C1F72CEC9DF2FDF87FCEDF2779CD3
            F2F95A0E3FD71F7FF0BE5CA7F4D7859C2332E892CF55FE56F96CE77C9FCF7666
            885E72F0BEE41C9141945DEBE6D69099152D36BFC8FB90EFF9DC670DB796F362
            CA11E55C99BF55AEA71914C9B932DFB95CA3F27D7BF7C13F1336A7466DC2E63C
            C7FCDF324DD03E86ACE6B8F9C16BCFF72AE79DAB1DBCEE0F2D47D7DF9C6B720D
            CEFDC2ABCAD13927AF3F03004357170CF1A165FC55296348383AE67D4B262EE5
            7C999A81297194BF6F36EFCA7B95CF74CE9BB9BF7EEB413FF2B7CDF5249FEFFC
            6DB39156FEB659E6BC94CF778DE799319FF9E7FEBCB58D0CA8E4F374782D4EBB
            6E39BA4FB96239BA4FC9F5F8F03EE592D29F37D2723DFEDB86AF21AE5986955E
            C9DFA05569894C8438EDC0563EDB53CCFC4EAE95D5E6B9B6E43E369FFBC3EBEA
            150EFEF33B0EFA927FE67EED7507FDCB39E765B5FBD9222005000000009885F7
            7BEF7BE73A210E00000000605C02520000000060B504A400000000C06A094801
            00000080D512900200000000AB25200500000000564B400A00000000AC968014
            00000000582D012900000000B05A02520000000060B504A400000000C06A0948
            0100000080D512900200000000AB25200500000000564B400A00000000AC9680
            1400000000582D012900000000B05A02520000000060B504A400000000C06A09
            480100000080D512900200000000AB25200500000000564B400A00000000AC96
            801400000000582D012900000000B05A02520000000060B504A400000000C06A
            09480100000080D512900200000000AB25200500000000564B400A00000000AC
            9680140000000058ADF77BC3033FB2751F00000000009A48407AD9EE9FF76DDD
            110000000080093DA36B2F4C407AE5EE3FFC53EBDE00000000004CE87F75EDA7
            05A400000000C01A09480100000080D512900200000000AB2520050000000056
            4B400A00000000AC9680140000000058ADFF08482FD3FD870B5BF70600000000
            6042BFDFB59724206DDD11000000008026DEEFBDEF7D6FEB3E00000000003421
            200500000000564B400A00000000AC96801400000000582D012900000000B05A
            02520000000060B504A400000000C06A09480100000080D512900200000000AB
            25200500000000564B400A00000000AC96801400000000582D012900000000B0
            5A02520000000060B504A400000000C06A09480100000080D512900200000000
            AB25200500000000564B400A00000000AC96801400000000582D012900000000
            B05A02520000000060B504A400000000C06A09480100000080D5129002000000
            00AB25200500000000564B400A00000000AC96801400000000582D0129000000
            00B05A02520000000060B504A400000000C06A09480100000080D51290020000
            0000AB2520050000000056EBFDDEF0C08F6CDD070000000080C95DF57B5E3779
            407A99AE5DB16B97EBDAE5BBF6CEAEBDBD6BEFE8DAA5ADDF10000016E3B25DBB
            C241CB7FFED7AEFD4BE9EF2DDFD9BA7300002CC39801E94775EDD65DFB84AEDD
            B86BD7EFDAD5F33BCFF333B9A97D4DD75EDBB5FFDBB59775ED4507EDFFB67EB3
            66267FB44F2BFD7B7B83AE5DA76B57E9DA954B1F3E5FF1E0DFFBB7AEFD53D7DE
            54FAF7F592AEBDBC6B7FD1B53F2BFD7BBEAF3EB86BFF63E0315ED2B5DF6FFD42
            467461E9072D4EEBEFBAF6B489FA9ACFF96D071EE3295D7BFD44FDFDBAAE5D69
            A2DFD5C2CF77ED8D13FEBE0BCBB0CF6AFEEE4F99B0BF2D5CAB6B372B675E1772
            DDFDB072E667F15DE5CCEBC2E1F5F62FBBF6C2D20F58EEAB7C862E3CE5CFBEA1
            6B4F5E589FE3F9A5BFDE2F5DEE23735FF9F15DBB49D7AE57FA7BA1AB9CE76712
            94BEBAF4F796B95EBDB46B7F5EFAFBCAD7B47E417B2EF75F1FDCBA1303ECD335
            E3FD4AFFFDB969D73EAE1C5D1F3EA2F4D7872B1EFB773359E5F0FA90EFCE25A5
            BF3EE47BF3E2D23F57ECAB9C4F3EBFC1EFCD7BFAB6AEBDA76B6F2EFDB5E6EFBB
            F60FADDF90151B7ADD8D5774ED59AD5FC8C8F27D1912246510F3A2D62FA2D4C9
            0C5A6B71AF7787AEFDA7D62FBC92FFF8BED60C483FA06B9FD9B52FECDA1D4B1F
            90D6948BC41F76EDD95D7B7AE96F72D724C1F27FEDDAED4AFF80F0D1158E990B
            F20B4AFF9EFE5AD7FEA4F58BAC2C5FD8A1C1FA4F77ED7FB57E2123CA4DF09507
            FCFC6F75EDBF4DD4D75CB8FECFC063FC97325DE09DCFDEBE5C344EF289A51F68
            99CAD0CF6AFEEEFF65C2FE4EE1C34B7FBDBD7DE9AFBFD7AE70CC84A709497393
            9030F08FBAB64F85CAF319FAA753FE6CDE873B97E94393217D8E6FEFDAFF3771
            9F6BC8036AEE79BEA86B9F53FA01809A1280FD41E93FEBCF28FDCD31F52CFD1A
            B8F46B4602D0DC9F7D76D76E53FAEBC5501970C835E177BBF6AB65FF9EC5FE73
            D7FEFFD69D3826A169DEE3C3492DCF39F8CFFB744D9EABA1D7DDF8C5AEFDCFD6
            2F6464F9BEFCE7013FFFCF5DFBD0D62FA2D4C90C5A6B71AFF79BA5CFA7F6C17F
            7C5F6B04A4F9E1AFEDDA3DBB768D095F44664126D4CB057ADF82BD437938F892
            D28F605D50FA107A4C9774ED574A3F92F397AD5F7C0502D2CD04A4E359FAC3E1
            2602D2363EA86B5FD0B5AF28FD83EF078EFCFB328328D785C794FD988538F4A1
            27B37B324B77CA1BE9B505A4396F6606FE57977E86DB54324B2EF7954F28FD6C
            398659FA357089D78CCC04BD5BD7BEBC6BB72CFDCCD1316595D5134B7F7D7865
            EB175FC1DC02D293BCAEF4E7A95F2EFD008FB0741C02D2ED0848E743403A4C95
            80341FE6EF2C7D7874F9C62F284B3E1ED5B55F28FD176DE9AED6B57B94FEBD6D
            B583D6C55D7B58D77EBB2CF7E22B20DD4C403A9EA53F1C6E22209D5696116730
            F2EB4B9D99A2A791551CB92E6406E57B5ABF21A754E3A1E7B95DFB8C32DD52D3
            B504A419647F50195E4EA386ACAE7964E94388B735EECB522DFD1AB8A46B4656
            EDE5DAF035A54DD890EB41EE077FB02CBB2CD51202D2E31250FF48D71E57ECE3
            519B80743B02D2F910900E333820BD6BD77EBCF441DE9CA46EDACF95FE02FDEA
            D69D39858CFCDEB76BDF56E653B7E98F4BFF85FBDDD61D390501E96602D2F12C
            FDE1701301E934320079AFAE3DA0CCE3263232BB2ED7A9A9EA0FD754E3A12712
            147FCB42FABC848034C14EEEDDE6F2193FF496AE3DA26B3F5CFABA806C6FE9D7
            C0255C3332C33AE7E27B97F6830A877EA7F4E79C17B4EEC8292C2D203D94EFDA
            FDBAF6A4D61DD92302D2ED0848E743403ACCA903D22CED7B78E96F64E72C057F
            13943EB8F44B119620CB617EA04C5BA66017B9E8DEA72C2B7816906E26201DCF
            D21F0E3711908E2FB51713CCCCF573948034E575967453592B20CDCA8ACF2BFD
            3970EE7D9E73409AC1E02CCFFD82D61DD92003F09951FA90D2975960B3A55F03
            E77CCD78FFD2DF937F779947B870B6CC287D74E9079196F47D596A407A28D7A3
            AF2CD36EA0B9AF04A4DB1190CE878074985305A4395164C3860B5AF77E07F9D2
            7D6FE967BBBEAB7567CE213B0C6737E8CF6DDD912D6426C537963E7C5E0201E9
            6602D2F12CFDE1701301E978B29946C2982F6CDD912DE4BA90950F8F6EDD912D
            D50A4823BB3C6757E857CDBCCF730D48B3F96436DDBC69EB8EEC201B867E47D7
            7EB62CB7CCC454967E0D9CEB35233BD03FB6F43546E72E3BB1A796F06FB6EEC8
            96961E90C66BBAF6C5A52F05C3E90948B723209D0F01E9303B07A45728FD12EB
            255C8C4F92D9998F6BDD891364D7E15F2A7D48BA24E9F3DD4BBF9BE59C094837
            13908E67E90F879B0848C771EBAE3DBEB4AB337A5AD934E2C2AEBDB5754736A8
            1990463E57B9968F3908BB8F01695ED3B3CBB2C2D1E332A8FDDBAD3B31734BBF
            06CEF19A918D5B7FA66B576ADD911D64B6FD8F76EDFE5D7B77EBCE6CB00F0169
            E4F92C03ACCE51A72720DD8E80743E04A4C3EC14906607C4EC603BF7E54FE792
            25E1D72FFDB2FB39C90EAD99D93AF60EC463797ED7EED4B5D7B7EEC879084837
            13908E67E90F879B0848EBCBCEF499397AD9D61D39A57C1E723EF8BBD61D398F
            DA0169A43CCEB7CDB8CF730B483FA06B4FEDDAED5B77E494B23168CE7F4BDDC0
            722A4BBF06CEE99A9167B19477F8F632FECEF4634958973D2CE63C88B62F0169
            64D3A66C26F847AD3BB25002D2ED0848E743403ACC4E01693687F889D63D1EE0
            1B4A1F44CE496AA37E67EB4E549087E03B967E17C53912906E26201DCFD21F0E
            371190D6951B9B8796E53EFC1ECAA05966D7BDB07547CE618C803441596E10C7
            9AADB36F0169EE7F1EDCBA1303E406FA175B776201967E0D9CCB3523030A29E9
            7061EB8E54907B863B74EDB5AD3B720EFB1490466A917E4A99F7A0E55C0948B7
            23209D0F01E9305B07A4D7EADACBCA7C7654DF556ADF5CAFCC6B29780AAA3FA8
            75272ACA4D4E46285FD1BA232710906E26201DCFD21F0E371190D6B36FD7853C
            94DDB6F433EDE6668C8034529BF2934B5FFF6D6E7D9E5340FA715D7B51E937FD
            5CA2DCEBDCA8CCB7AEFD9C2CFD1A38876B4606CC128E7E55EB37A3A24CAAB8A0
            CC7323A17D0B482325F23EBB98F1BE2B01E97604A4F321201D66EB80F4115DBB
            47EBDE0E90256F3FD0BA13C7A4FECE0FB6EEC408B241456E22E7766211906E26
            201DCFD21F0E371190D6B1F4551AE79299A479BFE736783656401A7950483DD2
            DA75F6F629204DADDABBB4EEC400D97066291B55B6B6F46BE01CAE19B936DCAB
            F51B31820C92E45C39B71DEEF731208DAF297DD0CEF604A4DB1190CE87807498
            AD02D28F28FD94FCCBB7EEED29FD63D73EAACCA7D6CD9796FE8D5FFAF2C97349
            50921BC97F6EDD916304A49B0948C7B3F487C34D04A4C37D7EE903A30F68DD91
            91FC55D76E51E6755D1833208DEF2BFD2EE773EAF35C02D28FEEDA5F77EDFD5B
            77E49432189C1DC4E756D37EAE967E0D6C7DCDF89632AF491EB53DABF465BAE6
            F47DDAD780342B1B72EEFAD7D61D591001E97604A4F321201D66AB80F49BBBF6
            B08ABF34CBDD33CDFFA55D7BC3C1FF76C5AE5DA56B372CFDB2AB1B977A9B167D
            4F99CF92C59B94BE48F6155A7764644F2EFD665E7359C62120DD4C403A9EA53F
            1C6E22201D260F2B2F18F89A96E0295DBB7399CF7561EC80F43DA57FE87FC68C
            FA3C9780349BCCD40C8FB3096742969797BEC441A424D48777ED634B7F5F9956
            6B00E23E653F677B8F65E835309FF91734EC7F4A84DCAFD1EFFEACAE3DADECEF
            E0D9A1EC11F10DAD3B714C8D8034A5E95EBDE3CFE4EF9C90E8EA5DBBE648AFED
            EBBBF653231D7B1F0948B723203D724969BB6A2AAB5B7E79E2DF3934204DB9A2
            8B27EEF3B9E47EF2FBF31FCE1790E661F2D32BFCB2D795FE06E389A57F70389F
            04A69FDAB5DB94FECD4E61E9D3CC34785BE9678FCE61E9C6E5BAF627A50F7FC7
            F237A5BF91CACEF209A05F7DF01EE4BDFB9083F72235B36E5DFACD33AE3E625F
            EEDDB59F1CF1F8BB10906E26205D869C0F7F73E03196BEB1C83E05A4A9BFF8DC
            AEDD7CC4DF91735FAE0BCF2BFD7521B3DFB2A222AB18725DB84ED73EBE6BB72C
            7DA077AD11FB32A772376307A49141E09B967A1B91EC4B409A65B59F50E138AF
            2C7DA89273E2A6E03D9FF55B95FEBE32F73FA9137B9A953C73AC693F774303D2
            399DB3A794157C0967C7BC57CFF13388F3C7A51F60C8B92ACF0D97E9DA954AFF
            59CFF521C1C7E774EDC346EA47BEBF77EADA6F8CF85A77512320CD33C34F0FF8
            F9AB957EE5C51777ED4B4AFF1C59C39F95FEBAC47604A4DB11901EC97DD6B7B7
            7E21131B1A90CEE5EF7F867305A4972DFD83D4D022FAA9419693FCAB4EDBBFD2
            CF3C4930929BDB6DC3D2D4F9FCD631DEB053485FEE3FC27193B8FF52E92FC2CF
            DDE1E7324A9991E96F2A7DD1EEDADEDEB54F2A7D68DB9A80743301E9320848F7
            2B20FDAEAE7DEF08C7CD20640623334B2437ADDBCEDACCB5359B2A25741AE3FB
            7C69E9073CE7B069D31401693CA76BB72B75EA91EE43409AB0E7F5158EF3B75D
            FBB472346374571908480DD45C4F3238B06D583AA7907F2904A4A7F3F8D20763
            B525DCFFF9AE3DB2ECB6FA23CF842907939585B718A15F392F248C9DC3A49639
            04A4C76536FC83BB76CF52A7445B5634FE65A5BEED3B01E97604A44704A4BB9B
            CBDFFF0CE70A4833C2FEC20AC7CF09FD9195FA7AEDAE5D58FA4DA3AE7D9E7F2F
            3700A97355E3467CA85C88F23ED62A1B702823ADDF58864FE3CE8DE7C34B9D19
            1DC73DB5CCA31E8580743301E9320848F72720BD7EE983C25AB3420E3DB3F44B
            805F36F038099F725DA83DBB3537D19F51DA2FB59F2A208D2C29FFAE19F4790E
            0169C2E2DFA9709C2FEADAAF56EA53BE8BD91DFCEEE5FCB3F512DC6425CEDBC6
            7C83F690807477B7EFDAD32B1F33E7DC5F28FD79E075038F95A0F4C7BA76DDCA
            7DCCA6C05F57F998A731B780F4D07F2FFDDF70E8F3A4819EED0948B723203D22
            20DDDD5CFEFE673857407AD752A786413E6CA79D3D7A2E9901990B7466409E54
            02200F7673D9F131CB576ACED2CCACDEEC44F8F88AC7CC2CE187967E64B8E606
            52F9B23CB5E2F14E4340BA9980741904A4FB1390D6DEC5FB1DA5BFE63DBAE231
            F310965A910F2C7537D4C9BDC5132A1EEF34A60C48337BF40E657830B80F0169
            C28F1AF5EF5263F4ED95FB9665C5A99F9ED53E373BE1FF7F50E9EBDAB31B01E9
            6EF27C933214354B7265B2C897957E0F885AF21DCCB3D6DD2A1E33AB1FB2FAAC
            F52A83B906A487C77DF8C0634C79CFBE7402D2ED08488F0848773797BFFF19CE
            1590A68EE48F57387E0EFCF723F63FCBEE1F50FAFA38919D103FA66B7F37E2EF
            DCD6055D7B76C5E35D52FAFA592F1DA9BF7970CDE8E4652A1DEFCF4B5FEBA6E5
            6C2101E96602D2651090EE47409A1ADBD9B0AFD66054660325807BD148FDCD60
            6406E46ACD76CDAEF6594AF9AE91FABB8D2903D2C83D5056E50C59D5B20F0169
            EED51E5AE13859EE3BE6AED7B99FCCE0C0E1B92203D3993DFA8FA3BE3BFB4940
            BA9BAFE8DA45158F979A93B93F7BCD48FDCDFE123F5CEA5DCFB2A1DF9D46EAEB
            B6E61C90E67DBEB8F4CFBEA795D224571DA16FFB4840BA1D01E91101E9EEE6F2
            F73FC3B902D24CC1FFFE0AC7CF5291674EF03A2E28FD92818C3CDE7D82DFB78D
            A71FBCFE1A5E71F01AC7BAC939940F786637D50A495BCF2215906E26205D0601
            E97E04A4591AFC05958E95CDF8F2A0F4CA91FB9CA5D1398FD7BA2E7C69A9BB0A
            62575307A4919D31733F70DA7AA4FB1090E69EF2DB2A1C2703AF7F36417F3320
            9D1AF2BF59A9DF6B2420DD5E66EAE719E646958E9781B80C9E8D7DAECBAAB647
            553A5626546416E92EF5516B9B73401AD95071E8735536DC9AFA1AB84402D2ED
            08488F0848773797BFFF19CE159066B9DE4F5438FE934ABD87C14D32B296651F
            6F9DE8F79D4F66C8D45A26F2C6D2EF3E3FB4DEE8B65237B6D6853DCB0AC7D808
            6A5B02D2CD04A4CB20205D7E409A5968D960A6C692F57F3E782D533D48E6B3F3
            D85267A6501EDC6F3951BF4FD222208D0795D32FD3DE878034AFFFBB2B1CE767
            4B1FCA4C21DFD5CB97FA4BFAD74240BABD1AC1D7A13C2FE4B9E18D13F5BDD6E0
            476413A996135DE61E90A60C4356257CF8806364C3C43F19A97FFB4440BA1D01
            E91101E9EEE6F2F73FC3B902D20B4BBD7A6659AEFF93AD5FE8C47EA4F44B4F86
            4A4D9ECC3AA9593B681B190DAEF10092D1E0943C68B5A3BD80743301E9320848
            971F9066D7FA1A1BF6E4BC9A1AA6BF3E71FF33685AABBE7766098D5516609356
            0169668FE67AFEAC067D9E43409AFA9E3F58E138F9FC6729F2631BBF1E361390
            6E2F134AEE5CE138A9499D9DE6A7DCA93C0367592D78BB0AC7CA60C435BBF696
            09FB7FDCDC03D2181A48646671ED8DC0F69180743B02D22302D2DDCDE5EF7F86
            7305A41794BAF5331318A6A6D3BFB67EC113C8E85E963E7EE4D00395BEB6CF37
            37780D99899B5AA7D7AE70AC6CF2F1E006AF2104A49B0948974140BAFC8034B3
            7AAE5FE13819C0BA4783FE67265D6A4B7F4C85633DAC6BDFD2E03544AB803452
            8734F54877ADCDBE0F0169769F7F62A56365F038030EA969DAB29E2DE72720DD
            4E1E0E736EB86C8563DDA7D45901B8AB6B75ED65A57F7E182A0320BFD0E035C4
            1202D21FEDDA370CF8F92F2C7D3935CE4F40BA1D01E91101E9EEE6F2F73FC3B9
            02D26B74EDB5957F5742C37C70B23CEAD2D62F7C44352EAE919BA58F2DED4651
            BFBCD4B941C903F527377A0D02D2CD04A4CB20205D76409A9DB16B2C697B53E9
            AF0B6F6AF43A32C3E949158EF3D75DBB61A3D7D032208D949EC90C9E5DEA91EE
            4340FA09A5FEACE10C3A24247D5C1194CE9180743BB9363FAEC271529B37CBA7
            4F5BEB78A84C84794885E3B4DCAC69090169269E9CB65C4B2CFD5E702A02D2ED
            08488F0848773797BFFF19CE159046769BAD3153E46C6F287DC8F198D28767FB
            A6562D9E56A3C087527BEBE55DBBC1C0E364395C66A2D60EDCB72120DD4C40BA
            0C02D26507A4B5363E7C40A5E30CF1A7A5DF2867A8D464FDBB06FD6F1D90464A
            2DEC1224EC43409A7B8ADCFF0DA99D772EAF2A47F7952F6BFC3A392220DD4E3E
            BBFFA3C271122A3EA5E1EBC8ECD17C17873EECBEAD6B1F51DA4CA6594240FA9D
            65D8CABC7CD67E69C4FEED0B01E97604A44704A4BB9BCBDFFF0CE70B486BD61B
            3B97DCC83EE5A03DAFB41BF5ACE90F4A5F1C7D88CC0EBA4ED7FEA5F16BC932CE
            4754384EAB604640BA9980741904A4CB0E48539FEDB3061E230F8DD729EDC3BD
            BB953E881AEA2BBB765183FE0F7DE8C9F2EEA11B6DE55E27F5FA9E33519FE710
            9046AD20E87C32F09E73656AF4BEA0F483B4B42120DD4E56D85D6BE0315ED2B5
            9B94F69FF7CCE87E4085E32470F98306FD5F42409AF26BDF38E0E7733F596B43
            B07D2620DD8E80F48880747773F9FB9FE17C0169AD2581DBCA6E8B4F2B7DE092
            7FFE73EB37E7143EA8F40FB19719789CB984721F56FAA5FE435F4FC2F6FB34E8
            BF80743301E9320848971B9066038B5CCF3E64E071B229CDDD1AF4FF6C5728FD
            4CC02B0E3CCE45A50F49A736F4A127DFA15B75ED7A03FB9155159989FB8609FA
            3C9780348304CF9CF0F7E5FE25E7CDDFEEDA334A7F7FC67404A49B6526FD2515
            8E939ACE0F6BFD623A372A7D583B543675FBA106FD5F42409AFAA17719F0F3B7
            ECDA1F8DD8BF7D2120DD8E80F488807477B92FBBA061FF5F5E4EB8373C5F401A
            D93DFDB60D3A9B5A52B931CA08D7934B5FAF6C09B233EF9F5538CE0565FB9925
            63CB83C51D061E2335D73EBB41DF05A49B0948974140BADC803441DADF5638CE
            E795E19F815AB2D9CE170D3C46568DDCAA41DF873EF4E49AF0F3A59FDD3474F0
            303B09DFB16C9EF5B52F0169060B32F05EA344C3AEDED9B58B4B7FCDFA8DAEBD
            B2F59BB10202D2CD3EBFF4B39D87BA6E197EBF5BCB5F76EDC6038FF1735DFBEA
            067D5F42403A74C671BE93AF1AB17FFB4240BA1D01E91101E9F29C980B6C0A48
            338BF4F9A5DF99BDA51796BE5ECAE34B9B9A65DBFA92833E0EF18ED2CFDC7C67
            EB1773A046EDBC5C8887DC249F9680743301E9320848971B9026001BBA9C2D4B
            B2735D786B83FE9FE4EBBBF693038FF14F07AF696A3502D25C13B22AE2C72AF4
            271B9B7CDFC87D9E4B401A99459AD99CEFD7B00F09A43383EA97BBF684AEBDAE
            F59BB2A78606A41944F9DC06FDCE7976AA4DBF32F3F307061E230370D79FA8BF
            DBF8A9AE7DDDC06364006A48E8725A730F486F5186CDFEFCD7D2AF02695D8A61
            0904A4DB11901EF9D1AE7DEFC4FDCE77B965E9AD5506A4918D04BEA375EF0FA4
            F6576EAC73E1F9CD83FF3E2735C2C49C686ED3FA851C7341D79E3DF018F9F266
            79E9DB27EEBB80743301E9320848971B90E641F1A7061E238384376BD0F773A9
            5582E7EA65BB25E635D50A4813F065A9E39D07F627E1F76796F33F94EF53401A
            790FEFD9BA1307F2FE6746E9C34BBFDA857A8606A4AD4C799F50234C9C4BF995
            435F5186D797FE87AE5DB541DFE71E900EADE39C494F9F3652DFF68D80743B02
            D2B65ABF7FAB0D48337B340F019FDFFA159C251B3C6517BFCC00984B50FA235D
            BBDFC0633CAAF49B23CD459671BCBAC2713EA66BAF98B8EF02D2CD04A4CB2020
            5D6E40FA3D5D7BE0C0636405C5D89BDBECE24AA54E9DF004AD2F9CB8EFB502D2
            C80CD83F2DFDF2D6215ED3B54F2E7D2830469FE716905EB6F46584E6F6A09E12
            49F9BE66C9B31956C3094837FBD5AE7DC1C0636457F3874ED4DF6DA474CA1F56
            384ECE1353AFA69B73409AC933179761B3EFB3F2E3DE23F46D1F0948B723206D
            ABF5FBB7DA8034321D3F378C4377E11D431EAEEE55EA5C8C87BAA8F423A74364
            F7C7A1B3506BCB928CCB0E3C468BA2E002D2CD04A4CB20205D6E409A4DEAEE35
            F01873AC6BF4E6327C897C6A534F3D6BAF66401A09F97EAF0CAF479A7ADFF99E
            9F14CCED5B401A573978CDB768DD9113E47E3265246AD4945F3301E96659A175
            C1C063CCEDDA7ECDD20FFA0C758DD26FB436A5B906A43728FD67E5DA038F73A7
            AE3DA572DFF69580743B02D2B65ABF7FAB0E482301D923CBF000700C9941FABF
            4B5F0AE0D286FD18BAF421C62EEE7D1A351E845B045302D2CD04A4CB20205D6E
            409AEBE6D70E3CC61C03AE1AE147CE1DBF3571BF6B07A4F14DA5CE8ECB29D373
            523DC27D0C4823A5771E5386EDC83C96D4A07CC8417B77EBCE2C948074B3A1E1
            42B4388F9E4FAD15061F55A6DF77628E016906121FD7B5AB0D3C4ECA9C5DBD4C
            5FEE6CA904A4DB1190B6D5FAFD5B7D407AE8C2D217A11DF2A03A968CFA7F6199
            7EC4F15096FBDF75E031BEB20CAFDD535B8D9BDCCF28FD2C9B2909483713902E
            838074B901E94565F8C0E27D4B9D0D816A7A49D76E34F018FB129066C96356D9
            7CDEC0BE2594BBA0F41B94D4ECF35C03D2C87B97259F59397385D69D3941EADE
            7F69D7FEB17547164840BA5956560D9D45DDE2FEFA7CF29DAE51FA6CCD0169DE
            C37C0E73EDBF73A9B3A95DEE9FBFACC271D64240BA1D01695BADDF3F01E93159
            F69051F50BBBF6FEAD5FD959FEAA6BB72D759677ECEAD1A57F4F8698E30CD23C
            180CFDF2E506F08F27EEB780743301E9320848971B90D658623FC7D22B35C28F
            5CAB876E02B8AB3102D2C892F11756784F1208A436EB9B2AF679CE01E9A1BC6F
            9985FB45A5ED0EF727C9DFF5F6E5DC356239998074B367957E93B621E63683B4
            46B0142D36F1AB1190FE6CE907567691C1A1ACD4CB75E4E34AFF19DCF9E17C83
            D4867D5EE563EE3301E97604A46DB57EFF04A427C8EC913CB87D49195E7FABA6
            BF3878C1359678ECA2C6837036F378F0C4FD3E9F04E0A941FA41038F73E3AEBD
            74E2BE0B483713902E838074B9016982CD6F1B788C0447F76FD0F7F3794BE997
            480FD162E06CAC80346E5DFA4D34865E2F735ECD6CD4C37AA46B08480FDDB4F4
            F7955976FF01AD3B734C66FA25D07F47EB8E2C888074B3D4831C3AF33C2B147E
            61A2FE6E2375325F55E138572CD37FDF6A04A4737471191EC4AF8D80743B02D2
            B65ABF7F02D2F3C88CD2AF2EFD45FAFAAD5FE9812795E13B43EEEAFBCAF08D34
            2E2AFD32FBB9C812974B2A1CE73A5D7BF5C47D17906E26205D0601E97203D284
            A343677FFE4AD7BEB841DFCF25335DDE5CE1382D06CEC60C48E35BCAC9754477
            95E33CAC529F9714901ECABDC7DD4B7F5F399790ED67CAF07AC26B2220DD2CB5
            25870628DFDBB5EF9EA8BFDBC8FB3774C97F96E8B71820D9C780343594337B74
            EAC1C8A513906E4740DA56EBF74F40BAA54F29FD12A9B4D6616902955F9AF0F7
            E5A1E9E1038F91590AB79CB0CF9BA438F8AE4B45CEF66FA55F3EF2AE89FB2E20
            DD4C40BA0C02D2E506A4A9F9F5D881C748BDCF8F6FD0F773C935EAB9158E9319
            A86F9BB8EF6307A4591E9EEFEAE70EEC67AE9BA92DF8DC0A7D5E62407A28AB58
            F279CB3D656ACCB70CDC32A3F773BAF6CCD66FCA42084837CBF7F25B071EE309
            65F8FE07356560E367071E239F9DEB36E8FB3E06A419B01BBA8A658D04A4DB11
            90B6D5FAFD13909E42EAA8DCB16B77E8DA6DBA76B9895FF42B0FFAF0CE897E5F
            965FFDEEC063A4AF999D3397655C19957ED0C063BCAC0CDFCCE33404A49B2D29
            20BD5BE9773C1E62A9359804A4CB0D48B38CFC8F061E23C1CC55CB9975295BFA
            C6AEFDF0C0636445C1751AF47DEC80343EA2F4752BAF3DB0AFB97EA51EE9BB07
            F679C901E971099F3FA9F403B7B9AFCC43D9D4E59DFEBCF46500DE3BF4402B20
            20DDECABBAF673038FF1DAAE5D6BA2FE6EE3E70E5ED7104F2FFD777C6AFB1690
            FE65D76EDEB54B5B77648104A4DB1190B6D5FAFD13900E9419841794A3C0F406
            13BDF0296BF3E461AFC68E8BF9A03D75A23E6F7271E967B10C911A4B776AD077
            01E9664343A75C186F33515FBFAE6B3F35F0189F58FA1AC54B23205D6E409A1B
            971A3B606786D0131AF4FF24BF51860F8C647392DB35E8FB140169E481E1E232
            7C9968AE9FB98F19F219DA9780F46C1F5CFACFD01D0EDA7527FABD73DB1467AE
            04A49B7D7AA5DFD5A25CC9B9FC6DD7AE37F0183FD9B57B37E8FB3E05A46F2C7D
            5DEC57B4EEC8420948B723206DABF5FB373420CD60738D4DFD4E2BABBDDE67E2
            D49401E9D93EB6F4379929C49F13F858BB965E5CA62D4C5D63C7F72CC7BCDB84
            7D3E977C3032CB67E803DE43BBF69D0DFA2F20DDECEFBB76B5013F9F5952379B
            A8AF356AFBE5A6FD9289FA5B938074B901696486CF35061EA3455DED935CA9F4
            3B0B5F76E0717EAC6BF76DD0FFA902D24830F97D15FAFC3D65588DC17D0D48CF
            F609A5BFAFCCF7E45346FC3D73AB093C5702D2CDB2622C2B03863E03CDA50E69
            662BBEA0C271EED1B54735E8FFBE04A4094D32D35EDDD1D313906E4740DA56EB
            F76F6840DABAFF276A19901EF7D1A53F81DCB36BD7AC7CEC14FABE7AD7FE61A2
            D792999F771C788CD464CB6CD496897A7C7339DA24628856336205A49BA5FCC1
            C70EF8F97C463F6CA2BE6646C1D70F3C464E767F3F517F6B12902E3B207D62E9
            6B280E91F22BD7EDDAEB1ABD8643D9A4E691158E73E7AEFD7A83FE4F199026F4
            F8EDD2D7AD1C224BEC870C54AE25203D2EE59552FFF76BCAB041C093E41EED2A
            A5AF13CBB90948B79365D0371E788CAC5ECBBE0F53D7FA3FDB8F973A333F6F72
            F0BE4C6D1F02D20CC866A0E885AD3BB27002D2ED0848DB6AFDFE094827905A52
            5FDDB50797FEE6B396291FC4BEA96B3F54E138DFD5B5874CD4E7937C60D7FEA6
            0CBFB9CD0344EAB1BDA5C16B10906E7671195E4261AA5999CF29C396F3E7B378
            F9D2870D4B23205D76405AA33C44B4DE6C2181DF8BCBF087F97C07735D683108
            3865401A09E7F2A05A7BF077176B0C480FE59C9F81B507967E53B05AB2F2A9C6
            4665FB6C68409A656F43373B3B8DB7966983C69FE8DABD2A1C272BCF866E0838
            441E725F55FAD21743BCBEF4E7CB16757E971E903EBB6B5FDEB5D7B4EEC81E10
            906E47407AE4474B3F9B7F4AAD97A8AF3220CD8D7D6687BD7CE27E6529E2AF95
            7ABBB94F193666A7E11757384E3EEC372C7D0D9916329BF7A72B1CA7559DB910
            906E964D8F86967398E2A63CCB79B30CED8A038E91C07FAADAC7B50948971D90
            E65C744919BE8C329BF76566DCAB1ABD8ECCC8ABF15DCFA655B5AEEFBB9A3A20
            8D0C426503C7A1E56A4E6B4E01E94795FE86BE46BDF65D64A5D2934BBF0CBF86
            564B8097646840DAF29C3DA584C0356ADA6663DA0C5EFD6BA3D7917222DF5EE1
            381775ED2B1BBD86A506A499D5FE1DA55F69F59ED69DD91302D2ED08488FE43E
            ABC63970495619906679F5DDBBF63FBAF6B489FB9691FE8CCE7F7C85633DBA0C
            DF5171173596CBB4E8F7A1CCDE4DB1F71ACBD2BEEAE075B42020DDAC468DBC3C
            74DE65E47E66038EDF1E788C6794E14B5D5B11902E3B208DCC86FAB40AC7C972
            FD2F69D0FF5C9333F85763C9EC7D4A3F6BAA85160169A40EF7831BBDE63905A4
            B91FC8F93C9FE1A98388AB76EDF9A5CE664EB93FFE9689FBBF3402D2ED64F55C
            664DD62857947AC50F6AF01A320091679FCB5538D667957E40A9852506A4BF57
            FA123EAD26D4EC2B01E97604A44704A4BB9BCBDFFF0CE70B4853B7333B1166F7
            F98C466569DF834A5F076D2A9979F83B158E93D9A85F3861BF6B6DCC500EFAFD
            6B13F63D1E5FEA3C80BFBDF4B381DF3A71FF0F0948374B11F7670C3C4696A2E5
            E678CC596D356A38FE60D7BE75C43E8E4940BAFC80344B286B858217967EF6F7
            947EB6F403A643A5D4C5B54ABB87B9560169668F66A0F9B31ABCE6B904A499C1
            9FC1D794F0C97523CBDE735E9EB2ECC99776ED972A1C277578EF3961BF974840
            BABD47947E56F250F95EE53D7BDED003ED20E7B69440FAF40AC7CACCF2946D6A
            350B72890169AE679994D3BA3EF9BE11906E47407A4440BABBB9FCFDCF70BE80
            F487BBF68D67FD6F7F51FA07A4A976C5CB72C48CAA0E9DC9980D8286FCF17695
            37345FB2CB5438563E38B9D9F98B89FA9E5A5D3F59E9588F2B7D2D9C5604A49B
            A556546E00862EFD1CF361314B8AF3F9FFC081C7B953D79E32521FC726205D7E
            409A1B80D405BB42856365A97D6E48A7DA8421CB1D7FBED2B19E54FA5DC65B69
            159046069EFFACF4F708539A4B407A524997CCE8CC4A93A9366449B9967F3EF8
            E7106B78F01D4A40BABD9B75ED4F2A1DEBD55DBBD5C13FA790418EFB573A5626
            977CC744FD3EC91203D268B5B2649F0948B723203D2220DDDD5CFEFE67385740
            9AFF21B3472F7FC2CF647432BB1466A9D8144561F300F8C9038F9150E44E13F4
            F5B89F29FD865335E426E782D2D7501C5366AB66F668AD3A69B9E16BB98BA280
            743B19F0F89481C7186BD642AD5DA053F32EE1C45297200948971F90C68F74ED
            7E958E95CFF26796F183A52C87CE26873506FCCA419F2F1EB9CFE7D332208DDB
            967ED6FE94F548E71090A6A67A3EAB270D746565D2434BFFFD78DB047DC96A87
            6B0F3C46AB12484B2220DDCDD3BB76FB4AC7CAA07266ABBF61E43EA75CCA8F55
            3A56CE03D72D6D6742D60848330B76D77BCD0F2FC34B7F2C7912C01C0948B723
            203D2220DDDD5CFEFE673857409A5DB8BE61C3CFFE43E96F68B333EF98CBEE13
            0E5E6BE031B2A9C4D08D68769525227F5586CF7A3B941B863B76EDCF47EA6FEA
            CC3EA6627F9F76D0DF9604A4DB49CDAA0756384E3608488DC59A216466B1FF70
            85E3FC411976016F4D40BA1F01694A8E64A0EBF2430F74201B97E5B3F14723F5
            37B5857FB9D40B4773237D9B91FABAADD601693CA86BDF3DE16B9E43409AFBB0
            2FDBF0EFE43E27D7A28BCA78BB8867D0ED1FCBB07349E43EB9D660C7BE1290EE
            A6F6ECC597957E806BE87DF0B9A464D1F797E19B0F1ECAA66735CA0C0C51E36F
            90EBC3AE9BDCD6B837C8F37296DAB72A6BB66F04A4DB11901E1190EE6E2E7FFF
            339C14905EB36BAF28DB9FA4138AFCEFD22FBF7B7BE5FEE5445F63764CABDA83
            3F57EACE30C8B2CAD4B1ABB9E9D107953EE8FEE652EF2627B5833223B1E5ECD1
            10906E271BA1BDB8D2B1B27C34C1F8EB2B1C2B0FD317953A33AD32E0F3E3955E
            630B02D2FD084823B36DEE53F17897967E2021E7AAF7563A6606CAB2CC31215E
            ADEB42FA96DDDC5B2F5F9C43409A73DA334B3F9B760AAD03D28F2DFDBDDCB6E7
            F2043B3F54FA323D9756EECB2D4A9D0185D6EFE91208487797CD896E5BF17819
            44CB0491A7563CE6154B7F1EAC59422BCF379965FE9A8AC73C8D560169D42855
            F0F0D23F27329C80743B02D22302D2DDCDE5EF7F869302D2D33EBCBDB9F47508
            130AD6580A9E87B25F29756A95E5E6E0B1158EB3ABCC7CCD8DFE07573E6E6E74
            EEDBB5BF1E789C5B96FE6FF68995FB37970BB480747BB576D88E2C2FFAEF5DFB
            C353FE7CC299ECF8FC5D5D7BFF0AFDC90CF78F2A7542DB5604A4FB13906629DD
            CB0FFE59D3B34B7FDE7DC9C0E3A4344AAE0B43CB6E9CED17BAF615958F791A73
            0848233386328878F5095E73EB30EFFF947E95CAAE72CECE2AA58B4A9D4D0013
            D03EABD499C5FCDFBAF65B95DE9F7D2520DD5D4A8ABDA0D42FC19167A06FEBDA
            6B071E2703E0B9C7BF5EE5FE6512CB0F563EE669B40C48AF52FAF27643EE73DE
            73F01A9E3BCABBB32E02D2ED08488F0848773797BFFF19CE0E48779D3D7A92CC
            124930928B71EA969D2694C8EFCFACD45A4B2D6E52A6DB00E06C99B9F6A3231C
            37CBCF32BB221B2AED52D83DC17346A7F3207DA7526F76D0A1DC7CDDA86B6F19
            E135EF4A40BABDEC10FFC48AC7CB4D5A4A36A4E0FE2BB6FC997C163FE7E0676E
            5AB12F730966861090EE4F401A35373D3A2ED785ECD09DF3D62E0F48F9EEE5BD
            C9F5EA2EA5FE752125796E74F0CFD6E61290C66797BE1C4D8D81A0F3691990E6
            EFFEE281AF31D7930C00E49E27E7C1D37C8E32509DDAF05F5AE135E53E37F7CB
            4B1E749B8280F4744EDA24B7867F29FD7720E7B097EDF07319B4CE3D48AE0F63
            CC7A4FE9B00CC88D555663172D03D2C8CA8D870CFCFD39DFDEBC8C5BFE6E0D04
            A4DB11901E1190EE6E2E7FFF339C1D906609EABD2B1E3F3791B9F06529596A00
            BEA86B9794732F03BC7ED7EE5CFAD991430BE81FCA6CD61B547DD776938782CC
            58F88C117F47660CA5B87B4E5209825387E61D07FF5F1E0AAE5BFA65D4E943EA
            11D51EF93D2E7FBF5F1FF1F8BBA871B2CB7BB9CB8DE450F90EFEC684BFEF503E
            A799D556FBBB9207DB7C2E73024D6093F7F24DC77E674E3E99C19C87A084B437
            ACFCFB73AEC98C8C178DF2AE4D4740BA5F016902C8FC3D3F77C4DF911506D9E0
            ECF74A7F8DC8CCEEC33238592299F3E3F1EBC298D7C9397DF6E61490461E86C7
            DEB5B965407ADAD9A3E7926B4A0685B3D155AE29D98CE6EFCEF3EF27A04DE89F
            70E76A95FA908D0D6F51FD9DDA3F02D2D3C924913FEDDAC78DF83B324B35DFA1
            4C687969E92737FCEBC1FF9773E447977E724902D15C1FAE31523FFEAD6B9F5E
            FAEFD41CB40E48736DCE73EBD0950559813534685DBB1A016906D16A9530DB46
            56F1FEF284BF2F04A44704A4BB9BCBDFFF0CC703D22C07CF4CAFCB8DFC3B33B3
            3037B3FF78D0722390102F35AAAE32C2EFCBAEA8DF34F26BDA24616F6E76AE3A
            E1EFCC43C4D8B352CE96A5705F3FF1EF3C9F1A27BBA90DB9B11A2AE52C7E75A2
            DF35D5E7735F466F05A4FB159046C29A2CB1BEE684BF330306B567876E32B759
            F8730B486B2EFB3E975601698DD9A3DBC8DF334BF00FEF2B13325CA9F4F79543
            37633A49EB92054B21203DBD4F2AFD0040AD0DFDB6D1E2B9612E4BEB0FB50E48
            232BFC7E62601F12766772C0CBEBBD35AB5323209D5A8B6B9380F488807477B9
            EE5CD2FA451CF394AEDDEF78409AA5DA730AB76AC89B9E1BE46D97F88E29CBDA
            B394EE835A77642499A594E582735AD22120DD5DEADBDEB1F59B50C9DB4A3F03
            A375D1FF1A04A4FB179046EAFE3EA76B976DDD91913CBFF4EFF99CAE0B730B48
            23217936B81B6B10B555A097720F3596B4CF498287ACC2B1BC7E3301E930B966
            3FAE752746F4F8D2D7ABAFB5B9600D7308482F53FAD5564357FBE5B9EC8232AF
            F7774904A4DB11901E11902EDFBF4FAC3A0C4833C33121E2BE3DA4A50EEADD5A
            77E298ECF87851997E84766C19A1CC4DEC1B5B77E42C02D2DDE5862CB3DAC698
            7533B5D6EF654D02D2FD0C482301521E826B6FCAD15AEE292E28F31BA0986340
            1A59C69A01AA3166F8B678684AF9869436D9B7FB9DD494BF5FEB4E2C848074B8
            0774EDA1AD3B3182FC6D5373FE1D430F54D91C02D2C8B3EB632ABC9EAF2D7DDD
            59762720DD8E80F4888074F9CE08486F55FA1BF3397C406BC952FECC1E9DDB28
            7F2E568F28D32F731C4B765C4C0DBB57B7EEC80904A4A7933AB2BF5696FD19FD
            95AE7D71EB4E542420DDDF8034BEBA6B8F2ACBFECE1D97EB416AD7CD61F5C6D9
            E61A90C6F7977EA7E9DA5A3C3425F0CDC67F1F3CF1EF1D53EE27735F39874D28
            9740405AC714758AA7941AC2B72B7D30323773094833609A01A61B0F3C4E4A8E
            64B0EA7555DE9D7511906E47407A4440BA7C6704A4F91F3EAAF4857D6FD9BA67
            955C58EA8CBE8D211B61FD5859FEC3703684CA26237F37F4402311909EDE83BB
            F69DAD3B714AD9B4230F5573BCF93E2D01E97E07A491903483674B9F499A0D26
            6E5FFAC1B3399A73409ADDA2B35BFB90878D93B45A629F122709496FD2E077D7
            9665AAA9D3FDE4D61D591001693DA9D379FFD69DA8207FD3CF2BF30D9EE61290
            463697FBB50AC7C939F84B2A1C676D04A4DB11901E11902EDFFB04A491FA9809
            46B2A9D107B6EEE100A9A77AEFD69DD820CB2A1F5DC6DF146B2CBF5BFA197AFF
            D8BA23E721201D2621FE7D5A77624799B196CD4EF66DB45C40BAFF01697C7EE9
            77FD5EEAACBB3F28FD0CF47F68DD91F39873401AD7297D99930FAF78CC969B0A
            E51E279B65DEB32C7B50788D0F3E430948EB4A69878795E50EA2A526F15776ED
            D2D61D398F3905A4395F66A3AE4FAB70ACDC5BFC4685E3AC8980743B02D2236B
            BC4F5845407AE8134BBF23F9A7B7EEE529E4E1F22BBAF6EED61DD9C2A7947ED7
            F02137902DE4B371DFAEFD5BEB8E6C20201D26376779B0BD6FEB8E6C2945EDB3
            AC73697FF36D0848D7119046AEBF2911F131AD3BB2A38BBAF675A5DFC466CEE6
            1E9046BEEF7998AD1528CE61D7F594E2C9BDC3D025A32D3CBCF483EE363BD98D
            80B4BEDCE3A46675CD0194B1BDABF4936FD2E6FE1D9A53401AD9E0F7772B1C27
            656F72EE7D6BA57EAD8180743B02D22302D2E53B6F401AB931CF485F8A837FE4
            2E476E28CB13EF5596118E1EFAB0AE3DB22CA35EE2DF977E19E8D0A0662A02D2
            3A523737B3B23FA87547CE6309339A871090AE27208D2B75EDC74B3FD837776F
            EEDA3D4A1FEA2EC11202D2A8B9A4760E0169E41A925509D978E62AAD3BB38584
            393F70D0DFB9073B7324201D4736D64D09B1DBB6EEC8165272251B0EFD61EB8E
            6C696E01693CA36B9F5DE1384B585D392702D2ED08488F0848976F63407AE88A
            A5BFA1CDD28EABB6EEF539BCE3A08F3FD7BA23037C61E967EBCD7536693E30F9
            0CBCA17547762020AD27B5895312E2E35A77E42C99C5FC7DA51FC899FB8CE621
            04A4EB0A480FE5EF9E5DB36FD0BA23E7F0A4D20F4ABEB6754776B094803461E2
            73BA76AB0AC79A4B407A280F43DF58FAFBB621DFE9316523A60C083FB1754716
            4C403A9E4C62F99AD2DFFB7C44EBCE9C20135572AECCE0C292662DCE3120CD6A
            C3E797E12B0ADE53FA95A1CFABD8B77D2620DD8E80F4888074F9B60E480F5DA1
            6B5F55FA2574735A22F5CCD2D7B69AEB8610BBB87CE91F1AB28BED5C6AD0E542
            9A2FFBC5AD3B720A02D2BA524BEE41A55F727FD9D69DE9FC69E91F605FD8BA23
            131090AE33208DCB947ED647364D9BC34D64E4BAF0AD5DFBBDD61D3985A504A4
            91CD33739E1B3ADB726E01E9A1CC94BEC741BB7EEBCE1C93F206F9CE2DEDFE61
            6E04A4E3CB3521D7867C5E2FD3BA33079E5EFA73CE12EFCDE6189046366BBA4B
            85E3BCB86B372BFB3DA1A01601E97604A44704A4CBB773407A5CBE085976FB45
            A50FF55AC868DA7777ED698D7EFF98321A9C203A17D956E50DF2E09BA565BF5D
            96BBB44C403A8EBCAF0F2CFDF2DF169BB9FD75D7BEAB6B4F28CBFD6CEE4A40BA
            DE80F450CAB1E4BA9B199BD76ED48704A3B92EFC7A59EE776F49016964738DEC
            9C3E64F6D05C03D243796DB72BFDE73B9B7CB52AE792FB9E844D4303127A02D2
            E9E47D4E489A41E316614366273EB5F4D787DF6FFD660C30D7803413935E54EA
            6CD095FBE78754EEDF3E12906E47407A4440BA7C8302D24319FDFFBCD28F6ADD
            BE6B1F3272A7DF5EFA4D8D52B37329F56C86C82CBDBB76EDEEA53FF9BCFFC8BF
            2F45BCF3FE6629F59FB77EF1150848C775ADD2DF8CA78D1DD8E4E63B8321796F
            12DA2FA9CE700D025201E9A18447199CCC8A8ED4A01BFBBAF0FAD2CF5EF9F9AE
            FD49EB175FC1D202D248F99DFB0DF8F9B907A4C7E54129E7BB3B957E439AB1EF
            2BF359C832FAD4B0FFD3D62F7ECF0848A797EFCB97977E0F894F99E0F7BDA2F4
            83D5B93EFC4DEB175FC15C03D2C8B3D985158E938D143FA96B7F35421FF78980
            743B02D22302D2E5AB12901E97A51DA953989D4A6F5DFA0BF3D0BA3899A19213
            78EA7065C9D3EF94F9EF903B96845199499242DDA94956E38F969D25B30426B3
            26324325A1F37B5ABFD08A04A4D3C888763E93FFAD6B9FDBB59B943ABB2F6740
            E459A5FFEEE704FCBAD62FB42101A980F424572FFD75214152AEBD357636CEE0
            4306C872D3FBE4837FEED380C41203D2DC5FE5EF708B53FEFC9202D2E332489C
            07AFDB94A3FBCAA10F52B9C77969E9AF2D39A75EDCB577B67EA17B4A40DA56CA
            566446769E1BF23DBA6285635EDAB53F2EFD735906CEF66D5061CE01694AAEBC
            BCD4297195BFDF6796E5AE04998280743B02D22302D2E5AB1E909EE49AA5DF5C
            E2A34B7FA1BE6EE96B9966E6696A6C1E2EA37A5BE9C3906C00941024F5445F72
            D09676729ACAC774ED53BB76C3D2BFB7798FF387CCFB9AB20787B32E72E39F9D
            BDDFD4B557967E84372D4B357293F3F6D62F6444A99939E4A4DDC2CB4A3F9377
            C9522F2F0FF219A1CEE7F37AA5FF6C6689706EECF2FD4FA8FA2FA51FF0C86618
            6F3A78DD998D9087D7DC74E733FAAED62F662632D8F4C9038F91DA53AF6FFD42
            06B8A00C2BE9906BC90B5ABF8811655022DFB79B1EFC33D7845C7F33B896EFDE
            F17039F5C7CEBE2EE4BAFB17A52F5FB3A44D357695CFD005037E3EE7A99735E8
            F7D5BAF689A7FCD99C572F69D0E731E421E6F09E272DA141AE39F98C1F5F9A9F
            CF70EE2DDFD8B5D79433EF2BF7F9F33D27B9FFBADC809FDFF773F69472DECBE0
            75EE23725D38FC0E5DA3F4DF9DE3FB1EE4BE2CD7877C77F2BD397C6EC8C05956
            115CDAFAC58C2841CDD099B763DEC7D718243AF4DCB2DFCF80430DBD5768A1C5
            B57EE86732CF79174FDCE793D4C80C2E29FDDF604D724D99E34681A795E7E417
            8F1D900200000000CC9680140000000058AD7F0F48DFFB5E2548000000008075
            12900200000000AB25200500000000564B400A00000000AC9680140000000058
            2D012900000000B05A02520000000060B504A400000000C06A09480100000080
            D512900200000000AB25200500000000564B400A00000000AC96801400000000
            582D012900000000B05A02520000000060B504A400000000C06A094801000000
            80D512900200000000AB25200500000000564B400A00000000AC968014000000
            00582D012900000000B05A02520000000060B504A400000000C06A0948010000
            0080D512900200000000AB25200500000000564B400A00000000AC9680140000
            0000582D012900000000B05A02520000000060B504A400000000C06A09480100
            000080D512900200000000AB25200500000000564B400A00000000AC96801400
            000000582D012900000000B05A02520000000060B504A400000000C06A094801
            00000080D512900200000000AB25200500000000564B400A00000000AC968014
            00000000582D012900000000B05A02520000000060B504A400000000C06A0948
            0100000080D512900200000000AB25200500000000564B400A00000000AC9680
            1400000000582D012900000000B05A02520000000060B504A400000000C06A09
            480100000080D512900200000000AB25200500000000564B400A00000000AC96
            801400000000582D012900000000B05A02520000000060B504A400000000C06A
            09480100000080D512900200000000AB25200500000000564B400A00000000AC
            96801400000000582D012900000000B05A02520000000060B504A400000000C0
            6A09480100000080D512900200000000AB25200500000000564B400A00000000
            AC96801400000000582D012900000000B05A02520000000060B504A400000000
            C06A09480100000080D512900200000000AB25200500000000564B400A000000
            00AC96801400000000582D012900000000B05A02520000000060B504A4000000
            00C06A09480100000080D512900200000000AB25200500000000564B400A0000
            0000AC96801400000000582D012900000000B05A02520000000060B504A40000
            0000C06A09480100000080D512900200000000AB25200500000000564B400A00
            000000AC96801400000000582D012900000000B05A02520000000060B504A400
            000000C06A09480100000080D512900200000000AB25200500000000564B400A
            00000000AC96801400000000582D012900000000B05A02520000000060B504A4
            00000000C06A09480100000080D512900200000000AB25200500000000564B40
            0A00000000AC96801400000000582D012900000000B05A02520000000060B504
            A400000000C06A09480100000080D512900200000000AB25200500000000564B
            400A00000000AC96801400000000582D012900000000B05A02520000000060B5
            04A400000000C06A09480100000080D512900200000000AB2520050000000056
            4B400A00000000AC96801400000000582D012900000000B05A02520000000060
            B504A400000000C06A09480100000080D512900200000000AB25200500000000
            564B400A00000000AC96801400000000582D012900000000B05A025200000000
            60B504A400000000C06A09480100000080D512900200000000AB252005000000
            00564B400A00000000AC96801400000000582D012900000000B05A0252000000
            0060B504A400000000C06A09480100000080D512900200000000AB2520050000
            0000564B400A00000000AC96801400000000582D012900000000B05A02520000
            000060B504A400000000C06A09480100000080D512900200000000AB25200500
            000000564B400A00000000AC96801400000000582D012900000000B05A025200
            00000060B504A400000000C06A09480100000080D512900200000000AB252005
            00000000564B400A00000000ACD6FF03899E90A75465C7D60000000049454E44
            AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object enterpriseent_first_name: TfrxMemoView
          Left = 144.519790000000000000
          Top = 11.338590000000000000
          Width = 578.268090000000000000
          Height = 22.677180000000000000
          DataField = 'ent_first_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[enterprise."ent_first_name"]')
          ParentFont = False
        end
        object enterpriseent_cnpj: TfrxMemoView
          Left = 144.519790000000000000
          Top = 41.574830000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CNPJ: [enterprise."ent_cnpj"] Insc. Estad.: [enterprise."ent_ie"' +
              ']')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object enterpriseent_add_bus_address: TfrxMemoView
          Left = 144.519790000000000000
          Top = 68.031540000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.283550000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 4.779530000000000000
          Top = 2.779530000000000000
          Width = 139.842610000000000000
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
          Top = 23.677180000000000000
          Width = 714.331170000000000000
          Height = 105.826840000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          Left = 4.779530000000000000
          Top = 27.795300000000000000
          Width = 139.842610000000000000
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
          Left = 355.275820000000000000
          Top = 27.795300000000000000
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
          Top = 52.913420000000000000
          Width = 139.842610000000000000
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
          Top = 77.370130000000000000
          Width = 139.842610000000000000
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
          Top = 102.047310000000000000
          Width = 139.842610000000000000
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
        object Stock_Transferprt_status: TfrxMemoView
          IndexTag = 1
          Left = 419.527830000000000000
          Top = 27.795300000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'prt_status'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."prt_status"]')
          ParentFont = False
        end
        object Stock_Transferprt_dt_registration: TfrxMemoView
          IndexTag = 1
          Left = 156.740260000000000000
          Top = 2.779530000000000000
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
        object Stock_Transferpurchase_order_pco_id: TfrxMemoView
          IndexTag = 1
          Left = 154.960730000000000000
          Top = 27.795300000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'purchase_order_pco_id'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."purchase_order_pco_id"]')
        end
        object Stock_TransferStock_Saida: TfrxMemoView
          IndexTag = 1
          Left = 154.960730000000000000
          Top = 77.370130000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'Stock_Saida'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."Stock_Saida"]')
        end
        object Stock_TransferSolicitante: TfrxMemoView
          IndexTag = 1
          Left = 154.960730000000000000
          Top = 52.913420000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'Solicitante'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."Solicitante"]')
        end
        object Stock_TransferStock_Entrada: TfrxMemoView
          IndexTag = 1
          Left = 154.960730000000000000
          Top = 102.047310000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'Stock_Entrada'
          DataSet = frxDBD_Stock_Transfer
          DataSetName = 'Stock_Transfer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Stock_Transfer."Stock_Entrada"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 468.661720000000000000
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
        Height = 26.456710000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Tranfer_Itens
        DataSetName = 'Tranfer_Itens'
        RowCount = 0
        object Line1: TfrxLineView
          Left = 3.338590000000000000
          Top = 26.456710000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 6.338590000000000000
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
            'C'#243'digo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 136.283550000000000000
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
          Left = 491.338900000000000000
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
            'Quantidade')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Tranfer_Itens
        DataSetName = 'Tranfer_Itens'
        RowCount = 0
        object Tranfer_Itensproduct_pro_id: TfrxMemoView
          IndexTag = 1
          Left = 6.338590000000000000
          Top = 1.000000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'product_pro_id'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."product_pro_id"]')
        end
        object Tranfer_Itenspti_product_quant: TfrxMemoView
          IndexTag = 1
          Left = 491.338900000000000000
          Top = 1.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'pti_product_quant'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."pti_product_quant"]')
        end
        object Tranfer_ItensProduto: TfrxMemoView
          IndexTag = 1
          Left = 136.283550000000000000
          Top = 1.000000000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataField = 'Produto'
          DataSet = frxDBD_Tranfer_Itens
          DataSetName = 'Tranfer_Itens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Tranfer_Itens."Produto"]')
        end
      end
    end
  end
  object qry_product_transfer_iten: TFDQuery
    Active = True
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
    Left = 87
    Top = 410
    ParamData = <
      item
        Name = 'PRT_ID'
        DataType = ftAutoInc
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
    object qry_product_transfer_itenProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = qry_product
      LookupKeyFields = 'product_pro_id'
      LookupResultField = 'pro_name'
      KeyFields = 'product_pro_id'
      Size = 50
      Lookup = True
    end
  end
  object dsItens: TDataSource
    DataSet = qry_product_transfer_iten
    Left = 527
    Top = 146
  end
  object qry_stock_iten: TFDQuery
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
    Active = True
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
        Value = Null
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
    Left = 615
    Top = 186
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
    Left = 223
    Top = 354
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
    MasterSource = ds_purchase_iten
    MasterFields = 'pco_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from purchase_order_iten'
      'where purchase_order_pco_id = :pco_id')
    Left = 240
    Top = 409
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
  object ds_purchase_iten: TDataSource
    DataSet = qry_purchase_order
    Left = 440
    Top = 392
  end
  object frxDBD_Stock_Transfer: TfrxDBDataset
    UserName = 'Stock_Transfer'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 104
    Top = 144
  end
  object frxDBD_Tranfer_Itens: TfrxDBDataset
    UserName = 'Tranfer_Itens'
    CloseDataSource = False
    DataSet = qry_product_transfer_iten
    BCDToCurrency = False
    Left = 104
    Top = 200
  end
end
