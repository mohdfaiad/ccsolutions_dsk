inherited frm_phonebook: Tfrm_phonebook
  Caption = 'Manuten'#231#227'o: Agenda Telef'#244'nica'
  OnClose = FormClose
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
          object cxGrid_1DBTableView1pho_id: TcxGridDBColumn
            DataBinding.FieldName = 'pho_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1pho_name: TcxGridDBColumn
            DataBinding.FieldName = 'pho_name'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_contact: TcxGridDBColumn
            DataBinding.FieldName = 'pho_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'pho_dt_registration'
            Width = 125
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
              Left = 68
              DataBinding.DataField = 'pho_id'
              ExplicitLeft = 68
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 241
              DataBinding.DataField = 'pho_dt_registration'
              ExplicitLeft = 241
            end
            object cxDBTextEdit2: TcxDBTextEdit [2]
              Left = 68
              Top = 130
              DataBinding.DataField = 'pho_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 68
              Top = 103
              DataBinding.DataField = 'pho_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit [4]
              Left = 241
              Top = 103
              DataBinding.DataField = 'pho_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit [5]
              Left = 68
              Top = 157
              AutoSize = False
              DataBinding.DataField = 'pho_annotation'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Height = 21
              Width = 603
            end
            object cxDBTextEdit3: TcxDBTextEdit [6]
              Left = 241
              Top = 130
              DataBinding.DataField = 'pho_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [7]
              Left = 400
              Top = 130
              DataBinding.DataField = 'pho_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [8]
              Left = 550
              Top = 130
              DataBinding.DataField = 'pho_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'Anota'#231#227'o'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 603
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
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
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from phonebook')
    object qrypho_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'pho_id'
      Origin = 'pho_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrypho_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'pho_name'
      Origin = 'pho_name'
      Size = 50
    end
    object qrypho_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'pho_contact'
      Origin = 'pho_contact'
      Size = 25
    end
    object qrypho_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'pho_phone1'
      Origin = 'pho_phone1'
      Size = 15
    end
    object qrypho_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'pho_phone2'
      Origin = 'pho_phone2'
      Size = 15
    end
    object qrypho_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'pho_phone3'
      Origin = 'pho_phone3'
      Size = 15
    end
    object qrypho_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 4'
      FieldName = 'pho_phone4'
      Origin = 'pho_phone4'
      Size = 15
    end
    object qrypho_annotation: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#227'o'
      FieldName = 'pho_annotation'
      Origin = 'pho_annotation'
      Size = 255
    end
    object qrypho_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pho_dt_registration'
      Origin = 'pho_dt_registration'
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
end
