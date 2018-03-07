inherited frm_import_sippulse: Tfrm_import_sippulse
  Caption = 'Importar: SIPPulse - Relat'#243'rios.'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid_1: TDBGrid
    TabOrder = 0
    Columns = <
      item
        Expanded = False
        FieldName = 'imp_id'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'client_cli_id'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_from'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_to'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_duration'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_date'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_type'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_rate'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_total'
        Width = 100
        Visible = True
      end>
  end
  inherited QImport3Wizard_1: TQImport3Wizard [2]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited qry: TFDQuery [3]
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from import_call_log')
    object qryimp_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'imp_id'
      Origin = 'imp_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryclient_cli_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente ID'
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qryimp_from: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Origem'
      FieldName = 'imp_from'
      Origin = 'imp_from'
      Size = 50
    end
    object qryimp_to: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Destino'
      FieldName = 'imp_to'
      Origin = 'imp_to'
      Size = 50
    end
    object qryimp_duration: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dura'#231#227'o'
      FieldName = 'imp_duration'
      Origin = 'imp_duration'
    end
    object qryimp_date: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'imp_date'
      Origin = 'imp_date'
    end
    object qryimp_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'imp_type'
      Origin = 'imp_type'
      Size = 50
    end
    object qryimp_rate: TFMTBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Custo'
      FieldName = 'imp_rate'
      Origin = 'imp_rate'
      Precision = 12
      Size = 5
    end
    object qryimp_total: TFMTBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total'
      FieldName = 'imp_total'
      Origin = 'imp_total'
      Precision = 12
      Size = 5
    end
  end
  inherited ds: TDataSource [4]
  end
  inherited dxBarManager_1: TdxBarManager [5]
    inherited dxBarManager_1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_insert'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton [4]
      Caption = 'Salvar'
      Category = 0
      Hint = 'Salvar Importa'#231#227'o'
      Visible = ivAlways
      ImageIndex = 1
    end
    inherited dxBarButton2: TdxBarButton
      ImageIndex = -1
    end
  end
  inherited ActionList_1: TActionList [6]
  end
  inherited cxImageList_1: TcxImageList [7]
    FormatVersion = 1
  end
  inherited ACBrEnterTab_1: TACBrEnterTab [8]
  end
end
