inherited frm_product_department: Tfrm_product_department
  Caption = 'Manuten'#231#227'o: Departamentos e Se'#231#245'es'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1prd_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'prd_id'
            Width = 75
          end
          object cxGrid_1DBTableView1prd_name: TcxGridDBColumn
            Caption = 'Departamento'
            DataBinding.FieldName = 'prd_name'
            Width = 250
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
              Left = 91
              DataBinding.DataField = 'prd_id'
              ExplicitLeft = 91
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 264
              DataBinding.DataField = 'prd_dt_registration'
              ExplicitLeft = 264
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 168
              Width = 619
              Height = 200
              TabOrder = 3
              object cxGrid1DBTableView1: TcxGridDBTableView
                PopupMenu = pupMenuDepartment
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
                DataController.DataSource = ds_product_sector
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                OptionsData.Editing = False
                object cxGrid1DBTableView1prs_id: TcxGridDBColumn
                  Caption = 'C'#243'digo ID'
                  DataBinding.FieldName = 'prs_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1prs_name: TcxGridDBColumn
                  Caption = 'Se'#231#227'o'
                  DataBinding.FieldName = 'prs_name'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Width = 250
                end
                object cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
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
              Left = 91
              Top = 103
              DataBinding.DataField = 'prd_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            object edtSecoes: TcxTextEdit [4]
              Left = 58
              Top = 374
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              OnKeyDown = edtSecoesKeyDown
              Width = 336
            end
            object btnSalvar_Item: TcxButton [5]
              Left = 400
              Top = 374
              Width = 25
              Height = 25
              Action = act_save_depart_secoes
              TabOrder = 5
            end
            object btnEditar_Item: TcxButton [6]
              Left = 431
              Top = 374
              Width = 25
              Height = 25
              Action = act_edit_depart_secoes
              TabOrder = 6
            end
            object btnCancel_Item: TcxButton [7]
              Left = 462
              Top = 374
              Width = 25
              Height = 25
              Action = act_cancel_depart_secoes
              TabOrder = 7
            end
            object btnExcluir_Item: TcxButton [8]
              Left = 493
              Top = 374
              Width = 25
              Height = 25
              Action = act_delete_depart_secoes
              TabOrder = 8
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Setores'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 633
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
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Departamento'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Se'#231#245'es'
              Offsets.Left = 2
              Control = edtSecoes
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 336
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnEditar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnCancel_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton4'
              CaptionOptions.Visible = False
              Control = btnExcluir_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 4
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
      
        'select product_department.*, hex(prd_cod)as CodDepartment from p' +
        'roduct_department'#13#10#10
      'where contract_ctr_cod =:ctr_cod'#10
      'and prd_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 24
        Value = Null
      end>
    object qryprd_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'prd_name'
      Origin = 'prd_name'
      Required = True
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
    object qryCodDepartment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodDepartment'
      Origin = 'CodDepartment'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
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
  object ds_product_sector: TDataSource
    DataSet = qry_product_sector
    Left = 760
    Top = 160
  end
  object Action_Depart_Secoes: TActionList
    Images = cxImageList_1
    Left = 792
    Top = 160
    object act_save_depart_secoes: TAction
      ImageIndex = 6
      OnExecute = act_save_depart_secoesExecute
    end
    object act_edit_depart_secoes: TAction
      ImageIndex = 5
      OnExecute = act_edit_depart_secoesExecute
    end
    object act_cancel_depart_secoes: TAction
      ImageIndex = 7
      OnExecute = act_cancel_depart_secoesExecute
    end
    object act_delete_depart_secoes: TAction
      ImageIndex = 8
      OnExecute = act_delete_depart_secoesExecute
    end
  end
  object qry_product_sector: TFDQuery
    Active = True
    IndexFieldNames = 'product_department_prd_cod'
    MasterSource = ds
    MasterFields = 'prd_cod'
    DetailFields = 'product_department_prd_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product_sector.*, hex(prs_cod)as CodSetor from product_se' +
        'ctor'#13#10#10
      'where product_department_prd_cod =:prd_cod'#13#10#10
      'and prs_deleted_at is null')
    Left = 728
    Top = 160
    ParamData = <
      item
        Name = 'PRD_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 24
        Value = Null
      end>
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
    object qry_product_sectorCodSetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodSetor'
      Origin = 'CodSetor'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object pupMenuDepartment: TPopupMenu
    Left = 823
    Top = 160
    object Excluir2: TMenuItem
      Action = act_delete_depart_secoes
      Caption = 'Excluir'
    end
    object Editar2: TMenuItem
      Action = act_edit_depart_secoes
      Caption = 'Editar'
    end
    object Cancelar1: TMenuItem
      Action = act_cancel_depart_secoes
      Caption = 'Cancelar'
    end
  end
end
