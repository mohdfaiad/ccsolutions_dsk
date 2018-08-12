inherited frm_contract_user: Tfrm_contract_user
  Caption = 'Manuten'#231#227'o: Usu'#225'rios'
  ClientHeight = 691
  Menu = d
  OnClose = FormClose
  OnShow = FormShow
  ExplicitHeight = 730
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 636
    ExplicitWidth = 805
    ExplicitHeight = 618
    ClientRectBottom = 630
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitWidth = 797
      ExplicitHeight = 584
      inherited cxGrid_1: TcxGrid
        Height = 596
        ExplicitWidth = 791
        ExplicitHeight = 578
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
          object cxGrid_1DBTableView1ctr_usr_username: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_username'
            Width = 150
          end
          object cxGrid_1DBTableView1ctr_usr_email: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_email'
            Width = 200
          end
          object cxGrid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_dt_birth'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_usr_status: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_status'
            Width = 50
          end
          object cxGrid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 797
      ExplicitHeight = 584
      inherited cxPageControl_2: TcxPageControl
        Height = 596
        ExplicitWidth = 791
        ExplicitHeight = 578
        ClientRectBottom = 590
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 783
          ExplicitHeight = 544
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 562
            ExplicitWidth = 783
            ExplicitHeight = 544
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
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [3]
              Left = 59
              Top = 130
              DataBinding.DataField = 'ctr_usr_username'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [4]
              Left = 245
              Top = 103
              DataBinding.DataField = 'ctr_usr_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 130
            end
            object cxDBTextEdit3: TcxDBTextEdit [5]
              Left = 245
              Top = 130
              DataBinding.DataField = 'ctr_usr_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 305
            end
            object cxDBDateEdit1: TcxDBDateEdit [6]
              Left = 429
              Top = 103
              DataBinding.DataField = 'ctr_usr_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBCheckBox1: TcxDBCheckBox [7]
              Left = 381
              Top = 38
              Caption = 'Status'
              DataBinding.DataField = 'ctr_usr_status'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
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
              AlignVert = avBottom
              CaptionOptions.Text = 'Sobrenome'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 305
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avBottom
              CaptionOptions.Text = 'Dt. Aniv.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox1
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
      end
    end
  end
  inherited dxBarDockControl_1: TdxBarDockControl
    ExplicitWidth = 805
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited PopupMenu_1: TPopupMenu
    OnPopup = PopupMenu_1Popup
    object N3: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object BloquearUsurio1: TMenuItem
      Caption = 'Bloquear Usu'#225'rio'
      OnClick = BloquearUsurio1Click
    end
    object DesbloquearUsurio1: TMenuItem
      Caption = 'Desbloquear Usu'#225'rio'
      OnClick = DesbloquearUsurio1Click
    end
    object ZeraraSenha1: TMenuItem
      Caption = 'Resetar Senha'
      OnClick = ZeraraSenha1Click
    end
    object DesconectarUsurio1: TMenuItem
      Caption = 'Desconectar  Usu'#225'rio'
      OnClick = DesconectarUsurio1Click
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited qry: TFDQuery
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
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
  inherited mem: TFDMemTable
    Active = True
    object memctr_usr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ctr_usr_cod'
      Origin = 'ctr_usr_cod'
      Size = 32
    end
    object memctr_usr_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
    end
    object memctr_usr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 85
    end
    object memctr_usr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sobrenome'
      FieldName = 'ctr_usr_last_name'
      Origin = 'ctr_usr_last_name'
      Size = 85
    end
    object memctr_usr_username: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 65
    end
    object memctr_usr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      Size = 65
    end
    object memctr_usr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
    end
    object memctr_usr_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ctr_usr_status'
      Origin = 'ctr_usr_status'
      FixedChar = True
      Size = 1
    end
    object memctr_usr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ctr_usr_deleted_at'
      Origin = 'ctr_usr_deleted_at'
    end
    object memctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docEmail
    IgnorarChar = './-'
    OnMsgErro = ACBrValidador1MsgErro
    Left = 712
    Top = 64
  end
  object qry_contract_user_enterprise: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ctr_usr_ent_user_id'
    MasterSource = ds
    MasterFields = 'ctr_usr_id'
    DetailFields = 'ctr_usr_ent_user_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from contract_user_enterprise'
      'where ctr_usr_ent_user_id = :ctr_usr_id')
    Left = 648
    Top = 64
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
  object ds_contract_user_enterprise: TDataSource
    DataSet = qry_contract_user_enterprise
    Left = 680
    Top = 64
  end
  object qry_contract_user_action: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ctr_usr_act_user_id'
    MasterSource = ds
    MasterFields = 'ctr_usr_id'
    DetailFields = 'ctr_usr_act_user_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from contract_user_action'#10
      'where ctr_usr_act_user_id = :ctr_usr_id')
    Left = 616
    Top = 64
    ParamData = <
      item
        Name = 'CTR_USR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object qry_contract_user_actionctr_usr_act_id: TFDAutoIncField
      FieldName = 'ctr_usr_act_id'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object qry_contract_user_actionctr_usr_act_user_id: TIntegerField
      FieldName = 'ctr_usr_act_user_id'
    end
    object qry_contract_user_actionctr_usr_act_action_name: TStringField
      FieldName = 'ctr_usr_act_action_name'
      Size = 80
    end
  end
  object d: TMainMenu
    Left = 584
    Top = 64
  end
end
