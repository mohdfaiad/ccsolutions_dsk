inherited frm_contract_user: Tfrm_contract_user
  Caption = 'Manuten'#231#227'o: Usu'#225'rios'
  OnClose = FormClose
  ExplicitLeft = -316
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
          OnCustomDrawCell = cxGrid_1DBTableView1CustomDrawCell
          object cxGrid_1DBTableView1ctr_usr_id: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ctr_usr_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_first_name'
            Width = 125
          end
          object cxGrid_1DBTableView1ctr_usr_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_last_name'
            Width = 125
          end
          object cxGrid_1DBTableView1ctr_usr_email: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_email'
            Width = 200
          end
          object cxGrid_1DBTableView1ctr_usr_username: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_username'
            Width = 125
          end
          object cxGrid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_dt_birth'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_dt_registration'
            Width = 125
          end
          object cxGrid_1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Logado'
            DataBinding.FieldName = 'ctr_usr_logged'
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
              DataBinding.DataField = 'ctr_usr_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 245
              DataBinding.DataField = 'ctr_usr_dt_registration'
              ExplicitLeft = 245
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'ctr_usr_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [3]
              Left = 59
              Top = 130
              DataBinding.DataField = 'ctr_usr_username'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [4]
              Left = 245
              Top = 103
              DataBinding.DataField = 'ctr_usr_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [5]
              Left = 420
              Top = 103
              DataBinding.DataField = 'ctr_usr_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [6]
              Left = 245
              Top = 130
              DataBinding.DataField = 'ctr_usr_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 296
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Usu'#225'rio'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Sobrenome'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Aniv.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 296
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Controle'
          OnShow = cxTabSheet1Show
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object cxListEmps: TcxCheckListBox
              Left = 17
              Top = 38
              Width = 480
              Height = 129
              Items = <>
              TabOrder = 0
              OnClick = cxListEmpsClick
              OnClickCheck = cxListEmpsClickCheck
            end
            object dxLayoutGroup3: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'Lista de empresa'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 164
              SizeOptions.Width = 494
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup4
              Control = cxListEmps
              ControlOptions.OriginalHeight = 129
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited PopupMenu_1: TPopupMenu
    OnPopup = PopupMenu_1Popup
    object DesconectarUsurio1: TMenuItem
      Caption = 'Desconectar  Usu'#225'rio'
      OnClick = DesconectarUsurio1Click
    end
    object BloqueerUsurio1: TMenuItem
      Caption = 'Bloqueer Usu'#225'rio'
      OnClick = BloqueerUsurio1Click
    end
    object DesbloquearUsurio1: TMenuItem
      Caption = 'Desbloquear Usu'#225'rio'
      OnClick = DesbloquearUsurio1Click
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 512
    Top = 40
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from contract_user')
    object qryctr_usr_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryctr_usr_first_name: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 50
    end
    object qryctr_usr_last_name: TStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'ctr_usr_last_name'
      Origin = 'ctr_usr_last_name'
      Size = 50
    end
    object qryctr_usr_email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      Size = 65
    end
    object qryctr_usr_username: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 25
    end
    object qryctr_usr_password: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
      Size = 25
    end
    object qryctr_usr_dt_birth: TDateField
      DisplayLabel = 'Dt. Aniv.'
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
    end
    object qryctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryctr_usr_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_status'
      Origin = 'ctr_usr_status'
      FixedChar = True
      Size = 1
    end
    object qryctr_usr_logged: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_logged'
      Origin = 'ctr_usr_logged'
      FixedChar = True
      Size = 1
    end
    object qryctr_usr_admin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_admin'
      Origin = 'ctr_usr_admin'
      FixedChar = True
      Size = 1
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
    Left = 271
    Top = 40
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docEmail
    IgnorarChar = './-'
    OnMsgErro = ACBrValidador1MsgErro
    Left = 712
    Top = 128
  end
  object qry_contract_user_enterprise: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ctr_usr_ent_user_id'
    MasterSource = ds
    MasterFields = 'ctr_usr_id'
    DetailFields = 'ctr_usr_ent_user_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from contract_user_enterprise'
      'where ctr_usr_ent_user_id = :ctr_usr_id')
    Left = 575
    Top = 146
    ParamData = <
      item
        Name = 'CTR_USR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object qry_contract_user_enterprisectr_usr_ent_id: TFDAutoIncField
      FieldName = 'ctr_usr_ent_id'
      ReadOnly = True
    end
    object qry_contract_user_enterprisectr_usr_ent_user_id: TIntegerField
      FieldName = 'ctr_usr_ent_user_id'
    end
    object qry_contract_user_enterprisectr_usr_ent_ent_id: TIntegerField
      FieldName = 'ctr_usr_ent_ent_id'
    end
  end
  object ds_qry_contract_user_enterprise: TDataSource
    DataSet = qry_contract_user_enterprise
    Left = 575
    Top = 202
  end
end
