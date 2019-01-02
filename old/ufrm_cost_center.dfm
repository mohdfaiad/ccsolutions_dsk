inherited frm_cost_center: Tfrm_cost_center
  Caption = 'Manuten'#231#227'o: Centro de Custo - Grupo'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1coc_id: TcxGridDBColumn
            DataBinding.FieldName = 'coc_id'
            Width = 75
          end
          object cxGrid_1DBTableView1coc_name: TcxGridDBColumn
            DataBinding.FieldName = 'coc_name'
            Width = 250
          end
          object cxGrid_1DBTableView1coc_status: TcxGridDBColumn
            DataBinding.FieldName = 'coc_status'
            Width = 50
          end
          object cxGrid_1DBTableView1cod_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'cod_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'coc_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'cod_dt_registration'
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 195
              Width = 728
              Height = 217
              TabOrder = 4
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
                DataController.DataSource = ds_cost_center_detail
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                object cxGrid1DBTableView1cod_id: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1cod_name: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_name'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Width = 250
                end
                object cxGrid1DBTableView1cod_status: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_status'
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'A - ATIVO'
                    'D - DESATIVADO')
                  Width = 100
                end
                object cxGrid1DBTableView1cod_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_dt_registration'
                  Options.Editing = False
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 59
              Top = 130
              DataBinding.DataField = 'coc_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object cxDBComboBox1: TcxDBComboBox [4]
              Left = 59
              Top = 103
              DataBinding.DataField = 'coc_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Centro de Custo - Sub-Grupo'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 255
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 217
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
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
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
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from cost_center')
    object qrycoc_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'coc_id'
      Origin = 'coc_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrycoc_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'coc_name'
      Origin = 'coc_name'
      Size = 50
    end
    object qrycoc_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'coc_status'
      Origin = 'coc_status'
      FixedChar = True
      Size = 1
    end
    object qrycod_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cod_dt_registration'
      Origin = 'cod_dt_registration'
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
  object qry_cost_center_detail: TFDQuery
    AfterInsert = qry_cost_center_detailAfterInsert
    AfterPost = qry_cost_center_detailAfterPost
    CachedUpdates = True
    IndexFieldNames = 'cost_center_coc_id'
    MasterSource = ds
    MasterFields = 'coc_id'
    DetailFields = 'cost_center_coc_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from cost_center_detail'#13#10#10
      'where cost_center_coc_id =:coc_id')
    Left = 584
    Top = 96
    ParamData = <
      item
        Name = 'COC_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 17
      end>
    object qry_cost_center_detailcod_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'cod_id'
      Origin = 'cod_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_cost_center_detailcontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qry_cost_center_detailcost_center_coc_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Centro de Custo ID'
      FieldName = 'cost_center_coc_id'
      Origin = 'cost_center_coc_id'
    end
    object qry_cost_center_detailcod_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'cod_name'
      Origin = 'cod_name'
      Size = 50
    end
    object qry_cost_center_detailcod_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'cod_status'
      Origin = 'cod_status'
      FixedChar = True
      Size = 1
    end
    object qry_cost_center_detailcod_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cod_dt_registration'
      Origin = 'cod_dt_registration'
    end
  end
  object ds_cost_center_detail: TDataSource
    DataSet = qry_cost_center_detail
    Left = 616
    Top = 96
  end
end
