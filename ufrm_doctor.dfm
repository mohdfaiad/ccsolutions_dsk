inherited frm_doctor: Tfrm_doctor
  Caption = 'frm_doctor'
  OnClose = FormClose
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
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      OnShow = tbsht_2Show
      inherited pgctrl_3: TcxPageControl
        inherited tbsht_5: TcxTabSheet
          inherited cxGroupBox2: TcxGroupBox
            object DBComBox_Status: TDBComboBox
              Left = 515
              Top = 35
              Width = 145
              Height = 21
              DataField = 'emp_status'
              DataSource = ds
              TabOrder = 0
            end
            object cxGroupBox3: TcxGroupBox
              Left = 3
              Top = 80
              Caption = 'Especialidades do Proficional'
              TabOrder = 1
              Height = 273
              Width = 489
              object cxGrid1: TcxGrid
                Left = 3
                Top = 15
                Width = 483
                Height = 251
                Align = alClient
                TabOrder = 0
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
                  Navigator.Buttons.Insert.Visible = False
                  Navigator.Buttons.Append.ImageIndex = 4
                  Navigator.Buttons.Append.Visible = True
                  Navigator.Buttons.Delete.ImageIndex = 8
                  Navigator.Buttons.Delete.Visible = True
                  Navigator.Buttons.Edit.ImageIndex = 5
                  Navigator.Buttons.Edit.Visible = True
                  Navigator.Buttons.Post.ImageIndex = 6
                  Navigator.Buttons.Post.Visible = True
                  Navigator.Buttons.Cancel.ImageIndex = 6
                  Navigator.Buttons.Refresh.ImageIndex = 9
                  Navigator.Buttons.Refresh.Visible = True
                  Navigator.Buttons.SaveBookmark.Visible = False
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
            object cxLabel3: TcxLabel
              Left = 3
              Top = 12
              Caption = 'Proficional'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 347
              Top = 12
              Caption = 'Status'
              Transparent = True
            end
            object cxDBLookupDoctor: TcxDBLookupComboBox
              Left = 3
              Top = 35
              DataBinding.DataField = 'emp_cod'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'emp_cod'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end
                item
                  FieldName = 'emp_id'
                end>
              Properties.ListSource = ds_Doctor
              TabOrder = 4
              Width = 291
            end
            object cxDBComboBox1: TcxDBComboBox
              Left = 347
              Top = 35
              TabOrder = 5
              Width = 145
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 528
              Top = 88
              Width = 305
              Height = 21
              KeyField = 'emp_cod'
              ListField = 'rec_name;emp_id'
              ListSource = ds_Doctor
              TabOrder = 6
            end
          end
        end
      end
    end
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
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SchemaAdapter = schadp
    SQL.Strings = (
      
        'select r.rec_cod, e.emp_cod, d.doc_cod, d.contract_ctr_cod, d.em' +
        'ployee_emp_cod, d.doc_id, '
      
        'd.doc_status,'#10' e.emp_type, e.emp_status, d.doc_dt_registration, ' +
        'r.rec_name, r.rec_nickname, r.rec_sex from record as r '#13#10#10
      'inner join employee as e on r.rec_cod = e.record_rec_cod '
      
        ' '#10'inner join doctor as d on e.record_rec_cod = d.employee_emp_co' +
        'd'#10' and d.doc_deleted_at is null'#10)
    object qryrec_cod: TBytesField
      FieldName = 'rec_cod'
      Origin = 'rec_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryemp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrydoc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doc_cod'
      Origin = 'doc_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrydoc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'doc_id'
      Origin = 'doc_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrydoc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doc_status'
      Origin = 'doc_status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
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
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      Size = 85
    end
    object qryrec_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nickname'
      Origin = 'rec_nickname'
      Size = 35
    end
    object qryrec_sex: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_sex'
      Origin = 'rec_sex'
      FixedChar = True
      Size = 1
    end
  end
  object qry_doctor: TFDQuery [17]
    Active = True
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select e.emp_cod, e.contract_ctr_cod, e.emp_id, r.rec_name, r.re' +
        'c_nickname, '#10'r.rec_sex, e.emp_type, e.emp_status from record as ' +
        'r'#10
      
        'inner join employee as e on r.rec_cod = e.record_rec_cod'#10'and e.e' +
        'mp_deleted_at is null')
    Left = 784
    Top = 176
    object qry_doctoremp_cod: TBytesField
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      Required = True
    end
    object qry_doctorcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_doctoremp_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 12
      FieldName = 'emp_id'
      Origin = 'emp_id'
    end
    object qry_doctorrec_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      DisplayWidth = 100
      FieldName = 'rec_name'
      Origin = 'rec_name'
      Size = 85
    end
    object qry_doctorrec_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nickname'
      Origin = 'rec_nickname'
      Size = 35
    end
    object qry_doctorrec_sex: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_sex'
      Origin = 'rec_sex'
      FixedChar = True
      Size = 1
    end
    object qry_doctoremp_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_type'
      Origin = 'emp_type'
      FixedChar = True
      Size = 1
    end
    object qry_doctoremp_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_status'
      Origin = 'emp_status'
      FixedChar = True
      Size = 1
    end
  end
  object ds_Doctor: TDataSource [18]
    DataSet = qry_doctor
    Left = 840
    Top = 176
  end
  object qry_role_employee: TFDQuery [19]
    Active = True
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
  object ds_role_employee: TDataSource [20]
    DataSet = qry_role_employee
    Left = 672
    Top = 336
  end
end
