inherited frm_brand: Tfrm_brand
  Caption = 'Manuten'#231#227'o: Marcas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage [0]
    Left = 352
    Top = 248
    Width = 105
    Height = 105
  end
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      OnShow = cxTabSheet_1Show
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1bra_id: TcxGridDBColumn
            DataBinding.FieldName = 'bra_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1bra_name: TcxGridDBColumn
            DataBinding.FieldName = 'bra_name'
            Width = 250
          end
          object cxGrid_1DBTableView1bra_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'bra_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'bra_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'bra_dt_registration'
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'bra_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
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
          end
        end
      end
    end
  end
  inherited dxBarDockControl_1: TdxBarDockControl
    ExplicitLeft = -192
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarManager_1Bar2: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_report_edit'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_report_preview'
        end>
    end
    inherited dxBarManager_1Bar4: TdxBar
      DockedLeft = 76
    end
    inherited dxBarManager_1Bar5: TdxBar
      DockedLeft = 225
    end
    inherited dxBarManager_1Bar6: TdxBar
      DockedLeft = 371
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from brand')
    object qrybra_cod: TBytesField
      FieldName = 'bra_cod'
      Origin = 'bra_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrybra_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'bra_id'
      Origin = 'bra_id'
    end
    object qrybra_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bra_name'
      Origin = 'bra_name'
      Size = 35
    end
    object qrybra_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bra_status'
      Origin = 'bra_status'
      FixedChar = True
      Size = 1
    end
    object qrybra_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'bra_deleted_at'
      Origin = 'bra_deleted_at'
    end
    object qrybra_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'bra_dt_registration'
      Origin = 'bra_dt_registration'
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
