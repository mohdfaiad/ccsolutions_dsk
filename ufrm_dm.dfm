object frm_dm: Tfrm_dm
  OldCreateOrder = False
  Height = 280
  Width = 221
  object connCCS: TFDConnection
    Params.Strings = (
      'ConnectionDef=ccs_connection')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 136
    Top = 64
  end
  object wait_cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 160
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
  object mysql_driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ccsolutions_dsk\bin\libmysql.dll'
    Left = 136
    Top = 112
  end
  object rest_client: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 40
    Top = 16
  end
  object rest_request: TRESTRequest
    Client = rest_client
    Params = <>
    Response = rest_response
    SynchronizedEvents = False
    Left = 40
    Top = 64
  end
  object rest_response: TRESTResponse
    ContentType = 'text/html'
    RootElement = 'contract_user_signin'
    Left = 40
    Top = 112
  end
  object rest_response_dsa: TRESTResponseDataSetAdapter
    Dataset = mem_rest
    FieldDefs = <>
    Response = rest_response
    NestedElements = True
    Left = 40
    Top = 160
  end
  object mem_rest: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 40
    Top = 216
  end
end
