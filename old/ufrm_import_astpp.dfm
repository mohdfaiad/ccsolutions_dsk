inherited frm_import_astpp: Tfrm_import_astpp
  Caption = 'Importar: ASTPP'
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
            FieldName = 'cli_account_code_astpp'
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
  inherited qry: TFDQuery [2]
  end
  inherited ds: TDataSource [3]
  end
  inherited mem: TFDMemTable [4]
    Active = True
    FieldDefs = <
      item
        Name = 'cli_account_code_astpp'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'imp_from'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'imp_to'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'imp_duration'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'imp_date'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'imp_type'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'imp_rate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'imp_total'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    object memcli_account_code_astpp: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 65
      FieldName = 'cli_account_code_astpp'
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
  inherited popup_1: TdxRibbonPopupMenu [5]
    PixelsPerInch = 96
  end
  inherited dxBarManager_1: TdxBarManager [6]
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
  inherited ActionList_1: TActionList [7]
    object Action_import: TAction
      Caption = 'CSV - ASTPP'
      OnExecute = Action_importExecute
    end
  end
  inherited cxImageList_1: TcxImageList [8]
    FormatVersion = 1
  end
  inherited QImport3Wizard_1: TQImport3Wizard [9]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
    OnBeforeImport = QImport3Wizard_1BeforeImport
  end
  object OpenDialog: TOpenDialog
    Left = 960
    Top = 56
  end
end
