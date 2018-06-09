inherited frm_scheduling: Tfrm_scheduling
  Caption = 'Agendamento do Proficional'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
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
              object grid_1DBTableView1sch_cod: TcxGridDBColumn
                Caption = 'Codigo'
                DataBinding.FieldName = 'sch_cod'
              end
              object grid_1DBTableView1sch_id: TcxGridDBColumn
                Caption = 'C'#243'digo ID'
                DataBinding.FieldName = 'sch_id'
                Width = 70
              end
              object grid_1DBTableView1proficional: TcxGridDBColumn
                Caption = 'Proficional'
                DataBinding.FieldName = 'proficional'
                Width = 300
              end
              object grid_1DBTableView1sch_datetime: TcxGridDBColumn
                Caption = 'Dt. Agendamento'
                DataBinding.FieldName = 'sch_datetime'
                Width = 110
              end
              object grid_1DBTableView1sch_description: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'sch_description'
                Width = 400
              end
              object grid_1DBTableView1sch_dt_registration: TcxGridDBColumn
                Caption = 'Dt. Reg'
                DataBinding.FieldName = 'sch_dt_registration'
                Width = 110
              end
            end
            object cxGridDBTableView1: TcxGridDBTableView [1]
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              object cxGridDBTableView1sch_id: TcxGridDBColumn
                Caption = 'C'#243'd. ID'
                DataBinding.FieldName = 'sch_id'
              end
              object cxGridDBTableView1sch_datetime: TcxGridDBColumn
                Caption = 'Agendamento'
                DataBinding.FieldName = 'sch_datetime'
                Width = 120
              end
              object cxGridDBTableView1rec_name: TcxGridDBColumn
                DataBinding.FieldName = 'rec_name'
              end
              object cxGridDBTableView1sch_description: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'sch_description'
                Width = 600
              end
              object cxGridDBTableView1sch_dt_registration: TcxGridDBColumn
                Caption = 'Dt. Reg.'
                DataBinding.FieldName = 'sch_dt_registration'
                Width = 120
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
          inherited grb_bottton: TcxGroupBox
            object labelFuncionario: TLabel
              Left = 3
              Top = 19
              Width = 55
              Height = 13
              Caption = 'Funcion'#225'rio'
            end
            object labelDataAgendamento: TLabel
              Left = 265
              Top = 19
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object labelHora: TLabel
              Left = 396
              Top = 19
              Width = 23
              Height = 13
              Caption = 'Hora'
            end
            object labelListaAgenda: TLabel
              Left = 552
              Top = 16
              Width = 67
              Height = 13
              Caption = 'Agendamento'
            end
            object labelDescricao: TLabel
              Left = 3
              Top = 64
              Width = 46
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object cxDate: TcxDateEdit
              Left = 265
              Top = 35
              EditValue = 43449.6394097222d
              Properties.ShowTime = False
              Properties.OnCloseUp = cxDatePropertiesCloseUp
              TabOrder = 0
              Width = 125
            end
            object cxTime: TcxTimeEdit
              Left = 396
              Top = 35
              Properties.OnEditValueChanged = cxTimePropertiesEditValueChanged
              TabOrder = 1
              Width = 125
            end
            object cxMemoDescricao: TcxMemo
              Left = 3
              Top = 81
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Height = 273
              Width = 518
            end
            object cxGrid1: TcxGrid
              Left = 536
              Top = 35
              Width = 402
              Height = 319
              TabOrder = 3
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = ds_qry_scheduling
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1sch_id: TcxGridDBColumn
                  Caption = 'C'#243'd. ID'
                  DataBinding.FieldName = 'sch_id'
                end
                object cxGrid1DBTableView1sch_datetime: TcxGridDBColumn
                  Caption = 'Data/Hora'
                  DataBinding.FieldName = 'sch_datetime'
                  Width = 125
                end
                object cxGrid1DBTableView1sch_description: TcxGridDBColumn
                  Caption = 'Descri'#231#227'o'
                  DataBinding.FieldName = 'sch_description'
                  Width = 250
                end
                object cxGrid1DBTableView1sch_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg.'
                  DataBinding.FieldName = 'sch_dt_registration'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object looComboxProficional: TcxLookupComboBox
              Left = 3
              Top = 35
              Properties.CharCase = ecUpperCase
              Properties.GridMode = True
              Properties.KeyFieldNames = 'codDoctor'
              Properties.ListColumns = <
                item
                  FieldName = 'rec_name'
                end>
              Properties.ListSource = ds_proficional
              TabOrder = 4
              Width = 256
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
  inherited barman_1: TdxBarManager
    inherited barman_bar_other: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'salvar'
      Category = 0
      Hint = 'salvar'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      OnClick = dxBarButton2Click
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
    Active = True
    AfterInsert = qryAfterInsert
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SchemaAdapter = schadp
    SQL.Strings = (
      
        'select scheduling.*, hex(sch_cod)as codScheduling from schedulin' +
        'g')
    Left = 696
    object qrysch_cod: TBytesField
      FieldName = 'sch_cod'
      Origin = 'sch_cod'
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
    object qrysch_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sch_id'
      Origin = 'sch_id'
    end
    object qrysch_datetime: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_datetime'
      Origin = 'sch_datetime'
    end
    object qrysch_description: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sch_description'
      Origin = 'sch_description'
      Size = 500
    end
    object qrysch_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_dt_registration'
      Origin = 'sch_dt_registration'
    end
    object qryproficional: TStringField
      FieldKind = fkLookup
      FieldName = 'proficional'
      LookupDataSet = qry_proficional
      LookupKeyFields = 'employee_emp_cod'
      LookupResultField = 'rec_name'
      KeyFields = 'employee_emp_cod'
      Size = 85
      Lookup = True
    end
    object qrycodScheduling: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codScheduling'
      Origin = 'codScheduling'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object qry_scheduling: TFDQuery
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from scheduling'#10
      'where sch_datetime between :DataIncio and :DataFim')
    Left = 649
    Top = 277
    ParamData = <
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
  end
  object ds_qry_scheduling: TDataSource
    DataSet = qry_scheduling
    Left = 756
    Top = 277
  end
  object qry_proficional: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select doctor.*,r.rec_name, hex(doc_cod)as codDoctor, hex(employ' +
        'ee_emp_cod)as codEmployee  from doctor'#10
      'left join employee as e on employee_emp_cod = e.emp_cod '#13#10#10
      
        'left join record as r on e.record_rec_cod = r.rec_cod'#10'where doc_' +
        'status = '#39'A'#39)
    Left = 152
    Top = 176
    object qry_proficionaldoc_cod: TBytesField
      FieldName = 'doc_cod'
      Origin = 'doc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_proficionalcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_proficionalemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qry_proficionaldoc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'doc_id'
      Origin = 'doc_id'
    end
    object qry_proficionaldoc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doc_status'
      Origin = 'doc_status'
      FixedChar = True
      Size = 1
    end
    object qry_proficionaldoc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_deleted_at'
      Origin = 'doc_deleted_at'
    end
    object qry_proficionaldoc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'doc_dt_registration'
      Origin = 'doc_dt_registration'
    end
    object qry_proficionalrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_proficionalcodDoctor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codDoctor'
      Origin = 'codDoctor'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_proficionalcodEmployee: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codEmployee'
      Origin = 'codEmployee'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_proficional: TDataSource
    DataSet = qry_proficional
    Left = 184
    Top = 176
  end
end
