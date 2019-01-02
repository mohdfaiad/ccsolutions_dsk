inherited frm_voip_server: Tfrm_voip_server
  Caption = 'Manuten'#231#227'o: Servidores Voip'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1vps_id: TcxGridDBColumn
            DataBinding.FieldName = 'vps_id'
            Width = 75
          end
          object cxGrid_1DBTableView1vps_type: TcxGridDBColumn
            DataBinding.FieldName = 'vps_type'
            Width = 50
          end
          object cxGrid_1DBTableView1vps_name: TcxGridDBColumn
            DataBinding.FieldName = 'vps_name'
            Width = 175
          end
          object cxGrid_1DBTableView1vps_address: TcxGridDBColumn
            DataBinding.FieldName = 'vps_address'
            Width = 150
          end
          object cxGrid_1DBTableView1vps_port: TcxGridDBColumn
            DataBinding.FieldName = 'vps_port'
            Width = 50
          end
          object cxGrid_1DBTableView1vps_username: TcxGridDBColumn
            DataBinding.FieldName = 'vps_username'
            Width = 150
          end
          object cxGrid_1DBTableView1vps_api_address: TcxGridDBColumn
            DataBinding.FieldName = 'vps_api_address'
            Width = 150
          end
          object cxGrid_1DBTableView1vps_api_port: TcxGridDBColumn
            DataBinding.FieldName = 'vps_api_port'
            Width = 65
          end
          object cxGrid_1DBTableView1vps_api_webservice: TcxGridDBColumn
            DataBinding.FieldName = 'vps_api_webservice'
            Width = 150
          end
          object cxGrid_1DBTableView1vps_api_username: TcxGridDBColumn
            DataBinding.FieldName = 'vps_api_username'
            Width = 150
          end
          object cxGrid_1DBTableView1vps_api_key: TcxGridDBColumn
            DataBinding.FieldName = 'vps_api_key'
            Width = 150
          end
          object cxGrid_1DBTableView1vps_status: TcxGridDBColumn
            DataBinding.FieldName = 'vps_status'
            Width = 50
          end
          object cxGrid_1DBTableView1vps_deleted_at: TcxGridDBColumn
            DataBinding.FieldName = 'vps_deleted_at'
            Width = 125
          end
          object cxGrid_1DBTableView1vps_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'vps_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 562
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 67
              DataBinding.DataField = 'vps_id'
              ExplicitLeft = 67
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              DataBinding.DataField = 'vps_dt_registration'
              ExplicitLeft = 240
            end
            object dbedt_name: TcxDBTextEdit [2]
              Left = 67
              Top = 130
              DataBinding.DataField = 'vps_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object dbedt_address: TcxDBTextEdit [3]
              Left = 67
              Top = 157
              DataBinding.DataField = 'vps_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 303
            end
            object dbcmb_type: TcxDBComboBox [4]
              Left = 67
              Top = 103
              DataBinding.DataField = 'vps_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.Items.Strings = (
                'T - TAFIFADOR'
                'P - PABX')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_port: TcxDBSpinEdit [5]
              Left = 407
              Top = 157
              DataBinding.DataField = 'vps_port'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object dbedt_username: TcxDBTextEdit [6]
              Left = 67
              Top = 184
              DataBinding.DataField = 'vps_username'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dbchk_status: TcxDBCheckBox [7]
              Left = 376
              Top = 38
              Caption = 'Status'
              DataBinding.DataField = 'vps_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '1'
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            object dbedt_password: TcxDBTextEdit [8]
              Left = 240
              Top = 184
              DataBinding.DataField = 'vps_password'
              DataBinding.DataSource = ds
              Properties.EchoMode = eemPassword
              Style.HotTrack = False
              TabOrder = 8
              Width = 130
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 3
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = dbedt_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Endere'#231'o'
              Control = dbedt_address
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Tipo'
              Control = dbcmb_type
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Porta'
              Control = dbedt_port
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Usu'#225'rio'
              Control = dbedt_username
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Senha'
              Control = dbedt_password
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'API'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_api_username: TcxDBTextEdit
              Left = 79
              Top = 92
              DataBinding.DataField = 'vps_api_username'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dbedt_api_address: TcxDBTextEdit
              Left = 79
              Top = 38
              DataBinding.DataField = 'vps_api_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 299
            end
            object dbedt_api_key: TcxDBTextEdit
              Left = 415
              Top = 65
              DataBinding.DataField = 'vps_api_key'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_api_port: TcxDBSpinEdit
              Left = 415
              Top = 38
              DataBinding.DataField = 'vps_api_port'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dbedt_api_webservice: TcxDBTextEdit
              Left = 79
              Top = 65
              DataBinding.DataField = 'vps_api_webservice'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 299
            end
            object dbedt_api_password: TcxDBTextEdit
              Left = 257
              Top = 92
              DataBinding.DataField = 'vps_api_password'
              DataBinding.DataSource = ds
              Properties.EchoMode = eemPassword
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Dados'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Usu'#225'rio'
              Control = dbedt_api_username
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Endere'#231'o'
              Control = dbedt_api_address
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 299
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Key'
              Control = dbedt_api_key
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Porta'
              Control = dbedt_api_port
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'WebService'
              Control = dbedt_api_webservice
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 299
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Password'
              Control = dbedt_api_password
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited ActionList_1: TActionList
    inherited Action_save: TAction
      OnExecute = Action_saveExecute
    end
  end
  inherited qry: TFDQuery [5]
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'call proc_voip_server_read(:p)')
    ParamData = <
      item
        Name = 'P'
        DataType = ftWideString
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited ACBrEnterTab_1: TACBrEnterTab [6]
  end
  inherited QExport4Dialog_1: TQExport4Dialog [7]
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard [8]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited schadp: TFDSchemaAdapter [9]
  end
  inherited frxReport_1: TfrxReport [10]
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [11]
  end
  inherited mem: TFDMemTable [12]
    Active = True
    FieldDefs = <
      item
        Name = 'vps_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'vps_id'
        DataType = ftLongWord
      end
      item
        Name = 'vps_type'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'vps_name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'vps_address'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'vps_port'
        DataType = ftInteger
      end
      item
        Name = 'vps_username'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'vps_password'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'vps_api_address'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'vps_api_port'
        DataType = ftInteger
      end
      item
        Name = 'vps_api_webservice'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'vps_api_username'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'vps_api_password'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'vps_api_key'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'vps_status'
        DataType = ftShortint
      end
      item
        Name = 'vps_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'vps_dt_registration'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'vps_id'
    StoreDefs = True
    object memvps_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'vps_cod'
      Origin = 'vps_cod'
      Size = 32
    end
    object memvps_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'vps_id'
      Origin = 'vps_id'
    end
    object memvps_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'vps_type'
      Origin = 'vps_type'
      FixedChar = True
      Size = 1
    end
    object memvps_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'vps_name'
      Origin = 'vps_name'
      Size = 50
    end
    object memvps_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'vps_address'
      Origin = 'vps_address'
      Size = 50
    end
    object memvps_port: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Porta'
      FieldName = 'vps_port'
      Origin = 'vps_port'
    end
    object memvps_username: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'vps_username'
      Origin = 'vps_username'
      Size = 65
    end
    object memvps_password: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'vps_password'
      Size = 32
    end
    object memvps_api_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'API Endere'#231'o'
      FieldName = 'vps_api_address'
      Origin = 'vps_api_address'
      Size = 255
    end
    object memvps_api_port: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'API Porta'
      FieldName = 'vps_api_port'
      Origin = 'vps_api_port'
    end
    object memvps_api_webservice: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'API Webservice'
      FieldName = 'vps_api_webservice'
      Origin = 'vps_api_webservice'
      Size = 255
    end
    object memvps_api_username: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'API Usu'#225'rio'
      FieldName = 'vps_api_username'
      Origin = 'vps_api_username'
      Size = 65
    end
    object memvps_api_password: TStringField
      DisplayLabel = 'API Senha'
      FieldName = 'vps_api_password'
      Size = 32
    end
    object memvps_api_key: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'API Key'
      FieldName = 'vps_api_key'
      Origin = 'vps_api_key'
      Size = 50
    end
    object memvps_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'vps_status'
      Origin = 'vps_status'
    end
    object memvps_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'vps_deleted_at'
      Origin = 'vps_deleted_at'
    end
    object memvps_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'vps_dt_registration'
      Origin = 'vps_dt_registration'
    end
  end
  inherited PopupMenu_1: TPopupMenu [13]
  end
  inherited cxImageList_1: TcxImageList [14]
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [15]
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
