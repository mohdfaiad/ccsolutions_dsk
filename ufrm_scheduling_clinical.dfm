inherited frm_scheduling_clinical: Tfrm_scheduling_clinical
  Caption = 'Agendamento de Consulta M'#233'dica'
  ClientHeight = 672
  ClientWidth = 1482
  OnClose = FormClose
  ExplicitWidth = 1498
  ExplicitHeight = 711
  PixelsPerInch = 96
  TextHeight = 13
  inherited bardck_1: TdxBarDockControl
    Width = 1482
    ExplicitWidth = 1482
  end
  inherited pgctrl_1: TcxPageControl
    Width = 1482
    Height = 582
    ExplicitWidth = 1482
    ExplicitHeight = 640
    ClientRectBottom = 576
    ClientRectRight = 1476
    inherited tbsht_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1474
      ExplicitHeight = 607
      inherited pgctrl_2: TcxPageControl
        Width = 1474
        Height = 549
        ExplicitWidth = 1474
        ExplicitHeight = 607
        ClientRectBottom = 543
        ClientRectRight = 1468
        inherited tbsht_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 27
          ExplicitWidth = 1466
          ExplicitHeight = 574
          inherited grid_1: TcxGrid
            Width = 1460
            Height = 510
            ExplicitWidth = 1460
            ExplicitHeight = 568
            inherited grid_1DBTableView1: TcxGridDBTableView
              object grid_1DBTableView1req_id: TcxGridDBColumn
                Caption = 'C'#243'digo ID'
                DataBinding.FieldName = 'req_id'
                Width = 70
              end
              object grid_1DBTableView1cli_first_name: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'cli_first_name'
                Width = 250
              end
              object grid_1DBTableView1req_status: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'req_status'
                Width = 50
              end
              object grid_1DBTableView1req_source: TcxGridDBColumn
                Caption = 'Origem'
                DataBinding.FieldName = 'req_source'
                Width = 50
              end
              object grid_1DBTableView1ret_name: TcxGridDBColumn
                Caption = 'Tipo Requisi'#231#227'o'
                DataBinding.FieldName = 'ret_name'
                Width = 160
              end
              object grid_1DBTableView1ent_first_name: TcxGridDBColumn
                Caption = 'Empresa'
                DataBinding.FieldName = 'ent_first_name'
                Width = 250
              end
              object grid_1DBTableView1req_dt_registration: TcxGridDBColumn
                Caption = 'Dt. Reg'
                DataBinding.FieldName = 'req_dt_registration'
                Width = 110
              end
            end
            object cxGridDBTableView1: TcxGridDBTableView [1]
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
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
      ExplicitWidth = 1474
      ExplicitHeight = 607
      inherited pgctrl_3: TcxPageControl
        Width = 1474
        Height = 549
        ExplicitWidth = 1474
        ExplicitHeight = 607
        ClientRectBottom = 543
        ClientRectRight = 1468
        inherited tbsht_5: TcxTabSheet
          OnShow = tbsht_5Show
          ExplicitWidth = 1466
          ExplicitHeight = 574
          inherited grb_top: TcxGroupBox
            ExplicitWidth = 1460
            ExplicitHeight = 47
            Height = 47
            Width = 1460
            inherited lbl_cod_id: TcxLabel
              Left = 5
              Top = 5
              ExplicitLeft = 5
              ExplicitTop = 5
            end
            inherited edt_codid: TcxTextEdit
              Left = 5
              Top = 21
              ExplicitLeft = 5
              ExplicitTop = 21
            end
            inherited lbl_dt_registration: TcxLabel
              Left = 276
              Top = 5
              ExplicitLeft = 276
              ExplicitTop = 5
            end
            inherited edt_dt_registration: TcxTextEdit
              Left = 276
              Top = 21
              ExplicitLeft = 276
              ExplicitTop = 21
            end
          end
          inherited grb_bottton: TcxGroupBox
            Top = 56
            ExplicitTop = 56
            ExplicitWidth = 1460
            ExplicitHeight = 456
            Height = 456
            Width = 1460
            object cxLabelClient: TcxLabel
              Left = 5
              Top = 94
              Caption = 'Cliente'
              Transparent = True
            end
            object looComboBoxCliente: TcxLookupComboBox
              Left = 5
              Top = 109
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cli_first_name'
              Properties.ListColumns = <
                item
                  FieldName = 'cli_first_name'
                end>
              Properties.ListSource = ds_qry_client
              Properties.OnChange = looComboBoxClientePropertiesChange
              TabOrder = 1
              Width = 396
            end
            object looComboxConvenio: TcxLookupComboBox
              Left = 5
              Top = 149
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ins_first_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ins_first_name'
                end>
              Properties.ListSource = ds_client_insurance
              Properties.OnPopup = looComboxConvenioPropertiesPopup
              TabOrder = 2
              Width = 396
            end
            object looComboxEspecialidade: TcxLookupComboBox
              Left = 431
              Top = 213
              Properties.GridMode = True
              Properties.KeyFieldNames = 'rolCod'
              Properties.ListColumns = <
                item
                  FieldName = 'rol_name'
                end>
              Properties.ListSource = dsRole
              Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
              TabOrder = 3
              Width = 215
            end
            object cxLabel1: TcxLabel
              Left = 431
              Top = 195
              Caption = 'Especialidade'
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 5
              Top = 134
              Caption = 'Conv'#234'nio'
              Transparent = True
            end
            object looComboxMedico: TcxLookupComboBox
              Left = 655
              Top = 213
              Properties.GridMode = True
              Properties.KeyFieldNames = 'codDoctor'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_doctor_role
              TabOrder = 6
              Width = 215
            end
            object looComboxEmpresa: TcxLookupComboBox
              Left = 5
              Top = 25
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ent_last_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ent_last_name'
                end>
              Properties.ListSource = frm_dm.ds_enterprise
              TabOrder = 7
              Width = 396
            end
            object cxLabel3: TcxLabel
              Left = 5
              Top = 7
              Caption = 'Empresa'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 655
              Top = 195
              Caption = 'M'#233'dico'
              Transparent = True
            end
            object edtDate: TcxDateEdit
              Left = 879
              Top = 213
              EditValue = 0d
              Properties.SaveTime = False
              Properties.ShowTime = False
              Properties.ShowToday = False
              Properties.YearsInMonthList = False
              Properties.OnCloseUp = edtDatePropertiesCloseUp
              TabOrder = 10
              Width = 110
            end
            object edtTime: TcxTimeEdit
              Left = 997
              Top = 213
              Properties.OnEditValueChanged = edtTimePropertiesEditValueChanged
              TabOrder = 11
              Width = 110
            end
            object memoDescricao: TcxMemo
              Left = 431
              Top = 257
              Lines.Strings = (
                '')
              Properties.CharCase = ecUpperCase
              TabOrder = 12
              Height = 55
              Width = 676
            end
            object cxLabel5: TcxLabel
              Left = 879
              Top = 195
              Caption = 'Data'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 997
              Top = 195
              Caption = 'Hora'
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 431
              Top = 239
              Caption = 'Descri'#231#227'o'
              Transparent = True
            end
            object looComboxTipoExame: TcxLookupComboBox
              Left = 5
              Top = 67
              Properties.KeyFieldNames = 'ret_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ret_name'
                end>
              Properties.ListSource = ds_requisition_type
              TabOrder = 16
              Width = 396
            end
            object cxLabel8: TcxLabel
              Left = 5
              Top = 51
              Caption = 'Tipo de exame'
              Transparent = True
            end
            object cxGrid2: TcxGrid
              Left = 5
              Top = 176
              Width = 396
              Height = 164
              TabOrder = 18
              object cxGrid2DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = imglist_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 3
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 1
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.ImageIndex = 4
                Navigator.Buttons.Append.Visible = True
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.Buttons.Filter.Visible = True
                DataController.DataSource = ds_scheduling
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = imglist_1
                OptionsView.GroupByBox = False
                object cxGrid2DBTableView1sch_description: TcxGridDBColumn
                  Caption = 'Descri'#231#227'o'
                  DataBinding.FieldName = 'sch_description'
                  Width = 270
                end
                object cxGrid2DBTableView1sch_datetime: TcxGridDBColumn
                  Caption = 'Dt. Agendamento'
                  DataBinding.FieldName = 'sch_datetime'
                  Width = 110
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object cxGrid3: TcxGrid
              Left = 431
              Top = 25
              Width = 834
              Height = 157
              PopupMenu = popmenu_req_sheduling
              TabOrder = 19
              object cxGrid3DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = imglist_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 3
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 1
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.Buttons.Filter.Visible = False
                Navigator.Visible = True
                DataController.DataSource = ds_requisition_sheduling
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = imglist_1
                OptionsData.Editing = False
                OptionsView.NoDataToDisplayInfoText = 'Itens do Registro(s) sem agendamento(s).'
                OptionsView.GroupByBox = False
                object cxGrid3DBTableView1rsh_id: TcxGridDBColumn
                  Caption = 'C'#243'digo ID'
                  DataBinding.FieldName = 'rsh_id'
                end
                object cxGrid3DBTableView1rol_name: TcxGridDBColumn
                  Caption = 'Especialidade'
                  DataBinding.FieldName = 'rol_name'
                  Width = 200
                end
                object cxGrid3DBTableView1rec_name: TcxGridDBColumn
                  Caption = 'M'#233'dico'
                  DataBinding.FieldName = 'rec_name'
                  Width = 200
                end
                object cxGrid3DBTableView1rsh_status: TcxGridDBColumn
                  Caption = 'Status'
                  DataBinding.FieldName = 'rsh_status'
                  Width = 50
                end
                object cxGrid3DBTableView1sch_description: TcxGridDBColumn
                  Caption = 'Descri'#231#227'o'
                  DataBinding.FieldName = 'sch_description'
                  Width = 200
                end
                object cxGrid3DBTableView1sch_datetime: TcxGridDBColumn
                  Caption = 'Dt. Agendamento'
                  DataBinding.FieldName = 'sch_datetime'
                  Width = 110
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBTableView1
              end
            end
            object btnAgendar: TButton
              Left = 1119
              Top = 213
              Width = 72
              Height = 99
              Caption = 'Agendar'
              TabOrder = 20
              OnClick = btnAgendarClick
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Top = 637
    Width = 1482
    ExplicitTop = 695
    ExplicitWidth = 1482
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      Width = 1446
      ExplicitWidth = 1446
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 1446
      end
    end
  end
  inherited actlist_1: TActionList
    inherited Action_delete: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited ds: TDataSource
    DataSet = qry
    OnStateChange = nil
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select r.*, c.cli_first_name, hex(r.req_cod)as CodRequisition , ' +
        'ent.ent_first_name, hex(r.requisition_type_ret_cod)as CodType_re' +
        't_cod, t.ret_name  from requisition as r'#10
      
        'left join requisition_type as t on t.ret_cod = requisition_type_' +
        'ret_cod'#10
      'left join client as c on c.cli_cod = r.client_cli_cod '#13#10#10
      ''
      ''
      ''
      ''
      
        'left join enterprise as ent on ent.ent_cod = r.enterprise_ent_co' +
        'd'#13#10#10
      ''
      ''
      ''
      ''
      'where r.contract_ctr_cod =:ctr_cod and req_deleted_at is null ')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
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
    object qryret_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ret_name'
      Origin = 'ret_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
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
    object qryCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = qry_client
      LookupKeyFields = 'cli_cod'
      LookupResultField = 'cli_first_name'
      KeyFields = 'client_cli_cod'
      Size = 85
      Lookup = True
    end
    object qryreq_source: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'req_source'
      Origin = 'req_source'
      FixedChar = True
      Size = 1
    end
    object qrycli_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qryent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qryCodRequisition: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodRequisition'
      Origin = 'CodRequisition'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryCodType_ret_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodType_ret_cod'
      Origin = 'CodType_ret_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object qry_client: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_cod,contract_ctr_cod,cli_first_name,hex(cli_cod) as c' +
        'liCod from client '#13#10#10
      
        'where contract_ctr_cod =:ctr_cod and cli_deleted_at is null'#10' ord' +
        'er by cli_first_name')
    Left = 679
    Top = 68
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
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
      DisplayLabel = 'Cliente'
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
    Left = 716
    Top = 68
  end
  object Qry_role: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select rol_cod,rol_name,hex(rol_cod) as rolCod,contract_ctr_cod ' +
        'from role'
      'where rol_deleted_at is null'
      'order by rol_name')
    Left = 832
    Top = 64
    object Qry_rolerol_cod: TBytesField
      FieldName = 'rol_cod'
      Origin = 'rol_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_rolerol_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Especialidade'
      FieldName = 'rol_name'
      Origin = 'rol_name'
      Size = 35
    end
    object Qry_rolerolCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rolCod'
      Origin = 'rolCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object Qry_rolecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
  end
  object dsRole: TDataSource
    DataSet = Qry_role
    Left = 862
    Top = 64
  end
  object qry_doctor_role: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select doctor.*,r.rec_name, hex(doc_cod)as codDoctor, hex(employ' +
        'ee_emp_cod)as codEmployee  from doctor'#10'left '
      'join employee as e on e.emp_cod = employee_emp_cod'
      
        'left join record as r on e.record_rec_cod = r.rec_cod'#10'where doc_' +
        'status = '#39'A'#39#10
      
        'and employee_emp_cod in (select employee_emp_cod from role_emplo' +
        'yee where role_rol_cod =:codRole)'
      '')
    Left = 970
    Top = 64
    ParamData = <
      item
        Name = 'CODROLE'
        DataType = ftBytes
        ParamType = ptInput
        Value = Null
      end>
    object qry_doctor_roledoc_cod: TBytesField
      FieldName = 'doc_cod'
      Origin = 'doc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_doctor_rolecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_doctor_roleemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qry_doctor_roledoc_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 15
      FieldName = 'doc_id'
      Origin = 'doc_id'
    end
    object qry_doctor_roledoc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doc_status'
      Origin = 'doc_status'
      FixedChar = True
      Size = 1
    end
    object qry_doctor_roledoc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_deleted_at'
      Origin = 'doc_deleted_at'
    end
    object qry_doctor_roledoc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_dt_registration'
      Origin = 'doc_dt_registration'
    end
    object qry_doctor_rolerec_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 100
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_doctor_rolecodDoctor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codDoctor'
      Origin = 'codDoctor'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_doctor_rolecodEmployee: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codEmployee'
      Origin = 'codEmployee'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_doctor_role: TDataSource
    DataSet = qry_doctor_role
    Left = 1000
    Top = 64
  end
  object qry_client_insurance: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select ins_cod, contract_ctr_cod, table_price_tbp_cod, ins_id, i' +
        'ns_first_name,'#10' ins_last_name,'
      
        ' ins_nickname, hex(ins_cod) as codInsirance from insurance '#10'wher' +
        'e ins_deleted_at is null and (ins_status in ('#39'A'#39') or ins_status ' +
        'is null);')
    Left = 755
    Top = 68
    object qry_client_insuranceins_cod: TBytesField
      FieldName = 'ins_cod'
      Origin = 'ins_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_client_insurancecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_client_insurancetable_price_tbp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
    end
    object qry_client_insuranceins_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ins_id'
      Origin = 'ins_id'
    end
    object qry_client_insuranceins_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'ins_first_name'
      Origin = 'ins_first_name'
      Size = 85
    end
    object qry_client_insuranceins_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'ins_last_name'
      Origin = 'ins_last_name'
      Size = 85
    end
    object qry_client_insuranceins_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_nickname'
      Origin = 'ins_nickname'
      Size = 85
    end
    object qry_client_insurancecodInsirance: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codInsirance'
      Origin = 'codInsirance'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_client_insurance: TDataSource
    DataSet = qry_client_insurance
    Left = 784
    Top = 68
  end
  object qry_requisition_type: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from requisition_type')
    Left = 904
    Top = 64
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
      DisplayLabel = 'Nome'
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
  end
  object ds_requisition_type: TDataSource
    DataSet = qry_requisition_type
    Left = 936
    Top = 64
  end
  object qry_scheduling: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select sch.*, rec_name, hex(sch.employee_emp_cod)as CodEmployee ' +
        'from scheduling as sch'#13#10#10
      'left join employee as emp on emp.emp_cod = sch.employee_emp_cod'#10
      'left join record as rec on rec.rec_cod = emp.record_rec_cod '#13#10#10
      
        'where employee_emp_cod = unhex(:employee_emp_cod)'#10'and sch_dateti' +
        'me between :DataIncio and :DataFim')
    Left = 1072
    Top = 8
    ParamData = <
      item
        Name = 'EMPLOYEE_EMP_COD'
        DataType = ftString
        ParamType = ptInput
        Size = 85
        Value = Null
      end
      item
        Name = 'DATAINCIO'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIM'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
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
    object qry_schedulingrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
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
    object qry_schedulingCodEmployee: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEmployee'
      Origin = 'CodEmployee'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_scheduling: TDataSource
    DataSet = qry_scheduling
    Left = 1104
    Top = 8
  end
  object qry_requisition_sheduling: TFDQuery
    Active = True
    AfterInsert = qry_requisition_shedulingAfterInsert
    IndexFieldNames = 'requisition_req_cod'
    MasterSource = ds
    MasterFields = 'req_cod'
    DetailFields = 'requisition_req_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evCache, evDetailCascade]
    SQL.Strings = (
      
        'select rsh.*,hex(rsh.requisition_req_cod)as reqCod, sch.employee' +
        '_emp_cod,sch.sch_datetime,'#10'sch.sch_description,'
      
        'rec.rec_name, rol.rol_name,hex(rsh.scheduling_sch_cod)as CodSche' +
        'duling,hex(rsh.role_rol_cod)as CodRole, hex(rsh.doctor_doc_cod)a' +
        's CodDoctor from requisition_sheduling'#10' as rsh'
      
        'left join scheduling as sch on sch.sch_cod = scheduling_sch_cod'#13 +
        #10#10
      'left join role as rol on rol.rol_cod = role_rol_cod'
      'left join doctor as doc on   doc.doc_cod = doctor_doc_cod'#10
      'left join employee as emp on emp.emp_cod = doc.employee_emp_cod'#10
      'left join record as rec on rec.rec_cod = emp.record_rec_cod '
      'where requisition_req_cod =:req_cod and rsh_deleted_at is null ')
    Left = 1080
    Top = 56
    ParamData = <
      item
        Name = 'REQ_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_requisition_shedulingreqCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reqCod'
      Origin = 'reqCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
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
    object qry_requisition_shedulingemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_requisition_shedulingsch_datetime: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_datetime'
      Origin = 'sch_datetime'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_requisition_shedulingsch_description: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sch_description'
      Origin = 'sch_description'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object qry_requisition_shedulingrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_requisition_shedulingrol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_requisition_shedulingCodScheduling: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodScheduling'
      Origin = 'CodScheduling'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_requisition_shedulingCodRole: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodRole'
      Origin = 'CodRole'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_requisition_shedulingCodDoctor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodDoctor'
      Origin = 'CodDoctor'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_requisition_sheduling: TDataSource
    DataSet = qry_requisition_sheduling
    OnDataChange = ds_requisition_shedulingDataChange
    Left = 1112
    Top = 56
  end
  object qry_parameter_clinic: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    ConstraintsEnabled = True
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select parameter_clinic.*, hex(prc_cod)as CodParameter from para' +
        'meter_clinic'
      'where contract_ctr_cod =:ctr_cod')
    Left = 1040
    Top = 8
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_parameter_clinicprc_cod: TBytesField
      FieldName = 'prc_cod'
      Origin = 'prc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_parameter_cliniccontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_parameter_clinicprc_time_service: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prc_time_service'
      Origin = 'prc_time_service'
    end
    object qry_parameter_clinicCodParameter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodParameter'
      Origin = 'CodParameter'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object popmenu_req_sheduling: TPopupMenu
    Left = 1039
    Top = 60
    object Excluir2: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir2Click
    end
    object Editar2: TMenuItem
      Caption = 'Editar'
      OnClick = Editar2Click
    end
    object Cancelar2: TMenuItem
      Caption = 'Cancelar Edi'#231#227'o'
      OnClick = Cancelar2Click
    end
  end
end
