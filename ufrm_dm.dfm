object frm_dm: Tfrm_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 136
  Width = 257
  object database: TRESTDWDataBase
    Active = True
    Compression = True
    MyIP = '127.0.0.1'
    Login = 'root'
    Password = 'root'
    Proxy = False
    ProxyOptions.Port = 8888
    PoolerService = '127.0.0.1'
    PoolerPort = 80
    PoolerName = 'Tfrm_dm.poolerDB'
    StateConnection.AutoCheck = False
    StateConnection.InTime = 1000
    RequestTimeOut = 10000
    EncodeStrings = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    ParamCreate = True
    ClientConnectionDefs.Active = False
    Left = 24
    Top = 64
  end
  object connDB: TFDConnection
    Params.Strings = (
      'ConnectionDef=database')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object waitCursor: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 176
    Top = 16
  end
  object driverLink: TFDPhysMySQLDriverLink
    VendorHome = 'C:\ccsolutions\'
    VendorLib = 'libmysql.dll'
    Left = 120
    Top = 16
  end
  object mamDB: TFDManager
    DriverDefFileName = 'C:\ccsolutions\config\database.ini'
    ConnectionDefFileName = 'C:\ccsolutions\config\database.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 72
    Top = 16
  end
end
