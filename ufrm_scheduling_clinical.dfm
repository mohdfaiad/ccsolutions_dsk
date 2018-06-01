inherited frm_scheduling_clinical: Tfrm_scheduling_clinical
  Caption = 'frm_scheduling_clinical'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
    Properties.ActivePage = tbsht_2
    inherited tbsht_1: TcxTabSheet
      inherited pgctrl_2: TcxPageControl
        inherited tbsht_3: TcxTabSheet
          inherited grid_1: TcxGrid
            inherited cxGridDBTableView1: TcxGridDBTableView
              object cxGridDBTableView1scc_cod: TcxGridDBColumn
                DataBinding.FieldName = 'scc_cod'
              end
              object cxGridDBTableView1contract_ctr_cod: TcxGridDBColumn
                DataBinding.FieldName = 'contract_ctr_cod'
              end
              object cxGridDBTableView1client_cli_cod: TcxGridDBColumn
                DataBinding.FieldName = 'client_cli_cod'
              end
              object cxGridDBTableView1doctor_doc_cod: TcxGridDBColumn
                DataBinding.FieldName = 'doctor_doc_cod'
              end
              object cxGridDBTableView1role_rol_cod: TcxGridDBColumn
                DataBinding.FieldName = 'role_rol_cod'
              end
              object cxGridDBTableView1scc_id: TcxGridDBColumn
                DataBinding.FieldName = 'scc_id'
              end
              object cxGridDBTableView1scc_status: TcxGridDBColumn
                DataBinding.FieldName = 'scc_status'
              end
              object cxGridDBTableView1scc_dt_registration: TcxGridDBColumn
                DataBinding.FieldName = 'scc_dt_registration'
              end
            end
          end
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      inherited pgctrl_3: TcxPageControl
        inherited tbsht_5: TcxTabSheet
          inherited cxGroupBox1: TcxGroupBox
            ExplicitHeight = 57
            Height = 57
            inherited cxLabel2: TcxLabel
              Left = 260
              ExplicitLeft = 260
            end
            inherited edt_dt_registration: TcxTextEdit
              Left = 260
              ExplicitLeft = 260
            end
          end
          inherited cxGroupBox2: TcxGroupBox
            Top = 66
            ExplicitTop = 66
            object cxLookupComboBoxCliente: TcxLookupComboBox
              Left = 3
              Top = 33
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cliCod'
              Properties.ListColumns = <
                item
                  FieldName = 'cli_first_name'
                end>
              Properties.ListSource = ds_qry_client
              TabOrder = 0
              Width = 382
            end
            object cxLabelClient: TcxLabel
              Left = 3
              Top = 16
              Caption = 'Cliente'
            end
            object cxLabelDoctor: TcxLabel
              Left = 3
              Top = 60
              Caption = 'Doutor'
            end
            object cxLookupComboBoxDoctor: TcxLookupComboBox
              Left = 3
              Top = 76
              Properties.GridMode = True
              Properties.KeyFieldNames = 'docCod'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_qry_doctor
              TabOrder = 3
              Width = 382
            end
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    DataSet = qry
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
    Active = True
    AfterInsert = qryAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from scheduling_clinical')
    object qryscc_cod: TBytesField
      FieldName = 'scc_cod'
      Origin = 'scc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryclient_cli_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
    end
    object qrydoctor_doc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doctor_doc_cod'
      Origin = 'doctor_doc_cod'
    end
    object qryrole_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object qryscc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'scc_id'
      Origin = 'scc_id'
    end
    object qryscc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'scc_status'
      Origin = 'scc_status'
      FixedChar = True
      Size = 1
    end
    object qryscc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'scc_dt_registration'
      Origin = 'scc_dt_registration'
    end
  end
  object qry_client: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_cod,contract_ctr_cod,cli_first_name,concat('#39'0x'#39',hex(c' +
        'li_cod)) as cliCod from client'
      'order by cli_first_name')
    Left = 623
    Top = 220
    object qry_clientcli_cod: TBytesField
      FieldName = 'cli_cod'
      Origin = 'cli_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_clientcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_clientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 85
    end
    object qry_clientcliCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliCod'
      Origin = 'cliCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
  end
  object ds_qry_client: TDataSource
    DataSet = qry_client
    Left = 695
    Top = 220
  end
  object qry_doctor: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select d.doc_cod,d.contract_ctr_cod,r.rec_name,'
      'concat('#39'0x'#39',hex(d.doc_cod)) as docCod,e.emp_cod from doctor d'#13#10#10
      ''
      'left join employee e on e.emp_cod = d.employee_emp_cod'#13#10#10
      ''
      
        'left join record r on r.rec_cod = e.record_rec_cod'#10'order by r.re' +
        'c_name;'#10)
    Left = 631
    Top = 284
    object qry_doctordoc_cod: TBytesField
      FieldName = 'doc_cod'
      Origin = 'doc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_doctorcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_doctorrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_doctordocCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'docCod'
      Origin = 'docCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object qry_doctoremp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_qry_doctor: TDataSource
    DataSet = qry_doctor
    Left = 703
    Top = 282
  end
  object qry_scheduling: TFDQuery
    Active = True
    AfterInsert = qry_schedulingAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from scheduling')
    Left = 639
    Top = 351
    object qry_schedulingsch_cod: TBytesField
      FieldName = 'sch_cod'
      Origin = 'sch_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_schedulingcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_schedulingemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qry_schedulingsch_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sch_id'
      Origin = 'sch_id'
    end
    object qry_schedulingsch_datetime: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_datetime'
      Origin = 'sch_datetime'
    end
    object qry_schedulingsch_description: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sch_description'
      Origin = 'sch_description'
      Size = 500
    end
    object qry_schedulingsch_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_dt_registration'
      Origin = 'sch_dt_registration'
    end
  end
end
