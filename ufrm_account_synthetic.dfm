inherited frm_account_synthetic: Tfrm_account_synthetic
  Caption = 'Manuten'#231#227'o: Planos de Contas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 487
    ExplicitHeight = 487
    ClientRectBottom = 481
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 453
      inherited cxGrid_1: TcxGrid
        Height = 447
        ExplicitHeight = 447
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1acp_id: TcxGridDBColumn
            DataBinding.FieldName = 'acp_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1account_type_act_id: TcxGridDBColumn
            DataBinding.FieldName = 'account_type_act_id'
            Width = 75
          end
          object cxGrid_1DBTableView1acp_name: TcxGridDBColumn
            DataBinding.FieldName = 'acp_name'
            Width = 250
          end
          object cxGrid_1DBTableView1acp_status: TcxGridDBColumn
            DataBinding.FieldName = 'acp_status'
            Width = 50
          end
          object cxGrid_1DBTableView1acp_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'acp_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 453
      inherited cxPageControl_2: TcxPageControl
        Height = 447
        ExplicitHeight = 447
        ClientRectBottom = 441
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 413
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 413
            ExplicitHeight = 413
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'acp_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'acp_dt_registration'
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'account_type_act_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'act_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'act_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'act_id'
                end>
              Properties.ListSource = ds_account_type
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxGrid1: TcxGrid [3]
              Left = 17
              Top = 195
              Width = 728
              Height = 174
              TabOrder = 5
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
                DataController.DataSource = ds_account_account_detail
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                object cxGrid1DBTableView1acd_id: TcxGridDBColumn
                  DataBinding.FieldName = 'acd_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1acd_name: TcxGridDBColumn
                  DataBinding.FieldName = 'acd_name'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Width = 200
                end
                object cxGrid1DBTableView1acd_status: TcxGridDBColumn
                  DataBinding.FieldName = 'acd_status'
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'A - ATIVO'
                    'D - DESATIVADO')
                  Width = 50
                end
                object cxGrid1DBTableView1acd_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'acd_dt_registration'
                  Options.Editing = False
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBTextEdit1: TcxDBTextEdit [4]
              Left = 59
              Top = 130
              DataBinding.DataField = 'acp_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 294
            end
            object cxDBComboBox1: TcxDBComboBox [5]
              Left = 232
              Top = 103
              DataBinding.DataField = 'acp_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Plano de Conta - Anal'#237'tica'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 209
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 174
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
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
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 542
    Width = 784
    Height = 19
    Panels = <>
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
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
      'select * from account_plan')
    object qryacp_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'acp_id'
      Origin = 'acp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryaccount_type_act_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'account_type_act_id'
      Origin = 'account_type_act_id'
    end
    object qryacp_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'acp_name'
      Origin = 'acp_name'
      Size = 50
    end
    object qryacp_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'acp_status'
      Origin = 'acp_status'
      FixedChar = True
      Size = 1
    end
    object qryacp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'acp_dt_registration'
      Origin = 'acp_dt_registration'
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
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qry_account_type: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from account_type')
    Left = 672
    Top = 136
  end
  object ds_account_type: TDataSource
    DataSet = qry_account_type
    Left = 616
    Top = 96
  end
  object qry_account_account_detail: TFDQuery
    AfterInsert = qry_account_account_detailAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'account_plan_acp_id'
    MasterSource = ds
    MasterFields = 'acp_id'
    DetailFields = 'account_plan_acp_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from account_plan_detail'#10
      'where account_plan_acp_id =:acp_id')
    Left = 552
    Top = 208
    ParamData = <
      item
        Name = 'ACP_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_account_account_detailacd_id: TFDAutoIncField
      FieldName = 'acd_id'
      Origin = 'acd_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_account_account_detailcontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qry_account_account_detailaccount_plan_acp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'account_plan_acp_id'
      Origin = 'account_plan_acp_id'
    end
    object qry_account_account_detailacd_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'acd_name'
      Origin = 'acd_name'
      Size = 50
    end
    object qry_account_account_detailacd_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'acd_status'
      Origin = 'acd_status'
      FixedChar = True
      Size = 1
    end
    object qry_account_account_detailacd_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'acd_dt_registration'
      Origin = 'acd_dt_registration'
    end
  end
  object ds_account_account_detail: TDataSource
    DataSet = qry_account_account_detail
    Left = 656
    Top = 184
  end
end
