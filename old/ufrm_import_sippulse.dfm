inherited frm_import_sippulse: Tfrm_import_sippulse
  Caption = 'Importar: SIPPulse'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_import: TcxPageControl
    inherited tbsht_data: TcxTabSheet
      inherited DBGrid_1: TDBGrid
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'cli_account_code_sippulse'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imp_from'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imp_to'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imp_duration'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imp_date'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imp_type'
            Width = 187
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imp_rate'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imp_total'
            Width = 75
            Visible = True
          end>
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarSubItem_1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = Action_import
      Category = 0
    end
  end
  inherited ActionList_1: TActionList
    object Action_import: TAction
      Caption = 'CSV - SIPPulse'
      OnExecute = Action_importExecute
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
    OnBeforeImport = QImport3Wizard_1BeforeImport
  end
  inherited mem: TFDMemTable
    Active = True
    object memcli_account_code_sippulse: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'cli_account_code_sippulse'
      Size = 65
    end
    object memimp_from: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 65
      FieldName = 'imp_from'
      Size = 50
    end
    object memimp_to: TStringField
      DisplayLabel = 'Destino'
      DisplayWidth = 65
      FieldName = 'imp_to'
      Size = 32
    end
    object memimp_duration: TStringField
      DisplayLabel = 'Dura'#231#227'o'
      DisplayWidth = 65
      FieldName = 'imp_duration'
    end
    object memimp_date: TStringField
      DisplayLabel = 'Data'
      DisplayWidth = 65
      FieldName = 'imp_date'
    end
    object memimp_type: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 65
      FieldName = 'imp_type'
      Size = 50
    end
    object memimp_rate: TStringField
      DisplayLabel = 'Vl.'
      DisplayWidth = 65
      FieldName = 'imp_rate'
    end
    object memimp_total: TStringField
      DisplayLabel = 'Vl. Total'
      DisplayWidth = 65
      FieldName = 'imp_total'
    end
  end
  inherited popup_1: TdxRibbonPopupMenu
    PixelsPerInch = 96
  end
  object OpenDialog: TOpenDialog
    Left = 960
    Top = 56
  end
end
