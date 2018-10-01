inherited frm_did: Tfrm_did
  Caption = 'Manuten'#231#227'o: DIDs'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1did_id: TcxGridDBColumn
            DataBinding.FieldName = 'did_id'
            Width = 75
          end
          object cxGrid_1DBTableView1did_number: TcxGridDBColumn
            DataBinding.FieldName = 'did_number'
            Width = 150
          end
          object cxGrid_1DBTableView1did_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'did_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 562
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'did_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'did_dt_registration'
            end
            object dbedt_did_number: TcxDBTextEdit [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'did_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'N'#250'mero'
              Control = dbedt_did_number
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
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited ActionList_1: TActionList
    inherited Action_save: TAction
      OnExecute = Action_saveExecute
    end
  end
  inherited qry: TFDQuery [5]
  end
  inherited ACBrEnterTab_1: TACBrEnterTab [6]
  end
  inherited QExport4Dialog_1: TQExport4Dialog [7]
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard [8]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited schadp: TFDSchemaAdapter [9]
  end
  inherited frxReport_1: TfrxReport [10]
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [11]
  end
  inherited mem: TFDMemTable [12]
    Active = True
    object memdid_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'did_cod'
      Origin = 'did_cod'
      Size = 32
    end
    object memdid_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'did_id'
      Origin = 'did_id'
    end
    object memdid_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero'
      FieldName = 'did_number'
      Origin = 'did_number'
      Size = 25
    end
    object memdid_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'did_deleted_at'
      Origin = 'did_deleted_at'
    end
    object memdid_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'did_dt_registration'
      Origin = 'did_dt_registration'
    end
  end
  inherited PopupMenu_1: TPopupMenu [13]
  end
  inherited cxImageList_1: TcxImageList [14]
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [15]
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
