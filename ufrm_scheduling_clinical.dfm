inherited frm_scheduling_clinical: Tfrm_scheduling_clinical
  Caption = 'frm_scheduling_clinical'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
    Properties.ActivePage = tbsht_2
    inherited tbsht_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 954
      ExplicitHeight = 538
      inherited pgctrl_2: TcxPageControl
        inherited tbsht_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 27
          ExplicitWidth = 946
          ExplicitHeight = 505
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
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 954
      ExplicitHeight = 538
      inherited pgctrl_3: TcxPageControl
        inherited tbsht_5: TcxTabSheet
          ExplicitLeft = -2
          ExplicitTop = 30
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
              Left = 451
              Top = 388
              Caption = 'Doutor'
            end
            object cxLookupComboBoxDoctor: TcxLookupComboBox
              Left = 451
              Top = 404
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
            object cxGrid1: TcxGrid
              Left = 3
              Top = 69
              Width = 774
              Height = 297
              TabOrder = 4
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = imglist_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.Visible = True
                DataController.DataSource = ds_requisition_sheduling
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1rsh_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_cod'
                end
                object cxGrid1DBTableView1contract_ctr_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'contract_ctr_cod'
                end
                object cxGrid1DBTableView1requisition_req_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'requisition_req_cod'
                end
                object cxGrid1DBTableView1scheduling_sch_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'scheduling_sch_cod'
                end
                object cxGrid1DBTableView1rolte_rol_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'rol_name'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.GridMode = True
                  Properties.KeyFieldNames = 'rol_name'
                  Properties.ListColumns = <
                    item
                      FieldName = 'rol_name'
                    end>
                  Properties.ListSource = ds_qry_role
                  Properties.OnCloseUp = cxGrid1DBTableView1rolte_rol_codPropertiesCloseUp
                end
                object cxGrid1DBTableView1doctor_doc_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'rec_name'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'rec_name'
                  Properties.ListColumns = <
                    item
                      FieldName = 'rec_name'
                    end>
                  Properties.ListSource = ds_qry_doctor
                end
                object cxGrid1DBTableView1rsh_id: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_id'
                end
                object cxGrid1DBTableView1rsh_status: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_status'
                end
                object cxGrid1DBTableView1rsh_deleted_at: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_deleted_at'
                end
                object cxGrid1DBTableView1rsh_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_dt_registration'
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
  inherited stsbar_1: TdxStatusBar
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 926
        ExplicitHeight = 32
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
      'select requisition.*,hex(req_cod) from requisition'
      '')
    object qryreq_cod: TBytesField
      FieldName = 'req_cod'
      Origin = 'req_cod'
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
    object qryenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object qryrequisition_type_ret_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'requisition_type_ret_cod'
      Origin = 'requisition_type_ret_cod'
    end
    object qryinsurance_ins_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'insurance_ins_cod'
      Origin = 'insurance_ins_cod'
    end
    object qryrole_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object qrydoctor_doc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doctor_doc_cod'
      Origin = 'doctor_doc_cod'
    end
    object qryreq_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'req_id'
      Origin = 'req_id'
    end
    object qryreq_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'req_status'
      Origin = 'req_status'
      FixedChar = True
      Size = 1
    end
    object qryreq_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'req_deleted_at'
      Origin = 'req_deleted_at'
    end
    object qryreq_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'req_dt_registration'
      Origin = 'req_dt_registration'
    end
    object qryhexreq_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hex(req_cod)'
      Origin = '`hex(req_cod)`'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object qry_client: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_cod,contract_ctr_cod,cli_first_name,concat('#39'0x'#39',hex(c' +
        'li_cod)) as cliCod from client'
      'order by cli_first_name')
    Left = 159
    Top = 316
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
      
        'select rec_name,rol_name,hex(rol_cod) as rolCod,record'#10'.contract' +
        '_ctr_cod from record'#10
      
        'left join role on rol_cod in (select role_rol_cod from role_empl' +
        'oyee'#10'                      where employee_emp_cod in (select emp' +
        'loyee_emp_cod from doctor))'#10'where rec_cod in (select record_rec_' +
        'cod from employee'#10'                 where emp_cod in (select empl' +
        'oyee_emp_cod from doctor))')
    Left = 623
    Top = 300
    object qry_doctorrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      Size = 85
    end
    object qry_doctorrol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_doctorrolCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rolCod'
      Origin = 'rolCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_doctorcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
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
    Left = 783
    Top = 263
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
  object qry_requisition_sheduling: TFDQuery
    Active = True
    AfterInsert = qry_requisition_shedulingAfterInsert
    BeforePost = qry_requisition_shedulingBeforePost
    AfterPost = qry_requisition_shedulingAfterPost
    IndexFieldNames = 'requisition_req_cod'
    MasterSource = ds
    MasterFields = 'req_cod'
    DetailFields = 'requisition_req_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select requisition_sheduling.*,hex(rsh_cod) as rshCod,rol_name,r' +
        'ec_name,'#10'hex(role_rol_cod) as rolCod from requisition_sheduling'#10
      'left join role on rol_cod = role_rol_cod'#10
      
        'left join record on  rec_cod in (select record_rec_cod from empl' +
        'oyee'#10'                 '
      
        '                                 where emp_cod in (select employ' +
        'ee_emp_cod from role_employee'#10'                 '
      
        '                                 where role_rol_cod = rol_cod) a' +
        'nd emp_cod in (select employee_emp_cod from doctor))')
    Left = 103
    Top = 399
    object qry_requisition_shedulingrsh_cod: TBytesField
      FieldName = 'rsh_cod'
      Origin = 'rsh_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_requisition_shedulingcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_requisition_shedulingrequisition_req_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'requisition_req_cod'
      Origin = 'requisition_req_cod'
    end
    object qry_requisition_shedulingscheduling_sch_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'scheduling_sch_cod'
      Origin = 'scheduling_sch_cod'
    end
    object qry_requisition_shedulingrole_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object qry_requisition_shedulingdoctor_doc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doctor_doc_cod'
      Origin = 'doctor_doc_cod'
    end
    object qry_requisition_shedulingrsh_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_id'
      Origin = 'rsh_id'
    end
    object qry_requisition_shedulingrsh_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_status'
      Origin = 'rsh_status'
      FixedChar = True
      Size = 1
    end
    object qry_requisition_shedulingrsh_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_deleted_at'
      Origin = 'rsh_deleted_at'
    end
    object qry_requisition_shedulingrsh_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_dt_registration'
      Origin = 'rsh_dt_registration'
    end
    object qry_requisition_shedulingrshCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rshCod'
      Origin = 'rshCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_requisition_shedulingrol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_requisition_shedulingrolCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rolCod'
      Origin = 'rolCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_requisition_shedulingrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
  end
  object ds_requisition_sheduling: TDataSource
    DataSet = qry_requisition_sheduling
    Left = 239
    Top = 391
  end
  object qry_role: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select rol_name,rol_cod,hex(rol_cod) as rolCod from role'#10'order b' +
        'y rol_name'#10)
    Left = 119
    Top = 487
    object qry_rolerol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      Size = 35
    end
    object qry_rolerol_cod: TBytesField
      FieldName = 'rol_cod'
      Origin = 'rol_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_rolerolCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rolCod'
      Origin = 'rolCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_role: TDataSource
    DataSet = qry_role
    Left = 179
    Top = 487
  end
end
