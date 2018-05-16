inherited frm_product_department: Tfrm_product_department
  Caption = 'Manuten'#231#227'o: Departamentos e Se'#231#245'es'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      OnShow = cxTabSheet_1Show
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1prd_id: TcxGridDBColumn
            DataBinding.FieldName = 'prd_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1prd_name: TcxGridDBColumn
            DataBinding.FieldName = 'prd_name'
          end
          object cxGrid_1DBTableView1prd_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'prd_dt_registration'
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
              DataBinding.DataField = 'prd_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'prd_dt_registration'
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
                Navigator.Visible = True
                DataController.DataSource = ds_product_sector
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                object cxGrid1DBTableView1prs_id: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1prs_name: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_name'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Width = 200
                end
                object cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_dt_registration'
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
              Top = 103
              DataBinding.DataField = 'prd_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 294
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
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
    Active = True
    AfterInsert = qryAfterInsert
    BeforePost = qryBeforePost
    AfterDelete = qryAfterDelete
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from product_department')
    object qryprd_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'prd_name'
      Origin = 'prd_name'
      Size = 35
    end
    object qryprd_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'prd_dt_registration'
      Origin = 'prd_dt_registration'
    end
    object qryprd_cod: TBytesField
      FieldName = 'prd_cod'
      Origin = 'prd_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryprd_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prd_id'
      Origin = 'prd_id'
    end
    object qryprd_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prd_deleted_at'
      Origin = 'prd_deleted_at'
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
  object qry_product_sector: TFDQuery
    Active = True
    AfterInsert = qry_product_sectorAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'product_department_prd_cod'
    MasterSource = ds
    MasterFields = 'prd_cod'
    DetailFields = 'product_department_prd_cod'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from product_sector')
    Left = 584
    Top = 96
    object qry_product_sectorprs_cod: TBytesField
      FieldName = 'prs_cod'
      Origin = 'prs_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_sectorproduct_department_prd_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_department_prd_cod'
      Origin = 'product_department_prd_cod'
    end
    object qry_product_sectorprs_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prs_id'
      Origin = 'prs_id'
    end
    object qry_product_sectorprs_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_name'
      Origin = 'prs_name'
      Size = 35
    end
    object qry_product_sectorprs_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_deleted_at'
      Origin = 'prs_deleted_at'
    end
    object qry_product_sectorprs_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_dt_registration'
      Origin = 'prs_dt_registration'
    end
  end
  object ds_product_sector: TDataSource
    DataSet = qry_product_sector
    Left = 616
    Top = 96
  end
end
