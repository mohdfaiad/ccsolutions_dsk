inherited frm_parameter_slip: Tfrm_parameter_slip
  Caption = 'Manuten'#231#227'o: Parametros de Boletos'
  ClientHeight = 590
  ClientWidth = 910
  OnClose = FormClose
  ExplicitWidth = 926
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Width = 910
    Height = 535
    Properties.ActivePage = cxTabSheet_2
    ExplicitWidth = 910
    ExplicitHeight = 535
    ClientRectBottom = 529
    ClientRectRight = 904
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitWidth = 902
      ExplicitHeight = 501
      inherited cxGrid_1: TcxGrid
        Width = 896
        Height = 495
        ExplicitWidth = 896
        ExplicitHeight = 495
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1prs_id: TcxGridDBColumn
            DataBinding.FieldName = 'prs_id'
            Width = 75
          end
          object cxGrid_1DBTableView1bank_bnk_id: TcxGridDBColumn
            DataBinding.FieldName = 'bank_bnk_id'
            Width = 75
          end
          object cxGrid_1DBTableView1prs_species_document: TcxGridDBColumn
            DataBinding.FieldName = 'prs_species_document'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_species_coin: TcxGridDBColumn
            DataBinding.FieldName = 'prs_species_coin'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_acceptance: TcxGridDBColumn
            DataBinding.FieldName = 'prs_acceptance'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_wallet: TcxGridDBColumn
            DataBinding.FieldName = 'prs_wallet'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_our_number: TcxGridDBColumn
            DataBinding.FieldName = 'prs_our_number'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_value_fine: TcxGridDBColumn
            DataBinding.FieldName = 'prs_value_fine'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_value_interest: TcxGridDBColumn
            DataBinding.FieldName = 'prs_value_interest'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_value_discount: TcxGridDBColumn
            DataBinding.FieldName = 'prs_value_discount'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_day_interest: TcxGridDBColumn
            DataBinding.FieldName = 'prs_day_interest'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_day_discount: TcxGridDBColumn
            DataBinding.FieldName = 'prs_day_discount'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_day_protest: TcxGridDBColumn
            DataBinding.FieldName = 'prs_day_protest'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'prs_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 902
      ExplicitHeight = 501
      inherited cxPageControl_2: TcxPageControl
        Width = 896
        Height = 495
        ExplicitWidth = 896
        ExplicitHeight = 495
        ClientRectBottom = 489
        ClientRectRight = 890
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 888
          ExplicitHeight = 461
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 888
            Height = 461
            ExplicitWidth = 888
            ExplicitHeight = 461
            inherited dbedt_id: TcxDBTextEdit
              Left = 79
              DataBinding.DataField = 'prs_id'
              ExplicitLeft = 79
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 278
              DataBinding.DataField = 'prs_dt_registration'
              ExplicitLeft = 278
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
              Left = 79
              Top = 157
              DataBinding.DataField = 'prs_value_fine'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
              Left = 278
              Top = 157
              DataBinding.DataField = 'prs_value_interest'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 130
            end
            object cxDBCurrencyEdit4: TcxDBCurrencyEdit [4]
              Left = 466
              Top = 157
              DataBinding.DataField = 'prs_value_discount'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBSpinEdit1: TcxDBSpinEdit [5]
              Left = 79
              Top = 184
              DataBinding.DataField = 'prs_day_interest'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBSpinEdit2: TcxDBSpinEdit [6]
              Left = 278
              Top = 184
              DataBinding.DataField = 'prs_day_discount'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 130
            end
            object cxDBSpinEdit3: TcxDBSpinEdit [7]
              Left = 466
              Top = 184
              DataBinding.DataField = 'prs_day_protest'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [8]
              Left = 79
              Top = 211
              DataBinding.DataField = 'prs_instruction1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 14
              Width = 697
            end
            object cxDBTextEdit6: TcxDBTextEdit [9]
              Left = 79
              Top = 238
              DataBinding.DataField = 'prs_instruction2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 15
              Width = 697
            end
            object cxDBTextEdit7: TcxDBTextEdit [10]
              Left = 79
              Top = 265
              DataBinding.DataField = 'prs_instruction3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 16
              Width = 697
            end
            object cxDBMemo1: TcxDBMemo [11]
              Left = 79
              Top = 292
              DataBinding.DataField = 'prs_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 17
              Height = 89
              Width = 697
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [12]
              Left = 79
              Top = 103
              DataBinding.DataField = 'bank_bnk_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'bnk_id'
              Properties.ListColumns = <
                item
                  Width = 250
                  FieldName = 'bnk_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'bnk_id'
                end>
              Properties.ListSource = ds_bank
              Properties.OnPopup = cxDBLookupComboBox1PropertiesPopup
              Style.HotTrack = False
              TabOrder = 2
              Width = 329
            end
            object cxDBTextEdit3: TcxDBTextEdit [13]
              Left = 79
              Top = 130
              DataBinding.DataField = 'prs_species_document'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [14]
              Left = 278
              Top = 130
              DataBinding.DataField = 'prs_species_coin'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 130
            end
            object cxDBTextEdit1: TcxDBTextEdit [15]
              Left = 466
              Top = 130
              DataBinding.DataField = 'prs_wallet'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [16]
              Left = 655
              Top = 130
              DataBinding.DataField = 'prs_our_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBComboBox1: TcxDBComboBox [17]
              Left = 655
              Top = 184
              DataBinding.DataField = 'prs_acceptance'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'S'
                'N')
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avBottom
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avBottom
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = '%  Multa'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = '% Juros'
              Control = cxDBCurrencyEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = '% Desc.'
              Control = cxDBCurrencyEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dias Juro'
              Control = cxDBSpinEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'Dias Desc.'
              Control = cxDBSpinEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'Dias Prot.'
              Control = cxDBSpinEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignVert = avClient
              CaptionOptions.Text = 'Instru'#231#227'o 1'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 697
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Instru'#231#227'o 2'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 697
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Instru'#231#227'o 3'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 697
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Banco'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 329
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Esp'#233'c. Doc.'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Esp'#233'c. Moeda'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Carteira'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Nosso N'#250'm.'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'Aceite'
              Control = cxDBComboBox1
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
  inherited dxBarDockControl_1: TdxBarDockControl
    Width = 910
    ExplicitWidth = 910
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    AfterDelete = qryAfterDelete
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from parameter_slip'#10
      'where contract_ctr_id =:ctr_id'#13#10#10
      '')
    ParamData = <
      item
        Name = 'CTR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object qryprs_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'prs_id'
      Origin = 'prs_id'
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
    end
    object qryprs_species_document: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Esp'#233'c. Doc.'
      FieldName = 'prs_species_document'
      Origin = 'prs_species_document'
      Size = 5
    end
    object qryprs_species_coin: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Esp'#233'c. Moeda'
      FieldName = 'prs_species_coin'
      Origin = 'prs_species_coin'
      Size = 5
    end
    object qryprs_acceptance: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Aceite'
      FieldName = 'prs_acceptance'
      Origin = 'prs_acceptance'
      FixedChar = True
      Size = 1
    end
    object qryprs_wallet: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Carteira'
      FieldName = 'prs_wallet'
      Origin = 'prs_wallet'
      Size = 5
    end
    object qryprs_our_number: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nosso N'#250'm.'
      FieldName = 'prs_our_number'
      Origin = 'prs_our_number'
    end
    object qryprs_value_fine: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = '% Multa'
      FieldName = 'prs_value_fine'
      Origin = 'prs_value_fine'
      Precision = 12
    end
    object qryprs_value_interest: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = '% Juros'
      FieldName = 'prs_value_interest'
      Origin = 'prs_value_interest'
      Precision = 12
    end
    object qryprs_value_discount: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = '% Desc.'
      FieldName = 'prs_value_discount'
      Origin = 'prs_value_discount'
      Precision = 12
    end
    object qryprs_day_interest: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dias Juro'
      FieldName = 'prs_day_interest'
      Origin = 'prs_day_interest'
    end
    object qryprs_day_discount: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dias Desc.'
      FieldName = 'prs_day_discount'
      Origin = 'prs_day_discount'
    end
    object qryprs_day_protest: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dias Prot.'
      FieldName = 'prs_day_protest'
      Origin = 'prs_day_protest'
    end
    object qryprs_instruction1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Instru'#231#227'o 1'
      FieldName = 'prs_instruction1'
      Origin = 'prs_instruction1'
      Size = 100
    end
    object qryprs_instruction2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Instru'#231#227'o 2'
      FieldName = 'prs_instruction2'
      Origin = 'prs_instruction2'
      Size = 100
    end
    object qryprs_instruction3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Instru'#231#227'o 3'
      FieldName = 'prs_instruction3'
      Origin = 'prs_instruction3'
      Size = 100
    end
    object qryprs_description: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'prs_description'
      Origin = 'prs_description'
      Size = 255
    end
    object qryprs_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'prs_dt_registration'
      Origin = 'prs_dt_registration'
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
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
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
