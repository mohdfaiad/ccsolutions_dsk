inherited frm_voip_server: Tfrm_voip_server
  Caption = 'Manuten'#231#227'o: Servidores Voip'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1vps_id: TcxGridDBColumn
            DataBinding.FieldName = 'vps_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1vps_type: TcxGridDBColumn
            DataBinding.FieldName = 'vps_type'
            Width = 50
          end
          object cxGrid_1DBTableView1vps_name: TcxGridDBColumn
            DataBinding.FieldName = 'vps_name'
            Width = 150
          end
          object cxGrid_1DBTableView1voip_address: TcxGridDBColumn
            DataBinding.FieldName = 'voip_address'
            Width = 200
          end
          object cxGrid_1DBTableView1voip_port: TcxGridDBColumn
            DataBinding.FieldName = 'voip_port'
            Width = 50
          end
          object cxGrid_1DBTableView1voip_username: TcxGridDBColumn
            DataBinding.FieldName = 'voip_username'
            Width = 150
          end
          object cxGrid_1DBTableView1voip_api_address: TcxGridDBColumn
            DataBinding.FieldName = 'voip_api_address'
            Width = 200
          end
          object cxGrid_1DBTableView1voip_api_port: TcxGridDBColumn
            DataBinding.FieldName = 'voip_api_port'
            Width = 50
          end
          object cxGrid_1DBTableView1voip_api_webservice: TcxGridDBColumn
            DataBinding.FieldName = 'voip_api_webservice'
            Width = 200
          end
          object cxGrid_1DBTableView1voip_api_username: TcxGridDBColumn
            DataBinding.FieldName = 'voip_api_username'
            Width = 150
          end
          object cxGrid_1DBTableView1voip_api_key: TcxGridDBColumn
            DataBinding.FieldName = 'voip_api_key'
            Width = 150
          end
          object cxGrid_1DBTableView1voip_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'voip_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 67
              DataBinding.DataField = 'vps_id'
              ExplicitLeft = 67
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              DataBinding.DataField = 'voip_dt_registration'
              ExplicitLeft = 240
            end
            object cxDBTextEdit2: TcxDBTextEdit [2]
              Left = 67
              Top = 130
              DataBinding.DataField = 'vps_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 299
            end
            object cxDBTextEdit3: TcxDBTextEdit [3]
              Left = 67
              Top = 157
              DataBinding.DataField = 'voip_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 299
            end
            object cxDBComboBox1: TcxDBComboBox [4]
              Left = 67
              Top = 103
              DataBinding.DataField = 'vps_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'T - TAFIFADOR'
                'P - PABX')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBSpinEdit1: TcxDBSpinEdit [5]
              Left = 67
              Top = 184
              DataBinding.DataField = 'voip_port'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [6]
              Left = 67
              Top = 211
              DataBinding.DataField = 'voip_username'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [7]
              Left = 245
              Top = 211
              DataBinding.DataField = 'voip_password'
              DataBinding.DataSource = ds
              Properties.EchoMode = eemPassword
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 3
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Endere'#231'o'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Porta'
              Control = cxDBSpinEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 3
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Usu'#225'rio'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahRight
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahRight
              AlignVert = avBottom
              CaptionOptions.Text = 'Password'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'API'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 67
              Top = 92
              DataBinding.DataField = 'voip_api_username'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 67
              Top = 38
              DataBinding.DataField = 'voip_api_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 310
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 67
              Top = 119
              DataBinding.DataField = 'voip_api_key'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 310
            end
            object cxDBSpinEdit2: TcxDBSpinEdit
              Left = 67
              Top = 65
              DataBinding.DataField = 'voip_api_port'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 256
              Top = 65
              DataBinding.DataField = 'voip_api_webservice'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 256
              Top = 92
              DataBinding.DataField = 'voip_api_password'
              DataBinding.DataSource = ds
              Properties.EchoMode = eemPassword
              Style.HotTrack = False
              TabOrder = 4
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
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Endere'#231'o'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 310
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Key'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 310
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Porta'
              Control = cxDBSpinEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'WebService'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Password'
              Control = cxDBTextEdit9
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
          end
        end
      end
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from voip_server')
    object qryvps_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'vps_id'
      Origin = 'vps_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryvps_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'vps_type'
      Origin = 'vps_type'
      FixedChar = True
      Size = 1
    end
    object qryvps_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'vps_name'
      Origin = 'vps_name'
      Size = 50
    end
    object qryvoip_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'voip_address'
      Origin = 'voip_address'
      Size = 50
    end
    object qryvoip_port: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Porta'
      FieldName = 'voip_port'
      Origin = 'voip_port'
    end
    object qryvoip_username: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'voip_username'
      Origin = 'voip_username'
      Size = 65
    end
    object qryvoip_password: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Password'
      FieldName = 'voip_password'
      Origin = 'voip_password'
      Size = 50
    end
    object qryvoip_api_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'voip_api_address'
      Origin = 'voip_api_address'
      Size = 50
    end
    object qryvoip_api_port: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Porta'
      FieldName = 'voip_api_port'
      Origin = 'voip_api_port'
    end
    object qryvoip_api_webservice: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'WebService'
      FieldName = 'voip_api_webservice'
      Origin = 'voip_api_webservice'
      Size = 50
    end
    object qryvoip_api_username: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'voip_api_username'
      Origin = 'voip_api_username'
      Size = 65
    end
    object qryvoip_api_password: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Password'
      FieldName = 'voip_api_password'
      Origin = 'voip_api_password'
      Size = 50
    end
    object qryvoip_api_key: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Key'
      FieldName = 'voip_api_key'
      Origin = 'voip_api_key'
      Size = 50
    end
    object qryvoip_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'voip_dt_registration'
      Origin = 'voip_dt_registration'
    end
  end
  inherited QExport4Dialog_1: TQExport4Dialog
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited frxReport_1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
