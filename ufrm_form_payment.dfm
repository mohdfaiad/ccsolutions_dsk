inherited frm_form_payment: Tfrm_form_payment
  Caption = 'Manuten'#231#227'o: Formas de Pagamentos'
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
          object cxGrid_1DBTableView1frp_id: TcxGridDBColumn
            DataBinding.FieldName = 'frp_id'
            Width = 75
          end
          object cxGrid_1DBTableView1bank_bnk_id: TcxGridDBColumn
            DataBinding.FieldName = 'bank_bnk_id'
            Width = 75
          end
          object cxGrid_1DBTableView1frp_name: TcxGridDBColumn
            DataBinding.FieldName = 'frp_name'
            Width = 250
          end
          object cxGrid_1DBTableView1frp_slip: TcxGridDBColumn
            DataBinding.FieldName = 'frp_slip'
            Width = 50
          end
          object cxGrid_1DBTableView1frp_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'frp_dt_registration'
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
              DataBinding.DataField = 'frp_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'frp_dt_registration'
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
              Left = 59
              Top = 130
              DataBinding.DataField = 'bank_bnk_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'bnk_id'
              Properties.ListColumns = <
                item
                  Width = 350
                  FieldName = 'bnk_name'
                end
                item
                  Width = 75
                  FieldName = 'bnk_id'
                end>
              Properties.ListSource = ds_bank
              Properties.OnPopup = cxDBLookupComboBox1PropertiesPopup
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 59
              Top = 103
              DataBinding.DataField = 'frp_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Banco'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Boletos'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 17
              Top = 38
              Caption = 'Boleto'
              DataBinding.DataField = 'frp_slip'
              DataBinding.DataSource = ds
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Style.HotTrack = False
              TabOrder = 0
              Transparent = True
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Par'#226'metros'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox2
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 99
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
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'Select * from form_payment ')
    object qryfrp_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      FieldName = 'frp_id'
      Origin = 'frp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrybank_bnk_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Banco ID'
      FieldName = 'bank_bnk_id'
      Origin = 'bank_bnk_id'
      Required = True
    end
    object qryfrp_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'frp_name'
      Origin = 'frp_name'
      Required = True
      Size = 25
    end
    object qryfrp_slip: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Boleto'
      FieldName = 'frp_slip'
      Origin = 'frp_slip'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryfrp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'frp_dt_registration'
      Origin = 'frp_dt_registration'
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
  object qry_bank: TFDQuery
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from bank')
    Left = 584
    Top = 96
    object qry_bankbnk_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      DisplayWidth = 15
      FieldName = 'bnk_id'
      Origin = 'bnk_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_bankcontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qry_bankbnk_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Banco'
      FieldName = 'bnk_name'
      Origin = 'bnk_name'
      Size = 50
    end
    object qry_bankbnk_code: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_code'
      Origin = 'bnk_code'
      Size = 3
    end
    object qry_bankbnk_agency_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_agency_number'
      Origin = 'bnk_agency_number'
      Size = 10
    end
    object qry_bankbnk_agency_digit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_agency_digit'
      Origin = 'bnk_agency_digit'
      Size = 5
    end
    object qry_bankbnk_account_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_account_number'
      Origin = 'bnk_account_number'
      Size = 10
    end
    object qry_bankbnk_account_digit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_account_digit'
      Origin = 'bnk_account_digit'
      Size = 5
    end
    object qry_bankbnk_swift_code: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_swift_code'
      Origin = 'bnk_swift_code'
      Size = 15
    end
    object qry_bankbnk_iban_code: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_iban_code'
      Origin = 'bnk_iban_code'
      Size = 35
    end
    object qry_bankbnk_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_zipcode'
      Origin = 'bnk_add_bus_zipcode'
      Size = 9
    end
    object qry_bankbnk_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_address'
      Origin = 'bnk_add_bus_address'
      Size = 50
    end
    object qry_bankbnk_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_number'
      Origin = 'bnk_add_bus_number'
      Size = 5
    end
    object qry_bankbnk_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_street'
      Origin = 'bnk_add_bus_street'
      Size = 45
    end
    object qry_bankbnk_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_complement'
      Origin = 'bnk_add_bus_complement'
      Size = 50
    end
    object qry_bankbnk_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_city'
      Origin = 'bnk_add_bus_city'
      Size = 35
    end
    object qry_bankbnk_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_state'
      Origin = 'bnk_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qry_bankbnk_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_add_bus_country'
      Origin = 'bnk_add_bus_country'
      Size = 25
    end
    object qry_bankbnk_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_phone1'
      Origin = 'bnk_phone1'
      Size = 15
    end
    object qry_bankbnk_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_phone2'
      Origin = 'bnk_phone2'
      Size = 15
    end
    object qry_bankbnk_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_phone3'
      Origin = 'bnk_phone3'
      Size = 15
    end
    object qry_bankbnk_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_phone4'
      Origin = 'bnk_phone4'
      Size = 15
    end
    object qry_bankbnk_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_contact'
      Origin = 'bnk_contact'
      Size = 25
    end
    object qry_bankbnk_code_transferor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_code_transferor'
      Origin = 'bnk_code_transferor'
      Size = 25
    end
    object qry_bankbnk_code_agreement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_code_agreement'
      Origin = 'bnk_code_agreement'
      Size = 10
    end
    object qry_bankbnk_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_dt_registration'
      Origin = 'bnk_dt_registration'
    end
  end
  object ds_bank: TDataSource
    DataSet = qry_bank
    Left = 616
    Top = 96
  end
end
