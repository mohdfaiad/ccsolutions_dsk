inherited frm_proposal_contract: Tfrm_proposal_contract
  Caption = 'Manuten'#231#227'o: Popostas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1req_id: TcxGridDBColumn
            DataBinding.FieldName = 'req_id'
          end
          object cxGrid_1DBTableView1client_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'client_first_name'
            Width = 275
          end
          object cxGrid_1DBTableView1req_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'req_dt_registration'
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 562
          object dxBevel1: TdxBevel [0]
            Left = 0
            Top = 22
            Width = 701
            Height = 50
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox [1]
            Left = 0
            Top = 88
            DataBinding.DataField = 'client_cli_cod'
            DataBinding.DataSource = ds
            Properties.ListColumns = <>
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          inherited dxLayoutControl_1: TdxLayoutControl
            TabOrder = 1
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'req_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'req_dt_registration'
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'client_cli_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'cli_cod'
              Properties.ListColumns = <
                item
                  Width = 250
                  FieldName = 'cli_first_name'
                end
                item
                  Width = 75
                  FieldName = 'cli_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_shared.dsClient
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Cliente'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Itens'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBNavigator1: TcxDBNavigator
              Left = 764
              Top = 75
              Width = 212
              Height = 25
              Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
              Buttons.CustomButtons = <>
              Buttons.Images = cxImageList_1
              Buttons.First.ImageIndex = 0
              Buttons.PriorPage.Visible = False
              Buttons.Prior.ImageIndex = 1
              Buttons.Next.ImageIndex = 2
              Buttons.NextPage.Visible = False
              Buttons.Last.ImageIndex = 3
              Buttons.Insert.ImageIndex = 4
              Buttons.Delete.ImageIndex = 8
              Buttons.Edit.ImageIndex = 5
              Buttons.Post.ImageIndex = 6
              Buttons.Cancel.ImageIndex = 7
              Buttons.Refresh.ImageIndex = 9
              Buttons.SaveBookmark.Visible = False
              Buttons.GotoBookmark.Visible = False
              Buttons.Filter.Visible = False
              DataSource = dsProposalContractIten
              TabOrder = 5
            end
            object grid: TcxGrid
              Left = 17
              Top = 134
              Width = 952
              Height = 200
              TabOrder = 6
              object gridview: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsProposalContractIten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                OptionsData.Editing = False
                object gridviewproduct_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'product_cod'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Width = 275
                end
                object gridviewrei_value: TcxGridDBColumn
                  DataBinding.FieldName = 'rei_value'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object gridviewrei_quant: TcxGridDBColumn
                  DataBinding.FieldName = 'rei_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.0000'
                  Width = 100
                end
                object gridviewrei_discount: TcxGridDBColumn
                  DataBinding.FieldName = 'rei_discount'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object gridviewrei_value_total: TcxGridDBColumn
                  DataBinding.FieldName = 'rei_value_total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
              end
              object gridlvl: TcxGridLevel
                GridView = gridview
              end
            end
            object dbedt_value: TcxDBCurrencyEdit
              Left = 349
              Top = 38
              DataBinding.DataField = 'rei_value'
              DataBinding.DataSource = dsProposalContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dbedt_quant: TcxDBCurrencyEdit
              Left = 515
              Top = 38
              DataBinding.DataField = 'rei_quant'
              DataBinding.DataSource = dsProposalContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.0000'
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_discount: TcxDBCurrencyEdit
              Left = 692
              Top = 38
              DataBinding.DataField = 'rei_discount'
              DataBinding.DataSource = dsProposalContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_value_total: TcxDBCurrencyEdit
              Left = 848
              Top = 38
              DataBinding.DataField = 'rei_value_total'
              DataBinding.DataSource = dsProposalContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dblookupcmb_product: TcxDBLookupComboBox
              Left = 60
              Top = 38
              DataBinding.DataField = 'product_pro_cod'
              DataBinding.DataSource = dsProposalContractIten
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'pro_cod'
              Properties.ListColumns = <
                item
                  Width = 250
                  FieldName = 'pro_name'
                end
                item
                  Width = 75
                  FieldName = 'pro_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_shared.dsProduct
              Style.HotTrack = False
              TabOrder = 0
              Width = 254
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
              CaptionOptions.Text = 'Dados'
              ButtonOptions.Buttons = <>
              ItemIndex = 3
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Listagem Itens'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Width = 966
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahRight
              Control = cxDBNavigator1
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 212
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup4
              Control = grid
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Valor'
              Control = dbedt_value
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Quant.'
              Control = dbedt_quant
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Desconto'
              Control = dbedt_discount
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Total'
              Control = dbedt_value_total
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'Produto'
              Control = dblookupcmb_product
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 254
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited ActionList_1: TActionList
    inherited Action_save: TAction
      OnExecute = Action_saveExecute
    end
  end
  inherited qry: TFDQuery [5]
  end
  inherited ACBrEnterTab_1: TACBrEnterTab [6]
  end
  inherited QExport4Dialog_1: TQExport4Dialog [7]
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard [8]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited schadp: TFDSchemaAdapter [9]
  end
  inherited frxReport_1: TfrxReport [10]
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited mem: TFDMemTable [11]
    Active = True
    FieldDefs = <
      item
        Name = 'req_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'client_cli_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'req_id'
        DataType = ftLongWord
      end
      item
        Name = 'req_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'req_dt_registration'
        DataType = ftDateTime
      end>
    StoreDefs = True
    object memreq_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'req_cod'
      Origin = 'req_cod'
      Size = 32
    end
    object memclient_cli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
      Size = 32
    end
    object memreq_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'req_id'
      Origin = 'req_id'
    end
    object memreq_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'req_deleted_at'
      Origin = 'req_deleted_at'
    end
    object memreq_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'req_dt_registration'
      Origin = 'req_dt_registration'
    end
    object memclient_first_name: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'client_first_name'
      LookupDataSet = frm_dm_shared.memClient
      LookupKeyFields = 'cli_cod'
      LookupResultField = 'cli_first_name'
      KeyFields = 'client_cli_cod'
      Size = 120
      Lookup = True
    end
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [12]
  end
  inherited PopupMenu_1: TPopupMenu [13]
  end
  inherited cxImageList_1: TcxImageList [14]
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [15]
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object memProposalContractIten: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'rei_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'requisition_req_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_pro_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'rei_value'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'rei_quant'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'rei_discount'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'rei_value_total'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'rei_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'rei_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    IndexFieldNames = 'requisition_req_cod'
    MasterSource = ds
    MasterFields = 'req_cod'
    DetailFields = 'requisition_req_cod'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 928
    Top = 104
    object memProposalContractItenrei_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'rei_cod'
      Origin = 'rei_cod'
      Size = 32
    end
    object memProposalContractItenrequisition_req_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Proposta'
      FieldName = 'requisition_req_cod'
      Origin = 'requisition_req_cod'
      Size = 32
    end
    object memProposalContractItenproduct_pro_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
      Size = 32
    end
    object memProposalContractItenrei_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'rei_value'
      Origin = 'rei_value'
      Precision = 12
    end
    object memProposalContractItenrei_quant: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant.'
      FieldName = 'rei_quant'
      Origin = 'rei_quant'
      Precision = 12
    end
    object memProposalContractItenrei_discount: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Desconto'
      FieldName = 'rei_discount'
      Origin = 'rei_discount'
      Precision = 12
    end
    object memProposalContractItenrei_value_total: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total'
      FieldName = 'rei_value_total'
      Origin = 'rei_value_total'
      Precision = 12
    end
    object memProposalContractItenrei_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'rei_deleted_at'
      Origin = 'rei_deleted_at'
    end
    object memProposalContractItenrei_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'rei_dt_registration'
      Origin = 'rei_dt_registration'
    end
    object memProposalContractItenproduct_cod: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'product_cod'
      LookupDataSet = frm_dm_shared.memProduct
      LookupKeyFields = 'pro_cod'
      LookupResultField = 'pro_name'
      KeyFields = 'product_pro_cod'
      Size = 120
      Lookup = True
    end
  end
  object dsProposalContractIten: TDataSource
    DataSet = memProposalContractIten
    Left = 960
    Top = 104
  end
end
