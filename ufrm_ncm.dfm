inherited frm_ncm: Tfrm_ncm
  Caption = 'Manuten'#231#227'o: NCM'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ncm_id: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ncm_code: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_code'
            Width = 100
          end
          object cxGrid_1DBTableView1ncm_description: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_description'
            Width = 381
          end
          object cxGrid_1DBTableView1ncm_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_dt_registration'
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
              Left = 68
              DataBinding.DataField = 'ncm_id'
              ExplicitLeft = 68
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 241
              DataBinding.DataField = 'ncm_dt_registration'
              ExplicitLeft = 241
            end
            object cxDBMemo1: TcxDBMemo [2]
              Left = 68
              Top = 130
              DataBinding.DataField = 'ncm_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 3
              Height = 89
              Width = 294
            end
            object cxDBButtonEdit1: TcxDBButtonEdit [3]
              Left = 68
              Top = 103
              DataBinding.DataField = 'ncm_code'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'C'#243'digo'
              Control = cxDBButtonEdit1
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
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    AfterInsert = qryAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from ncm')
    object qryncm_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'ncm_id'
      Origin = 'ncm_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryncm_code: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ncm_code'
      Origin = 'ncm_code'
      Required = True
      Size = 10
    end
    object qryncm_description: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ncm_description'
      Origin = 'ncm_description'
      Required = True
      BlobType = ftMemo
    end
    object qryncm_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ncm_dt_registration'
      Origin = 'ncm_dt_registration'
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
