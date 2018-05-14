inherited frm_bank: Tfrm_bank
  Caption = 'Manuten'#231#227'o: Bancos'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 0
    Top = 256
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1bnk_id: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_id'
            Width = 75
          end
          object cxGrid_1DBTableView1bnk_name: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_name'
            Width = 250
          end
          object cxGrid_1DBTableView1bnk_code: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_code'
            Width = 50
          end
          object cxGrid_1DBTableView1bnk_agency_number: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_agency_number'
            Width = 75
          end
          object cxGrid_1DBTableView1bnk_agency_digit: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_agency_digit'
            Width = 55
          end
          object cxGrid_1DBTableView1bnk_account_number: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_account_number'
            Width = 75
          end
          object cxGrid_1DBTableView1bnk_account_digit: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_account_digit'
            Width = 55
          end
          object cxGrid_1DBTableView1bnk_swift_code: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_swift_code'
            Width = 100
          end
          object cxGrid_1DBTableView1bnk_iban_code: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_iban_code'
            Width = 100
          end
          object cxGrid_1DBTableView1bnk_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1bnk_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_address'
            Width = 200
          end
          object cxGrid_1DBTableView1bnk_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_number'
            Width = 50
          end
          object cxGrid_1DBTableView1bnk_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_street'
            Width = 200
          end
          object cxGrid_1DBTableView1bnk_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_complement'
            Width = 200
          end
          object cxGrid_1DBTableView1bnk_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_city'
            Width = 150
          end
          object cxGrid_1DBTableView1bnk_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_state'
            Width = 50
          end
          object cxGrid_1DBTableView1bnk_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_add_bus_country'
            Width = 150
          end
          object cxGrid_1DBTableView1bnk_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1bnk_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1bnk_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1bnk_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1bnk_contact: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1bnk_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_dt_registration'
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
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 80
              DataBinding.DataField = 'bnk_id'
              ExplicitLeft = 80
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 262
              DataBinding.DataField = 'bnk_dt_registration'
              ExplicitLeft = 262
            end
            object cxDBTextEdit3: TcxDBTextEdit [2]
              Left = 80
              Top = 130
              DataBinding.DataField = 'bnk_agency_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit8: TcxDBTextEdit [3]
              Left = 80
              Top = 157
              DataBinding.DataField = 'bnk_swift_code'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit [4]
              Left = 262
              Top = 157
              DataBinding.DataField = 'bnk_iban_code'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 130
            end
            object cxDBTextEdit1: TcxDBTextEdit [5]
              Left = 80
              Top = 103
              DataBinding.DataField = 'bnk_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 312
            end
            object cxDBTextEdit2: TcxDBTextEdit [6]
              Left = 428
              Top = 103
              DataBinding.DataField = 'bnk_code'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [7]
              Left = 262
              Top = 130
              DataBinding.DataField = 'bnk_agency_digit'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 130
            end
            object cxDBTextEdit5: TcxDBTextEdit [8]
              Left = 428
              Top = 130
              DataBinding.DataField = 'bnk_account_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit [9]
              Left = 600
              Top = 130
              DataBinding.DataField = 'bnk_account_digit'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'AG'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'C'#243'd. SWIFT'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'C'#243'd. IBAN'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'AG D'#237'g.'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'C/C'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'C/C D'#237'g.'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 61
              Top = 92
              DataBinding.DataField = 'bnk_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit26: TcxDBTextEdit
              Left = 226
              Top = 92
              DataBinding.DataField = 'bnk_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit27: TcxDBTextEdit
              Left = 386
              Top = 92
              DataBinding.DataField = 'bnk_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit29: TcxDBTextEdit
              Left = 551
              Top = 65
              DataBinding.DataField = 'bnk_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 194
            end
            object cxDBButtonEdit2: TcxDBButtonEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'bnk_add_bus_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'bnk_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 226
              Top = 65
              DataBinding.DataField = 'bnk_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 386
              Top = 65
              DataBinding.DataField = 'bnk_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 61
              Top = 157
              DataBinding.DataField = 'bnk_phone1'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 61
              Top = 184
              DataBinding.DataField = 'bnk_contact'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 226
              Top = 157
              DataBinding.DataField = 'bnk_phone2'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 386
              Top = 157
              DataBinding.DataField = 'bnk_phone3'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 551
              Top = 157
              DataBinding.DataField = 'bnk_phone4'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Endere'#231'o'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit25
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = cxDBTextEdit26
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit27
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit29
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 194
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit21
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit22
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit23
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 4'
              Control = cxDBTextEdit12
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
      'select * from bank')
    object qrybnk_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'bnk_id'
      Origin = 'bnk_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrybnk_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'bnk_name'
      Origin = 'bnk_name'
      Size = 50
    end
    object qrybnk_code: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'bnk_code'
      Origin = 'bnk_code'
      Size = 3
    end
    object qrybnk_agency_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'AG'
      FieldName = 'bnk_agency_number'
      Origin = 'bnk_agency_number'
      Size = 10
    end
    object qrybnk_agency_digit: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'AG D'#237'g.'
      FieldName = 'bnk_agency_digit'
      Origin = 'bnk_agency_digit'
      Size = 5
    end
    object qrybnk_account_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C/C'
      FieldName = 'bnk_account_number'
      Origin = 'bnk_account_number'
      Size = 10
    end
    object qrybnk_account_digit: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C/C D'#237'g.'
      FieldName = 'bnk_account_digit'
      Origin = 'bnk_account_digit'
      Size = 5
    end
    object qrybnk_swift_code: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. SWIFT'
      FieldName = 'bnk_swift_code'
      Origin = 'bnk_swift_code'
      Size = 15
    end
    object qrybnk_iban_code: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. IBAN'
      FieldName = 'bnk_iban_code'
      Origin = 'bnk_iban_code'
      Size = 35
    end
    object qrybnk_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'bnk_add_bus_zipcode'
      Origin = 'bnk_add_bus_zipcode'
      Size = 9
    end
    object qrybnk_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'bnk_add_bus_address'
      Origin = 'bnk_add_bus_address'
      Size = 50
    end
    object qrybnk_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'bnk_add_bus_number'
      Origin = 'bnk_add_bus_number'
      Size = 5
    end
    object qrybnk_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'bnk_add_bus_street'
      Origin = 'bnk_add_bus_street'
      Size = 45
    end
    object qrybnk_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'bnk_add_bus_complement'
      Origin = 'bnk_add_bus_complement'
      Size = 50
    end
    object qrybnk_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'bnk_add_bus_city'
      Origin = 'bnk_add_bus_city'
      Size = 35
    end
    object qrybnk_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'bnk_add_bus_state'
      Origin = 'bnk_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qrybnk_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'bnk_add_bus_country'
      Origin = 'bnk_add_bus_country'
      Size = 25
    end
    object qrybnk_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'bnk_phone1'
      Origin = 'bnk_phone1'
      Size = 15
    end
    object qrybnk_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'bnk_phone2'
      Origin = 'bnk_phone2'
      Size = 15
    end
    object qrybnk_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'bnk_phone3'
      Origin = 'bnk_phone3'
      Size = 15
    end
    object qrybnk_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 4'
      FieldName = 'bnk_phone4'
      Origin = 'bnk_phone4'
      Size = 15
    end
    object qrybnk_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'bnk_contact'
      Origin = 'bnk_contact'
      Size = 25
    end
    object qrybnk_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'bnk_dt_registration'
      Origin = 'bnk_dt_registration'
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
  inherited ACBrCEP_1: TACBrCEP
    OnBuscaEfetuada = ACBrCEP_1BuscaEfetuada
  end
end
