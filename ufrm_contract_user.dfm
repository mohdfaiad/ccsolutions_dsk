inherited frm_contract_user: Tfrm_contract_user
  Caption = 'Cadastro de Usu'#225'rio'
  ClientWidth = 1129
  OnClose = FormClose
  ExplicitWidth = 1145
  PixelsPerInch = 96
  TextHeight = 13
  inherited bardck_1: TdxBarDockControl
    Width = 1129
    ExplicitWidth = 1129
  end
  inherited pgctrl_1: TcxPageControl
    Width = 1129
    Properties.ActivePage = tbsht_2
    ExplicitWidth = 1129
    ClientRectRight = 1123
    inherited tbsht_1: TcxTabSheet
      ExplicitWidth = 1121
      inherited pgctrl_2: TcxPageControl
        Width = 1121
        ExplicitWidth = 1121
        ClientRectRight = 1115
        inherited tbsht_3: TcxTabSheet
          ExplicitWidth = 1113
          inherited grid_1: TcxGrid
            Width = 1107
            ExplicitWidth = 1107
            inherited cxGridDBTableView1: TcxGridDBTableView
              object cxGridDBTable_ctr_usr_id: TcxGridDBColumn
                Caption = 'C'#243'digo ID'
                DataBinding.FieldName = 'ctr_usr_id'
                Width = 60
              end
              object cxGridDBTable_ctr_usr_first_name: TcxGridDBColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'ctr_usr_first_name'
                Width = 200
              end
              object cxGridDBTable_ctr_usr_last_name: TcxGridDBColumn
                Caption = 'Sobrenome'
                DataBinding.FieldName = 'ctr_usr_last_name'
                Width = 200
              end
              object cxGridDBTable_ctr_usr_dt_birth: TcxGridDBColumn
                Caption = 'Nascimento'
                DataBinding.FieldName = 'ctr_usr_dt_birth'
                Width = 110
              end
              object cxGridDBTable_ctr_usr_username: TcxGridDBColumn
                Caption = 'Usu'#225'rio'
                DataBinding.FieldName = 'ctr_usr_username'
                Width = 150
              end
              object cxGridDBTable_ctr_usr_email: TcxGridDBColumn
                Caption = 'Email'
                DataBinding.FieldName = 'ctr_usr_email'
                Width = 150
              end
              object cxGridDBTable_ctr_usr_admin: TcxGridDBColumn
                Caption = 'Administrador'
                DataBinding.FieldName = 'ctr_usr_admin'
                Width = 80
              end
              object cxGridDBTable_ctr_usr_status: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'ctr_usr_status'
                Width = 60
              end
              object cxGridDBTable_ctr_usr_logged: TcxGridDBColumn
                Caption = 'Logado'
                DataBinding.FieldName = 'ctr_usr_logged'
                Width = 60
              end
              object cxGridDBTable_ctr_usr_dt_registration: TcxGridDBColumn
                Caption = 'Dt. Reg.'
                DataBinding.FieldName = 'ctr_usr_dt_registration'
                Width = 110
              end
            end
          end
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      OnShow = tbsht_2Show
      ExplicitWidth = 1121
      inherited pgctrl_3: TcxPageControl
        Width = 1121
        ExplicitWidth = 1121
        ClientRectRight = 1115
        inherited tbsht_5: TcxTabSheet
          ExplicitWidth = 1113
          inherited cxGroupBox1: TcxGroupBox
            ExplicitWidth = 1107
            Width = 1107
          end
          inherited cxGroupBox2: TcxGroupBox
            Top = 64
            ExplicitTop = 64
            ExplicitWidth = 1107
            Width = 1107
            object edtNome: TcxTextEdit
              Left = 3
              Top = 20
              Properties.CharCase = ecUpperCase
              TabOrder = 0
              Width = 125
            end
            object edtSobrenome: TcxTextEdit
              Left = 134
              Top = 20
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 125
            end
            object edtUsuario: TcxTextEdit
              Left = 3
              Top = 64
              TabOrder = 3
              Width = 125
            end
            object edtEmail: TcxTextEdit
              Left = 134
              Top = 64
              TabOrder = 4
              Width = 256
            end
            object cxLabel3: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Nome'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 134
              Top = 3
              Caption = 'Sobrenome'
              Transparent = True
            end
            object cxLabel5: TcxLabel
              Left = 265
              Top = 3
              Caption = 'Dt. Nasc'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 3
              Top = 47
              Caption = 'Usu'#225'rio'
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 134
              Top = 47
              Caption = 'E-mail'
              Transparent = True
            end
            object edtDtNasc: TcxDateEdit
              Left = 267
              Top = 20
              TabOrder = 2
              Width = 123
            end
            object CheckBoxAdm: TcxCheckBox
              Left = 302
              Top = 114
              Caption = 'Administrador'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              State = cbsGrayed
              TabOrder = 7
            end
            object edtSenha: TcxTextEdit
              Left = 3
              Top = 112
              Properties.PasswordChar = '*'
              TabOrder = 5
              Width = 125
            end
            object edtConf_Senha: TcxTextEdit
              Left = 134
              Top = 112
              ParentShowHint = False
              Properties.PasswordChar = '*'
              ShowHint = True
              TabOrder = 6
              Width = 125
            end
            object cxLabel8: TcxLabel
              Left = 3
              Top = 94
              Caption = 'Senha'
              Transparent = True
            end
            object cxLabel9: TcxLabel
              Left = 134
              Top = 94
              Caption = 'Confirmar Senha'
              Transparent = True
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Width = 1129
    ExplicitWidth = 1129
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      Width = 1093
      ExplicitWidth = 1093
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 1093
      end
    end
  end
  inherited ds: TDataSource
    Left = 728
  end
  inherited impw_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'dddd, d'#39' de '#39'MMMM'#39' de '#39'yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited expw_1: TQExport4Dialog
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited imglist_1: TcxImageList
    FormatVersion = 1
  end
  inherited frxReport_1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qry: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'SELECT * FROM contract_user')
    Left = 696
    object qryctr_usr_cod: TBytesField
      FieldName = 'ctr_usr_cod'
      Origin = 'ctr_usr_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryctr_usr_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
    end
    object qryctr_usr_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 85
    end
    object qryctr_usr_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_last_name'
      Origin = 'ctr_usr_last_name'
      Size = 85
    end
    object qryctr_usr_username: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 65
    end
    object qryctr_usr_password: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
    end
    object qryctr_usr_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      Size = 65
    end
    object qryctr_usr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
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
    object qryctr_usr_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_status'
      Origin = 'ctr_usr_status'
      FixedChar = True
      Size = 1
    end
    object qryctr_usr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_deleted_at'
      Origin = 'ctr_usr_deleted_at'
    end
    object qryctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
  end
  inherited mem: TFDMemTable
    object memctr_usr_cod: TBytesField
      FieldName = 'ctr_usr_cod'
      Origin = 'ctr_usr_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object memcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object memctr_usr_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
    end
    object memctr_usr_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 85
    end
    object memctr_usr_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_last_name'
      Origin = 'ctr_usr_last_name'
      Size = 85
    end
    object memctr_usr_username: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 65
    end
    object memctr_usr_password: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
    end
    object memctr_usr_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      Size = 65
    end
    object memctr_usr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
    end
    object memctr_usr_logged: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_logged'
      Origin = 'ctr_usr_logged'
      FixedChar = True
      Size = 1
    end
    object memctr_usr_admin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_admin'
      Origin = 'ctr_usr_admin'
      FixedChar = True
      Size = 1
    end
    object memctr_usr_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_status'
      Origin = 'ctr_usr_status'
      FixedChar = True
      Size = 1
    end
    object memctr_usr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_deleted_at'
      Origin = 'ctr_usr_deleted_at'
    end
    object memctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
  end
end
