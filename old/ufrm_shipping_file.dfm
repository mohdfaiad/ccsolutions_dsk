inherited frm_shipping_file: Tfrm_shipping_file
  Caption = 'frm_shipping_file'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1selecionado: TcxGridDBColumn
            DataBinding.FieldName = 'selecionado'
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
          object cxGrid_1DBTableView1bnk_code: TcxGridDBColumn
            DataBinding.FieldName = 'bnk_code'
          end
          object cxGrid_1DBTableView1prs_our_number: TcxGridDBColumn
            DataBinding.FieldName = 'prs_our_number'
          end
          object cxGrid_1DBTableView1form_payment_frp_id: TcxGridDBColumn
            DataBinding.FieldName = 'form_payment_frp_id'
          end
          object cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn
            DataBinding.FieldName = 'client_cli_id'
          end
          object cxGrid_1DBTableView1brc_slip_instruction1: TcxGridDBColumn
            DataBinding.FieldName = 'brc_slip_instruction1'
          end
          object cxGrid_1DBTableView1brc_slip_instruction2: TcxGridDBColumn
            DataBinding.FieldName = 'brc_slip_instruction2'
          end
          object cxGrid_1DBTableView1brc_slip_instruction3: TcxGridDBColumn
            DataBinding.FieldName = 'brc_slip_instruction3'
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
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'SELECT enterprise_ent_id,brc_dt_maturity,'#10'brc_dt_emission,brc_do' +
        'cument,'#10'brc_value,brc_discount,'#10'brc_status,'
      
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
      'where frp_slip = '#39'S'#39' and brc_code_bar <> '#39#39)
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
  object qry_parameter_slip: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'prs_id'
    MasterSource = ds
    MasterFields = 'form_payment_frp_id'
    DetailFields = 'prs_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'SELECT prs_wallet, prs_species_coin, prs_species_document,prs_id' +
        ',prs_our_number  FROM parameter_slip'
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
    object qry_parameter_slipprs_species_document: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_species_document'
      Origin = 'prs_species_document'
      Size = 5
    end
    object qry_parameter_slipprs_wallet: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_wallet'
      Origin = 'prs_wallet'
      Size = 5
    end
    object qry_parameter_slipprs_species_coin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_species_coin'
      Origin = 'prs_species_coin'
      Size = 5
    end
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Cedente.TipoInscricao = pJuridica
    DirArqRemessa = 'C:\ccsolutions_dsk\protheusfin\remesa'
    DirArqRetorno = 'C:\ccsolutions_dsk\protheusfin\retorno'
    NumeroArquivo = 0
    Left = 506
    Top = 139
  end
end
