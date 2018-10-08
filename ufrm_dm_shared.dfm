object frm_dm_shared: Tfrm_dm_shared
  OldCreateOrder = False
  Height = 571
  Width = 959
  object dsClient: TDataSource
    DataSet = memClient
    Left = 160
    Top = 16
  end
  object memClient: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 16
    object memClientcli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_cod'
      Origin = 'cli_cod'
      Size = 32
    end
    object memClienttable_price_tbp_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tabela Pre'#231'a'
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
      Size = 32
    end
    object memClientcli_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object memClientcli_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'cli_type'
      Origin = 'cli_type'
      FixedChar = True
      Size = 2
    end
    object memClientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 85
    end
    object memClientcli_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      Size = 85
    end
    object memClientcli_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Size = 65
    end
    object memClientcli_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cli_cpfcnpj'
      Origin = 'cli_cpfcnpj'
      Size = 25
    end
    object memClientcli_rgie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG/IE'
      FieldName = 'cli_rgie'
      Origin = 'cli_rgie'
      Size = 25
    end
    object memClientcli_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'cli_im'
      Origin = 'cli_im'
      Size = 25
    end
    object memClientcli_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'cli_suframa'
      Origin = 'cli_suframa'
      Size = 25
    end
    object memClientcli_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - CEP'
      FieldName = 'cli_add_bus_zipcode'
      Origin = 'cli_add_bus_zipcode'
      Size = 9
    end
    object memClientcli_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Rua'
      FieldName = 'cli_add_bus_address'
      Origin = 'cli_add_bus_address'
      Size = 50
    end
    object memClientcli_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - N'#250'm.'
      FieldName = 'cli_add_bus_number'
      Origin = 'cli_add_bus_number'
      Size = 5
    end
    object memClientcli_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Bairro'
      FieldName = 'cli_add_bus_street'
      Origin = 'cli_add_bus_street'
      Size = 45
    end
    object memClientcli_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Compl.'
      FieldName = 'cli_add_bus_complement'
      Origin = 'cli_add_bus_complement'
      Size = 50
    end
    object memClientcli_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Cidade'
      FieldName = 'cli_add_bus_city'
      Origin = 'cli_add_bus_city'
      Size = 35
    end
    object memClientcli_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - UF'
      FieldName = 'cli_add_bus_state'
      Origin = 'cli_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object memClientcli_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Pa'#237's'
      FieldName = 'cli_add_bus_country'
      Origin = 'cli_add_bus_country'
      Size = 25
    end
    object memClientcli_add_bil_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - CEP'
      FieldName = 'cli_add_bil_zipcode'
      Origin = 'cli_add_bil_zipcode'
      Size = 9
    end
    object memClientcli_add_bil_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Rua'
      FieldName = 'cli_add_bil_address'
      Origin = 'cli_add_bil_address'
      Size = 50
    end
    object memClientcli_add_bil_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - N'#250'm.'
      FieldName = 'cli_add_bil_number'
      Origin = 'cli_add_bil_number'
      Size = 5
    end
    object memClientcli_add_bil_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Bairro'
      FieldName = 'cli_add_bil_street'
      Origin = 'cli_add_bil_street'
      Size = 45
    end
    object memClientcli_add_bil_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Compl.'
      FieldName = 'cli_add_bil_complement'
      Origin = 'cli_add_bil_complement'
      Size = 50
    end
    object memClientcli_add_bil_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Cidade'
      FieldName = 'cli_add_bil_city'
      Origin = 'cli_add_bil_city'
      Size = 35
    end
    object memClientcli_add_bil_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - UF'
      FieldName = 'cli_add_bil_state'
      Origin = 'cli_add_bil_state'
      FixedChar = True
      Size = 3
    end
    object memClientcli_add_bil_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Pa'#237's'
      FieldName = 'cli_add_bil_country'
      Origin = 'cli_add_bil_country'
      Size = 25
    end
    object memClientcli_add_del_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ent. - CEP'
      FieldName = 'cli_add_del_zipcode'
      Origin = 'cli_add_del_zipcode'
      Size = 9
    end
    object memClientcli_add_del_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Rua'
      FieldName = 'cli_add_del_address'
      Origin = 'cli_add_del_address'
      Size = 50
    end
    object memClientcli_add_del_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - N'#250'm.'
      FieldName = 'cli_add_del_number'
      Origin = 'cli_add_del_number'
      Size = 5
    end
    object memClientcli_add_del_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Bairro'
      FieldName = 'cli_add_del_street'
      Origin = 'cli_add_del_street'
      Size = 45
    end
    object memClientcli_add_del_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Compl.'
      FieldName = 'cli_add_del_complement'
      Origin = 'cli_add_del_complement'
      Size = 50
    end
    object memClientcli_add_del_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Cidade'
      FieldName = 'cli_add_del_city'
      Origin = 'cli_add_del_city'
      Size = 35
    end
    object memClientcli_add_del_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - UF'
      FieldName = 'cli_add_del_state'
      Origin = 'cli_add_del_state'
      FixedChar = True
      Size = 3
    end
    object memClientcli_add_del_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Pa'#237's'
      FieldName = 'cli_add_del_country'
      Origin = 'cli_add_del_country'
      Size = 25
    end
    object memClientcli_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'cli_phone1'
      Origin = 'cli_phone1'
      Size = 15
    end
    object memClientcli_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'cli_phone2'
      Origin = 'cli_phone2'
      Size = 15
    end
    object memClientcli_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'cli_phone3'
      Origin = 'cli_phone3'
      Size = 15
    end
    object memClientcli_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'cli_phone4'
      Origin = 'cli_phone4'
      Size = 15
    end
    object memClientcli_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'cli_contact'
      Origin = 'cli_contact'
      Size = 25
    end
    object memClientcli_day_maturity: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia Venc.'
      FieldName = 'cli_day_maturity'
      Origin = 'cli_day_maturity'
    end
    object memClientcli_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc./Aber.'
      FieldName = 'cli_dt_birthopen'
      Origin = 'cli_dt_birthopen'
    end
    object memClientcli_weight: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Peso'
      FieldName = 'cli_weight'
      Origin = 'cli_weight'
      Precision = 12
    end
    object memClientcli_height: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Altura'
      FieldName = 'cli_height'
      Origin = 'cli_height'
      Precision = 12
    end
    object memClientcli_blood_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Sang.'
      FieldName = 'cli_blood_type'
      Origin = 'cli_blood_type'
      Size = 5
    end
    object memClientcli_rh_factor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fator RH'
      FieldName = 'cli_rh_factor'
      Origin = 'cli_rh_factor'
      FixedChar = True
      Size = 1
    end
    object memClientcli_du_factor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fator DU'
      FieldName = 'cli_du_factor'
      Origin = 'cli_du_factor'
      FixedChar = True
      Size = 1
    end
    object memClientcli_cns: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNS'
      FieldName = 'cli_cns'
      Origin = 'cli_cns'
      Size = 25
    end
    object memClientcli_gender: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'cli_gender'
      Origin = 'cli_gender'
      FixedChar = True
      Size = 1
    end
    object memClientcli_skin_color: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cor Pele'
      FieldName = 'cli_skin_color'
      Origin = 'cli_skin_color'
      Size = 30
    end
    object memClientcli_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'cli_status'
      Origin = 'cli_status'
    end
    object memClientcli_image1: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Foto'
      FieldName = 'cli_image1'
      Origin = 'cli_image1'
    end
    object memClientcli_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'cli_deleted_at'
      Origin = 'cli_deleted_at'
    end
    object memClientcli_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cli_dt_registration'
      Origin = 'cli_dt_registration'
    end
  end
  object dsProduct: TDataSource
    DataSet = memProduct
    Left = 160
    Top = 112
  end
  object memProduct: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 112
    object memProductpro_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      Size = 32
    end
    object memProductmaterial_mat_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Material'
      FieldName = 'material_mat_cod'
      Origin = 'material_mat_cod'
      Size = 32
    end
    object memProductsupplier_sup_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      FieldName = 'supplier_sup_cod'
      Origin = 'supplier_sup_cod'
      Size = 32
    end
    object memProductproduct_class_prc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      FieldName = 'product_class_prc_cod'
      Origin = 'product_class_prc_cod'
      Size = 32
    end
    object memProductproduct_class_sub_prs_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub-Classe'
      FieldName = 'product_class_sub_prs_cod'
      Origin = 'product_class_sub_prs_cod'
      Size = 32
    end
    object memProductmanufacturer_man_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fabricante'
      FieldName = 'manufacturer_man_cod'
      Origin = 'manufacturer_man_cod'
      Size = 32
    end
    object memProductbrand_bra_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Marca'
      FieldName = 'brand_bra_cod'
      Origin = 'brand_bra_cod'
      Size = 32
    end
    object memProductncm_ncm_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM'
      FieldName = 'ncm_ncm_cod'
      Origin = 'ncm_ncm_cod'
      Size = 32
    end
    object memProductproduct_unit_pru_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unid.'
      FieldName = 'product_unit_pru_cod'
      Origin = 'product_unit_pru_cod'
      Size = 32
    end
    object memProductpro_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object memProductpro_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'pro_type'
      Origin = 'pro_type'
      FixedChar = True
      Size = 1
    end
    object memProductpro_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 85
    end
    object memProductpro_initials: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sigla'
      FieldName = 'pro_initials'
      Origin = 'pro_initials'
      Size = 85
    end
    object memProductpro_tag: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TAGS'
      FieldName = 'pro_tag'
      Origin = 'pro_tag'
      Size = 255
    end
    object memProductpro_description: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pro_description'
      Origin = 'pro_description'
      BlobType = ftMemo
    end
    object memProductpro_gender: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'pro_gender'
      Origin = 'pro_gender'
      FixedChar = True
      Size = 1
    end
    object memProductpro_annotation: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'pro_annotation'
      Origin = 'pro_annotation'
      BlobType = ftMemo
    end
    object memProductpro_barcod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'pro_barcod'
      Origin = 'pro_barcod'
      Size = 25
    end
    object memProductpro_barcod_manufacturer: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra Fabricante'
      FieldName = 'pro_barcod_manufacturer'
      Origin = 'pro_barcod_manufacturer'
      Size = 25
    end
    object memProductpro_height: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Altura'
      FieldName = 'pro_height'
      Origin = 'pro_height'
      Precision = 12
    end
    object memProductpro_width: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Largura'
      FieldName = 'pro_width'
      Origin = 'pro_width'
      Precision = 12
    end
    object memProductpro_length: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Comprimento'
      FieldName = 'pro_length'
      Origin = 'pro_length'
      Precision = 12
    end
    object memProductpro_weight: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Peso'
      FieldName = 'pro_weight'
      Origin = 'pro_weight'
      Precision = 12
    end
    object memProductpro_liter: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Litro'
      FieldName = 'pro_liter'
      Origin = 'pro_liter'
      Precision = 12
    end
    object memProductpro_delivery_term: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prazo Entrega'
      FieldName = 'pro_delivery_term'
      Origin = 'pro_delivery_term'
    end
    object memProductpro_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'pro_status'
      Origin = 'pro_status'
    end
    object memProductpro_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'pro_deleted_at'
      Origin = 'pro_deleted_at'
    end
    object memProductpro_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pro_dt_registration'
      Origin = 'pro_dt_registration'
    end
  end
  object dsReseller: TDataSource
    DataSet = memReseller
    Left = 160
    Top = 64
  end
  object memReseller: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 64
    object memResellerres_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'res_cod'
      Origin = 'res_cod'
      Size = 32
    end
    object memResellerres_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'res_id'
      Origin = 'res_id'
    end
    object memResellerres_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'res_type'
      Origin = 'res_type'
      FixedChar = True
      Size = 2
    end
    object memResellerres_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'res_first_name'
      Origin = 'res_first_name'
      Size = 85
    end
    object memResellerres_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'res_last_name'
      Origin = 'res_last_name'
      Size = 85
    end
    object memResellerres_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'res_email'
      Origin = 'res_email'
      Size = 65
    end
    object memResellerres_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'res_cpfcnpj'
      Origin = 'res_cpfcnpj'
      Size = 25
    end
    object memResellerres_rgie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG/IE'
      FieldName = 'res_rgie'
      Origin = 'res_rgie'
      Size = 25
    end
    object memResellerres_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'res_im'
      Origin = 'res_im'
      Size = 25
    end
    object memResellerres_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'res_suframa'
      Origin = 'res_suframa'
      Size = 25
    end
    object memResellerres_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'res_add_bus_zipcode'
      Origin = 'res_add_bus_zipcode'
      Size = 9
    end
    object memResellerres_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'res_add_bus_address'
      Origin = 'res_add_bus_address'
      Size = 50
    end
    object memResellerres_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'res_add_bus_number'
      Origin = 'res_add_bus_number'
      Size = 5
    end
    object memResellerres_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'res_add_bus_street'
      Origin = 'res_add_bus_street'
      Size = 45
    end
    object memResellerres_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'res_add_bus_complement'
      Origin = 'res_add_bus_complement'
      Size = 50
    end
    object memResellerres_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'res_add_bus_city'
      Origin = 'res_add_bus_city'
      Size = 35
    end
    object memResellerres_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'res_add_bus_state'
      Origin = 'res_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object memResellerres_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'res_add_bus_country'
      Origin = 'res_add_bus_country'
      Size = 25
    end
    object memResellerres_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'res_phone1'
      Origin = 'res_phone1'
      Size = 15
    end
    object memResellerres_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'res_phone2'
      Origin = 'res_phone2'
      Size = 15
    end
    object memResellerres_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'res_phone3'
      Origin = 'res_phone3'
      Size = 15
    end
    object memResellerres_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'res_phone4'
      Origin = 'res_phone4'
      Size = 15
    end
    object memResellerres_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'res_contact'
      Origin = 'res_contact'
      Size = 25
    end
    object memResellerres_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc./Aber.'
      FieldName = 'res_dt_birthopen'
      Origin = 'res_dt_birthopen'
    end
    object memResellerres_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'res_status'
      Origin = 'res_status'
    end
    object memResellerres_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'res_deleted_at'
      Origin = 'res_deleted_at'
    end
    object memResellerres_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'res_dt_registration'
      Origin = 'res_dt_registration'
    end
  end
  object memProposalContract: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 160
    object memProposalContractreq_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'req_cod'
      Origin = 'req_cod'
      Size = 32
    end
    object memProposalContractclient_cli_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
      Size = 32
    end
    object memProposalContractreq_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'req_id'
      Origin = 'req_id'
    end
    object memProposalContractreq_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'req_deleted_at'
      Origin = 'req_deleted_at'
    end
    object memProposalContractreq_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'req_dt_registration'
      Origin = 'req_dt_registration'
    end
  end
  object dsProposalContract: TDataSource
    DataSet = memProposalContract
    Left = 160
    Top = 160
  end
end
