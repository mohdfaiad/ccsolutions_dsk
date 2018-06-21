inherited frm_product_unit: Tfrm_product_unit
  Caption = 'Manuten'#231#227'o: Unidade de Medida'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1pru_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'pru_id'
            Width = 75
          end
          object cxGrid_1DBTableView1pru_name: TcxGridDBColumn
            DataBinding.FieldName = 'pru_name'
            Width = 250
          end
          object cxGrid_1DBTableView1pru_initials: TcxGridDBColumn
            DataBinding.FieldName = 'pru_initials'
            Width = 70
          end
          object cxGrid_1DBTableView1pru_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'pru_status'
            Width = 70
          end
          object cxGrid_1DBTableView1pru_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'pru_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'pru_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'pru_dt_registration'
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'pru_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            object cxDBTextEdit2: TcxDBTextEdit [3]
              Left = 59
              Top = 130
              DataBinding.DataField = 'pru_initials'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbComboxStatus: TcxDBComboBox [4]
              Left = 232
              Top = 130
              DataBinding.DataField = 'pru_status'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVO')
              Style.HotTrack = False
              TabOrder = 4
              Width = 130
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Sigla'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Status'
              Control = dbComboxStatus
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
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
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select product_unit.*, hex(pru_cod)as CodProdUnit from product_u' +
        'nit'#13#10#10
      ''
      'where contract_ctr_cod =:ctr_cod'#10
      'and pru_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 24
        Value = Null
      end>
    object qryCodProdUnit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProdUnit'
      Origin = 'CodProdUnit'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qrypru_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pru_id'
      Origin = 'pru_id'
    end
    object qrypru_name: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'pru_name'
      Required = True
      Size = 35
    end
    object qrypru_initials: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'pru_initials'
      Required = True
      Size = 35
    end
    object qrypru_dt_registration: TDateTimeField
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pru_dt_registration'
    end
    object qrypru_cod: TBytesField
      FieldName = 'pru_cod'
      Origin = 'pru_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrypru_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_status'
      Origin = 'pru_status'
      FixedChar = True
      Size = 1
    end
    object qrypru_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pru_deleted_at'
      Origin = 'pru_deleted_at'
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
end
