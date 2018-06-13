inherited frm_role: Tfrm_role
  Caption = 'Manuten'#231#227'o: Fun'#231#245'es'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1rol_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'rol_id'
            Width = 70
          end
          object cxGrid_1DBTableView1rol_name: TcxGridDBColumn
            Caption = 'Cargo/Fun'#231#227'o'
            DataBinding.FieldName = 'rol_name'
            Width = 250
          end
          object cxGrid_1DBTableView1rol_base_salary: TcxGridDBColumn
            Caption = 'Sal'#225'rio'
            DataBinding.FieldName = 'rol_base_salary'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
          end
          object cxGrid_1DBTableView1rol_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg'
            DataBinding.FieldName = 'rol_dt_registration'
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
              Left = 80
              DataBinding.DataField = 'rol_id'
              ExplicitLeft = 80
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 253
              DataBinding.DataField = 'rol_dt_registration'
              ExplicitLeft = 253
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 80
              Top = 103
              DataBinding.DataField = 'rol_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
              Left = 80
              Top = 130
              DataBinding.DataField = 'rol_base_salary'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
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
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Sal'#225'rio Base'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
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
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from role')
    object qryrol_cod: TBytesField
      FieldName = 'rol_cod'
      Origin = 'rol_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryrol_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rol_id'
      Origin = 'rol_id'
    end
    object qryrol_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_name'
      Origin = 'rol_name'
      Size = 35
    end
    object qryrol_base_salary: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'rol_base_salary'
      Origin = 'rol_base_salary'
      Precision = 12
    end
    object qryrol_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rol_status'
      Origin = 'rol_status'
      FixedChar = True
      Size = 1
    end
    object qryrol_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rol_deleted_at'
      Origin = 'rol_deleted_at'
    end
    object qryrol_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rol_dt_registration'
      Origin = 'rol_dt_registration'
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
