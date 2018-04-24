object frm_dm: Tfrm_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 293
  Width = 432
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
    Left = 128
    Top = 72
  end
  object manCCS: TFDManager
    DriverDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    ConnectionDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 128
    Top = 8
  end
  object qry_signin: TFDQuery
    Active = True
    Connection = connCCS
    SQL.Strings = (
      
        'SELECT c.ctr_id, cu.ctr_usr_id, cu.ctr_usr_first_name, cu.ctr_us' +
        'r_username, cu.ctr_usr_password,ctr_usr_logged,ctr_usr_admin FRO' +
        'M contract c'
      '    INNER JOIN contract_user cu ON c.ctr_id = cu.contract_ctr_id'
      
        '    WHERE c.ctr_id = :contract AND cu.ctr_usr_username = :userna' +
        'me and (cu.ctr_usr_password=:password or cu.ctr_usr_password is ' +
        'null)'#10)
    Left = 40
    Top = 128
    ParamData = <
      item
        Name = 'CONTRACT'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'USERNAME'
        DataType = ftString
        ParamType = ptInput
        Value = 'elizeu'
      end
      item
        Name = 'PASSWORD'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qry_signinctr_id: TFDAutoIncField
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_signinctr_usr_first_name: TStringField
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 50
    end
    object qry_signinctr_usr_username: TStringField
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 25
    end
    object qry_signinctr_usr_password: TStringField
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
      Size = 25
    end
    object qry_signinctr_usr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_signinctr_usr_logged: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_logged'
      Origin = 'ctr_usr_logged'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qry_signinctr_usr_admin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_admin'
      Origin = 'ctr_usr_admin'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object ds_signin: TDataSource
    DataSet = qry_signin
    Left = 136
    Top = 128
  end
  object mysql_driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ccsolutions_dsk\bin\libmysql.dll'
    Left = 40
    Top = 72
  end
  object qry_enterprise: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = ds_signin
    MasterFields = 'ctr_id'
    Connection = connCCS
    SQL.Strings = (
      'select * from enterprise'
      'where contract_ctr_id =:ctr_id'
      
        'and ent_id in (select ctr_usr_ent_ent_id  from contract_user_ent' +
        'erprise where ctr_usr_ent_user_id =:ctr_usr_id)')
    Left = 44
    Top = 190
    ParamData = <
      item
        Name = 'CTR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CTR_USR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
    object qry_enterpriseent_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      DisplayWidth = 15
      FieldName = 'ent_id'
      Origin = 'ent_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_enterprisecontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
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
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 50
    end
    object qry_enterpriseent_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 50
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
      Size = 9
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
    object qry_enterpriseent_image: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'ent_image'
      Origin = 'ent_image'
    end
    object qry_enterpriseent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
    end
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 144
    Top = 184
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
    Left = 216
    Top = 184
  end
  object connCDL: TFDConnection
    Params.Strings = (
      'Database=bitlab'
      'User_Name=sa'
      'Password=YxKtcdl1'
      'Server=cdlaboratorio.dyndns.org'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 264
    Top = 8
  end
  object mssql_driver: TFDPhysMSSQLDriverLink
    Left = 344
    Top = 8
  end
  object qry_logged: TFDQuery
    Connection = connCCS
    SQL.Strings = (
      'SELECT ctr_usr_logged FROM contract_user'
      'WHERE contract_ctr_id= :contract '
      'and ctr_usr_username = :username '
      'and ctr_usr_password=:password')
    Left = 40
    Top = 240
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
end
