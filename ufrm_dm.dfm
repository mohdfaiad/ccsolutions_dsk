object frm_dm: Tfrm_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 371
  Width = 534
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
    Active = True
    Connection = connCCS
    SQL.Strings = (
      'select * '#10'from'#10' enterprise '#10
      
        'where '#10'contract_ctr_cod = :ctr_cod and ent_cod in (select enterp' +
        'rise_ent_cod from contract_user_enterprise  where contract_user_' +
        'ctr_usr_cod = unhex(:CodUsuario))')
    Left = 256
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
    object qry_enterpriseent_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_nickname'
      Origin = 'ent_nickname'
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
    object qry_enterpriseent_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_status'
      Origin = 'ent_status'
      FixedChar = True
      Size = 1
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
    object qry_enterpriseent_image1: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'ent_image1'
      Origin = 'ent_image1'
    end
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 256
    Top = 112
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
    Left = 160
    Top = 16
  end
  object mssql_driver: TFDPhysMSSQLDriverLink
    Left = 160
    Top = 64
  end
  object qry_logged: TFDQuery
    Active = True
    Connection = connCCS
    SQL.Strings = (
      
        'select ctr_usr_logged from contract_user where contract_ctr_cod ' +
        '= :contract and ctr_usr_username = :username and ctr_usr_passwor' +
        'd = :password')
    Left = 256
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
    object qry_loggedctr_usr_logged: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_logged'
      Origin = 'ctr_usr_logged'
    end
  end
  object qry_action: TFDQuery
    Active = True
    Connection = connCCS
    SQL.Strings = (
      'select sys_act_subtitle,sys_Act_name from system_action'#10
      'where sys_act_option =:sys_Act_option'
      'and sys_act_module = :sys_act_module '
      'order by sys_act_name')
    Left = 256
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
    Left = 256
    Top = 256
    object qry_contractctr_cod: TStringField
      FieldName = 'ctr_cod'
      Size = 32
    end
    object qry_contractctr_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
    end
    object qry_contractctr_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_first_name'
      Origin = 'ctr_first_name'
      Size = 85
    end
    object qry_contractctr_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_last_name'
      Origin = 'ctr_last_name'
      Size = 85
    end
    object qry_contractctr_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_email'
      Origin = 'ctr_email'
      Size = 65
    end
    object qry_contractctr_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_phone1'
      Origin = 'ctr_phone1'
      Size = 15
    end
    object qry_contractctr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_dt_birth'
      Origin = 'ctr_dt_birth'
    end
    object qry_contractctr_user_license: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_user_license'
      Origin = 'ctr_user_license'
    end
    object qry_contractctr_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_status'
      Origin = 'ctr_status'
      FixedChar = True
      Size = 1
    end
    object qry_contractctr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_deleted_at'
      Origin = 'ctr_deleted_at'
    end
    object qry_contractctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_dt_registration'
      Origin = 'ctr_dt_registration'
    end
  end
  object ds_contract: TDataSource
    DataSet = qry_contract
    Left = 256
    Top = 304
  end
  object frx_db_enterprise: TfrxDBDataset
    UserName = 'enterprise'
    CloseDataSource = False
    DataSet = qry_enterprise
    BCDToCurrency = False
    Left = 256
    Top = 16
  end
  object rest_client: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 
      'http://localhost/api/rest/methods/contract_user_signin/1/eltonba' +
      'hiabc/3LbEr7'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 400
    Top = 16
  end
  object rest_request: TRESTRequest
    Client = rest_client
    Params = <>
    Response = rest_response
    SynchronizedEvents = False
    Left = 400
    Top = 64
  end
  object rest_response: TRESTResponse
    ContentType = 'text/html'
    RootElement = 'contract_user_signin'
    Left = 400
    Top = 112
  end
  object rest_response_dsa: TRESTResponseDataSetAdapter
    Dataset = rest_mem
    FieldDefs = <>
    Response = rest_response
    Left = 400
    Top = 160
  end
  object rest_mem: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 400
    Top = 208
  end
  object mem_contract_user_signin: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 400
    Top = 256
  end
end
