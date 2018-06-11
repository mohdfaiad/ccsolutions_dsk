inherited frm_scheduling_clinical: Tfrm_scheduling_clinical
  Caption = 'frm_scheduling_clinical'
  ClientHeight = 836
  ClientWidth = 1166
  ExplicitWidth = 1182
  ExplicitHeight = 875
  PixelsPerInch = 96
  TextHeight = 13
  inherited bardck_1: TdxBarDockControl
    Width = 1166
    ExplicitWidth = 1166
  end
  inherited pgctrl_1: TcxPageControl
    Width = 1166
    Height = 746
    ExplicitWidth = 1166
    ExplicitHeight = 746
    ClientRectBottom = 740
    ClientRectRight = 1160
    inherited tbsht_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1158
      ExplicitHeight = 713
      inherited pgctrl_2: TcxPageControl
        Width = 1158
        Height = 713
        ExplicitWidth = 1158
        ExplicitHeight = 713
        ClientRectBottom = 707
        ClientRectRight = 1152
        inherited tbsht_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 27
          ExplicitWidth = 1150
          ExplicitHeight = 680
          inherited grid_1: TcxGrid
            Width = 1144
            Height = 674
            ExplicitWidth = 1144
            ExplicitHeight = 674
            inherited grid_1DBTableView1: TcxGridDBTableView
              object grid_1DBTableView1req_cod: TcxGridDBColumn
                DataBinding.FieldName = 'req_cod'
              end
              object grid_1DBTableView1client_cli_cod: TcxGridDBColumn
                DataBinding.FieldName = 'client_cli_cod'
              end
              object grid_1DBTableView1ret_name: TcxGridDBColumn
                DataBinding.FieldName = 'ret_name'
              end
              object grid_1DBTableView1role_rol_cod: TcxGridDBColumn
                DataBinding.FieldName = 'role_rol_cod'
              end
              object grid_1DBTableView1cli_first_name: TcxGridDBColumn
                DataBinding.FieldName = 'cli_first_name'
              end
              object grid_1DBTableView1cli_last_name: TcxGridDBColumn
                DataBinding.FieldName = 'cli_last_name'
              end
              object grid_1DBTableView1doctor_doc_cod: TcxGridDBColumn
                DataBinding.FieldName = 'doctor_doc_cod'
              end
              object grid_1DBTableView1req_id: TcxGridDBColumn
                DataBinding.FieldName = 'req_id'
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
              object grid_1DBTableView1Cliente: TcxGridDBColumn
                DataBinding.FieldName = 'Cliente'
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
      ExplicitWidth = 1158
      ExplicitHeight = 713
      inherited pgctrl_3: TcxPageControl
        Width = 1158
        Height = 713
        ExplicitWidth = 1158
        ExplicitHeight = 713
        ClientRectBottom = 707
        ClientRectRight = 1152
        inherited tbsht_5: TcxTabSheet
          OnShow = tbsht_5Show
          ExplicitWidth = 1150
          ExplicitHeight = 680
          inherited grb_top: TcxGroupBox
            ExplicitWidth = 1144
            Width = 1144
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
            Top = 72
            ExplicitTop = 72
            ExplicitWidth = 1144
            ExplicitHeight = 614
            Height = 614
            Width = 1144
            object cxLabelClient: TcxLabel
              Left = 3
              Top = 49
              Caption = 'Cliente'
            end
            object cxLookupComboBoxCliente: TcxLookupComboBox
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
            object cxGrid1: TcxGrid
              Left = 19
              Top = 520
              Width = 1067
              Height = 91
              TabOrder = 2
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
                object cxGrid1DBTableView1Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_datetime'
                  PropertiesClassName = 'TdxDateTimeWheelPickerProperties'
                  Properties.Wheels = [pwYear, pwMonth, pwDay, pwHour, pwMinute]
                  Width = 117
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
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
              TabOrder = 3
              Width = 270
            end
            object cxLookupComboBox1: TcxLookupComboBox
              Left = 3
              Top = 166
              Properties.GridMode = True
              Properties.KeyFieldNames = 'rolCod'
              Properties.ListColumns = <
                item
                  FieldName = 'rol_name'
                end>
              Properties.ListSource = dsRolee02
              Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
              TabOrder = 4
              Width = 270
            end
            object cxLabel1: TcxLabel
              Left = 3
              Top = 148
              Caption = 'Especialidade'
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 286
              Top = 49
              Caption = 'Conv'#234'nio'
              Transparent = True
            end
            object cxLookupComboBox2: TcxLookupComboBox
              Left = 3
              Top = 205
              Properties.GridMode = True
              Properties.KeyFieldNames = 'codDoctor'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_doctor_role
              TabOrder = 7
              Width = 270
            end
            object cxLookupComboBox3: TcxLookupComboBox
              Left = 3
              Top = 22
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ent_last_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ent_last_name'
                end>
              Properties.ListSource = frm_dm.ds_enterprise
              TabOrder = 8
              Width = 270
            end
            object cxLabel3: TcxLabel
              Left = 3
              Top = 4
              Caption = 'Empresa'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 3
              Top = 188
              Caption = 'M'#233'dico'
              Transparent = True
            end
            object edtDate: TcxDateEdit
              Left = 302
              Top = 166
              Properties.ShowTime = False
              Properties.OnCloseUp = edtDatePropertiesCloseUp
              TabOrder = 11
              Width = 125
            end
            object edtTime: TcxTimeEdit
              Left = 447
              Top = 166
              Properties.OnEditValueChanged = edtTimePropertiesEditValueChanged
              TabOrder = 12
              Width = 125
            end
            object memoDescricao: TcxMemo
              Left = 3
              Top = 248
              Lines.Strings = (
                '')
              TabOrder = 13
              Height = 49
              Width = 553
            end
            object cxLabel5: TcxLabel
              Left = 302
              Top = 148
              Caption = 'Data'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 447
              Top = 148
              Caption = 'Hora'
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 6
              Top = 232
              Caption = 'Descri'#231#227'o'
              Transparent = True
            end
            object cxLookupComboBox4: TcxLookupComboBox
              Left = 3
              Top = 110
              Properties.KeyFieldNames = 'ret_name'
              Properties.ListColumns = <
                item
                  FieldName = 'ret_name'
                end>
              Properties.ListSource = ds_requisition_type
              TabOrder = 17
              Width = 270
            end
            object cxLabel8: TcxLabel
              Left = 3
              Top = 92
              Caption = 'Tipo de exame'
              Transparent = True
            end
            object cxGrid2: TcxGrid
              Left = 562
              Top = -9
              Width = 403
              Height = 115
              TabOrder = 19
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
                DataController.DataSource = ds_schedulin
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
              Left = 19
              Top = 303
              Width = 1067
              Height = 176
              TabOrder = 20
              object cxGrid3DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = imglist_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 3
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 1
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.Visible = True
                DataController.DataSource = ds_requisition_sheduling02
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = imglist_1
                object cxGrid3DBTableView1rsh_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_cod'
                end
                object cxGrid3DBTableView1requisition_req_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'requisition_req_cod'
                end
                object cxGrid3DBTableView1scheduling_sch_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'scheduling_sch_cod'
                end
                object cxGrid3DBTableView1role_rol_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'role_rol_cod'
                end
                object cxGrid3DBTableView1doctor_doc_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'doctor_doc_cod'
                end
                object cxGrid3DBTableView1employee_emp_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'employee_emp_cod'
                end
                object cxGrid3DBTableView1rsh_id: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_id'
                end
                object cxGrid3DBTableView1rol_name: TcxGridDBColumn
                  DataBinding.FieldName = 'rol_name'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.GridMode = True
                  Properties.KeyFieldNames = 'rol_name'
                  Properties.ListColumns = <
                    item
                      FieldName = 'rol_name'
                    end>
                  Properties.ListSource = dsRolee02
                  Properties.OnCloseUp = cxGrid3DBTableView1rol_namePropertiesCloseUp
                  Width = 200
                end
                object cxGrid3DBTableView1rec_name: TcxGridDBColumn
                  DataBinding.FieldName = 'rec_name'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.GridMode = True
                  Properties.KeyFieldNames = 'rec_name'
                  Properties.ListColumns = <
                    item
                      FieldName = 'rec_name'
                    end>
                  Properties.ListSource = ds_doctor_role
                  Properties.OnCloseUp = cxGrid3DBTableView1rec_namePropertiesCloseUp
                  Width = 200
                end
                object cxGrid3DBTableView1rsh_status: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_status'
                end
                object cxGrid3DBTableView1sch_description: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_description'
                  Width = 200
                end
                object cxGrid3DBTableView1sch_datetime: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_datetime'
                end
                object cxGrid3DBTableView1rsh_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'rsh_dt_registration'
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBTableView1
              end
            end
            object ComboxStatus: TcxComboBox
              Left = 286
              Top = 110
              Properties.Items.Strings = (
                'A - ATIVO '
                'D - DESATIVADO')
              TabOrder = 21
              Width = 141
            end
            object DBGrid1: TDBGrid
              Left = 600
              Top = 166
              Width = 486
              Height = 91
              DataSource = ds_requisition_sheduling02
              TabOrder = 22
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'contract_ctr_cod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'requisition_req_cod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'scheduling_sch_cod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'rsh_id'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'rsh_status'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'rsh_dt_registration'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sch_datetime'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sch_description'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'rec_name'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'rol_name'
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Top = 801
    Width = 1166
    ExplicitTop = 801
    ExplicitWidth = 1166
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      Width = 1130
      ExplicitWidth = 1130
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 1130
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
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select r.*, c.cli_first_name, c.cli_last_name, concat('#39'0x'#39', hex(' +
        'r.req_cod))as CodReq, hex(r.requisition_type_ret_cod)as CodType_' +
        'ret_cod, t.ret_name  from requisition as r'
      
        'left join requisition_type as t on t.ret_cod = requisition_type_' +
        'ret_cod'#10'left join client as c on c.cli_cod = r.client_cli_cod '
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
    object qrycli_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qrycli_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
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
        '_ctr_cod,doc_cod,doc_id,hex(doc_cod) as docCod from record'#10
      
        'left join doctor on employee_emp_cod in (select emp_cod from emp' +
        'loyee '#10'        '
      'where record_rec_cod = rec_cod)'
      
        'left join role on rol_cod in (select role_rol_cod from role_empl' +
        'oyee'#10'                      '
      
        'where employee_emp_cod in (select employee_emp_cod from doctor))' +
        #10'where rec_cod in (select record_rec_cod from employee'#10'         ' +
        '        '
      'where emp_cod in (select employee_emp_cod from doctor))')
    Left = 879
    Top = 492
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
    object qry_doctordoc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doc_cod'
      Origin = 'doc_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_doctordoc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'doc_id'
      Origin = 'doc_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_doctordocCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'docCod'
      Origin = 'docCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_qry_doctor: TDataSource
    DataSet = qry_doctor
    Left = 919
    Top = 490
  end
  object qry_scheduling: TFDQuery
    Active = True
    AfterInsert = qry_schedulingAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from scheduling')
    Left = 711
    Top = 487
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
        'ec_name,'#10'hex(requisition_sheduling.role_rol_cod) as rolCod,hex(s' +
        'ch_cod) as schCod from requisition_sheduling'#10
      'left join role on rol_cod = role_rol_cod'#10
      'left join scheduling on sch_cod = scheduling_sch_cod '
      
        'left join record on  rec_cod in (select record_rec_cod from empl' +
        'oyee'#10'                 '
      
        '                                 where emp_cod in (select employ' +
        'ee_emp_cod from role_employee'#10'                 '
      
        '                                 where role_rol_cod = rol_cod) a' +
        'nd emp_cod in (select employee_emp_cod from doctor))')
    Left = 135
    Top = 479
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
    object qry_requisition_shedulingschCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'schCod'
      Origin = 'schCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_requisition_sheduling: TDataSource
    DataSet = qry_requisition_sheduling
    Left = 183
    Top = 479
  end
  object qry_role: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select rol_name,rol_cod,hex(rol_cod) as rolCod from role'#10'order b' +
        'y rol_name'#10)
    Left = 487
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
    Left = 523
    Top = 487
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
  object qry_schedulin: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from scheduling'#10
      'where sch_datetime between :DataIncio and :DataFim')
    Left = 880
    Top = 288
    ParamData = <
      item
        Name = 'DATAINCIO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qry_schedulinsch_cod: TBytesField
      FieldName = 'sch_cod'
      Origin = 'sch_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_schedulincontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_schedulinemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qry_schedulinsch_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sch_id'
      Origin = 'sch_id'
    end
    object qry_schedulinsch_datetime: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_datetime'
      Origin = 'sch_datetime'
    end
    object qry_schedulinsch_description: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sch_description'
      Origin = 'sch_description'
      Size = 500
    end
    object qry_schedulinsch_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_dt_registration'
      Origin = 'sch_dt_registration'
    end
  end
  object ds_schedulin: TDataSource
    DataSet = qry_schedulin
    Left = 920
    Top = 288
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
    Left = 704
    Top = 312
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
    Left = 712
    Top = 360
  end
end
