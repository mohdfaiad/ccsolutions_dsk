inherited frm_product_class: Tfrm_product_class
  Caption = 'Manuten'#231#227'o: Classes e Sub-Classes'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1prc_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'prc_id'
            Width = 75
          end
          object cxGrid_1DBTableView1prc_name: TcxGridDBColumn
            DataBinding.FieldName = 'prc_name'
            Width = 250
          end
          object cxGrid_1DBTableView1prc_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'prc_status'
            Width = 70
          end
          object cxGrid_1DBTableView1prc_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'prc_dt_registration'
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
              Left = 75
              DataBinding.DataField = 'prc_id'
              ExplicitLeft = 75
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 248
              DataBinding.DataField = 'prc_dt_registration'
              ExplicitLeft = 248
              ExplicitWidth = 145
              Width = 145
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 195
              Width = 559
              Height = 200
              PopupMenu = pupMenuProduct_Class
              TabOrder = 4
              object cxGrid1DBTableView1: TcxGridDBTableView
                PopupMenu = pupMenuProduct_Class
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
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 12
                DataController.DataSource = ds_product_class_sub
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                OptionsData.Editing = False
                object cxGrid1DBTableView1prs_id: TcxGridDBColumn
                  Caption = 'C'#243'digo ID'
                  DataBinding.FieldName = 'prs_id'
                  Width = 75
                end
                object cxGrid1DBTableView1prs_name: TcxGridDBColumn
                  Caption = 'Sub-Classe'
                  DataBinding.FieldName = 'prs_name'
                  Width = 250
                end
                object cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'prs_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 75
              Top = 103
              DataBinding.DataField = 'prc_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 318
            end
            object edtSubClasse: TcxTextEdit [4]
              Left = 75
              Top = 401
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              OnKeyDown = edtSubClasseKeyDown
              Width = 350
            end
            object btnSalvar_Item: TcxButton [5]
              Left = 431
              Top = 401
              Width = 25
              Height = 25
              Action = act_save_product_class_sub
              TabOrder = 6
            end
            object btnEditar_Item: TcxButton [6]
              Left = 462
              Top = 401
              Width = 25
              Height = 25
              Action = act_edit_product_class_sub
              TabOrder = 7
            end
            object btnCancel_Item: TcxButton [7]
              Left = 493
              Top = 401
              Width = 25
              Height = 25
              Action = act_cancel_product_class_sub
              TabOrder = 8
            end
            object btnExcluir_Item: TcxButton [8]
              Left = 524
              Top = 401
              Width = 25
              Height = 25
              Action = act_delete_product_class_sub
              TabOrder = 9
            end
            object dbComboxStatus: TcxDBComboBox [9]
              Left = 75
              Top = 130
              DataBinding.DataField = 'prc_status'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              ItemIndex = 1
            end
            inherited dxLayoutItem2: TdxLayoutItem
              ControlOptions.OriginalWidth = 145
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Sub-Classe'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 573
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
              CaptionOptions.Text = 'Classe'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 318
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Sub-Classe'
              Control = edtSubClasse
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 350
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 1
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
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Status'
              Control = dbComboxStatus
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product_class.*, hex(prc_cod)as CodProdClass from product' +
        '_class'
      'where contract_ctr_cod =:ctr_cod'
      'and prc_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 24
        Value = Null
      end>
    object qryprc_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'prc_name'
      Origin = 'prc_name'
      Required = True
      Size = 35
    end
    object qryprc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'prc_dt_registration'
      Origin = 'prc_dt_registration'
    end
    object qryprc_cod: TBytesField
      FieldName = 'prc_cod'
      Origin = 'prc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryprc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prc_id'
      Origin = 'prc_id'
    end
    object qryprc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prc_status'
      Origin = 'prc_status'
      FixedChar = True
      Size = 1
    end
    object qryprc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prc_deleted_at'
      Origin = 'prc_deleted_at'
    end
    object qryCodProdClass: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProdClass'
      Origin = 'CodProdClass'
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
  object ds_product_class_sub: TDataSource
    DataSet = qry_product_class_sub
    Left = 768
    Top = 120
  end
  object qry_product_class_sub: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product_class_sub.*, hex(prs_cod)as CodSubClass from prod' +
        'uct_class_sub'#13#10#10
      'where product_class_prc_cod =:prc_cod'#13#10#10
      'and prs_deleted_at is null')
    Left = 736
    Top = 120
    ParamData = <
      item
        Name = 'PRC_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 25
        Value = Null
      end>
    object qry_product_class_subprs_cod: TBytesField
      FieldName = 'prs_cod'
      Origin = 'prs_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_product_class_subcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_product_class_subproduct_class_prc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_class_prc_cod'
      Origin = 'product_class_prc_cod'
    end
    object qry_product_class_subprs_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prs_id'
      Origin = 'prs_id'
    end
    object qry_product_class_subprs_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_name'
      Origin = 'prs_name'
      Required = True
      Size = 35
    end
    object qry_product_class_subprs_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_deleted_at'
      Origin = 'prs_deleted_at'
    end
    object qry_product_class_subprs_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_dt_registration'
      Origin = 'prs_dt_registration'
    end
    object qry_product_class_subCodSubClass: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodSubClass'
      Origin = 'CodSubClass'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object Action_product_class_sub: TActionList
    Images = cxImageList_1
    Left = 800
    Top = 120
    object act_save_product_class_sub: TAction
      ImageIndex = 6
      OnExecute = act_save_product_class_subExecute
    end
    object act_edit_product_class_sub: TAction
      ImageIndex = 5
      OnExecute = act_edit_product_class_subExecute
    end
    object act_cancel_product_class_sub: TAction
      ImageIndex = 7
      OnExecute = act_cancel_product_class_subExecute
    end
    object act_delete_product_class_sub: TAction
      ImageIndex = 8
      OnExecute = act_delete_product_class_subExecute
    end
  end
  object pupMenuProduct_Class: TPopupMenu
    Left = 823
    Top = 122
    object Excluir2: TMenuItem
      Action = act_delete_product_class_sub
    end
    object Editar2: TMenuItem
      Action = act_edit_product_class_sub
    end
    object Cancelar1: TMenuItem
      Action = act_cancel_product_class_sub
    end
  end
end
