inherited frm_billreceive_ticket: Tfrm_billreceive_ticket
  Caption = 'Emi'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid_1: TcxGrid
    PopupMenu = PopupMenu1
    ExplicitTop = 27
    ExplicitHeight = 274
    inherited cxGrid_1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
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
    end
  end
  inherited dxBarManager_1: TdxBarManager
    Left = 480
  end
  inherited ActionList_1: TActionList
    Left = 528
  end
  inherited qry: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'SELECT enterprise_ent_id,brc_dt_maturity,'
      'brc_dt_emission,brc_document,'#10'brc_value,brc_discount,'
      'brc_status,ent_first_name,ent_add_bus_street,'#10
      
        'ent_add_bus_zipcode,ent_add_bus_city,ent_cnpj,ent_add_bus_comple' +
        'ment,'
      
        'ent_add_bus_address,ent_add_bus_number,ent_add_bus_state,ent_pho' +
        'ne1'
      ' FROM billreceive'#10
      'inner join enterprise on enterprise_ent_id = ent_id;')
    object qryenterprise_ent_id: TIntegerField
      FieldName = 'enterprise_ent_id'
    end
    object qrybrc_dt_maturity: TDateField
      FieldName = 'brc_dt_maturity'
    end
    object qrybrc_dt_emission: TDateField
      FieldName = 'brc_dt_emission'
    end
    object qrybrc_document: TStringField
      FieldName = 'brc_document'
      Size = 50
    end
    object qrybrc_value: TBCDField
      FieldName = 'brc_value'
      Precision = 12
    end
    object qrybrc_discount: TBCDField
      FieldName = 'brc_discount'
      Precision = 12
    end
    object qrybrc_status: TStringField
      FieldName = 'brc_status'
      FixedChar = True
      Size = 1
    end
    object qryent_first_name: TStringField
      FieldName = 'ent_first_name'
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
