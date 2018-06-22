inherited frm_Requisition_Lab: Tfrm_Requisition_Lab
  Caption = 'frm_Requisition_Lab'
  ClientHeight = 702
  ClientWidth = 1125
  ExplicitWidth = 1141
  ExplicitHeight = 741
  PixelsPerInch = 96
  TextHeight = 13
  inherited bardck_1: TdxBarDockControl
    Width = 1125
    ExplicitWidth = 1125
  end
  inherited pgctrl_1: TcxPageControl
    Width = 1125
    Height = 612
    ExplicitWidth = 1125
    ExplicitHeight = 612
    ClientRectBottom = 606
    ClientRectRight = 1119
    inherited tbsht_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1117
      ExplicitHeight = 579
      inherited pgctrl_2: TcxPageControl
        Width = 1117
        Height = 579
        ExplicitWidth = 1117
        ExplicitHeight = 579
        ClientRectBottom = 573
        ClientRectRight = 1111
        inherited tbsht_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 27
          ExplicitWidth = 1109
          ExplicitHeight = 546
          inherited grid_1: TcxGrid
            Width = 1103
            Height = 540
            ExplicitWidth = 1103
            ExplicitHeight = 540
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
      ExplicitWidth = 1117
      ExplicitHeight = 579
      inherited pgctrl_3: TcxPageControl
        Width = 1117
        Height = 579
        ExplicitWidth = 1117
        ExplicitHeight = 579
        ClientRectBottom = 573
        ClientRectRight = 1111
        inherited tbsht_5: TcxTabSheet
          ExplicitWidth = 1109
          ExplicitHeight = 546
          inherited grb_top: TcxGroupBox
            ExplicitWidth = 1103
            Width = 1103
            inherited lbl_cod_id: TcxLabel
              Left = 9
              ExplicitLeft = 9
            end
            inherited edt_codid: TcxTextEdit
              Left = 9
              ExplicitLeft = 9
            end
            inherited lbl_dt_registration: TcxLabel
              Left = 259
              ExplicitLeft = 259
            end
            inherited edt_dt_registration: TcxTextEdit
              Left = 291
              ExplicitLeft = 291
            end
          end
          inherited grb_bottton: TcxGroupBox
            ExplicitWidth = 1103
            ExplicitHeight = 480
            Height = 480
            Width = 1103
            object cxTextEditCNS: TcxTextEdit
              Left = 9
              Top = 82
              Enabled = False
              TabOrder = 0
              Width = 125
            end
            object cxLabelPaciente: TcxLabel
              Left = 9
              Top = 16
              Caption = 'Paciente'
              Transparent = True
            end
            object cxLabelDtNascimento: TcxLabel
              Left = 291
              Top = 65
              Caption = 'Data Nasc.:'
              Transparent = True
            end
            object cxLabelIdade: TcxLabel
              Left = 434
              Top = 65
              Caption = 'Idade'
              Transparent = True
            end
            object cxLabelTipo: TcxLabel
              Left = 509
              Top = 65
              Caption = 'Tipo'
              Transparent = True
            end
            object cxLabelCNS: TcxLabel
              Left = 9
              Top = 65
              Caption = 'CNS'
              Transparent = True
            end
            object cxLabelPeso: TcxLabel
              Left = 701
              Top = 65
              Caption = 'Peso'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 792
              Top = 256
              Caption = 'cxLabel6'
            end
            object cxLabelAltura: TcxLabel
              Left = 776
              Top = 65
              Caption = 'Altura'
              Transparent = True
            end
            object cxLabelSexo: TcxLabel
              Left = 189
              Top = 65
              Caption = 'Sexo'
              Transparent = True
            end
            object cxTextEditDataNasc: TcxTextEdit
              Left = 291
              Top = 82
              Enabled = False
              TabOrder = 11
              Width = 125
            end
            object cxTextEditIdade: TcxTextEdit
              Left = 437
              Top = 82
              Enabled = False
              TabOrder = 12
              Width = 66
            end
            object cxTextEditTipo: TcxTextEdit
              Left = 509
              Top = 82
              Enabled = False
              TabOrder = 13
              Width = 66
            end
            object cxTextEditPeso: TcxTextEdit
              Left = 701
              Top = 82
              Enabled = False
              TabOrder = 14
              Width = 66
            end
            object cxTextEditAltura: TcxTextEdit
              Left = 776
              Top = 82
              Enabled = False
              TabOrder = 15
              Width = 66
            end
            object cxTextEditSexo: TcxTextEdit
              Left = 186
              Top = 82
              Enabled = False
              TabOrder = 16
              Width = 66
            end
            object cxLabel1: TcxLabel
              Left = 434
              Top = 21
              Caption = 'RG'
              Transparent = True
            end
            object cxTextEditRG: TcxTextEdit
              Left = 434
              Top = 38
              Enabled = False
              TabOrder = 18
              Width = 141
            end
            object cxLabelCPF: TcxLabel
              Left = 701
              Top = 21
              Caption = 'CPF'
              Transparent = True
            end
            object cxTextEditCPF: TcxTextEdit
              Left = 701
              Top = 38
              Enabled = False
              TabOrder = 20
              Width = 141
            end
            object BitBtn1: TBitBtn
              Left = 870
              Top = 90
              Width = 75
              Height = 25
              Caption = 'BitBtn1'
              TabOrder = 21
            end
            object cxButton1: TcxButton
              Left = 913
              Top = 141
              Width = 75
              Height = 25
              Caption = 'cxButton1'
              LookAndFeel.SkinName = 'Metropolis'
              TabOrder = 22
            end
            object cxLookupComboBoxPaciente: TcxLookupComboBox
              Left = 3
              Top = 38
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cliCod'
              Properties.ListColumns = <
                item
                  FieldName = 'cli_first_name'
                end>
              Properties.ListSource = ds_qry_client
              Properties.OnCloseUp = cxLookupComboBoxPacientePropertiesCloseUp
              TabOrder = 2
              Width = 413
            end
            object cxPageControl1: TcxPageControl
              Left = 3
              Top = 121
              Width = 1097
              Height = 356
              Align = alBottom
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 23
              Properties.ActivePage = cxTabSheet3
              Properties.CustomButtons.Buttons = <>
              ClientRectBottom = 350
              ClientRectLeft = 2
              ClientRectRight = 1091
              ClientRectTop = 27
              object cxTabSheet1: TcxTabSheet
                Caption = 'Dados da Requisi'#231#227'o'
                Color = clBlack
                ImageIndex = 0
                ParentColor = False
                object cxGroupBox1: TcxGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Align = alClient
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  TabOrder = 0
                  Height = 317
                  Width = 1083
                  object cxLabelEmpresa: TcxLabel
                    Left = 5
                    Top = 12
                    Caption = 'Empresa'
                    Transparent = True
                  end
                  object cxTextEditEnterpriseID: TcxTextEdit
                    Left = 5
                    Top = 29
                    TabOrder = 1
                    OnExit = cxTextEditEnterpriseIDExit
                    Width = 66
                  end
                  object cxLookupComboBoxEmpresa: TcxLookupComboBox
                    Left = 71
                    Top = 29
                    Properties.GridMode = True
                    Properties.KeyFieldNames = 'entCod'
                    Properties.ListColumns = <
                      item
                        FieldName = 'ent_last_name'
                      end>
                    Properties.ListSource = ds_qry_enterprise
                    Properties.OnCloseUp = cxLookupComboBoxEmpresaPropertiesCloseUp
                    TabOrder = 2
                    Width = 341
                  end
                  object cxLabelConvenio: TcxLabel
                    Left = 429
                    Top = 12
                    Caption = 'Conv'#234'nio'
                    Transparent = True
                  end
                  object cxTextEditConvenioID: TcxTextEdit
                    Left = 429
                    Top = 29
                    TabOrder = 4
                    OnExit = cxTextEditConvenioIDExit
                    Width = 66
                  end
                  object cxLookupComboBoxConvenio: TcxLookupComboBox
                    Left = 495
                    Top = 29
                    Properties.GridMode = True
                    Properties.KeyFieldNames = 'insCod'
                    Properties.ListColumns = <
                      item
                        FieldName = 'ins_last_name'
                      end>
                    Properties.ListSource = ds_qry_insurance
                    Properties.OnCloseUp = cxLookupComboBoxConvenioPropertiesCloseUp
                    TabOrder = 5
                    Width = 341
                  end
                  object cxLabelTipodeExame: TcxLabel
                    Left = 2
                    Top = 57
                    Caption = 'Tipo de Exame'
                    Transparent = True
                  end
                  object cxTextEditTipoExameID: TcxTextEdit
                    Left = 5
                    Top = 76
                    TabOrder = 7
                    OnExit = cxTextEditTipoExameIDExit
                    Width = 66
                  end
                  object cxLookupComboBoxTipoExame: TcxLookupComboBox
                    Left = 71
                    Top = 76
                    Properties.GridMode = True
                    Properties.KeyFieldNames = 'retCod'
                    Properties.ListColumns = <
                      item
                        FieldName = 'ret_name'
                      end>
                    Properties.ListSource = ds_qry_requisition_type
                    Properties.OnCloseUp = cxLookupComboBoxTipoExamePropertiesCloseUp
                    TabOrder = 8
                    Width = 341
                  end
                  object cxLabelMedico: TcxLabel
                    Left = 431
                    Top = 61
                    Caption = 'M'#233'dico'
                    Transparent = True
                  end
                  object cxTextEditMedicoID: TcxTextEdit
                    Left = 431
                    Top = 76
                    TabOrder = 10
                    OnExit = cxTextEditMedicoIDExit
                    Width = 66
                  end
                  object cxLookupComboBoxMedico: TcxLookupComboBox
                    Left = 497
                    Top = 76
                    Properties.GridMode = True
                    Properties.KeyFieldNames = 'codDoctor'
                    Properties.ListColumns = <
                      item
                        FieldName = 'rec_name'
                      end>
                    Properties.ListSource = ds_qry_doctor
                    Properties.OnCloseUp = cxLookupComboBoxMedicoPropertiesCloseUp
                    TabOrder = 11
                    Width = 341
                  end
                  object cxLookupComboBoxColetador: TcxLookupComboBox
                    Left = 71
                    Top = 124
                    Properties.GridMode = True
                    Properties.KeyFieldNames = 'codDoctor'
                    Properties.ListColumns = <
                      item
                        FieldName = 'rec_name'
                      end>
                    Properties.ListSource = ds_qry_doctor
                    Properties.OnCloseUp = cxLookupComboBoxColetadorPropertiesCloseUp
                    TabOrder = 12
                    Width = 341
                  end
                  object cxTextEditColetador: TcxTextEdit
                    Left = 5
                    Top = 124
                    TabOrder = 13
                    OnExit = cxTextEditColetadorExit
                    Width = 66
                  end
                  object cxLabelColetador: TcxLabel
                    Left = 5
                    Top = 104
                    Caption = 'Coletador'
                    Transparent = True
                  end
                end
              end
              object cxTabSheet2: TcxTabSheet
                Caption = 'Medicamento'
                ImageIndex = 1
                object cxGroupBox2: TcxGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Align = alClient
                  TabOrder = 0
                  Height = 317
                  Width = 1083
                end
              end
              object cxTabSheet3: TcxTabSheet
                Caption = 'Exame'
                ImageIndex = 2
                object cxGroupBox3: TcxGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Align = alClient
                  TabOrder = 0
                  Height = 317
                  Width = 1083
                  object cxGrid1: TcxGrid
                    Left = 3
                    Top = 16
                    Width = 831
                    Height = 289
                    TabOrder = 0
                    object cxGrid1DBTableView1: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      Navigator.Visible = True
                      DataController.DataSource = ds_qry_requisition_iten
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsView.GroupByBox = False
                      OptionsView.GroupByHeaderLayout = ghlHorizontal
                      object cxGrid1DBTableView1pro_initials: TcxGridDBColumn
                        DataBinding.FieldName = 'pro_initials'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.GridMode = True
                        Properties.KeyFieldNames = 'pro_initials'
                        Properties.ListColumns = <
                          item
                            FieldName = 'pro_initials'
                          end>
                        Properties.ListSource = ds_qry_product
                        Properties.OnCloseUp = cxGrid1DBTableView1pro_initialsPropertiesCloseUp
                        Width = 111
                      end
                      object cxGrid1DBTableView1rei_cod: TcxGridDBColumn
                        DataBinding.FieldName = 'rei_cod'
                      end
                      object cxGrid1DBTableView1requisition_req_cod: TcxGridDBColumn
                        DataBinding.FieldName = 'requisition_req_cod'
                      end
                      object cxGrid1DBTableView1product_pro_cod: TcxGridDBColumn
                        DataBinding.FieldName = 'product_pro_cod'
                      end
                      object cxGrid1DBTableView1rei_in: TcxGridDBColumn
                        DataBinding.FieldName = 'rei_id'
                      end
                      object cxGrid1DBTableView1product_value: TcxGridDBColumn
                        DataBinding.FieldName = 'product_value'
                      end
                      object cxGrid1DBTableView1rei_deleted_at: TcxGridDBColumn
                        DataBinding.FieldName = 'rei_deleted_at'
                      end
                    end
                    object cxGrid1Level1: TcxGridLevel
                      GridView = cxGrid1DBTableView1
                    end
                  end
                  object DBGrid1: TDBGrid
                    Left = 264
                    Top = 144
                    Width = 320
                    Height = 120
                    DataSource = ds_qry_product
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Top = 667
    Width = 1125
    ExplicitTop = 667
    ExplicitWidth = 1125
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      Width = 1089
      ExplicitWidth = 1089
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 1089
        ExplicitHeight = 32
      end
    end
  end
  inherited actlist_1: TActionList
    inherited Action_close: TAction [1]
    end
    inherited Action_first: TAction [2]
    end
    inherited Action_prior: TAction [3]
    end
    inherited Action_next: TAction [4]
    end
    inherited Action_last: TAction [5]
    end
    inherited Action_insert: TAction [6]
    end
    inherited Action_edit: TAction [7]
    end
    inherited Action_cancel: TAction [8]
    end
    inherited Action_save: TAction [9]
    end
    inherited Action_delete: TAction [10]
    end
    inherited Action_refresh: TAction [11]
    end
  end
  inherited acbr_enter_1: TACBrEnterTab
    EnterAsTab = True
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
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select *,hex(client_cli_cod) as clientCod,hex(enterprise_ent_cod' +
        ') as enterpriseCod,hex(insurance_ins_cod) as insuranceCod,'
      
        'hex(doctor_doc_cod) as doctorCod,hex(employee_emp_cod) employeeC' +
        'od,hex(req_cod) as reqCod from requisition '
      'where req_deleted_at is null '
      ''
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
    object qryemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
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
    object qryclientCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'clientCod'
      Origin = 'clientCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryenterpriseCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'enterpriseCod'
      Origin = 'enterpriseCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryinsuranceCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'insuranceCod'
      Origin = 'insuranceCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qrydoctorCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doctorCod'
      Origin = 'doctorCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryemployeeCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'employeeCod'
      Origin = 'employeeCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryreqCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reqCod'
      Origin = 'reqCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select cli_id,cli_cod,cli_first_name,cli_last_name,hex(cli_cod) ' +
        'as cliCod,cli_dt_birthopen,contract_ctr_cod ,'
      
        '(timestampdiff(month,cli_dt_birthopen,curdate()) div 12) as idad' +
        'e,cli_rgie,cli_cpfcnpj from client'
      'where cli_deleted_at is null'
      'and (cli_status <> '#39'D'#39' or cli_status is null)'
      'order by cli_first_name')
    Left = 95
    Top = 188
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
    object qry_clientcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_clientidade: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_clientcli_rgie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rgie'
      Origin = 'cli_rgie'
      Size = 25
    end
    object qry_clientcli_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpfcnpj'
      Origin = 'cli_cpfcnpj'
      Size = 25
    end
  end
  object ds_qry_client: TDataSource
    DataSet = qry_client
    Left = 127
    Top = 188
  end
  object qry_enterprise: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_cod;ent_id'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select ent_cod,ent_id,ent_last_name,contract_ctr_cod,hex(ent_cod' +
        ') as entCod from enterprise'
      'where ent_deleted_at is null'
      'order by ent_last_name')
    Left = 487
    Top = 84
    object qry_enterpriseent_cod: TBytesField
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_enterpriseent_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ent_id'
      Origin = 'ent_id'
    end
    object qry_enterpriseent_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 85
    end
    object qry_enterprisecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_enterpriseentCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'entCod'
      Origin = 'entCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 575
    Top = 84
  end
  object qry_insurance: TFDQuery
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select ins_cod, contract_ctr_cod, table_price_tbp_cod, ins_id,in' +
        's_last_name,'
      
        ' ins_nickname, hex(ins_cod) as insCod from insurance '#10'where ins_' +
        'deleted_at is null and (ins_status in ('#39'A'#39') or ins_status is nul' +
        'l)'
      'order by ins_last_name')
    Left = 863
    Top = 108
    object qry_insuranceins_cod: TBytesField
      FieldName = 'ins_cod'
      Origin = 'ins_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_insurancecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_insurancetable_price_tbp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
    end
    object qry_insuranceins_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ins_id'
      Origin = 'ins_id'
    end
    object qry_insuranceins_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_last_name'
      Origin = 'ins_last_name'
      Size = 85
    end
    object qry_insuranceins_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_nickname'
      Origin = 'ins_nickname'
      Size = 85
    end
    object qry_insuranceinsCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'insCod'
      Origin = 'insCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_insurance: TDataSource
    DataSet = qry_insurance
    Left = 959
    Top = 108
  end
  object qry_requisition_type: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select requisition_type.*,hex(ret_cod) as retCod from requisitio' +
        'n_type'
      'where ret_status = '#39'A'#39' and ret_deleted_at is null'
      'order by ret_name')
    Left = 471
    Top = 132
    object qry_requisition_typeret_cod: TBytesField
      FieldName = 'ret_cod'
      Origin = 'ret_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_requisition_typecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_requisition_typeret_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ret_id'
      Origin = 'ret_id'
    end
    object qry_requisition_typeret_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ret_name'
      Origin = 'ret_name'
      Size = 35
    end
    object qry_requisition_typeret_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ret_status'
      Origin = 'ret_status'
      FixedChar = True
      Size = 1
    end
    object qry_requisition_typeret_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ret_deleted_at'
      Origin = 'ret_deleted_at'
    end
    object qry_requisition_typeret_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ret_dt_registration'
      Origin = 'ret_dt_registration'
    end
    object qry_requisition_typeretCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'retCod'
      Origin = 'retCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_requisition_type: TDataSource
    DataSet = qry_requisition_type
    Left = 568
    Top = 128
  end
  object qry_doctor: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select doctor.*,r.rec_name, hex(doc_cod)as codDoctor, hex(employ' +
        'ee_emp_cod)as codEmployee  from doctor'#13#10#10
      'left '
      'join employee as e on e.emp_cod = employee_emp_cod'
      
        'left join record as r on e.record_rec_cod = r.rec_cod'#10'where doc_' +
        'status = '#39'A'#39#10
      ''
      '')
    Left = 871
    Top = 172
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
    object qry_doctoremployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qry_doctordoc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'doc_id'
      Origin = 'doc_id'
    end
    object qry_doctordoc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doc_status'
      Origin = 'doc_status'
      FixedChar = True
      Size = 1
    end
    object qry_doctordoc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_deleted_at'
      Origin = 'doc_deleted_at'
    end
    object qry_doctordoc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_dt_registration'
      Origin = 'doc_dt_registration'
    end
    object qry_doctorrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_doctorcodDoctor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codDoctor'
      Origin = 'codDoctor'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_doctorcodEmployee: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codEmployee'
      Origin = 'codEmployee'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_doctor: TDataSource
    DataSet = qry_doctor
    Left = 976
    Top = 168
  end
  object qry_employee: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select emp_cod,emp_id,employee.contract_ctr_cod,rec_name,hex(emp' +
        '_cod) as empCod from employee'#10'left join record on rec_cod = reco' +
        'rd_rec_cod'#10'where emp_status = '#39'A'#39' and emp_collect = '#39'S'#39' and emp_' +
        'deleted_at is null')
    Left = 895
    Top = 452
    object qry_employeeemp_cod: TBytesField
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_employeeemp_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'emp_id'
      Origin = 'emp_id'
    end
    object qry_employeecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_employeerec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_employeeempCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'empCod'
      Origin = 'empCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_employee: TDataSource
    DataSet = qry_employee
    Left = 943
    Top = 396
  end
  object qry_requisition_iten: TFDQuery
    AfterInsert = qry_requisition_itenAfterInsert
    IndexFieldNames = 'requisition_req_cod'
    MasterSource = ds
    MasterFields = 'req_cod'
    DetailFields = 'requisition_req_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select requisition_iten.*, pro_initials,hex(rei_cod) as reiCod f' +
        'rom requisition_iten'#10
      'left join product on pro_cod = product_pro_cod;'#10)
    Left = 719
    Top = 451
    object qry_requisition_itenrei_cod: TBytesField
      FieldName = 'rei_cod'
      Origin = 'rei_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_requisition_itenrequisition_req_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'requisition_req_cod'
      Origin = 'requisition_req_cod'
    end
    object qry_requisition_itenproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_requisition_itenproduct_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'product_value'
      Origin = 'product_value'
      Precision = 12
    end
    object qry_requisition_itenrei_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rei_deleted_at'
      Origin = 'rei_deleted_at'
    end
    object qry_requisition_itenpro_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_initials'
      Origin = 'pro_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_requisition_itenrei_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rei_id'
      Origin = 'rei_id'
    end
    object qry_requisition_itenreiCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reiCod'
      Origin = 'reiCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_requisition_iten: TDataSource
    DataSet = qry_requisition_iten
    Left = 719
    Top = 403
  end
  object qry_product: TFDQuery
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select contract_ctr_cod, pro_id,pro_cod,hex(pro_cod) as proCod,p' +
        'ro_name,pro_initials  from product'#10'where pro_type = '#39'E'#39';')
    Left = 887
    Top = 579
    object qry_productpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object qry_productpro_cod: TBytesField
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_productproCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proCod'
      Origin = 'proCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_productpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 85
    end
    object qry_productpro_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_initials'
      Origin = 'pro_initials'
      Size = 85
    end
    object qry_productcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
  end
  object ds_qry_product: TDataSource
    DataSet = qry_product
    Left = 959
    Top = 579
  end
end
