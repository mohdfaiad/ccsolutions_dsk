inherited frm_contract_user: Tfrm_contract_user
  Caption = 'frm_contract_user'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
    Properties.ActivePage = tbsht_1
    inherited tbsht_1: TcxTabSheet
      inherited pgctrl_2: TcxPageControl
        inherited tbsht_3: TcxTabSheet
          inherited grid_1: TcxGrid
            inherited cxGridDBTableView1: TcxGridDBTableView
              object cxGridDBTableView1ctr_usr_cod: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_cod'
              end
              object cxGridDBTableView1contract_ctr_cod: TcxGridDBColumn
                DataBinding.FieldName = 'contract_ctr_cod'
              end
              object cxGridDBTableView1ctr_usr_id: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_id'
              end
              object cxGridDBTableView1ctr_usr_first_name: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_first_name'
              end
              object cxGridDBTableView1ctr_usr_last_name: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_last_name'
              end
              object cxGridDBTableView1ctr_usr_username: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_username'
              end
              object cxGridDBTableView1ctr_usr_password: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_password'
              end
              object cxGridDBTableView1ctr_usr_email: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_email'
              end
              object cxGridDBTableView1ctr_usr_dt_birth: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_dt_birth'
              end
              object cxGridDBTableView1ctr_usr_logged: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_logged'
              end
              object cxGridDBTableView1ctr_usr_admin: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_admin'
              end
              object cxGridDBTableView1ctr_usr_status: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_status'
              end
              object cxGridDBTableView1ctr_deleted_at: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_deleted_at'
              end
              object cxGridDBTableView1ctr_usr_dt_registration: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_dt_registration'
              end
            end
          end
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      inherited pgctrl_3: TcxPageControl
        inherited tbsht_5: TcxTabSheet
          inherited cxGroupBox2: TcxGroupBox
            Top = 64
            ExplicitTop = 64
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
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 125
            end
            object edtEmail: TcxTextEdit
              Left = 134
              Top = 64
              TabOrder = 3
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
              TabOrder = 9
              Width = 123
            end
            object CheckBoxAdm: TcxCheckBox
              Left = 3
              Top = 112
              Caption = 'Administrador'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              State = cbsGrayed
              TabOrder = 10
            end
          end
        end
      end
    end
  end
  inherited actlist_1: TActionList
    inherited Action_insert: TAction
      OnExecute = Action_insertExecute
    end
  end
  inherited qry: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from contract_user')
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
    object qryctr_usr_password: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
      Size = 65
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
    object qryctr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_deleted_at'
      Origin = 'ctr_deleted_at'
    end
    object qryctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
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
end
