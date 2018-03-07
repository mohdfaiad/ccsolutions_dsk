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
            DataBinding.FieldName = 'rol_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1rol_name: TcxGridDBColumn
            DataBinding.FieldName = 'rol_name'
            Width = 250
          end
          object cxGrid_1DBTableView1rol_base_salary: TcxGridDBColumn
            DataBinding.FieldName = 'rol_base_salary'
            Width = 100
          end
          object cxGrid_1DBTableView1rol_dt_registration: TcxGridDBColumn
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
              Width = 294
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
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from role')
    object qryrol_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'rol_id'
      Origin = 'rol_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryrol_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'rol_name'
      Origin = 'rol_name'
      Size = 50
    end
    object qryrol_base_salary: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sal'#225'rio Base'
      FieldName = 'rol_base_salary'
      Origin = 'rol_base_salary'
      Precision = 12
      Size = 2
    end
    object qryrol_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
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
end
