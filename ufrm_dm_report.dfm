object frm_dm_report: Tfrm_dm_report
  OldCreateOrder = False
  Height = 649
  Width = 630
  object frxds_client: TfrxDBDataset
    UserName = 'Clientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cli_id=C'#243'd. ID'
      'contract_ctr_id=Contrato ID'
      'cli_type=Tipo'
      'cli_first_name=Nome'
      'cli_last_name=Sobrenome'
      'cli_email=E-mail'
      'cli_phone1=Tel. 1'
      'cli_phone2=Tel. 2'
      'cli_phone3=Tel. 3'
      'cli_phone4=Tel. 4'
      'cli_contact=Contato'
      'cli_cpfcnpj=CPF/CNPJ'
      'cli_rgie=RG/IE'
      'cli_im=IM'
      'cli_suframa=Suframa'
      'cli_dt_birthopen=Dt. Nasc.'
      'cli_dt_registration=Dt. Reg.'
      'cli_add_bus_zipcode=End. Com. - CEP'
      'cli_add_bus_address=End. Com. - Rua'
      'cli_add_bus_number=End. Com. - N'#250'm.'
      'cli_add_bus_street=End. Com. - Bairro'
      'cli_add_bus_complement=End. Com. - Compl.'
      'cli_add_bus_city=End. Com. - Cidade'
      'cli_add_bus_state=End. Com. - UF'
      'cli_add_bus_country=End. Com. - Pa'#237's'
      'cli_add_bil_zipcode=End. Cob. - CEP'
      'cli_add_bil_address=End. Cob. - Rua'
      'cli_add_bil_number=End. Cob. - N'#250'm.'
      'cli_add_bil_street=End. Cob. - Bairro'
      'cli_add_bil_complement=End. Cob. - Compl.'
      'cli_add_bil_city=End. Cob. - Cidade'
      'cli_add_bil_state=End. Cob. - UF'
      'cli_add_bil_country=End. Cob. - Pa'#237's'
      'cli_add_del_zipcode=End. Ent. - CEP'
      'cli_add_del_address=End. Ent. - Rua'
      'cli_add_del_number=End. Ent. - N'#250'm.'
      'cli_add_del_street=End. Ent. - Bairro'
      'cli_add_del_complement=End. Ent. - Compl.'
      'cli_add_del_city=End. Ent. - Cidade'
      'cli_add_del_state=End. Ent. - UF'
      'cli_add_del_country=End. Ent. - Pa'#237's'
      'cli_day_maturity=Dia Venc.'
      'cli_image=Imagem')
    DataSet = frm_dm_ds.qry_client
    BCDToCurrency = False
    Left = 24
    Top = 72
  end
  object frxds_enterprise: TfrxDBDataset
    UserName = 'Empresas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ent_id=C'#243'd. ID'
      'contract_ctr_id=Contrato ID'
      'ent_type=Tipo'
      'ent_first_name=Raz'#227'o'
      'ent_last_name=Fantasia'
      'ent_email=Email'
      'ent_cnpj=CNPJ'
      'ent_ie=IE'
      'ent_im=IM'
      'ent_suframa=Suframa'
      'ent_add_bus_zipcode=End. Com. - CEP'
      'ent_add_bus_address=End. Com. - Rua'
      'ent_add_bus_number=End. Com. - N'#250'm.'
      'ent_add_bus_street=End. Com. - Bairro'
      'ent_add_bus_complement=End. Com. - Compl.'
      'ent_add_bus_city=End. Com. - Cidade'
      'ent_add_bus_state=End. Com. - UF'
      'ent_add_bus_country=End. Com. - Pa'#237's'
      'ent_phone1=Tel. 1'
      'ent_phone2=Tel. 2'
      'ent_phone3=Tel. 3'
      'ent_phone4=Tel. 4'
      'ent_contact=Contato'
      'ent_dt_open=Dt. Aber.'
      'ent_dt_registration=Dt. Reg.')
    DataSet = frm_dm_ds.qry_enterprise
    BCDToCurrency = False
    Left = 176
    Top = 32
  end
  object frxds_import_call_log: TfrxDBDataset
    UserName = 'Import - Liga'#231#245'es'
    CloseDataSource = False
    FieldAliases.Strings = (
      'imp_id=C'#243'd. ID'
      'contract_ctr_id=Contrato ID'
      'client_cli_id=Cliente ID'
      'imp_from=Origem'
      'imp_to=Destino'
      'imp_duration=Dura'#231#227'o'
      'imp_date=Data'
      'imp_type=Tipo'
      'imp_rate=Valor'
      'imp_total=Valor Total')
    BCDToCurrency = False
    Left = 176
    Top = 88
  end
  object frxfdcomp_1: TfrxFDComponents
    DefaultDatabase = frm_dm.connCCS
    Left = 24
    Top = 16
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Estoque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sto_id=sto_id'
      'contract_ctr_id=Contrato ID'
      'enterprise_ent_id=enterprise_ent_id'
      'sto_type=sto_type'
      'sto_status=sto_status'
      'sto_description=sto_description'
      'sto_dt_registration=sto_dt_registration')
    DataSet = frm_dm_ds.qry_stock
    BCDToCurrency = False
    Left = 24
    Top = 120
  end
  object qry_report: TFDQuery
    Active = True
    AfterPost = qry_reportAfterPost
    AfterDelete = qry_reportAfterDelete
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'SELECT report.*, hex(rep_cod)as CodReport FROM report'
      'where rep_reference =:reference')
    Left = 496
    Top = 16
    ParamData = <
      item
        Name = 'REFERENCE'
        DataType = ftString
        ParamType = ptInput
        Size = 26
        Value = Null
      end>
    object qry_reportrep_cod: TBytesField
      FieldName = 'rep_cod'
      Origin = 'rep_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_reportcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_reportrep_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rep_id'
      Origin = 'rep_id'
    end
    object qry_reportrep_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rep_name'
      Origin = 'rep_name'
      Size = 35
    end
    object qry_reportrep_report: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'rep_report'
      Origin = 'rep_report'
      BlobType = ftMemo
    end
    object qry_reportrep_edit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rep_edit'
      Origin = 'rep_edit'
      FixedChar = True
      Size = 1
    end
    object qry_reportrep_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rep_status'
      Origin = 'rep_status'
      FixedChar = True
      Size = 1
    end
    object qry_reportrep_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rep_deleted_at'
      Origin = 'rep_deleted_at'
    end
    object qry_reportrep_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rep_dt_registration'
      Origin = 'rep_dt_registration'
    end
    object qry_reportCodReport: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodReport'
      Origin = 'CodReport'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_report: TDataSource
    DataSet = qry_report
    Left = 568
    Top = 16
  end
  object qry_stock: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select stock.*, hex(sto_cod)as CodStock from stock')
    Left = 32
    Top = 272
    object qry_stocksto_cod: TBytesField
      FieldName = 'sto_cod'
      Origin = 'sto_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_stockcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_stockenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object qry_stocksto_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sto_id'
      Origin = 'sto_id'
    end
    object qry_stocksto_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_type'
      Origin = 'sto_type'
      FixedChar = True
      Size = 1
    end
    object qry_stocksto_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_name'
      Origin = 'sto_name'
      Size = 35
    end
    object qry_stocksto_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sto_status'
      Origin = 'sto_status'
      FixedChar = True
      Size = 1
    end
    object qry_stocksto_deleled_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sto_deleled_at'
      Origin = 'sto_deleled_at'
    end
    object qry_stocksto_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sto_dt_registration'
      Origin = 'sto_dt_registration'
    end
    object qry_stockCodStock: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodStock'
      Origin = 'CodStock'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object frx_db_stock: TfrxDBDataset
    UserName = 'stock'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 72
    Top = 272
  end
end
