inherited frm_product_input: Tfrm_product_input
  Caption = 'Manuten'#231#227'o Insumos de Produtos'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 60
              DataBinding.DataField = 'pri_id'
              ExplicitLeft = 60
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 233
              DataBinding.DataField = 'pri_dt_registration'
              ExplicitLeft = 233
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
              Left = 60
              Top = 103
              DataBinding.DataField = 'product_pro_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'pro_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'pro_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'pro_id'
                end>
              Properties.ListSource = ds_product
              Style.HotTrack = False
              TabOrder = 2
              Width = 294
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Produto'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    IndexFieldNames = 'product_pro_id'
    MasterSource = ds_product
    MasterFields = 'contract_ctr_id'
    DetailFields = 'product_pro_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product_input')
    object qrypri_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'pri_id'
      Origin = 'pri_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qryproduct_pro_id_input: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Insumo ID'
      FieldName = 'product_pro_id_input'
      Origin = 'product_pro_id_input'
    end
    object qrypri_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pri_dt_registration'
      Origin = 'pri_dt_registration'
    end
  end
  inherited QExport4Dialog_1: TQExport4Dialog
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited frxReport_1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qry_product: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product')
    Left = 584
    Top = 96
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 616
    Top = 96
  end
end
