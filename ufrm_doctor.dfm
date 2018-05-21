inherited frm_doctor: Tfrm_doctor
  Caption = 'frm_doctor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
    Properties.ActivePage = tbsht_2
    inherited tbsht_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1000
      ExplicitHeight = 538
      inherited pgctrl_2: TcxPageControl
        inherited tbsht_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 27
          ExplicitWidth = 992
          ExplicitHeight = 505
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1000
      ExplicitHeight = 538
      inherited pgctrl_3: TcxPageControl
        inherited tbsht_5: TcxTabSheet
          inherited cxGroupBox2: TcxGroupBox
            object cxDBLookupComb_Doctor: TcxDBLookupComboBox
              Left = 24
              Top = 32
              Properties.ListColumns = <>
              TabOrder = 0
              Width = 321
            end
            object DBComBox_Status: TDBComboBox
              Left = 368
              Top = 32
              Width = 145
              Height = 21
              TabOrder = 1
            end
            object cxGroupBox3: TcxGroupBox
              Left = 24
              Top = 72
              Caption = 'Especialidades do Proficional'
              TabOrder = 2
              Height = 273
              Width = 489
              object cxGrid1: TcxGrid
                Left = 3
                Top = 15
                Width = 483
                Height = 251
                Align = alClient
                TabOrder = 0
                ExplicitLeft = -16
                ExplicitTop = 20
                ExplicitWidth = 505
                ExplicitHeight = 249
                object cxGrid1DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = ds_role_employee
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  object cxGrid1DBTableView1roe_cod: TcxGridDBColumn
                    DataBinding.FieldName = 'roe_cod'
                  end
                  object cxGrid1DBTableView1contract_ctr_cod: TcxGridDBColumn
                    DataBinding.FieldName = 'contract_ctr_cod'
                  end
                  object cxGrid1DBTableView1employee_emp_cod: TcxGridDBColumn
                    DataBinding.FieldName = 'employee_emp_cod'
                  end
                  object cxGrid1DBTableView1role_rol_cod: TcxGridDBColumn
                    DataBinding.FieldName = 'role_rol_cod'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.ListColumns = <>
                  end
                  object cxGrid1DBTableView1roe_id: TcxGridDBColumn
                    DataBinding.FieldName = 'roe_id'
                  end
                  object cxGrid1DBTableView1roe_deleted_at: TcxGridDBColumn
                    DataBinding.FieldName = 'roe_deleted_at'
                  end
                  object cxGrid1DBTableView1roe_dt_registration: TcxGridDBColumn
                    DataBinding.FieldName = 'roe_dt_registration'
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBTableView1
                end
              end
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 972
        ExplicitHeight = 32
      end
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
  inherited frxReport_1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qry: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select d.doc_cod, d.contract_ctr_cod, d.employee_emp_cod, d.role' +
        '_rol_cod, d.doc_id,'#10' e.emp_type, e.emp_status, '
      
        'd.doc_dt_registration, r.rec_name, r.rec_nickname, r.rec_sex fro' +
        'm doctor as d'#10' '
      'inner join employee as e on d.employee_emp_cod = e.emp_cod'#10' '
      'inner join record as r on e.record_rec_cod = r.rec_cod')
    object qrydoc_cod: TBytesField
      FieldName = 'doc_cod'
      Origin = 'doc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qryrole_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object qrydoc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'doc_id'
      Origin = 'doc_id'
    end
    object qryemp_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_type'
      Origin = 'emp_type'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryemp_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_status'
      Origin = 'emp_status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrydoc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_dt_registration'
      Origin = 'doc_dt_registration'
    end
    object qryrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qryrec_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nickname'
      Origin = 'rec_nickname'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryrec_sex: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_sex'
      Origin = 'rec_sex'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object qry_doctor: TFDQuery
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select e.emp_cod, e.contract_ctr_cod, e.emp_id, r.rec_name, r.re' +
        'c_nickname, '#13#10#10
      'r.rec_sex, e.emp_type, e.emp_status from employee as e'#13#10#10
      'inner join record as r on e.record_rec_cod = r.rec_cod')
    Left = 784
    Top = 176
  end
  object ds_Doctor: TDataSource
    DataSet = qry_doctor
    Left = 840
    Top = 176
  end
  object qry_role_employee: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      ' select * from role_employee'#10' where roe_cod =:role_rol_cod')
    Left = 632
    Top = 336
    ParamData = <
      item
        Name = 'ROLE_ROL_COD'
        DataType = ftVarBytes
        ParamType = ptInput
        Value = Null
      end>
    object qry_role_employeeroe_cod: TBytesField
      FieldName = 'roe_cod'
      Origin = 'roe_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_role_employeecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_role_employeeemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qry_role_employeerole_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object qry_role_employeeroe_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'roe_id'
      Origin = 'roe_id'
    end
    object qry_role_employeeroe_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'roe_deleted_at'
      Origin = 'roe_deleted_at'
    end
    object qry_role_employeeroe_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'roe_dt_registration'
      Origin = 'roe_dt_registration'
    end
  end
  object ds_role_employee: TDataSource
    DataSet = qry_role_employee
    Left = 672
    Top = 336
  end
end
