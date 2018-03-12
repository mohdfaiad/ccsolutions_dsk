object frm_dm: Tfrm_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 192
  Width = 215
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
    Top = 72
  end
  object manCCS: TFDManager
    DriverDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    ConnectionDefFileName = 'C:\ccsolutions_dsk\data\ccs_connection.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 136
    Top = 16
  end
  object qry_signin: TFDQuery
    Active = True
    Connection = connCCS
    SQL.Strings = (
      
        'SELECT c.ctr_id, cu.ctr_usr_first_name, cu.ctr_usr_username, cu.' +
        'ctr_usr_password FROM contract c'
      '    INNER JOIN contract_user cu ON c.ctr_id = cu.contract_ctr_id'
      
        '    WHERE c.ctr_id = :contract AND cu.ctr_usr_username = :userna' +
        'me AND cu.ctr_usr_password = :password')
    Left = 40
    Top = 128
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
end
