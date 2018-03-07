inherited frm_server: Tfrm_server
  Caption = 'Manuten'#231#227'o: Servidores'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1srv_id: TcxGridDBColumn
            DataBinding.FieldName = 'srv_id'
          end
          object cxGrid_1DBTableView1srv_name: TcxGridDBColumn
            DataBinding.FieldName = 'srv_name'
          end
          object cxGrid_1DBTableView1srv_address: TcxGridDBColumn
            DataBinding.FieldName = 'srv_address'
          end
          object cxGrid_1DBTableView1srv_port: TcxGridDBColumn
            DataBinding.FieldName = 'srv_port'
          end
          object cxGrid_1DBTableView1srv_username: TcxGridDBColumn
            DataBinding.FieldName = 'srv_username'
          end
          object cxGrid_1DBTableView1srv_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'srv_dt_registration'
          end
          object cxGrid_1DBTableView1srv_type: TcxGridDBColumn
            DataBinding.FieldName = 'srv_type'
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
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 762
            ExplicitHeight = 432
            inherited dbedt_id: TcxDBTextEdit
              Left = 67
              DataBinding.DataField = 'srv_id'
              ExplicitLeft = 67
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              DataBinding.DataField = 'srv_dt_registration'
              ExplicitLeft = 240
            end
            object cxDBTextEdit4: TcxDBTextEdit [2]
              Left = 240
              Top = 184
              DataBinding.DataField = 'srv_password'
              DataBinding.DataSource = ds
              Properties.EchoMode = eemPassword
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
              Left = 240
              Top = 157
              DataBinding.DataField = 'srv_port'
              DataBinding.DataSource = ds
              Properties.AssignedValues.DisplayFormat = True
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [4]
              Left = 67
              Top = 157
              DataBinding.DataField = 'srv_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [5]
              Left = 67
              Top = 184
              DataBinding.DataField = 'srv_username'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [6]
              Left = 67
              Top = 130
              DataBinding.DataField = 'srv_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBComboBox1: TcxDBComboBox [7]
              Left = 67
              Top = 103
              DataBinding.DataField = 'srv_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'L'
                'M')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              CaptionOptions.Text = 'Senha'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Porta'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Endere'#231'o'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Usu'#225'rio'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    IndexFieldNames = 'srv_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'srv_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from server')
    object qrysrv_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'srv_id'
      Origin = 'srv_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrysrv_name: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'srv_name'
      Origin = 'srv_name'
      Size = 65
    end
    object qrysrv_address: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'srv_address'
      Origin = 'srv_address'
      Size = 65
    end
    object qrysrv_port: TBCDField
      DisplayLabel = 'Porta'
      FieldName = 'srv_port'
      Origin = 'srv_port'
      Precision = 5
      Size = 0
    end
    object qrysrv_username: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'srv_username'
      Origin = 'srv_username'
      Size = 35
    end
    object qrysrv_password: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'srv_password'
      Origin = 'srv_password'
      Size = 35
    end
    object qrysrv_ctr_id: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'srv_ctr_id'
      Origin = 'srv_ctr_id'
    end
    object qrysrv_dt_registration: TSQLTimeStampField
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'srv_dt_registration'
      Origin = 'srv_dt_registration'
    end
    object qrysrv_type: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'srv_type'
      Origin = 'srv_type'
      FixedChar = True
      Size = 1
    end
  end
end
