inherited frm_department: Tfrm_department
  Caption = 'Manuten'#231#227'o: Departamenos e Setores'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxGrid_1: TcxGrid
        ExplicitLeft = 3
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1dep_id: TcxGridDBColumn
            Caption = 'C'#243'd. ID'
            DataBinding.FieldName = 'dep_id'
            Width = 75
          end
          object cxGrid_1DBTableView1dep_name: TcxGridDBColumn
            DataBinding.FieldName = 'dep_name'
            Width = 200
          end
          object cxGrid_1DBTableView1dep_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'dep_dt_registration'
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
              DataBinding.DataField = 'dep_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'dep_dt_registration'
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 168
              Width = 728
              Height = 200
              TabOrder = 3
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
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = ds_sector
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1sec_id: TcxGridDBColumn
                  DataBinding.FieldName = 'sec_id'
                  Width = 75
                end
                object cxGrid1DBTableView1sec_name: TcxGridDBColumn
                  DataBinding.FieldName = 'sec_name'
                  Width = 200
                end
                object cxGrid1DBTableView1sec_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'sec_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 59
              Top = 103
              DataBinding.DataField = 'dep_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 294
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
              CaptionOptions.Text = 'Setores'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
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
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select department.*,concat('#39'0x'#39',hex(dep_cod)) from department'
      'where dep_deleted_at is null')
    object qrydep_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'dep_name'
      Origin = 'dep_name'
      Size = 35
    end
    object qrydep_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'dep_dt_registration'
      Origin = 'dep_dt_registration'
    end
    object qrydep_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dep_status'
      Origin = 'dep_status'
      FixedChar = True
      Size = 1
    end
    object qrydep_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dep_deleted_at'
      Origin = 'dep_deleted_at'
    end
    object qrydep_cod: TBytesField
      FieldName = 'dep_cod'
      Origin = 'dep_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrydep_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'dep_id'
      Origin = 'dep_id'
    end
    object qryconcat0xhexdep_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'concat('#39'0x'#39',hex(dep_cod))'
      Origin = '`concat('#39'0x'#39',hex(dep_cod))`'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
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
  object qry_sector: TFDQuery
    AfterInsert = qry_sectorAfterInsert
    BeforePost = qry_sectorBeforePost
    IndexFieldNames = 'department_dep_cod'
    MasterSource = ds
    MasterFields = 'dep_cod'
    DetailFields = 'department_dep_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from sector'
      'where sec_deleted_at is null')
    Left = 592
    Top = 96
    object qry_sectorsec_cod: TBytesField
      FieldName = 'sec_cod'
      Origin = 'sec_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_sectorsec_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sec_id'
      Origin = 'sec_id'
    end
    object qry_sectorsec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sec_name'
      Origin = 'sec_name'
      Size = 35
    end
    object qry_sectorsec_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sec_status'
      Origin = 'sec_status'
      FixedChar = True
      Size = 1
    end
    object qry_sectorsec_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sec_deleted_at'
      Origin = 'sec_deleted_at'
    end
    object qry_sectorsec_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sec_dt_registration'
      Origin = 'sec_dt_registration'
    end
    object qry_sectordepartment_dep_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'department_dep_cod'
      Origin = 'sec_id'
    end
  end
  object ds_sector: TDataSource
    DataSet = qry_sector
    Left = 616
    Top = 104
  end
end
