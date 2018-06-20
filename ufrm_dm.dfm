object frm_dm: Tfrm_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 408
  Width = 470
  object connCCS: TFDConnection
    Params.Strings = (
      'ConnectionDef=ccs_connection')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object wait_cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 112
  end
  object manCCS: TFDManager
    DriverDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    ConnectionDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 88
    Top = 16
  end
  object mysql_driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ccsolutions_dsk\bin\libmysql.dll'
    Left = 40
    Top = 64
  end
  object qry_enterprise: TFDQuery
    Connection = connCCS
    SQL.Strings = (
      'select * from enterprise'#10'where contract_ctr_cod =:ctr_cod'
      
        'and ent_cod in (select enterprise_ent_cod  from contract_user_en' +
        'terprise '
      'where contract_user_ctr_usr_cod = unhex(:CodUsuario) )')
    Left = 368
    Top = 64
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end
      item
        Name = 'CODUSUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qry_enterpriseent_cod: TBytesField
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_enterprisecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_enterpriseent_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 12
      FieldName = 'ent_id'
      Origin = 'ent_id'
    end
    object qry_enterpriseent_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_type'
      Origin = 'ent_type'
      FixedChar = True
      Size = 1
    end
    object qry_enterpriseent_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Empresa'
      DisplayWidth = 100
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object qry_enterpriseent_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Empresa'
      DisplayWidth = 100
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 85
    end
    object qry_enterpriseent_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_email'
      Origin = 'ent_email'
      Size = 65
    end
    object qry_enterpriseent_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      Size = 25
    end
    object qry_enterpriseent_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_ie'
      Origin = 'ent_ie'
      Size = 25
    end
    object qry_enterpriseent_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_im'
      Origin = 'ent_im'
      Size = 25
    end
    object qry_enterpriseent_suframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_suframa'
      Origin = 'ent_suframa'
      Size = 25
    end
    object qry_enterpriseent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      Size = 6
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
    object qry_enterpriseent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      Size = 45
    end
    object qry_enterpriseent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      Size = 50
    end
    object qry_enterpriseent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      Size = 35
    end
    object qry_enterpriseent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qry_enterpriseent_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_country'
      Origin = 'ent_add_bus_country'
      Size = 25
    end
    object qry_enterpriseent_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
    object qry_enterpriseent_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone2'
      Origin = 'ent_phone2'
      Size = 15
    end
    object qry_enterpriseent_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone3'
      Origin = 'ent_phone3'
      Size = 15
    end
    object qry_enterpriseent_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone4'
      Origin = 'ent_phone4'
      Size = 15
    end
    object qry_enterpriseent_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_contact'
      Origin = 'ent_contact'
      Size = 25
    end
    object qry_enterpriseent_dt_open: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ent_dt_open'
      Origin = 'ent_dt_open'
    end
    object qry_enterpriseent_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ent_deleted_at'
      Origin = 'ent_deleted_at'
    end
    object qry_enterpriseent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
    end
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 368
    Top = 112
  end
  object frx_db_enterprise: TfrxDBDataset
    UserName = 'enterprise'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ent_id=ent_id'
      'contract_ctr_id=contract_ctr_id'
      'ent_type=ent_type'
      'ent_first_name=ent_first_name'
      'ent_last_name=ent_last_name'
      'ent_email=ent_email'
      'ent_cnpj=ent_cnpj'
      'ent_ie=ent_ie'
      'ent_im=ent_im'
      'ent_suframa=ent_suframa'
      'ent_add_bus_zipcode=ent_add_bus_zipcode'
      'ent_add_bus_address=ent_add_bus_address'
      'ent_add_bus_number=ent_add_bus_number'
      'ent_add_bus_street=ent_add_bus_street'
      'ent_add_bus_complement=ent_add_bus_complement'
      'ent_add_bus_city=ent_add_bus_city'
      'ent_add_bus_state=ent_add_bus_state'
      'ent_add_bus_country=ent_add_bus_country'
      'ent_phone1=ent_phone1'
      'ent_phone2=ent_phone2'
      'ent_phone3=ent_phone3'
      'ent_phone4=ent_phone4'
      'ent_contact=ent_contact'
      'ent_dt_open=ent_dt_open'
      'ent_image=ent_image'
      'ent_dt_registration=ent_dt_registration')
    DataSet = qry_enterprise
    BCDToCurrency = False
    Left = 368
    Top = 16
  end
  object connCDL: TFDConnection
    Params.Strings = (
      'Database=bitlab'
      'User_Name=sa'
      'Password=YxKtcdl1'
      'Server=cdlaboratorio.dyndns.org'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 16
  end
  object mssql_driver: TFDPhysMSSQLDriverLink
    Left = 168
    Top = 64
  end
  object qry_logged: TFDQuery
    Connection = connCCS
    SQL.Strings = (
      'SELECT ctr_usr_logged FROM contract_user'
      'WHERE contract_ctr_cod= :contract '
      'and ctr_usr_username = :username '
      'and ctr_usr_password=:password')
    Left = 368
    Top = 208
    ParamData = <
      item
        Name = 'CONTRACT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USERNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASSWORD'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qry_loggedctr_usr_logged: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_logged'
      Origin = 'ctr_usr_logged'
      FixedChar = True
      Size = 1
    end
  end
  object qry_action: TFDQuery
    Connection = connCCS
    SQL.Strings = (
      'select sys_act_subtitle,sys_Act_name from system_action'#10
      'where sys_act_option =:sys_Act_option'
      'and sys_act_module = :sys_act_module '
      'order by sys_act_name')
    Left = 368
    Top = 160
    ParamData = <
      item
        Name = 'SYS_ACT_OPTION'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SYS_ACT_MODULE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qry_actionsys_act_subtitle: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sys_act_subtitle'
      Origin = 'sys_act_subtitle'
      Size = 100
    end
    object qry_actionsys_Act_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sys_Act_name'
      Origin = 'sys_act_name'
      Size = 80
    end
  end
  object qry_signin: TFDQuery
    Connection = connCCS
    Left = 40
    Top = 160
  end
  object qry_contract: TFDQuery
    Connection = connCCS
    SQL.Strings = (
      'select ctr_cod,ctr_id from contract'
      'where ctr_cod =:ctr_cod')
    Left = 368
    Top = 256
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Value = Null
      end>
    object qry_contractctr_cod: TBytesField
      FieldName = 'ctr_cod'
      Origin = 'ctr_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_contractctr_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
    end
  end
  object ds_contract: TDataSource
    DataSet = qry_contract
    Left = 368
    Top = 304
  end
end
