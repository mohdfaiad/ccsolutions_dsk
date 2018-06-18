inherited frm_Requisition_Lab: Tfrm_Requisition_Lab
  Caption = 'frm_Requisition_Lab'
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
            inherited grid_1DBTableView1: TcxGridDBTableView
              object grid_1DBTableView1req_cod: TcxGridDBColumn
                DataBinding.FieldName = 'req_cod'
              end
              object grid_1DBTableView1contract_ctr_cod: TcxGridDBColumn
                DataBinding.FieldName = 'contract_ctr_cod'
              end
              object grid_1DBTableView1client_cli_cod: TcxGridDBColumn
                DataBinding.FieldName = 'client_cli_cod'
              end
              object grid_1DBTableView1enterprise_ent_cod: TcxGridDBColumn
                DataBinding.FieldName = 'enterprise_ent_cod'
              end
              object grid_1DBTableView1requisition_type_ret_cod: TcxGridDBColumn
                DataBinding.FieldName = 'requisition_type_ret_cod'
              end
              object grid_1DBTableView1insurance_ins_cod: TcxGridDBColumn
                DataBinding.FieldName = 'insurance_ins_cod'
              end
              object grid_1DBTableView1role_rol_cod: TcxGridDBColumn
                DataBinding.FieldName = 'role_rol_cod'
              end
              object grid_1DBTableView1doctor_doc_cod: TcxGridDBColumn
                DataBinding.FieldName = 'doctor_doc_cod'
              end
              object grid_1DBTableView1req_id: TcxGridDBColumn
                DataBinding.FieldName = 'req_id'
              end
              object grid_1DBTableView1req_source: TcxGridDBColumn
                DataBinding.FieldName = 'req_source'
              end
              object grid_1DBTableView1req_status: TcxGridDBColumn
                DataBinding.FieldName = 'req_status'
              end
              object grid_1DBTableView1req_deleted_at: TcxGridDBColumn
                DataBinding.FieldName = 'req_deleted_at'
              end
              object grid_1DBTableView1req_dt_registration: TcxGridDBColumn
                DataBinding.FieldName = 'req_dt_registration'
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
          inherited grb_top: TcxGroupBox
            inherited lbl_cod_id: TcxLabel
              Left = 9
              ExplicitLeft = 9
            end
            inherited edt_codid: TcxTextEdit
              Left = 9
              ExplicitLeft = 9
            end
            inherited lbl_dt_registration: TcxLabel
              Left = 245
              ExplicitLeft = 245
            end
            inherited edt_dt_registration: TcxTextEdit
              Left = 245
              ExplicitLeft = 245
            end
          end
          inherited grb_bottton: TcxGroupBox
            object cxTextEditPaciente: TcxTextEdit
              Left = 240
              Top = 290
              TabOrder = 0
              Text = 'cxTextEditPaciente'
              Width = 289
            end
            object cxLabelPaciente: TcxLabel
              Left = 9
              Top = 16
              Caption = 'Paciente'
              Transparent = True
            end
            object cxLookupComboBoxPaciente: TcxLookupComboBox
              Left = 9
              Top = 35
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cliCod'
              Properties.ListColumns = <
                item
                  FieldName = 'cli_first_name'
                end>
              Properties.ListSource = ds_qry_client
              Properties.OnCloseUp = cxLookupComboBoxPacientePropertiesCloseUp
              TabOrder = 2
              Width = 361
            end
            object cxLabelDtNascimento: TcxLabel
              Left = 9
              Top = 66
              Caption = 'Data Nasc.:'
              Transparent = True
            end
            object cxLabelIdade: TcxLabel
              Left = 136
              Top = 66
              Caption = 'Idade'
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 528
              Top = 256
              Caption = 'cxLabel3'
            end
            object cxLabel4: TcxLabel
              Left = 640
              Top = 256
              Caption = 'cxLabel4'
            end
            object cxLabel5: TcxLabel
              Left = 712
              Top = 256
              Caption = 'cxLabel5'
            end
            object cxLabel6: TcxLabel
              Left = 792
              Top = 256
              Caption = 'cxLabel6'
            end
            object cxLabel7: TcxLabel
              Left = 552
              Top = 296
              Caption = 'cxLabel7'
            end
            object cxLabel8: TcxLabel
              Left = 640
              Top = 304
              Caption = 'cxLabel8'
            end
            object cxTextEditDataNasc: TcxTextEdit
              Left = 9
              Top = 83
              TabOrder = 11
              Width = 121
            end
            object cxTextEditIdade: TcxTextEdit
              Left = 136
              Top = 83
              TabOrder = 12
              Width = 41
            end
            object cxTextEdit3: TcxTextEdit
              Left = 328
              Top = 264
              TabOrder = 13
              Text = 'cxTextEdit3'
              Width = 121
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from requisition')
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
    object qryreq_source: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'req_source'
      Origin = 'req_source'
      FixedChar = True
      Size = 1
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
  end
  inherited mem: TFDMemTable
    object memreq_cod: TBytesField
      FieldName = 'req_cod'
      Origin = 'req_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object memcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object memclient_cli_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
    end
    object mementerprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object memrequisition_type_ret_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'requisition_type_ret_cod'
      Origin = 'requisition_type_ret_cod'
    end
    object meminsurance_ins_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'insurance_ins_cod'
      Origin = 'insurance_ins_cod'
    end
    object memrole_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object memdoctor_doc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doctor_doc_cod'
      Origin = 'doctor_doc_cod'
    end
    object memreq_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'req_id'
      Origin = 'req_id'
    end
    object memreq_source: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'req_source'
      Origin = 'req_source'
      FixedChar = True
      Size = 1
    end
    object memreq_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'req_status'
      Origin = 'req_status'
      FixedChar = True
      Size = 1
    end
    object memreq_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'req_deleted_at'
      Origin = 'req_deleted_at'
    end
    object memreq_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'req_dt_registration'
      Origin = 'req_dt_registration'
    end
  end
  object qry_client: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_id,cli_cod,cli_first_name,cli_last_name,hex(cli_cod) ' +
        'as cliCod,cli_dt_birthopen,'
      
        '(timestampdiff(month,cli_dt_birthopen,curdate()) div 12) as idad' +
        'e from client'
      'where cli_deleted_at is null'
      'and (cli_status <> '#39'D'#39' or cli_status is null)'
      'order by cli_first_name')
    Left = 743
    Top = 292
    object qry_clientcli_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object qry_clientcli_cod: TBytesField
      FieldName = 'cli_cod'
      Origin = 'cli_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_clientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 85
    end
    object qry_clientcli_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      Size = 85
    end
    object qry_clientcliCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliCod'
      Origin = 'cliCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_clientcli_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_dt_birthopen'
      Origin = 'cli_dt_birthopen'
    end
    object qry_clientidade: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_qry_client: TDataSource
    DataSet = qry_client
    Left = 815
    Top = 300
  end
end
