inherited frm_billreceive_ticket: Tfrm_billreceive_ticket
  Caption = 'Emi'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid_1: TcxGrid
    PopupMenu = PopupMenu1
    ExplicitTop = 33
    ExplicitHeight = 274
    inherited cxGrid_1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
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
    end
  end
  inherited dxBarManager_1: TdxBarManager
    Left = 480
  end
  inherited ActionList_1: TActionList
    Left = 528
  end
  inherited qry: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT '#39'N'#39' as selecionado, enterprise_ent_id,brc_dt_maturity,'#10'br' +
        'c_dt_emission,brc_document,'#10'brc_value,brc_discount,'#10'brc_status,e' +
        'nt_first_name,'
      
        'ent_add_bus_street,'#10#10'ent_add_bus_zipcode,ent_add_bus_city,ent_cn' +
        'pj,ent_add_bus_complement,'#10'ent_add_bus_address,ent_add_bus_numbe' +
        'r,'
      
        'ent_add_bus_state,ent_phone1,'#10'bnk_agency_number,bnk_agency_digit' +
        ',bnk_code_transferor,'#10'bnk_account_number,bnk_account_digit,'
      
        'bnk_code_agreement,cli_first_name,'#10'cli_cpfcnpj,cli_add_bil_addre' +
        'ss,cli_add_bil_number,cli_add_bil_street,cli_add_bil_city,'#10
      
        'cli_add_bil_state,cli_add_bil_zipcode,brc_code_bar,prs_species_d' +
        'ocument,'#10'prs_species_coin,prs_acceptance,prs_wallet,'
      'prs_value_fine'#10' FROM billreceive'#10#10
      'inner join enterprise on enterprise_ent_id = ent_id'#13#10#10
      'inner join form_payment on frp_id = form_payment_frp_id'#13#10#10
      'inner join client on cli_id = client_cli_id '
      'left join bank on bnk_id = form_payment.bank_bnk_id'#10
      'inner join parameter_slip on parameter_slip.bank_bnk_id = bnk_id'
      'where frp_slip = '#39'S'#39)
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
    object qryent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 75
    end
    object qryent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object qryent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryent_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryent_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_address'
      Origin = 'ent_add_bus_address'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryent_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_number'
      Origin = 'ent_add_bus_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qryent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryent_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
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
    object qrycli_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 75
    end
    object qrycli_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpfcnpj'
      Origin = 'cli_cpfcnpj'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qrycli_add_bil_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_address'
      Origin = 'cli_add_bil_address'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qrycli_add_bil_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_number'
      Origin = 'cli_add_bil_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qrycli_add_bil_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_street'
      Origin = 'cli_add_bil_street'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qrycli_add_bil_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_city'
      Origin = 'cli_add_bil_city'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qrycli_add_bil_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_state'
      Origin = 'cli_add_bil_state'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qrycli_add_bil_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_zipcode'
      Origin = 'cli_add_bil_zipcode'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
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
    object qryselecionado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'selecionado'
      Origin = 'selecionado'
      ProviderFlags = []
      Size = 1
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 4719038
  end
  object ACBrBoleto1: TACBrBoleto [8]
    Banco.Numero = 341
    Banco.TamanhoMaximoNossoNum = 8
    Banco.TipoCobranca = cobItau
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Cedente.TipoCarteira = tctRegistrada
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFR1
    Left = 288
    Top = 80
  end
  inherited PopupMenu1: TPopupMenu
    object GerarBoleto1: TMenuItem
      Caption = 'Gerar Boleto'
      OnClick = GerarBoleto1Click
    end
    object GerarRemessa1: TMenuItem
      Caption = 'Gerar Remessa'
      OnClick = GerarRemessa1Click
    end
  end
  object ACBrBoletoFCFR1: TACBrBoletoFCFR
    ACBrBoleto = ACBrBoleto1
    ModoThread = False
    IncorporarBackgroundPdf = False
    IncorporarFontesPdf = False
    Left = 224
    Top = 80
  end
end
