inherited frm_billreceive_slip: Tfrm_billreceive_slip
  Caption = 'frm_billreceive_slip'
  ClientHeight = 577
  ExplicitHeight = 616
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 522
    ExplicitHeight = 522
    ClientRectBottom = 516
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 488
      inherited cxGrid_1: TcxGrid
        Height = 482
        ExplicitHeight = 482
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          DataController.Options = [dcoAssignMasterDetailKeys, dcoSaveExpanding]
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = True
          object cxGrid_1DBTableView1selecionado: TcxGridDBColumn
            DataBinding.FieldName = 'selecionado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'enterprise_ent_id'
          end
          object cxGrid_1DBTableView1brc_dt_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'brc_dt_maturity'
          end
          object cxGrid_1DBTableView1brc_dt_emission: TcxGridDBColumn
            DataBinding.FieldName = 'brc_dt_emission'
          end
          object cxGrid_1DBTableView1brc_document: TcxGridDBColumn
            DataBinding.FieldName = 'brc_document'
          end
          object cxGrid_1DBTableView1brc_value: TcxGridDBColumn
            DataBinding.FieldName = 'brc_value'
          end
          object cxGrid_1DBTableView1brc_discount: TcxGridDBColumn
            DataBinding.FieldName = 'brc_discount'
          end
          object cxGrid_1DBTableView1brc_status: TcxGridDBColumn
            DataBinding.FieldName = 'brc_status'
          end
          object cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ent_first_name'
          end
          object cxGrid_1DBTableView1ent_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_street'
          end
          object cxGrid_1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_zipcode'
          end
          object cxGrid_1DBTableView1ent_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_city'
          end
          object cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'ent_cnpj'
          end
          object cxGrid_1DBTableView1ent_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_complement'
          end
          object cxGrid_1DBTableView1ent_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_address'
          end
          object cxGrid_1DBTableView1ent_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_number'
          end
          object cxGrid_1DBTableView1ent_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_state'
          end
          object cxGrid_1DBTableView1ent_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone1'
          end
          object cxGrid_1DBTableView1bnk_agency_number: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_agency_number'
          end
          object cxGrid_1DBTableView1bnk_agency_digit: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_agency_digit'
          end
          object cxGrid_1DBTableView1bnk_code_transferor: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_code_transferor'
          end
          object cxGrid_1DBTableView1bnk_account_number: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_account_number'
          end
          object cxGrid_1DBTableView1bnk_account_digit: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_account_digit'
          end
          object cxGrid_1DBTableView1bnk_code_agreement: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_code_agreement'
          end
          object cxGrid_1DBTableView1cli_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'cli_first_name'
          end
          object cxGrid_1DBTableView1cli_cpfcnpj: TcxGridDBColumn
            DataBinding.FieldName = 'cli_cpfcnpj'
          end
          object cxGrid_1DBTableView1cli_add_bil_address: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_address'
          end
          object cxGrid_1DBTableView1cli_add_bil_number: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_number'
          end
          object cxGrid_1DBTableView1cli_add_bil_street: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_street'
          end
          object cxGrid_1DBTableView1cli_add_bil_city: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_city'
          end
          object cxGrid_1DBTableView1cli_add_bil_state: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_state'
          end
          object cxGrid_1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_zipcode'
          end
          object cxGrid_1DBTableView1brc_code_bar: TcxGridDBColumn
            DataBinding.FieldName = 'brc_code_bar'
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
          object cxGrid_1DBTableView1prs_value_fine: TcxGridDBColumn
            DataBinding.FieldName = 'prs_value_fine'
          end
          object cxGrid_1DBTableView1brc_id: TcxGridDBColumn
            DataBinding.FieldName = 'brc_id'
          end
          object cxGrid_1DBTableView1brc_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'brc_dt_registration'
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 488
      inherited cxPageControl_2: TcxPageControl
        Height = 482
        ExplicitHeight = 482
        ClientRectBottom = 476
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 448
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 448
            ExplicitHeight = 448
            object cxGrid1: TcxGrid [0]
              Left = 17
              Top = 103
              Width = 561
              Height = 200
              TabOrder = 2
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = ds
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1selecionado: TcxGridDBColumn
                  DataBinding.FieldName = 'selecionado'
                end
                object cxGrid1DBTableView1enterprise_ent_id: TcxGridDBColumn
                  DataBinding.FieldName = 'enterprise_ent_id'
                end
                object cxGrid1DBTableView1brc_dt_maturity: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_dt_maturity'
                end
                object cxGrid1DBTableView1brc_dt_emission: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_dt_emission'
                end
                object cxGrid1DBTableView1brc_document: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_document'
                end
                object cxGrid1DBTableView1brc_value: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_value'
                end
                object cxGrid1DBTableView1brc_discount: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_discount'
                end
                object cxGrid1DBTableView1brc_status: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_status'
                end
                object cxGrid1DBTableView1ent_first_name: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_first_name'
                end
                object cxGrid1DBTableView1ent_add_bus_street: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_add_bus_street'
                end
                object cxGrid1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_add_bus_zipcode'
                end
                object cxGrid1DBTableView1ent_add_bus_city: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_add_bus_city'
                end
                object cxGrid1DBTableView1ent_cnpj: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_cnpj'
                end
                object cxGrid1DBTableView1ent_add_bus_complement: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_add_bus_complement'
                end
                object cxGrid1DBTableView1ent_add_bus_address: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_add_bus_address'
                end
                object cxGrid1DBTableView1ent_add_bus_number: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_add_bus_number'
                end
                object cxGrid1DBTableView1ent_add_bus_state: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_add_bus_state'
                end
                object cxGrid1DBTableView1ent_phone1: TcxGridDBColumn
                  DataBinding.FieldName = 'ent_phone1'
                end
                object cxGrid1DBTableView1bnk_agency_number: TcxGridDBColumn
                  DataBinding.FieldName = 'bnk_agency_number'
                end
                object cxGrid1DBTableView1bnk_agency_digit: TcxGridDBColumn
                  DataBinding.FieldName = 'bnk_agency_digit'
                end
                object cxGrid1DBTableView1bnk_code_transferor: TcxGridDBColumn
                  DataBinding.FieldName = 'bnk_code_transferor'
                end
                object cxGrid1DBTableView1bnk_account_number: TcxGridDBColumn
                  DataBinding.FieldName = 'bnk_account_number'
                end
                object cxGrid1DBTableView1bnk_account_digit: TcxGridDBColumn
                  DataBinding.FieldName = 'bnk_account_digit'
                end
                object cxGrid1DBTableView1bnk_code_agreement: TcxGridDBColumn
                  DataBinding.FieldName = 'bnk_code_agreement'
                end
                object cxGrid1DBTableView1cli_first_name: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_first_name'
                end
                object cxGrid1DBTableView1cli_cpfcnpj: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_cpfcnpj'
                end
                object cxGrid1DBTableView1cli_add_bil_address: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_add_bil_address'
                end
                object cxGrid1DBTableView1cli_add_bil_number: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_add_bil_number'
                end
                object cxGrid1DBTableView1cli_add_bil_street: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_add_bil_street'
                end
                object cxGrid1DBTableView1cli_add_bil_city: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_add_bil_city'
                end
                object cxGrid1DBTableView1cli_add_bil_state: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_add_bil_state'
                end
                object cxGrid1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn
                  DataBinding.FieldName = 'cli_add_bil_zipcode'
                end
                object cxGrid1DBTableView1brc_code_bar: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_code_bar'
                end
                object cxGrid1DBTableView1prs_species_document: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_species_document'
                end
                object cxGrid1DBTableView1prs_species_coin: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_species_coin'
                end
                object cxGrid1DBTableView1prs_acceptance: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_acceptance'
                end
                object cxGrid1DBTableView1prs_wallet: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_wallet'
                end
                object cxGrid1DBTableView1prs_value_fine: TcxGridDBColumn
                  DataBinding.FieldName = 'prs_value_fine'
                end
                object cxGrid1DBTableView1brc_id: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_id'
                end
                object cxGrid1DBTableView1brc_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'brc_dt_registration'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object editEspecieDoc: TcxTextEdit [1]
              Left = 83
              Top = 347
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            inherited dbedt_id: TcxDBTextEdit
              Left = 83
              DataBinding.DataField = 'brc_id'
              ExplicitLeft = 83
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 286
              DataBinding.DataField = 'brc_dt_registration'
              ExplicitLeft = 286
            end
            object editInstrucao1: TcxTextEdit [4]
              Left = 83
              Top = 374
              Style.HotTrack = False
              TabOrder = 6
              Width = 495
            end
            object editEspecieMoeda: TcxTextEdit [5]
              Left = 286
              Top = 347
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object editCarteira: TcxTextEdit [6]
              Left = 457
              Top = 347
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object editInstrucao2: TcxTextEdit [7]
              Left = 83
              Top = 401
              Style.HotTrack = False
              TabOrder = 7
              Width = 495
            end
            object editInstrucao3: TcxTextEdit [8]
              Left = 83
              Top = 428
              Style.HotTrack = False
              TabOrder = 8
              Width = 495
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 2
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              AlignHorz = ahClient
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Informa'#231#245'es do Boleto'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Esp'#233'cie Doc.'
              Control = editEspecieDoc
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Instru'#231#227'o 1'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              Control = editInstrucao1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 495
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Esp'#233'cie Moeda'
              Control = editEspecieMoeda
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Carteira'
              Control = editCarteira
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Instru'#231#227'o 2'
              Control = editInstrucao2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'Instru'#231#227'o 3'
              Control = editInstrucao3
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
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarManager_1Bar6: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Gerar boleto'
      Category = 0
      Hint = 'Gerar boleto'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT '#39'N'#39' as selecionado, enterprise_ent_id,brc_dt_maturity,'#10'br' +
        'c_dt_emission,brc_document,'#10'brc_value,brc_discount,'#10'brc_status,'
      
        'bnk_agency_number,bnk_agency_digit,bnk_code_transferor,'#10'bnk_acco' +
        'unt_number,bnk_account_digit,'
      
        'bnk_code_agreement,brc_code_bar,prs_species_document,'#10'prs_specie' +
        's_coin,prs_acceptance,prs_wallet,'
      
        'prs_value_fine,brc_id'#10',brc_dt_registration,bnk_code,prs_our_numb' +
        'er,form_payment_frp_id,client_cli_id,'
      
        'brc_slip_instruction1,brc_slip_instruction2,brc_slip_instruction' +
        '3  from billreceive'#10#10
      'inner join form_payment on frp_id = form_payment_frp_id'
      'left join bank on bnk_id = form_payment.bank_bnk_id'#10
      'inner join parameter_slip on parameter_slip.bank_bnk_id = bnk_id'
      'where frp_slip = '#39'S'#39)
    object qryselecionado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'selecionado'
      Origin = 'selecionado'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryenterprise_ent_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
    end
    object qrybrc_dt_maturity: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'brc_dt_maturity'
      Origin = 'brc_dt_maturity'
    end
    object qrybrc_dt_emission: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'brc_dt_emission'
      Origin = 'brc_dt_emission'
    end
    object qrybrc_document: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_document'
      Origin = 'brc_document'
      Size = 50
    end
    object qrybrc_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'brc_value'
      Origin = 'brc_value'
      Precision = 12
    end
    object qrybrc_discount: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'brc_discount'
      Origin = 'brc_discount'
      Precision = 12
    end
    object qrybrc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_status'
      Origin = 'brc_status'
      FixedChar = True
      Size = 1
    end
    object qrybnk_agency_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_agency_number'
      Origin = 'bnk_agency_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrybnk_agency_digit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_agency_digit'
      Origin = 'bnk_agency_digit'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qrybnk_code_transferor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_code_transferor'
      Origin = 'bnk_code_transferor'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qrybnk_account_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_account_number'
      Origin = 'bnk_account_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrybnk_account_digit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_account_digit'
      Origin = 'bnk_account_digit'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qrybnk_code_agreement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_code_agreement'
      Origin = 'bnk_code_agreement'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrybrc_code_bar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_code_bar'
      Origin = 'brc_code_bar'
      Size = 50
    end
    object qryprs_species_document: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_species_document'
      Origin = 'prs_species_document'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qryprs_species_coin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_species_coin'
      Origin = 'prs_species_coin'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qryprs_acceptance: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_acceptance'
      Origin = 'prs_acceptance'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryprs_wallet: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_wallet'
      Origin = 'prs_wallet'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qryprs_value_fine: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'prs_value_fine'
      Origin = 'prs_value_fine'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object qrybrc_id: TFDAutoIncField
      FieldName = 'brc_id'
      Origin = 'brc_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrybrc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'brc_dt_registration'
      Origin = 'brc_dt_registration'
    end
    object qrybnk_code: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bnk_code'
      Origin = 'bnk_code'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object qryprs_our_number: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prs_our_number'
      Origin = 'prs_our_number'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryform_payment_frp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'form_payment_frp_id'
      Origin = 'form_payment_frp_id'
    end
    object qryclient_cli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qrybrc_slip_instruction1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_slip_instruction1'
      Origin = 'brc_slip_instruction1'
      Size = 100
    end
    object qrybrc_slip_instruction2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_slip_instruction2'
      Origin = 'brc_slip_instruction2'
      Size = 100
    end
    object qrybrc_slip_instruction3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_slip_instruction3'
      Origin = 'brc_slip_instruction3'
      Size = 100
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
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFR1
    Left = 248
    Top = 47
  end
  object ACBrBoletoFCFR1: TACBrBoletoFCFR
    ACBrBoleto = ACBrBoleto1
    ModoThread = False
    IncorporarBackgroundPdf = False
    IncorporarFontesPdf = False
    Left = 189
    Top = 49
  end
  object qry_parameter_slip: TFDQuery
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'prs_id'
    MasterSource = ds
    MasterFields = 'form_payment_frp_id'
    DetailFields = 'prs_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT prs_id,prs_our_number FROM parameter_slip'
      'where bank_bnk_id in (select bnk_id from bank'
      
        '                     where bnk_id in (select bank_bnk_id from fo' +
        'rm_payment'
      '                '#9' where frp_id = :form_payment_frp_id));')
    Left = 698
    Top = 171
    ParamData = <
      item
        Name = 'FORM_PAYMENT_FRP_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qry_parameter_slipprs_id: TFDAutoIncField
      FieldName = 'prs_id'
      Origin = 'prs_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_parameter_slipprs_our_number: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prs_our_number'
      Origin = 'prs_our_number'
    end
  end
  object qry_enterprise: TFDQuery
    Active = True
    IndexFieldNames = 'ent_id'
    MasterSource = ds
    MasterFields = 'enterprise_ent_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT ent_id, ent_first_name,ent_add_bus_street,'#10#10'ent_add_bus_z' +
        'ipcode,ent_add_bus_city,ent_cnpj,ent_add_bus_complement,'#10
      
        'ent_add_bus_address,ent_add_bus_number,ent_add_bus_state,ent_pho' +
        'ne1 from enterprise '#10
      'where ent_id = :enterprise_ent_id'
      '')
    Left = 570
    Top = 147
    ParamData = <
      item
        Name = 'ENTERPRISE_ENT_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_enterpriseent_id: TFDAutoIncField
      FieldName = 'ent_id'
      Origin = 'ent_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_enterpriseent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 75
    end
    object qry_enterpriseent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      Size = 45
    end
    object qry_enterpriseent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      Size = 9
    end
    object qry_enterpriseent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      Size = 35
    end
    object qry_enterpriseent_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      Size = 25
    end
    object qry_enterpriseent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      Size = 50
    end
    object qry_enterpriseent_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_address'
      Origin = 'ent_add_bus_address'
      Size = 50
    end
    object qry_enterpriseent_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_number'
      Origin = 'ent_add_bus_number'
      Size = 5
    end
    object qry_enterpriseent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qry_enterpriseent_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
  end
  object qry_client: TFDQuery
    IndexFieldNames = 'cli_id'
    MasterSource = ds
    MasterFields = 'client_cli_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_id, cli_first_name,'#10'cli_cpfcnpj,cli_add_bil_address,c' +
        'li_add_bil_number,cli_add_bil_street,cli_add_bil_city,'#10
      'cli_add_bil_state,cli_add_bil_zipcode from client'#10
      'where cli_id = :client_cli_id ')
    Left = 570
    Top = 203
    ParamData = <
      item
        Name = 'CLIENT_CLI_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_clientcli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_clientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 75
    end
    object qry_clientcli_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpfcnpj'
      Origin = 'cli_cpfcnpj'
      Size = 25
    end
    object qry_clientcli_add_bil_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_address'
      Origin = 'cli_add_bil_address'
      Size = 50
    end
    object qry_clientcli_add_bil_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_number'
      Origin = 'cli_add_bil_number'
      Size = 5
    end
    object qry_clientcli_add_bil_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_street'
      Origin = 'cli_add_bil_street'
      Size = 45
    end
    object qry_clientcli_add_bil_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_city'
      Origin = 'cli_add_bil_city'
      Size = 35
    end
    object qry_clientcli_add_bil_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_state'
      Origin = 'cli_add_bil_state'
      FixedChar = True
      Size = 3
    end
    object qry_clientcli_add_bil_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_zipcode'
      Origin = 'cli_add_bil_zipcode'
      Size = 9
    end
  end
end
