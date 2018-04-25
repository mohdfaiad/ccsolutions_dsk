inherited frm_contract: Tfrm_contract
  Caption = 'Manuten'#231#227'o: Contrato'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ctr_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ctr_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ctr_email: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_email'
            Width = 200
          end
          object cxGrid_1DBTableView1ctr_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_dt_registration'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_dt_birth_open: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_dt_birth_open'
            Width = 100
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 63
              DataBinding.DataField = 'ctr_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 244
              DataBinding.DataField = 'ctr_dt_registration'
              ExplicitLeft = 244
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 63
              Top = 103
              DataBinding.DataField = 'ctr_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 302
            end
            object cxDBTextEdit2: TcxDBTextEdit [3]
              Left = 63
              Top = 130
              DataBinding.DataField = 'ctr_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 302
            end
            object cxDBTextEdit3: TcxDBTextEdit [4]
              Left = 63
              Top = 157
              DataBinding.DataField = 'ctr_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 302
            end
            object cxDBDateEdit1: TcxDBDateEdit [5]
              Left = 244
              Top = 184
              DataBinding.DataField = 'ctr_dt_birth_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [6]
              Left = 63
              Top = 184
              DataBinding.DataField = 'ctr_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Fantasia'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              CaptionOptions.Text = 'Dt. Abert.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
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
  inherited PopupMenu_1: TPopupMenu
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
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    IndexFieldNames = 'ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from contract')
    object qryctr_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryctr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'ctr_first_name'
      Origin = 'ctr_first_name'
      Size = 50
    end
    object qryctr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'ctr_last_name'
      Origin = 'ctr_last_name'
      Size = 50
    end
    object qryctr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_email'
      Origin = 'ctr_email'
      Size = 65
    end
    object qryctr_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ctr_phone1'
      Origin = 'ctr_phone1'
      Size = 15
    end
    object qryctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_dt_registration'
      Origin = 'ctr_dt_registration'
    end
    object qryctr_dt_birth_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Abert.'
      FieldName = 'ctr_dt_birth_open'
      Origin = 'ctr_dt_birth_open'
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
end
