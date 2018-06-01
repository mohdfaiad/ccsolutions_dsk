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
          inherited cxGroupBox1: TcxGroupBox
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
    AfterInsert = qryAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from scheduling_clinical'
      'where contract_ctr_cod = :ctr_cod')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Value = Null
      end>
    object qryscc_cod: TBytesField
      FieldName = 'scc_cod'
      Origin = 'scc_cod'
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
    object qrydoctor_doc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'doctor_doc_cod'
      Origin = 'doctor_doc_cod'
    end
    object qryrole_rol_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'role_rol_cod'
      Origin = 'role_rol_cod'
    end
    object qryscc_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'scc_id'
      Origin = 'scc_id'
    end
    object qryscc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'scc_status'
      Origin = 'scc_status'
      FixedChar = True
      Size = 1
    end
    object qryscc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'scc_dt_registration'
      Origin = 'scc_dt_registration'
    end
  end
  object qry_client: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_cod,contract_ctr_cod,cli_first_name,concat('#39'0x'#39',hex(c' +
        'li_cod)) as cliCod from client'
      'order by cli_first_name')
    Left = 623
    Top = 220
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
end
