inherited frm_parameter_slip: Tfrm_parameter_slip
  Caption = 'frm_parameter_slip'
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
    ClientRectBottom = 529
    ClientRectRight = 904
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        Width = 896
        Height = 495
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1prs_id: TcxGridDBColumn
            DataBinding.FieldName = 'prs_id'
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
          end
          object cxGrid_1DBTableView1bank_bnk_id: TcxGridDBColumn
            DataBinding.FieldName = 'bank_bnk_id'
          end
          object cxGrid_1DBTableView1prs_species_document: TcxGridDBColumn
            DataBinding.FieldName = 'prs_species_document'
          end
          object cxGrid_1DBTableView1prs_species_coin: TcxGridDBColumn
            DataBinding.FieldName = 'prs_species_coin'
          end
          object cxGrid_1DBTableView1prs_acceptance: TcxGridDBColumn
            DataBinding.FieldName = 'prs_acceptance'
          end
          object cxGrid_1DBTableView1prs_wallet: TcxGridDBColumn
            DataBinding.FieldName = 'prs_wallet'
          end
          object cxGrid_1DBTableView1prs_our_number: TcxGridDBColumn
            DataBinding.FieldName = 'prs_our_number'
          end
          object cxGrid_1DBTableView1prs_value_fine: TcxGridDBColumn
            DataBinding.FieldName = 'prs_value_fine'
          end
          object cxGrid_1DBTableView1prs_value_interest: TcxGridDBColumn
            DataBinding.FieldName = 'prs_value_interest'
          end
          object cxGrid_1DBTableView1prs_day_interest: TcxGridDBColumn
            DataBinding.FieldName = 'prs_day_interest'
          end
          object cxGrid_1DBTableView1prs_day_discount: TcxGridDBColumn
            DataBinding.FieldName = 'prs_day_discount'
          end
          object cxGrid_1DBTableView1prs_dt_discount: TcxGridDBColumn
            DataBinding.FieldName = 'prs_dt_discount'
          end
          object cxGrid_1DBTableView1prs_value_rebate: TcxGridDBColumn
            DataBinding.FieldName = 'prs_value_rebate'
          end
          object cxGrid_1DBTableView1prs_day_rebate: TcxGridDBColumn
            DataBinding.FieldName = 'prs_day_rebate'
          end
          object cxGrid_1DBTableView1prs_percentage_fine: TcxGridDBColumn
            DataBinding.FieldName = 'prs_percentage_fine'
          end
          object cxGrid_1DBTableView1prs_day_protest: TcxGridDBColumn
            DataBinding.FieldName = 'prs_day_protest'
          end
          object cxGrid_1DBTableView1prs_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'prs_dt_registration'
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
        Width = 896
        Height = 495
        ClientRectBottom = 489
        ClientRectRight = 890
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 888
            Height = 461
            ExplicitLeft = 16
            ExplicitTop = 32
            ExplicitWidth = 971
            ExplicitHeight = 577
            inherited dbedt_id: TcxDBTextEdit
              Left = 115
              DataBinding.DataField = 'prs_id'
              ExplicitLeft = 115
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 329
              DataBinding.DataField = 'prs_dt_registration'
              ExplicitLeft = 329
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
              Left = 115
              Top = 103
              DataBinding.DataField = 'bank_bnk_id'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'bnk_id'
              Properties.ListColumns = <
                item
                  FieldName = 'bnk_name'
                end
                item
                  FieldName = 'bnk_id'
                end>
              Properties.ListSource = ds_bank
              Properties.OnPopup = cxDBLookupComboBox1PropertiesPopup
              Style.HotTrack = False
              TabOrder = 2
              Width = 344
            end
            object cxDBComboBox1: TcxDBComboBox [3]
              Left = 115
              Top = 130
              DataBinding.DataField = 'prs_species_document'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'AS   - AP'#211'LICE DE SEGURO'
                'CH   - CHEQUE'
                'C    - CONTRATO'
                'CC   - CONTRIBUI'#199#195'O CONFEDERATIVA'
                'CS   - CONTRIBUI'#199#195'O/SEGUROS '
                'DAE  - D'#205'VIDA ATIVA DO ESTADO'
                'DAM  - D'#205'VIDA ATIVA DO MUNIC'#205'PIO'
                'DAU  - D'#205'VIDA ATIVA DA UNI'#195'O'
                'DMI  - DUPLICATA MERCANTIL/INDICA'#199#195'O'
                'DM   - DUPLICATA MERCANTIL'
                'DR   - DUPLICATA RURAL '
                'DS   - DUPLICATA DE SERVI'#199'O'
                'DSI  - DUPLICATA DE SERVI'#199'O/INDICA'#199#195'O'
                'F    - FATURA'
                'LC   - LETRA DE C'#194'MBIO'
                'ME   - MENSALIDADE ESCOLAR'
                'NCC  - NOTA DE CR'#201'DITO COMERCIAL '
                'NCE  - NOTA DE CR'#201'DITO DE EXPORTA'#199#195'O'
                'NCI  - NOTA DE CR'#201'DITO INSDUSTRIAL '
                'NCR  - NOTA DE CR'#201'DITO RURAL '
                'NT   - NOTA DE D'#201'BITO'
                'NP   - NOTA PROMISS'#211'RIA'
                'NS   - NOTA DE SEGURO'
                'PC   - PARCELA DE CONS'#211'RCIO'
                'RC   - RECIBO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [4]
              Left = 115
              Top = 238
              DataBinding.DataField = 'prs_day_interest'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBComboBox3: TcxDBComboBox [5]
              Left = 115
              Top = 157
              DataBinding.DataField = 'prs_acceptance'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'S - SIM'
                'N - N'#195'O')
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [6]
              Left = 329
              Top = 157
              DataBinding.DataField = 'prs_wallet'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 130
            end
            object cxDBDateEdit2: TcxDBDateEdit [7]
              Left = 115
              Top = 265
              DataBinding.DataField = 'prs_dt_discount'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBComboBox2: TcxDBComboBox [8]
              Left = 329
              Top = 130
              DataBinding.DataField = 'prs_species_coin'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'R$   - REAL'
                '$    - D'#211'LAR')
              Style.HotTrack = False
              TabOrder = 4
              Width = 130
            end
            object cxDBTextEdit2: TcxDBTextEdit [9]
              Left = 115
              Top = 184
              DataBinding.DataField = 'prs_our_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [10]
              Left = 115
              Top = 211
              DataBinding.DataField = 'prs_value_fine'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [11]
              Left = 329
              Top = 211
              DataBinding.DataField = 'prs_value_interest'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [12]
              Left = 329
              Top = 238
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit [13]
              Left = 329
              Top = 265
              DataBinding.DataField = 'prs_value_rebate'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object cxDBDateEdit3: TcxDBDateEdit [14]
              Left = 115
              Top = 292
              DataBinding.DataField = 'prs_day_rebate'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 14
              Width = 121
            end
            object cxDBDateEdit4: TcxDBDateEdit [15]
              Left = 115
              Top = 319
              DataBinding.DataField = 'prs_day_protest'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 16
              Width = 121
            end
            object cxDBCurrencyEdit4: TcxDBCurrencyEdit [16]
              Left = 329
              Top = 292
              DataBinding.DataField = 'prs_percentage_fine'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 15
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 3
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Banco'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 344
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Esp'#233'cie Documento'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Data Juros'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Aceite'
              Control = cxDBComboBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Carteira'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avBottom
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avBottom
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Data Desconto'
              Control = cxDBDateEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Esp'#233'cie Moeda'
              Control = cxDBComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Nosso N'#250'mero'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Valor Multa'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Valor Juros'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avBottom
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Valor Desconto'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avBottom
              CaptionOptions.Text = 'Valor Abatimento'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Data Abatimento'
              Control = cxDBDateEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Data Protesto'
              Control = cxDBDateEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = '% Multa'
              Control = cxDBCurrencyEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarDockControl_1: TdxBarDockControl
    Width = 910
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    AfterInsert = qryAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from parameter_slip'#10
      'where contract_ctr_id =:ctr_id'#13#10#10
      '')
    ParamData = <
      item
        Name = 'CTR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryprs_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      FieldName = 'prs_id'
      Origin = 'prs_id'
      ProviderFlags = [pfInWhere, pfInKey]
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
    object qryprs_species_document: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_species_document'
      Origin = 'prs_species_document'
      Required = True
      Size = 5
    end
    object qryprs_species_coin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_species_coin'
      Origin = 'prs_species_coin'
      Required = True
      Size = 5
    end
    object qryprs_acceptance: TStringField
      AutoGenerateValue = arDefault
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
      Required = True
      Size = 5
    end
    object qryprs_our_number: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'prs_our_number'
      Origin = 'prs_our_number'
      Required = True
    end
    object qryprs_value_fine: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Multa'
      FieldName = 'prs_value_fine'
      Origin = 'prs_value_fine'
      Precision = 12
    end
    object qryprs_value_interest: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Juros'
      FieldName = 'prs_value_interest'
      Origin = 'prs_value_interest'
      Precision = 12
    end
    object qryprs_day_interest: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Juros'
      FieldName = 'prs_day_interest'
      Origin = 'prs_day_interest'
    end
    object qryprs_day_discount: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descontos'
      FieldName = 'prs_day_discount'
      Origin = 'prs_day_discount'
    end
    object qryprs_dt_discount: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Desconto'
      FieldName = 'prs_dt_discount'
      Origin = 'prs_dt_discount'
    end
    object qryprs_value_rebate: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Desconto'
      FieldName = 'prs_value_rebate'
      Origin = 'prs_value_rebate'
      Precision = 12
    end
    object qryprs_day_rebate: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Desconto'
      FieldName = 'prs_day_rebate'
      Origin = 'prs_day_rebate'
    end
    object qryprs_percentage_fine: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = '% Multa'
      FieldName = 'prs_percentage_fine'
      Origin = 'prs_percentage_fine'
      Precision = 12
    end
    object qryprs_day_protest: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Protesto'
      FieldName = 'prs_day_protest'
      Origin = 'prs_day_protest'
    end
    object qryprs_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
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
    Left = 808
    Top = 120
    object qry_bankbnk_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      DisplayWidth = 15
      FieldName = 'bnk_id'
      Origin = 'bnk_id'
      ProviderFlags = [pfInWhere, pfInKey]
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
    Left = 840
    Top = 120
  end
end
