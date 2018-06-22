inherited frm_ncm: Tfrm_ncm
  Caption = 'Manuten'#231#227'o: NCM'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ncm_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'ncm_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ncm_code: TcxGridDBColumn
            Caption = 'C'#243'digo NCM'
            DataBinding.FieldName = 'ncm_code'
            Width = 100
          end
          object cxGrid_1DBTableView1ncm_description: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_description'
            Width = 350
          end
          object cxGrid_1DBTableView1ncm_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'ncm_status'
            Width = 70
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
              TabOrder = 4
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
            object dbComboxStatus: TcxDBComboBox [4]
              Left = 241
              Top = 103
              DataBinding.DataField = 'ncm_status'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
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
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'C'#243'digo'
              Control = cxDBButtonEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = dbComboxStatus
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
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
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select ncm.*, hex(ncm_cod)as CodNCM from ncm'
      'where contract_ctr_cod = :ctr_cod'
      'and ncm_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryncm_cod: TBytesField
      FieldName = 'ncm_cod'
      Origin = 'ncm_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryncm_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_id'
      Origin = 'ncm_id'
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
      DisplayValue = dvFull
    end
    object qryncm_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ncm_dt_registration'
      Origin = 'ncm_dt_registration'
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryncm_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_status'
      Origin = 'ncm_status'
      FixedChar = True
      Size = 1
    end
    object qryncm_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_deleted_at'
      Origin = 'ncm_deleted_at'
    end
    object qryCodNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodNCM'
      Origin = 'CodNCM'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
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
