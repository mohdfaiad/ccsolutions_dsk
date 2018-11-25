inherited frm_contract: Tfrm_contract
  Caption = 'Manuten'#231#227'o: Contrato'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ctr_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_first_name'
            Width = 150
          end
          object cxGrid_1DBTableView1ctr_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_last_name'
            Width = 150
          end
          object cxGrid_1DBTableView1ctr_email: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_email'
            Width = 250
          end
          object cxGrid_1DBTableView1ctr_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_dt_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_dt_birth'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 562
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'ctr_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 245
              DataBinding.DataField = 'ctr_dt_registration'
              ExplicitLeft = 245
            end
            object dbedt_first_name: TcxDBTextEdit [2]
              Left = 59
              Top = 101
              DataBinding.DataField = 'ctr_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_phone1: TcxDBTextEdit [3]
              Left = 429
              Top = 101
              DataBinding.DataField = 'ctr_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dbedt_email: TcxDBTextEdit [4]
              Left = 59
              Top = 128
              DataBinding.DataField = 'ctr_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 316
            end
            object dbedt_last_name: TcxDBTextEdit [5]
              Left = 245
              Top = 101
              DataBinding.DataField = 'ctr_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            object dbedt_dt_birth: TcxDBDateEdit [6]
              Left = 429
              Top = 128
              DataBinding.DataField = 'ctr_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = dbedt_first_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = dbedt_phone1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = dbedt_email
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 316
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Sobrenome'
              Control = dbedt_last_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Aniv.'
              Control = dbedt_dt_birth
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
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
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarButton_first: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_prior: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_next: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_last: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_insert: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_delete: TdxBarButton
      Visible = ivNever
    end
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
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [10]
  end
  inherited frxReport_1: TfrxReport [11]
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43286.747143391200000000
    Datasets = <
      item
      end>
    Variables = <>
    Style = <>
  end
  inherited mem: TFDMemTable [12]
    Active = True
    FieldDefs = <
      item
        Name = 'ctr_cod'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ctr_id'
        DataType = ftLargeint
      end
      item
        Name = 'ctr_first_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ctr_last_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ctr_email'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'ctr_phone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ctr_dt_birth'
        DataType = ftDate
      end
      item
        Name = 'ctr_user_license'
        DataType = ftWord
      end
      item
        Name = 'ctr_status'
        DataType = ftShortint
      end
      item
        Name = 'ctr_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'ctr_dt_registration'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'ctr_id'
    StoreDefs = True
    object memctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ctr_cod'
      Origin = 'ctr_cod'
      Size = 32
    end
    object memctr_id: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
    end
    object memctr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ctr_first_name'
      Origin = 'ctr_first_name'
      Size = 85
    end
    object memctr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sobrenome'
      FieldName = 'ctr_last_name'
      Origin = 'ctr_last_name'
      Size = 85
    end
    object memctr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_email'
      Origin = 'ctr_email'
      Size = 65
    end
    object memctr_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ctr_phone1'
      Origin = 'ctr_phone1'
      Size = 15
    end
    object memctr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'ctr_dt_birth'
      Origin = 'ctr_dt_birth'
    end
    object memctr_user_license: TWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Licen'#231'a'
      FieldName = 'ctr_user_license'
      Origin = 'ctr_user_license'
    end
    object memctr_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ctr_status'
      Origin = 'ctr_status'
    end
    object memctr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ctr_deleted_at'
      Origin = 'ctr_deleted_at'
    end
    object memctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_dt_registration'
      Origin = 'ctr_dt_registration'
    end
  end
  inherited PopupMenu_1: TPopupMenu [13]
    inherited Primeiro1: TMenuItem
      Enabled = False
    end
    inherited Anterior1: TMenuItem
      Enabled = False
    end
    inherited Prximo1: TMenuItem
      Enabled = False
    end
    inherited ltimo1: TMenuItem
      Enabled = False
    end
    inherited Inserir1: TMenuItem
      Enabled = False
    end
    inherited Excluir1: TMenuItem
      Enabled = False
    end
  end
  inherited cxImageList_1: TcxImageList [14]
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [15]
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
