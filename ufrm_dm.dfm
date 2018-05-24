object frm_dm: Tfrm_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 275
  Width = 338
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
    Left = 136
    Top = 16
  end
  object manCCS: TFDManager
    DriverDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    ConnectionDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 72
    Top = 16
  end
  object qry_signin: TFDQuery
    Connection = connCCS
    SQL.Strings = (
      
        'SELECT concat('#39'0x'#39',hex(ctr_cod)) as contractCod,concat('#39'0x'#39',hex(' +
        'cu.ctr_usr_cod)) as userCod,'
      
        'c.ctr_cod, c.ctr_id, cu.ctr_usr_cod, cu.ctr_usr_first_name, cu.c' +
        'tr_usr_username, cu.ctr_usr_password,ctr_usr_logged,'#10'ctr_usr_adm' +
        'in,ctr_usr_dt_birth,'
      'ctr_usr_email FROM contract c'
      'INNER JOIN contract_user cu ON c.ctr_cod = cu.contract_ctr_cod'
      
        'WHERE c.ctr_id = :contract AND cu.ctr_usr_username = :username a' +
        'nd (cu.ctr_usr_password=:password or cu.ctr_usr_password is null' +
        ')'#10#10)
    Left = 40
    Top = 88
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
    object qry_signincontractCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contractCod'
      Origin = 'contractCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object qry_signinuserCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'userCod'
      Origin = 'userCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object qry_signinctr_cod: TBytesField
      FieldName = 'ctr_cod'
      Origin = 'ctr_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_signinctr_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
    end
    object qry_signinctr_usr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_cod'
      Origin = 'ctr_usr_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_signinctr_usr_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_signinctr_usr_username: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      ProviderFlags = []
      ReadOnly = True
      Size = 65
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
    object qry_signinctr_usr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_signinctr_usr_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      ProviderFlags = []
      ReadOnly = True
      Size = 65
    end
    object qry_signinctr_usr_password: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_signin: TDataSource
    DataSet = qry_signin
    Left = 128
    Top = 56
  end
  object mysql_driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ccsolutions_dsk\bin\libmysql.dll'
    Left = 104
    Top = 16
  end
  object qry_enterprise: TFDQuery
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = ds_signin
    MasterFields = 'ctr_cod'
    Connection = connCCS
    SQL.Strings = (
      'select * from enterprise'
      'where contract_ctr_cod =:ctr_cod'
      
        'and ent_cod in (select ctr_usr_ent_ent_cod  from contract_user_e' +
        'nterprise where ctr_usr_ent_user_cod =:ctr_usr_id)'#10#10#10)
    Left = 40
    Top = 152
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end
      item
        Name = 'CTR_USR_ID'
        DataType = ftBytes
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
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object qry_enterpriseent_last_name: TStringField
      AutoGenerateValue = arDefault
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
    Left = 144
    Top = 128
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
    Left = 232
    Top = 64
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
    Left = 232
    Top = 16
  end
  object mssql_driver: TFDPhysMSSQLDriverLink
    Left = 264
    Top = 16
  end
  object qry_logged: TFDQuery
    Connection = connCCS
    SQL.Strings = (
      'SELECT ctr_usr_logged FROM contract_user'
      'WHERE contract_ctr_cod= :contract '
      'and ctr_usr_username = :username '
      'and ctr_usr_password=:password')
    Left = 40
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
    Left = 120
    Top = 208
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
  object qry_signinNew: TFDQuery
    Connection = connCCS
    Left = 248
    Top = 168
  end
end
