object frm_dm: Tfrm_dm
  OldCreateOrder = False
  Height = 279
  Width = 191
  object connCCS: TFDConnection
    Params.Strings = (
      'ConnectionDef=database')
    FetchOptions.AssignedValues = [evMode]
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 64
  end
  object wait_cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 160
  end
  object manCCS: TFDManager
    DriverDefFileName = 'C:\ccsolutions_dsk\data\connection.ini'
    ConnectionDefFileName = 'C:\ccsolutions_dsk\data\connection.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 128
    Top = 16
  end
  object mysql_driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ccsolutions_dsk\bin\libmysql.dll'
    Left = 128
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
    Left = 40
    Top = 112
  end
  object rest_response_dsa: TRESTResponseDataSetAdapter
    Dataset = mem_rest
    FieldDefs = <>
    Response = rest_response
    Left = 40
    Top = 160
  end
  object mem_rest: TFDMemTable
    FetchOptions.AssignedValues = [evMode, evRowsetSize]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 40
    Top = 216
  end
end
