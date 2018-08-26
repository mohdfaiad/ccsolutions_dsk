inherited frm_phonebook: Tfrm_phonebook
  Caption = 'Manuten'#231#227'o: Agenda Telef'#244'nica.'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1pho_id: TcxGridDBColumn
            DataBinding.FieldName = 'pho_id'
            Width = 75
          end
          object cxGrid_1DBTableView1pho_name: TcxGridDBColumn
            DataBinding.FieldName = 'pho_name'
            Width = 150
          end
          object cxGrid_1DBTableView1pho_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'pho_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_contact: TcxGridDBColumn
            DataBinding.FieldName = 'pho_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1pho_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'pho_dt_registration'
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
              Left = 63
              DataBinding.DataField = 'pho_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 236
              DataBinding.DataField = 'pho_dt_registration'
              ExplicitLeft = 236
            end
            object dbedt_name: TcxDBTextEdit [2]
              Left = 63
              Top = 103
              DataBinding.DataField = 'pho_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_phone4: TcxDBTextEdit [3]
              Left = 563
              Top = 130
              DataBinding.DataField = 'pho_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dbedt_phone3: TcxDBTextEdit [4]
              Left = 404
              Top = 130
              DataBinding.DataField = 'pho_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object dbedt_phone2: TcxDBTextEdit [5]
              Left = 236
              Top = 130
              DataBinding.DataField = 'pho_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 130
            end
            object dbedt_phone1: TcxDBTextEdit [6]
              Left = 63
              Top = 130
              DataBinding.DataField = 'pho_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dbedt_contact: TcxDBTextEdit [7]
              Left = 236
              Top = 103
              DataBinding.DataField = 'pho_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Empresa'
              Control = dbedt_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 4'
              Control = dbedt_phone4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = dbedt_phone3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = dbedt_phone2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = dbedt_phone1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = dbedt_contact
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarButton_save: TdxBarButton
      OnClick = dxBarButton_saveClick
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
  inherited qry: TFDQuery
    CachedUpdates = True
    Connection = frm_dm.connCCS
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
        Name = 'pho_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'pho_id'
        DataType = ftInteger
      end
      item
        Name = 'pho_name'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'pho_phone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'pho_phone2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'pho_phone3'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'pho_phone4'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'pho_contact'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'pho_deleted_at'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'pho_dt_registration'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    object mempho_cod: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'pho_cod'
      Size = 32
    end
    object mempho_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'pho_id'
    end
    object mempho_name: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'pho_name'
      Size = 35
    end
    object mempho_phone1: TStringField
      DisplayLabel = 'Tel. 1'
      FieldName = 'pho_phone1'
      Size = 15
    end
    object mempho_phone2: TStringField
      DisplayLabel = 'Tel. 2'
      FieldName = 'pho_phone2'
      Size = 15
    end
    object mempho_phone3: TStringField
      DisplayLabel = 'Tel. 3'
      FieldName = 'pho_phone3'
      Size = 15
    end
    object mempho_phone4: TStringField
      DisplayLabel = 'Tel. 4'
      FieldName = 'pho_phone4'
      Size = 15
    end
    object mempho_contact: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'pho_contact'
      Size = 25
    end
    object mempho_deleted_at: TStringField
      DisplayLabel = 'Deletado em'
      FieldName = 'pho_deleted_at'
    end
    object mempho_dt_registration: TStringField
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pho_dt_registration'
    end
  end
end
