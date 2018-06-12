inherited frm_scheduling_clinical: Tfrm_scheduling_clinical
  Caption = 'frm_scheduling_clinical'
  ClientHeight = 776
  ClientWidth = 1291
  ExplicitWidth = 1307
  ExplicitHeight = 815
  PixelsPerInch = 96
  TextHeight = 13
  inherited bardck_1: TdxBarDockControl
    Width = 1291
    ExplicitWidth = 1291
  end
  inherited pgctrl_1: TcxPageControl
    Width = 1291
    Height = 686
    ExplicitWidth = 1291
    ExplicitHeight = 720
    ClientRectBottom = 680
    ClientRectRight = 1285
    inherited tbsht_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1283
      ExplicitHeight = 687
      inherited pgctrl_2: TcxPageControl
        Width = 1283
        Height = 653
        ExplicitWidth = 1283
        ExplicitHeight = 687
        ClientRectBottom = 647
        ClientRectRight = 1277
        inherited tbsht_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 27
          ExplicitWidth = 1275
          ExplicitHeight = 654
          inherited grid_1: TcxGrid
            Width = 1269
            Height = 614
            ExplicitWidth = 1269
            ExplicitHeight = 648
            inherited grid_1DBTableView1: TcxGridDBTableView
              object grid_1DBTableView1req_cod: TcxGridDBColumn
                DataBinding.FieldName = 'req_cod'
              end
              object grid_1DBTableView1req_id: TcxGridDBColumn
                DataBinding.FieldName = 'req_id'
              end
              object grid_1DBTableView1Cliente: TcxGridDBColumn
                DataBinding.FieldName = 'Cliente'
              end
              object grid_1DBTableView1req_status: TcxGridDBColumn
                DataBinding.FieldName = 'req_status'
              end
              object grid_1DBTableView1req_source: TcxGridDBColumn
                DataBinding.FieldName = 'req_source'
              end
              object grid_1DBTableView1CodReq: TcxGridDBColumn
                DataBinding.FieldName = 'CodReq'
              end
              object grid_1DBTableView1CodType_ret_cod: TcxGridDBColumn
                DataBinding.FieldName = 'CodType_ret_cod'
              end
              object grid_1DBTableView1req_dt_registration: TcxGridDBColumn
                DataBinding.FieldName = 'req_dt_registration'
              end
              object grid_1DBTableView1ret_name: TcxGridDBColumn
                DataBinding.FieldName = 'ret_name'
              end
              object grid_1DBTableView1cli_first_name: TcxGridDBColumn
                DataBinding.FieldName = 'cli_first_name'
              end
              object grid_1DBTableView1ent_first_name: TcxGridDBColumn
                DataBinding.FieldName = 'ent_first_name'
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
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1283
      ExplicitHeight = 687
      inherited pgctrl_3: TcxPageControl
        Width = 1283
        Height = 653
        ExplicitWidth = 1283
        ExplicitHeight = 687
        ClientRectBottom = 647
        ClientRectRight = 1277
        inherited tbsht_5: TcxTabSheet
          OnShow = tbsht_5Show
          ExplicitWidth = 1275
          ExplicitHeight = 654
          inherited grb_top: TcxGroupBox
            ExplicitWidth = 1269
            Width = 1269
            inherited lbl_cod_id: TcxLabel
              Top = 5
              ExplicitTop = 5
            end
            inherited lbl_dt_registration: TcxLabel
              Left = 148
              Top = 5
              ExplicitLeft = 148
              ExplicitTop = 5
            end
            inherited edt_dt_registration: TcxTextEdit
              Left = 148
              ExplicitLeft = 148
            end
          end
          inherited grb_bottton: TcxGroupBox
            Top = 62
            ExplicitTop = 62
            ExplicitWidth = 1269
            ExplicitHeight = 588
            Height = 554
            Width = 1269
            object cxLabelClient: TcxLabel
              Left = 3
              Top = 49
              Caption = 'Cliente'
            end
            object looComboBoxCliente: TcxLookupComboBox
              Left = 3
              Top = 67
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cli_first_name'
              Properties.ListColumns = <
                item
                  FieldName = 'cli_first_name'
                end>
              Properties.ListSource = ds_qry_client
              TabOrder = 1
              Width = 270
            end
            object looComboxConvenio: TcxLookupComboBox
              Left = 286
              Top = 67
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ins_first_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ins_first_name'
                end>
              Properties.ListSource = ds_client_insurance
              TabOrder = 2
              Width = 270
            end
            object looComboxEspecialidade: TcxLookupComboBox
              Left = 3
              Top = 379
              Properties.GridMode = True
              Properties.KeyFieldNames = 'rolCod'
              Properties.ListColumns = <
                item
                  FieldName = 'rol_name'
                end>
              Properties.ListSource = dsRolee02
              Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
              TabOrder = 3
              Width = 270
            end
            object cxLabel1: TcxLabel
              Left = 3
              Top = 361
              Caption = 'Especialidade'
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 286
              Top = 49
              Caption = 'Conv'#234'nio'
              Transparent = True
            end
            object looComboxMedico: TcxLookupComboBox
              Left = 279
              Top = 379
              Properties.GridMode = True
              Properties.KeyFieldNames = 'codDoctor'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_doctor_role
              TabOrder = 6
              Width = 270
            end
            object looComboxEmpresa: TcxLookupComboBox
              Left = 3
              Top = 22
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ent_last_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ent_last_name'
                end>
              Properties.ListSource = frm_dm.ds_enterprise
              TabOrder = 7
              Width = 270
            end
            object cxLabel3: TcxLabel
              Left = 3
              Top = 4
              Caption = 'Empresa'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 279
              Top = 362
              Caption = 'M'#233'dico'
              Transparent = True
            end
            object edtDate: TcxDateEdit
              Left = 556
              Top = 379
              Properties.ShowTime = False
              Properties.OnCloseUp = edtDatePropertiesCloseUp
              TabOrder = 10
              Width = 125
            end
            object edtTime: TcxTimeEdit
              Left = 690
              Top = 379
              Properties.OnEditValueChanged = edtTimePropertiesEditValueChanged
              TabOrder = 11
              Width = 125
            end
            object memoDescricao: TcxMemo
              Left = 3
              Top = 424
              Lines.Strings = (
                '')
              TabOrder = 12
              Height = 73
              Width = 680
            end
            object cxLabel5: TcxLabel
              Left = 556
              Top = 361
              Caption = 'Data'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 690
              Top = 361
              Caption = 'Hora'
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 3
              Top = 406
              Caption = 'Descri'#231#227'o'
              Transparent = True
            end
            object looComboxTipoExame: TcxLookupComboBox
              Left = 3
              Top = 111
              Properties.KeyFieldNames = 'ret_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ret_name'
                end>
              Properties.ListSource = ds_requisition_type
              TabOrder = 16
              Width = 270
            end
            object cxLabel8: TcxLabel
              Left = 3
              Top = 93
              Caption = 'Tipo de exame'
              Transparent = True
            end
            object cxGrid2: TcxGrid
              Left = 945
              Top = 159
              Width = 327
              Height = 338
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
                object cxGrid2DBTableView1sch_id: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_id'
                end
                object cxGrid2DBTableView1sch_datetime: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_datetime'
                end
                object cxGrid2DBTableView1sch_description: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_description'
                end
                object cxGrid2DBTableView1sch_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_dt_registration'
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object cxGrid3: TcxGrid
              Left = 3
              Top = 151
              Width = 936
              Height = 202
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
                DataController.DataSource = ds_requisition_sheduling02
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = imglist_1
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
                object cxGrid3DBTableView1rsh_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'rsh_dt_registration'
                  Width = 110
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBTableView1
              end
            end
            object ComboxStatus: TcxComboBox
              Left = 286
              Top = 111
              Properties.Items.Strings = (
                'A - ATIVO '
                'D - DESATIVADO')
              TabOrder = 20
              Width = 141
            end
            object btnAgendar: TButton
              Left = 712
              Top = 440
              Width = 116
              Height = 41
              Caption = 'Agendar'
              TabOrder = 21
              OnClick = btnAgendarClick
            end
            object cxLabel9: TcxLabel
              Left = 286
              Top = 93
              Caption = 'Status'
              Transparent = True
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Top = 741
    Width = 1291
    ExplicitTop = 775
    ExplicitWidth = 1291
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      Width = 1255
      ExplicitWidth = 1255
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 1255
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select r.*, c.cli_first_name, concat('#39'0x'#39', hex(r.req_cod))as Cod' +
        'Req, ent.ent_first_name, hex(r.requisition_type_ret_cod)as CodTy' +
        'pe_ret_cod, t.ret_name  from requisition as r'#10
      
        'left join requisition_type as t on t.ret_cod = requisition_type_' +
        'ret_cod'#10
      'left join client as c on c.cli_cod = r.client_cli_cod '#13#10#10
      
        'left join enterprise as ent on ent.ent_cod = r.enterprise_ent_co' +
        'd'#13#10#10
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
    object qryCodReq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodReq'
      Origin = 'CodReq'
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
  end
  object qry_client: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_cod,contract_ctr_cod,cli_first_name,concat('#39'0x'#39',hex(c' +
        'li_cod)) as cliCod from client '#13#10#10
      
        'where contract_ctr_cod =:ctr_cod and cli_deleted_at is null'#10' ord' +
        'er by cli_first_name')
    Left = 687
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
  object Qry_rolee02: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select rol_cod,rol_name,hex(rol_cod) as rolCod,contract_ctr_cod ' +
        'from role'
      'where rol_deleted_at is null'
      'order by rol_name')
    Left = 688
    Top = 120
    object Qry_rolee02rol_cod: TBytesField
      FieldName = 'rol_cod'
      Origin = 'rol_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_rolee02rol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      Size = 35
    end
    object Qry_rolee02rolCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rolCod'
      Origin = 'rolCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object Qry_rolee02contract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
  end
  object dsRolee02: TDataSource
    DataSet = Qry_rolee02
    Left = 718
    Top = 120
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
    Left = 706
    Top = 120
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
    Left = 784
    Top = 120
  end
  object qry_client_insurance: TFDQuery
    Active = True
    IndexFieldNames = 'client_cli_cod'
    MasterSource = ds_qry_client
    MasterFields = 'cli_cod'
    DetailFields = 'client_cli_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select client_insurance.*, ins_first_name, hex(cin_cod) as codCl' +
        'iInsirance,'
      ' hex(client_cli_cod)as ClientCod from client_insurance'#13#10#10
      'left join insurance on insurance_ins_cod = ins_cod'#13#10#10
      'where client_cli_cod =:cli_cod and cin_deleted_at is null')
    Left = 755
    Top = 68
    ParamData = <
      item
        Name = 'CLI_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_client_insurancecin_cod: TBytesField
      FieldName = 'cin_cod'
      Origin = 'cin_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_client_insuranceclient_cli_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
    end
    object qry_client_insuranceinsurance_ins_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'insurance_ins_cod'
      Origin = 'insurance_ins_cod'
    end
    object qry_client_insurancecin_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cin_id'
      Origin = 'cin_id'
    end
    object qry_client_insurancecin_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cin_deleted_at'
      Origin = 'cin_deleted_at'
    end
    object qry_client_insurancecin_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cin_dt_registration'
      Origin = 'cin_dt_registration'
    end
    object qry_client_insuranceins_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_first_name'
      Origin = 'ins_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_client_insurancecodCliInsirance: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codCliInsirance'
      Origin = 'codCliInsirance'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_client_insuranceClientCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ClientCod'
      Origin = 'ClientCod'
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
    Left = 816
    Top = 120
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
  end
  object ds_requisition_type: TDataSource
    DataSet = qry_requisition_type
    Left = 848
    Top = 120
  end
  object qry_scheduling: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select scheduling.*, hex(employee_emp_cod)as CodEmployee from sc' +
        'heduling'#13#10#10
      ''
      'where employee_emp_cod = unhex(:employee_emp_cod)'
      'and sch_datetime between :DataIncio and :DataFim')
    Left = 1032
    Top = 408
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
    Top = 400
  end
  object qry_requisition_sheduling02: TFDQuery
    Active = True
    AfterInsert = qry_requisition_sheduling02AfterInsert
    IndexFieldNames = 'requisition_req_cod'
    MasterSource = ds
    MasterFields = 'req_cod'
    DetailFields = 'requisition_req_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select requisition_sheduling.*,hex(requisition_req_cod)as reqCod' +
        ', sch.employee_emp_cod,sch.sch_datetime,'#10'sch.sch_description,'
      ' rec.rec_name, rol.rol_name from requisition_sheduling'#10
      'left join scheduling as sch on sch.sch_cod = scheduling_sch_cod'
      ' '#10'left join role as rol on rol.rol_cod = role_rol_cod'#13#10#10
      'left join doctor as doc on   doc.doc_cod = doctor_doc_cod'#10
      'left join employee as emp on emp.emp_cod = doc.employee_emp_cod'#10
      'left join record as rec on rec.rec_cod = emp.record_rec_cod '
      'where requisition_req_cod =:req_cod and rsh_deleted_at is null ')
    Left = 984
    Top = 120
    ParamData = <
      item
        Name = 'REQ_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_requisition_sheduling02reqCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reqCod'
      Origin = 'reqCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_requisition_sheduling02rsh_cod: TBytesField
      FieldName = 'rsh_cod'
      Origin = 'rsh_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_requisition_sheduling02contract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_requisition_sheduling02requisition_req_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'requisition_req_cod'
      Origin = 'requisition_req_cod'
    end
    object qry_requisition_sheduling02scheduling_sch_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'scheduling_sch_cod'
      Origin = 'scheduling_sch_cod'
    end
    object qry_requisition_sheduling02role_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object qry_requisition_sheduling02doctor_doc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doctor_doc_cod'
      Origin = 'doctor_doc_cod'
    end
    object qry_requisition_sheduling02rsh_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_id'
      Origin = 'rsh_id'
    end
    object qry_requisition_sheduling02rsh_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_status'
      Origin = 'rsh_status'
      FixedChar = True
      Size = 1
    end
    object qry_requisition_sheduling02rsh_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_deleted_at'
      Origin = 'rsh_deleted_at'
    end
    object qry_requisition_sheduling02rsh_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rsh_dt_registration'
      Origin = 'rsh_dt_registration'
    end
    object qry_requisition_sheduling02employee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_requisition_sheduling02sch_datetime: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_datetime'
      Origin = 'sch_datetime'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_requisition_sheduling02sch_description: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sch_description'
      Origin = 'sch_description'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object qry_requisition_sheduling02rec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_requisition_sheduling02rol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object ds_requisition_sheduling02: TDataSource
    DataSet = qry_requisition_sheduling02
    Left = 1024
    Top = 120
  end
end
