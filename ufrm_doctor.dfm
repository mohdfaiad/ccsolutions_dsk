inherited frm_doctor: Tfrm_doctor
  Caption = 'frm_doctor'
  ClientHeight = 678
  OnClose = FormClose
  ExplicitTop = 7
  ExplicitHeight = 717
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
    Height = 588
    Properties.ActivePage = tbsht_2
    ClientRectBottom = 582
    inherited tbsht_1: TcxTabSheet
      inherited pgctrl_2: TcxPageControl
        Height = 555
        ClientRectBottom = 549
        inherited tbsht_3: TcxTabSheet
          inherited grid_1: TcxGrid
            Height = 516
            inherited cxGridDBTableView1: TcxGridDBTableView
              object cxGridDBTableView1doc_id: TcxGridDBColumn
                DataBinding.FieldName = 'doc_id'
              end
              object cxGridDBTableView1rec_name: TcxGridDBColumn
                DataBinding.FieldName = 'rec_name'
              end
              object cxGridDBTableView1rec_nickname: TcxGridDBColumn
                DataBinding.FieldName = 'rec_nickname'
              end
              object cxGridDBTableView1rec_sex: TcxGridDBColumn
                DataBinding.FieldName = 'rec_sex'
              end
              object cxGridDBTableView1doc_status: TcxGridDBColumn
                DataBinding.FieldName = 'doc_status'
              end
              object cxGridDBTableView1emp_type: TcxGridDBColumn
                DataBinding.FieldName = 'emp_type'
              end
              object cxGridDBTableView1emp_status: TcxGridDBColumn
                DataBinding.FieldName = 'emp_status'
              end
              object cxGridDBTableView1doc_dt_registration: TcxGridDBColumn
                DataBinding.FieldName = 'doc_dt_registration'
              end
            end
          end
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      OnShow = tbsht_2Show
      inherited pgctrl_3: TcxPageControl
        Height = 555
        ClientRectBottom = 549
        inherited tbsht_5: TcxTabSheet
          inherited cxGroupBox1: TcxGroupBox
            inherited cxLabel2: TcxLabel
              Left = 168
              ExplicitLeft = 168
            end
            inherited edt_dt_registration: TcxTextEdit
              Left = 168
              ExplicitLeft = 168
            end
          end
          inherited cxGroupBox2: TcxGroupBox
            Top = 79
            ExplicitTop = 79
            Height = 464
            object cxGroupBox3: TcxGroupBox
              Left = 3
              Top = 80
              Caption = 'Especialidades do Proficional'
              TabOrder = 0
              Height = 345
              Width = 489
              object cxGrid1: TcxGrid
                Left = 3
                Top = 15
                Width = 483
                Height = 323
                Align = alClient
                TabOrder = 0
                ExplicitHeight = 251
                object cxGrid1DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.ConfirmDelete = True
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Buttons.Images = imglist_1
                  Navigator.Buttons.First.ImageIndex = 0
                  Navigator.Buttons.First.Visible = True
                  Navigator.Buttons.PriorPage.Visible = False
                  Navigator.Buttons.Prior.ImageIndex = 1
                  Navigator.Buttons.Prior.Visible = True
                  Navigator.Buttons.Next.ImageIndex = 2
                  Navigator.Buttons.Next.Visible = True
                  Navigator.Buttons.NextPage.ImageIndex = 3
                  Navigator.Buttons.NextPage.Visible = False
                  Navigator.Buttons.Last.ImageIndex = 3
                  Navigator.Buttons.Last.Visible = True
                  Navigator.Buttons.Insert.ImageIndex = 4
                  Navigator.Buttons.Insert.Visible = True
                  Navigator.Buttons.Append.ImageIndex = 4
                  Navigator.Buttons.Append.Visible = False
                  Navigator.Buttons.Delete.ImageIndex = 8
                  Navigator.Buttons.Delete.Visible = True
                  Navigator.Buttons.Edit.ImageIndex = 5
                  Navigator.Buttons.Edit.Visible = True
                  Navigator.Buttons.Post.ImageIndex = 6
                  Navigator.Buttons.Post.Visible = True
                  Navigator.Buttons.Cancel.ImageIndex = 7
                  Navigator.Buttons.Refresh.ImageIndex = 9
                  Navigator.Buttons.Refresh.Visible = True
                  Navigator.Buttons.SaveBookmark.Visible = False
                  Navigator.Buttons.GotoBookmark.Visible = False
                  Navigator.Buttons.Filter.ImageIndex = 11
                  Navigator.Visible = True
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
                    DataBinding.FieldName = 'rol_name'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.GridMode = True
                    Properties.KeyFieldNames = 'rol_name'
                    Properties.ListColumns = <
                      item
                        FieldName = 'rol_name'
                      end>
                    Properties.ListSource = ds_qry_role
                    Properties.OnCloseUp = cxGrid1DBTableView1role_rol_codPropertiesCloseUp
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
            object cxLabel3: TcxLabel
              Left = 3
              Top = 12
              Caption = 'Proficional'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 344
              Top = 12
              Caption = 'Status'
              Transparent = True
            end
            object cxLookupComboBoxProfissional: TcxLookupComboBox
              Left = 3
              Top = 31
              Properties.GridMode = True
              Properties.KeyFieldNames = 'empCod'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_Doctor
              TabOrder = 3
              Width = 290
            end
            object cxComboBoxStatus: TcxComboBox
              Left = 344
              Top = 31
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              TabOrder = 4
              Width = 145
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Top = 643
  end
  inherited barman_1: TdxBarManager
    object dxBarButton1: TdxBarButton
      Caption = 'Doctor'
      Category = 0
      Hint = 'Doctor'
      Visible = ivAlways
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
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SchemaAdapter = schadp
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select doctor.*,concat('#39'0x'#39',hex(employee_emp_cod)) from doctor'
      'where doc_deleted_at is null')
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
    object qrydoc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'doc_id'
      Origin = 'doc_id'
    end
    object qrydoc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doc_status'
      Origin = 'doc_status'
      FixedChar = True
      Size = 1
    end
    object qrydoc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_deleted_at'
      Origin = 'doc_deleted_at'
    end
    object qrydoc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_dt_registration'
      Origin = 'doc_dt_registration'
    end
    object qryconcat0xhexemployee_emp_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'concat('#39'0x'#39',hex(employee_emp_cod))'
      Origin = '`concat('#39'0x'#39',hex(employee_emp_cod))`'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
  end
  object qry_doctor: TFDQuery [17]
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select r.rec_name,r.rec_cod,r.contract_ctr_cod,e.emp_cod,'
      'concat('#39'0x'#39', hex(e.emp_cod)) as empCod  from record r'
      'left join employee e on e.record_rec_cod =  r.rec_cod'#13#10#10
      #13#10#10
      'where r.rec_cod in (select record_rec_cod from employee'#10
      '                   where emp_status = '#39'A'#39')'#10#10
      'and r.contract_ctr_cod = :ctr_cod'#10
      'order by r.rec_name'#10)
    Left = 784
    Top = 176
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Value = Null
      end>
    object qry_doctorrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      Size = 85
    end
    object qry_doctorrec_cod: TBytesField
      FieldName = 'rec_cod'
      Origin = 'rec_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_doctorcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_doctoremp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_doctorempCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'empCod'
      Origin = 'empCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
  end
  object ds_Doctor: TDataSource [18]
    DataSet = qry_doctor
    Left = 840
    Top = 176
  end
  object qry_role_employee: TFDQuery [19]
    Active = True
    AfterInsert = qry_role_employeeAfterInsert
    IndexFieldNames = 'employee_emp_cod'
    MasterSource = ds
    MasterFields = 'employee_emp_cod'
    DetailFields = 'employee_emp_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        ' select role_employee.*,concat('#39'0x'#39',hex(role_rol_cod)) as rolCod' +
        ','
      ' concat('#39'0x'#39',hex(roe_cod)) as roeCod,rol_name from role_employee'
      ' left join role on rol_cod = role_rol_cod ')
    Left = 600
    Top = 272
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
    object qry_role_employeerolCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rolCod'
      Origin = 'rolCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object qry_role_employeeroeCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'roeCod'
      Origin = 'roeCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object qry_role_employeerol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object ds_role_employee: TDataSource [20]
    DataSet = qry_role_employee
    Left = 672
    Top = 280
  end
  object qry_role: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select rol_cod,rol_name,concat('#39'0x'#39',hex(rol_cod)) as rolCod,cont' +
        'ract_ctr_cod from role'
      'where rol_deleted_at is null'
      'order by rol_name')
    Left = 807
    Top = 260
    object qry_rolerol_cod: TBytesField
      FieldName = 'rol_cod'
      Origin = 'rol_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_rolerol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      Size = 35
    end
    object qry_rolerolCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rolCod'
      Origin = 'rolCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object qry_rolecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
  end
  object ds_qry_role: TDataSource
    DataSet = qry_role
    Left = 863
    Top = 260
  end
end
