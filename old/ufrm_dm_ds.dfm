object frm_dm_ds: Tfrm_dm_ds
  OldCreateOrder = False
  Height = 571
  Width = 959
  object dsClient: TDataSource
    DataSet = memClient
    Left = 168
    Top = 16
  end
  object memClient: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cli_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'table_price_tbp_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cli_id'
        DataType = ftLongWord
      end
      item
        Name = 'cli_type'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cli_first_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'cli_last_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'cli_email'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'cli_cpfcnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_rgie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_im'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_suframa'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_add_bus_zipcode'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'cli_add_bus_address'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cli_add_bus_number'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cli_add_bus_street'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'cli_add_bus_complement'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cli_add_bus_city'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'cli_add_bus_state'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cli_add_bus_country'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_add_bil_zipcode'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'cli_add_bil_address'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cli_add_bil_number'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cli_add_bil_street'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'cli_add_bil_complement'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cli_add_bil_city'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'cli_add_bil_state'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cli_add_bil_country'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_add_del_zipcode'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'cli_add_del_address'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cli_add_del_number'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cli_add_del_street'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'cli_add_del_complement'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cli_add_del_city'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'cli_add_del_state'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cli_add_del_country'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_phone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_phone2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_phone3'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_phone4'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_contact'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_day_maturity'
        DataType = ftInteger
      end
      item
        Name = 'cli_dt_birthopen'
        DataType = ftDate
      end
      item
        Name = 'cli_weight'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cli_height'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cli_blood_type'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cli_rh_factor'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cli_du_factor'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cli_cns'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_gender'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cli_skin_color'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cli_status'
        DataType = ftShortint
      end
      item
        Name = 'cli_image1'
        DataType = ftBlob
      end
      item
        Name = 'cli_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'cli_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
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
    Left = 168
    Top = 112
  end
  object memProduct: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'pro_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'material_mat_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'supplier_sup_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_class_prc_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_class_sub_prs_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'manufacturer_man_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'brand_bra_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ncm_ncm_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_unit_pru_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'pro_id'
        DataType = ftLongWord
      end
      item
        Name = 'pro_type'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pro_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'pro_initials'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'pro_tag'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'pro_description'
        DataType = ftMemo
      end
      item
        Name = 'pro_gender'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pro_annotation'
        DataType = ftMemo
      end
      item
        Name = 'pro_barcod'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'pro_barcod_manufacturer'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'pro_height'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_width'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_length'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_weight'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_liter'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_delivery_term'
        DataType = ftInteger
      end
      item
        Name = 'pro_status'
        DataType = ftShortint
      end
      item
        Name = 'pro_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'pro_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
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
    Left = 168
    Top = 64
  end
  object memReseller: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'res_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'res_id'
        DataType = ftLongWord
      end
      item
        Name = 'res_type'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'res_first_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'res_last_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'res_email'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'res_cpfcnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'res_rgie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'res_im'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'res_suframa'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'res_add_bus_zipcode'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'res_add_bus_address'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'res_add_bus_number'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'res_add_bus_street'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'res_add_bus_complement'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'res_add_bus_city'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'res_add_bus_state'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'res_add_bus_country'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'res_phone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'res_phone2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'res_phone3'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'res_phone4'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'res_contact'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'res_dt_birthopen'
        DataType = ftDate
      end
      item
        Name = 'res_status'
        DataType = ftShortint
      end
      item
        Name = 'res_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'res_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
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
    Active = True
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
    Left = 168
    Top = 160
  end
  object memMaterial: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'mat_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'mat_id'
        DataType = ftLongWord
      end
      item
        Name = 'mat_name'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'mat_status'
        DataType = ftShortint
      end
      item
        Name = 'mat_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'mat_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 48
    Top = 208
    object memMaterialmat_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'mat_cod'
      Origin = 'mat_cod'
      Size = 32
    end
    object memMaterialmat_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'mat_id'
      Origin = 'mat_id'
    end
    object memMaterialmat_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'mat_name'
      Origin = 'mat_name'
      Size = 35
    end
    object memMaterialmat_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'mat_status'
      Origin = 'mat_status'
    end
    object memMaterialmat_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'mat_deleted_at'
      Origin = 'mat_deleted_at'
    end
    object memMaterialmat_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'mat_dt_registration'
      Origin = 'mat_dt_registration'
    end
  end
  object dsMaterial: TDataSource
    DataSet = memMaterial
    Left = 167
    Top = 208
  end
  object memProvider: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'prv_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'prv_id'
        DataType = ftLongWord
      end
      item
        Name = 'prv_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'prv_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'prv_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 48
    Top = 256
    object memProviderprv_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'prv_cod'
      Origin = 'prv_cod'
      Size = 32
    end
    object memProviderprv_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'prv_id'
      Origin = 'prv_id'
    end
    object memProviderprv_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'prv_name'
      Origin = 'prv_name'
      Size = 85
    end
    object memProviderprv_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'prv_deleted_at'
      Origin = 'prv_deleted_at'
    end
    object memProviderprv_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'prv_dt_registration'
      Origin = 'prv_dt_registration'
    end
  end
  object dsProvider: TDataSource
    DataSet = memProvider
    Left = 168
    Top = 256
  end
  object dsDID: TDataSource
    DataSet = memDID
    Left = 168
    Top = 304
  end
  object memDID: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'did_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'provider_prv_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'did_id'
        DataType = ftLongWord
      end
      item
        Name = 'did_number'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'did_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'did_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 48
    Top = 304
    object memDIDdid_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'did_cod'
      Origin = 'did_cod'
      Size = 32
    end
    object memDIDprovider_prv_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Provedor'
      FieldName = 'provider_prv_cod'
      Origin = 'provider_prv_cod'
      Size = 32
    end
    object memDIDdid_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'did_id'
      Origin = 'did_id'
    end
    object memDIDdid_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero'
      FieldName = 'did_number'
      Origin = 'did_number'
      Size = 25
    end
    object memDIDdid_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'did_deleted_at'
      Origin = 'did_deleted_at'
    end
    object memDIDdid_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'did_dt_registration'
      Origin = 'did_dt_registration'
    end
  end
  object memTicketPriority: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 352
    object memTicketPrioritytkp_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd'
      FieldName = 'tkp_cod'
      Origin = 'tkp_cod'
      Size = 32
    end
    object memTicketPrioritytkp_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'tkp_id'
      Origin = 'tkp_id'
    end
    object memTicketPrioritytkp_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'tkp_name'
      Origin = 'tkp_name'
      Size = 35
    end
    object memTicketPrioritytkp_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tkp_status'
      Origin = 'tkp_status'
    end
    object memTicketPrioritytkp_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tkp_deleted_at'
      Origin = 'tkp_deleted_at'
    end
    object memTicketPrioritytkp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tkp_dt_registration'
      Origin = 'tkp_dt_registration'
    end
  end
  object dsTicketPriority: TDataSource
    DataSet = memTicketPriority
    Left = 168
    Top = 352
  end
  object memTicketType: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 400
    object memTicketTypetky_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tky_cod'
      Origin = 'tky_cod'
      Size = 32
    end
    object memTicketTypetky_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'tky_id'
      Origin = 'tky_id'
    end
    object memTicketTypetky_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'tky_name'
      Origin = 'tky_name'
      Size = 50
    end
    object memTicketTypetky_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tky_status'
      Origin = 'tky_status'
    end
    object memTicketTypetky_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tky_deleted_at'
      Origin = 'tky_deleted_at'
    end
    object memTicketTypetky_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tky_dt_registration'
      Origin = 'tky_dt_registration'
    end
  end
  object dsTicketType: TDataSource
    DataSet = memTicketType
    Left = 168
    Top = 400
  end
  object memTicketCategory: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'tkc_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'tkc_id'
        DataType = ftLongWord
      end
      item
        Name = 'tkc_name'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'tkc_status'
        DataType = ftShortint
      end
      item
        Name = 'tkc_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'tkc_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 48
    Top = 448
    object memTicketCategorytkc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tkc_cod'
      Origin = 'tkc_cod'
      Size = 32
    end
    object memTicketCategorytkc_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'tkc_id'
      Origin = 'tkc_id'
    end
    object memTicketCategorytkc_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'tkc_name'
      Origin = 'tkc_name'
      Size = 35
    end
    object memTicketCategorytkc_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tkc_status'
      Origin = 'tkc_status'
    end
    object memTicketCategorytkc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tkc_deleted_at'
      Origin = 'tkc_deleted_at'
    end
    object memTicketCategorytkc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tkc_dt_registration'
      Origin = 'tkc_dt_registration'
    end
  end
  object dsTicketCategory: TDataSource
    DataSet = memTicketCategory
    Left = 168
    Top = 448
  end
  object memTicketCategorySub: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 496
    object memTicketCategorySubtks_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tks_cod'
      Origin = 'tks_cod'
      Size = 32
    end
    object memTicketCategorySubticket_category_tkc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'ticket_category_tkc_cod'
      Origin = 'ticket_category_tkc_cod'
      Size = 32
    end
    object memTicketCategorySubtks_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'tks_id'
      Origin = 'tks_id'
    end
    object memTicketCategorySubtks_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'tks_name'
      Origin = 'tks_name'
      Size = 35
    end
    object memTicketCategorySubtks_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tks_status'
      Origin = 'tks_status'
    end
    object memTicketCategorySubtks_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tks_deleted_at'
      Origin = 'tks_deleted_at'
    end
    object memTicketCategorySubtks_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tks_dt_registration'
      Origin = 'tks_dt_registration'
    end
  end
  object dsTicketCategorySub: TDataSource
    DataSet = memTicketCategorySub
    Left = 168
    Top = 496
  end
  object memContractUser: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 280
    Top = 16
    object memContractUserctr_usr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ctr_usr_cod'
      Origin = 'ctr_usr_cod'
      Size = 32
    end
    object memContractUserctr_usr_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
    end
    object memContractUserctr_usr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 85
    end
    object memContractUserctr_usr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sobrenome'
      FieldName = 'ctr_usr_last_name'
      Origin = 'ctr_usr_last_name'
      Size = 85
    end
    object memContractUserctr_usr_username: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 65
    end
    object memContractUserctr_usr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      Size = 65
    end
    object memContractUserctr_usr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
    end
    object memContractUserctr_usr_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ctr_usr_status'
      Origin = 'ctr_usr_status'
    end
    object memContractUserctr_usr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ctr_usr_deleted_at'
      Origin = 'ctr_usr_deleted_at'
    end
    object memContractUserctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
  end
  object dsContractUser: TDataSource
    DataSet = memContractUser
    Left = 400
    Top = 16
  end
  object memEnterprise: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 280
    Top = 64
    object memEnterpriseent_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      Size = 32
    end
    object memEnterpriseent_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ent_id'
      Origin = 'ent_id'
    end
    object memEnterpriseent_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'ent_type'
      Origin = 'ent_type'
      FixedChar = True
      Size = 1
    end
    object memEnterpriseent_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object memEnterpriseent_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 85
    end
    object memEnterpriseent_nickname: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Apelido'
      FieldName = 'ent_nickname'
      Origin = 'ent_nickname'
      Size = 85
    end
    object memEnterpriseent_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ent_email'
      Origin = 'ent_email'
      Size = 65
    end
    object memEnterpriseent_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      Size = 25
    end
    object memEnterpriseent_ie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IE'
      FieldName = 'ent_ie'
      Origin = 'ent_ie'
      Size = 25
    end
    object memEnterpriseent_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'ent_im'
      Origin = 'ent_im'
      Size = 25
    end
    object memEnterpriseent_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'ent_suframa'
      Origin = 'ent_suframa'
      Size = 25
    end
    object memEnterpriseent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      Size = 9
    end
    object memEnterpriseent_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'ent_add_bus_address'
      Origin = 'ent_add_bus_address'
      Size = 50
    end
    object memEnterpriseent_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'ent_add_bus_number'
      Origin = 'ent_add_bus_number'
      Size = 5
    end
    object memEnterpriseent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      Size = 45
    end
    object memEnterpriseent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      Size = 50
    end
    object memEnterpriseent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      Size = 35
    end
    object memEnterpriseent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object memEnterpriseent_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'ent_add_bus_country'
      Origin = 'ent_add_bus_country'
      Size = 25
    end
    object memEnterpriseent_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
    object memEnterpriseent_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'ent_phone2'
      Origin = 'ent_phone2'
      Size = 15
    end
    object memEnterpriseent_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'ent_phone3'
      Origin = 'ent_phone3'
      Size = 15
    end
    object memEnterpriseent_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'ent_phone4'
      Origin = 'ent_phone4'
      Size = 15
    end
    object memEnterpriseent_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'ent_contact'
      Origin = 'ent_contact'
      Size = 25
    end
    object memEnterpriseent_dt_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'ent_dt_open'
      Origin = 'ent_dt_open'
    end
    object memEnterpriseent_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ent_status'
      Origin = 'ent_status'
    end
    object memEnterpriseent_image1: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Logo'
      FieldName = 'ent_image1'
      Origin = 'ent_image1'
    end
    object memEnterpriseent_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ent_deleted_at'
      Origin = 'ent_deleted_at'
    end
    object memEnterpriseent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
    end
  end
  object dsEnterprise: TDataSource
    DataSet = memEnterprise
    Left = 400
    Top = 64
  end
  object memClientContract: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 280
    Top = 112
    object memClientContractcli_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_ctr_cod'
      Origin = 'cli_ctr_cod'
      Size = 32
    end
    object memClientContractclient_cli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
      Size = 32
    end
    object memClientContractreseller_res_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Revendedor'
      FieldName = 'reseller_res_cod'
      Origin = 'reseller_res_cod'
      Size = 32
    end
    object memClientContractrequisition_req_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Proposta'
      FieldName = 'requisition_req_cod'
      Origin = 'requisition_req_cod'
      Size = 32
    end
    object memClientContractcli_ctr_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'cli_ctr_id'
      Origin = 'cli_ctr_id'
    end
    object memClientContractcli_ctr_value_reseller: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Revenda'
      FieldName = 'cli_ctr_value_reseller'
      Origin = 'cli_ctr_value_reseller'
      Precision = 12
    end
    object memClientContractcli_ctr_date_signature: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_ctr_date_signature'
      Origin = 'cli_ctr_date_signature'
    end
    object memClientContractcli_ctr_start_service: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Inic.'
      FieldName = 'cli_ctr_start_service'
      Origin = 'cli_ctr_start_service'
    end
    object memClientContractcli_ctr_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'cli_ctr_status'
      Origin = 'cli_ctr_status'
    end
    object memClientContractcli_ctr_annotation: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'cli_ctr_annotation'
      Origin = 'cli_ctr_annotation'
      Size = 255
    end
    object memClientContractcli_ctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cli_ctr_dt_registration'
      Origin = 'cli_ctr_dt_registration'
    end
    object memClientContractreseller_name: TStringField
      DisplayLabel = 'Revenda'
      FieldKind = fkLookup
      FieldName = 'reseller_name'
      LookupDataSet = memReseller
      LookupKeyFields = 'res_cod'
      LookupResultField = 'res_first_name'
      KeyFields = 'reseller_res_cod'
      Size = 85
      Lookup = True
    end
    object memClientContractclient_name: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'client_name'
      LookupDataSet = memClient
      LookupKeyFields = 'cli_cod'
      LookupResultField = 'cli_first_name'
      KeyFields = 'client_cli_cod'
      Size = 85
      Lookup = True
    end
  end
  object dsClientContract: TDataSource
    DataSet = memClientContract
    Left = 400
    Top = 112
  end
  object memClientContractIten: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 280
    Top = 160
    object memClientContractItencci_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cci_cod'
      Origin = 'cci_cod'
      Size = 32
    end
    object memClientContractItenclient_contract_cli_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato'
      FieldName = 'client_contract_cli_ctr_cod'
      Origin = 'client_contract_cli_ctr_cod'
      Size = 32
    end
    object memClientContractItenproduct_pro_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
      Size = 32
    end
    object memClientContractItenreseller_res_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Revenda'
      FieldName = 'reseller_res_cod'
      Origin = 'reseller_res_cod'
      Size = 32
    end
    object memClientContractItencci_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'cci_value'
      Origin = 'cci_value'
      Precision = 12
    end
    object memClientContractItencci_quant: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant.'
      FieldName = 'cci_quant'
      Origin = 'cci_quant'
      Precision = 12
    end
    object memClientContractItencci_value_discount: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Desc.'
      FieldName = 'cci_value_discount'
      Origin = 'cci_value_discount'
      Precision = 12
    end
    object memClientContractItencci_value_total: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Total'
      FieldName = 'cci_value_total'
      Origin = 'cci_value_total'
      Precision = 12
    end
    object memClientContractItencci_value_reseller: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Revenda'
      FieldName = 'cci_value_reseller'
      Origin = 'cci_value_reseller'
      Precision = 12
    end
    object memClientContractItencci_annotation: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'cci_annotation'
      Origin = 'cci_annotation'
      Size = 255
    end
    object memClientContractItencci_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cci_dt_registration'
      Origin = 'cci_dt_registration'
    end
    object memClientContractItenproduct_name: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'product_name'
      LookupDataSet = memProduct
      LookupKeyFields = 'pro_cod'
      LookupResultField = 'pro_name'
      KeyFields = 'product_pro_cod'
      Size = 85
      Lookup = True
    end
  end
  object dsClientContractIten: TDataSource
    DataSet = memClientContractIten
    Left = 400
    Top = 160
  end
  object memContract: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 280
    Top = 208
    object memContractctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ctr_cod'
      Origin = 'ctr_cod'
      Size = 32
    end
    object memContractctr_id: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
    end
    object memContractctr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ctr_first_name'
      Origin = 'ctr_first_name'
      Size = 85
    end
    object memContractctr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sobrenome'
      FieldName = 'ctr_last_name'
      Origin = 'ctr_last_name'
      Size = 85
    end
    object memContractctr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_email'
      Origin = 'ctr_email'
      Size = 65
    end
    object memContractctr_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ctr_phone1'
      Origin = 'ctr_phone1'
      Size = 15
    end
    object memContractctr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'ctr_dt_birth'
      Origin = 'ctr_dt_birth'
    end
    object memContractctr_user_license: TWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Licen'#231'a'
      FieldName = 'ctr_user_license'
      Origin = 'ctr_user_license'
    end
    object memContractctr_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ctr_status'
      Origin = 'ctr_status'
    end
    object memContractctr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ctr_deleted_at'
      Origin = 'ctr_deleted_at'
    end
    object memContractctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_dt_registration'
      Origin = 'ctr_dt_registration'
    end
  end
  object dsContract: TDataSource
    DataSet = memContract
    Left = 400
    Top = 208
  end
end
