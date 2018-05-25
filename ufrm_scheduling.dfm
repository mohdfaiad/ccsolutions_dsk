inherited frm_scheduling: Tfrm_scheduling
  Caption = 'frm_scheduling'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
    inherited tbsht_1: TcxTabSheet
      inherited pgctrl_2: TcxPageControl
        inherited tbsht_3: TcxTabSheet
          OnShow = tbsht_3Show
          inherited grid_1: TcxGrid
            inherited cxGridDBTableView1: TcxGridDBTableView
              object cxGridDBTableView1sch_id: TcxGridDBColumn
                Caption = 'C'#243'd. ID'
                DataBinding.FieldName = 'sch_id'
              end
              object cxGridDBTableView1sch_datetime: TcxGridDBColumn
                Caption = 'Agendamento'
                DataBinding.FieldName = 'sch_datetime'
                Width = 120
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
      inherited pgctrl_3: TcxPageControl
        inherited tbsht_5: TcxTabSheet
          OnShow = tbsht_5Show
          inherited cxGroupBox2: TcxGroupBox
            object labelFuncionario: TLabel
              Left = 3
              Top = 16
              Width = 55
              Height = 13
              Caption = 'Funcion'#225'rio'
            end
            object labelDescricao: TLabel
              Left = 3
              Top = 62
              Width = 46
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object labelDataAgendamento: TLabel
              Left = 265
              Top = 16
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object labelListaAgenda: TLabel
              Left = 552
              Top = 16
              Width = 67
              Height = 13
              Caption = 'Agendamento'
            end
            object labelHora: TLabel
              Left = 396
              Top = 16
              Width = 45
              Height = 13
              Caption = 'labelHora'
            end
            object cxMemoDescricao: TcxMemo
              Left = 3
              Top = 81
              TabOrder = 0
              Height = 273
              Width = 518
            end
            object cxDate: TcxDateEdit
              Left = 265
              Top = 35
              EditValue = 43449.6394097222d
              Properties.ShowTime = False
              TabOrder = 1
              Width = 125
            end
            object cxGrid1: TcxGrid
              Left = 536
              Top = 35
              Width = 402
              Height = 319
              TabOrder = 2
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = ds_qry_scheduling
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1sch_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'sch_cod'
                end
                object cxGrid1DBTableView1contract_ctr_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'contract_ctr_cod'
                end
                object cxGrid1DBTableView1employee_emp_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'employee_emp_cod'
                end
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
            object cxTime: TcxTimeEdit
              Left = 396
              Top = 35
              Properties.OnEditValueChanged = cxTimePropertiesEditValueChanged
              TabOrder = 3
              Width = 125
            end
            object comboboxEmployee: TcxComboBox
              Left = 3
              Top = 35
              TabOrder = 4
              Text = 'comboboxEmployee'
              Width = 256
            end
          end
        end
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
    AfterInsert = qryAfterInsert
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SchemaAdapter = schadp
    SQL.Strings = (
      
        'select scheduling.*,rec_name from scheduling'#10'inner join employee' +
        '  on emp_cod = employee_emp_cod'#10'inner join record  on rec_cod = ' +
        ' record_rec_cod')
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
    object qrysch_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sch_id'
      Origin = 'sch_id'
    end
    object qrysch_description: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sch_description'
      Origin = 'sch_description'
      Size = 500
    end
    object qrysch_datetime: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_datetime'
      Origin = 'sch_datetime'
    end
    object qrysch_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_dt_registration'
      Origin = 'sch_dt_registration'
    end
    object qryemployee_emp_cod: TBytesField
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
      ProviderFlags = []
    end
    object qryrec_name: TStringField
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      Size = 85
      Transliterate = False
    end
  end
  object qry_scheduling: TFDQuery
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SchemaAdapter = schadp
    SQL.Strings = (
      'select * from scheduling'
      'where sch_datetime >:dateTime')
    Left = 633
    Top = 269
    ParamData = <
      item
        Name = 'DATETIME'
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
    Left = 724
    Top = 269
  end
end
