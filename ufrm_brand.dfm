inherited frm_brand: Tfrm_brand
  Caption = 'Manuten'#231#227'o: Marcas'
  OnClose = FormClose
  OnShow = FormShow
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
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = False
          object cxGrid_1DBTableView1bra_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'bra_id'
            Width = 75
          end
          object cxGrid_1DBTableView1bra_name: TcxGridDBColumn
            DataBinding.FieldName = 'bra_name'
            Width = 300
          end
          object cxGrid_1DBTableView1bra_status: TcxGridDBColumn
            DataBinding.FieldName = 'bra_status'
            Width = 70
          end
          object cxGrid_1DBTableView1bra_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg'
            DataBinding.FieldName = 'bra_dt_registration'
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
              Width = 286
            end
            object dbComboxStatus: TcxDBComboBox [3]
              Left = 59
              Top = 130
              DataBinding.DataField = 'bra_status'
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
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 286
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Status'
              Control = dbComboxStatus
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
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 520
    Top = 48
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
      'select brand'#10'.*, hex(bra_cod)as CodBrand from brand'#10
      'where contract_ctr_cod =:ctr_cod'#13#10#10
      'and bra_deleted_at is null;')
    Left = 592
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryCodBrand: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodBrand'
      Origin = 'CodBrand'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
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
      DisplayLabel = 'Marca'
      FieldName = 'bra_name'
      Origin = 'bra_name'
      Required = True
      Size = 35
    end
    object qrybra_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
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
    Left = 424
    Top = 48
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
