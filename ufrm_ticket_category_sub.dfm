inherited frm_ticket_category_sub: Tfrm_ticket_category_sub
  Caption = 'Manuten'#231#227'o: Subcategorias'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1tks_id: TcxGridDBColumn
            DataBinding.FieldName = 'tks_id'
            Width = 75
          end
          object cxGrid_1DBTableView1tks_name: TcxGridDBColumn
            DataBinding.FieldName = 'tks_name'
            Width = 250
          end
          object cxGrid_1DBTableView1tkc_name: TcxGridDBColumn
            DataBinding.FieldName = 'tkc_name'
            Width = 250
          end
          object cxGrid_1DBTableView1tks_status: TcxGridDBColumn
            DataBinding.FieldName = 'tks_status'
            Width = 50
          end
          object cxGrid_1DBTableView1tks_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'tks_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 562
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 69
              Top = 37
              DataBinding.DataField = 'tks_id'
              ExplicitLeft = 69
              ExplicitTop = 37
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 242
              Top = 37
              DataBinding.DataField = 'tks_dt_registration'
              ExplicitLeft = 242
              ExplicitTop = 37
            end
            object dbedt_tks_name: TcxDBTextEdit [2]
              Left = 69
              Top = 101
              DataBinding.DataField = 'tks_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object dblookupcmb_ticket_category_tkc_cod: TcxDBLookupComboBox [3]
              Left = 69
              Top = 128
              DataBinding.DataField = 'ticket_category_tkc_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'tkc_cod'
              Properties.ListColumns = <
                item
                  Width = 150
                  FieldName = 'tkc_name'
                end
                item
                  Width = 75
                  FieldName = 'tkc_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsTicketCategory
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object dbchk_status_sub: TcxDBCheckBox [4]
              Left = 378
              Top = 37
              Caption = 'Status'
              DataBinding.DataField = 'tks_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '1'
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = dbedt_tks_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Categoria'
              Control = dblookupcmb_ticket_category_tkc_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status_sub
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
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
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
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
  inherited mem: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'tks_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ticket_category_tkc_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'tks_id'
        DataType = ftLongWord
      end
      item
        Name = 'tks_name'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'tks_status'
        DataType = ftShortint
      end
      item
        Name = 'tks_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'tks_dt_registration'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'tks_id'
    StoreDefs = True
    object memtks_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tks_cod'
      Origin = 'tks_cod'
      Size = 32
    end
    object memticket_category_tkc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'ticket_category_tkc_cod'
      Origin = 'ticket_category_tkc_cod'
      Size = 32
    end
    object memtks_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'tks_id'
      Origin = 'tks_id'
    end
    object memtks_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'tks_name'
      Origin = 'tks_name'
      Size = 35
    end
    object memtks_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tks_status'
      Origin = 'tks_status'
    end
    object memtks_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tks_deleted_at'
      Origin = 'tks_deleted_at'
    end
    object memtks_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tks_dt_registration'
      Origin = 'tks_dt_registration'
    end
    object memtkc_name: TStringField
      DisplayLabel = 'Categoria'
      FieldKind = fkLookup
      FieldName = 'tkc_name'
      LookupDataSet = frm_dm_ds.memTicketCategory
      LookupKeyFields = 'tkc_cod'
      LookupResultField = 'tkc_name'
      KeyFields = 'ticket_category_tkc_cod'
      Lookup = True
    end
  end
end
