inherited frm_ticket_category: Tfrm_ticket_category
  Caption = 'Manuten'#231#227'o: Ticket Categoria'
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
          object cxGrid_1DBTableView1tkc_id: TcxGridDBColumn
            DataBinding.FieldName = 'tkc_id'
            Width = 75
          end
          object cxGrid_1DBTableView1tkc_name: TcxGridDBColumn
            DataBinding.FieldName = 'tkc_name'
            Width = 200
          end
          object cxGrid_1DBTableView1tkc_status: TcxGridDBColumn
            DataBinding.FieldName = 'tkc_status'
            Width = 50
          end
          object cxGrid_1DBTableView1tkc_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'tkc_dt_registration'
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
              DataBinding.DataField = 'tkc_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'tkc_dt_registration'
            end
            object grid: TcxGrid [2]
              Left = 17
              Top = 237
              Width = 952
              Height = 305
              TabOrder = 7
              object gridview: TcxGridDBTableView
                Navigator.Buttons.ConfirmDelete = True
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsSub
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                OptionsData.Editing = False
                object gridviewtks_name: TcxGridDBColumn
                  DataBinding.FieldName = 'tks_name'
                  Width = 250
                end
                object gridviewtks_status: TcxGridDBColumn
                  DataBinding.FieldName = 'tks_status'
                  Width = 65
                end
                object gridviewtks_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'tks_dt_registration'
                  Width = 125
                end
              end
              object gridlvl: TcxGridLevel
                GridView = gridview
              end
            end
            object dbedt_name: TcxDBTextEdit [3]
              Left = 59
              Top = 103
              DataBinding.DataField = 'tkc_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object dbchk_status: TcxDBCheckBox [4]
              Left = 368
              Top = 38
              Caption = 'Status'
              DataBinding.DataField = 'tkc_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '1'
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            object dbedt_sub_name: TcxDBTextEdit [5]
              Left = 59
              Top = 168
              DataBinding.DataField = 'tks_name'
              DataBinding.DataSource = dsSub
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object dbchk_status_sub: TcxDBCheckBox [6]
              Left = 368
              Top = 168
              Caption = 'Status'
              DataBinding.DataField = 'tks_status'
              DataBinding.DataSource = dsSub
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '1'
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 5
              Transparent = True
            end
            object dxBevel1: TdxBevel [7]
              Left = 17
              Top = 195
              Width = 952
              Height = 5
              Shape = dxbsLineBottom
            end
            object cxDBNavigator1: TcxDBNavigator [8]
              Left = 757
              Top = 206
              Width = 212
              Height = 25
              Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
              Buttons.CustomButtons = <>
              Buttons.Images = cxImageList_1
              Buttons.First.ImageIndex = 0
              Buttons.PriorPage.Visible = False
              Buttons.Prior.ImageIndex = 1
              Buttons.Next.ImageIndex = 2
              Buttons.NextPage.Visible = False
              Buttons.Last.ImageIndex = 3
              Buttons.Insert.ImageIndex = 4
              Buttons.Delete.ImageIndex = 8
              Buttons.Edit.ImageIndex = 5
              Buttons.Post.ImageIndex = 6
              Buttons.Cancel.ImageIndex = 7
              Buttons.Refresh.ImageIndex = 9
              Buttons.SaveBookmark.Visible = False
              Buttons.GotoBookmark.Visible = False
              Buttons.Filter.Visible = False
              DataSource = dsSub
              TabOrder = 6
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Subcategoria'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 412
              SizeOptions.Width = 966
              ButtonOptions.Buttons = <>
              ItemIndex = 2
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = grid
              ControlOptions.OriginalHeight = 305
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = dbedt_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Nome'
              Control = dbedt_sub_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status_sub
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              Control = dxBevel1
              ControlOptions.OriginalHeight = 5
              ControlOptions.OriginalWidth = 50
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahRight
              Control = cxDBNavigator1
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 212
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
    object dxBarButton1: TdxBarButton
      Caption = 'Sub'
      Category = 0
      Hint = 'Sub'
      Visible = ivAlways
    end
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
  inherited mem: TFDMemTable [11]
    Active = True
    IndexFieldNames = 'tkc_id'
    object memtkc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tkc_cod'
      Origin = 'tkc_cod'
      Size = 32
    end
    object memtkc_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'tkc_id'
      Origin = 'tkc_id'
    end
    object memtkc_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'tkc_name'
      Origin = 'tkc_name'
      Size = 35
    end
    object memtkc_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tkc_status'
      Origin = 'tkc_status'
    end
    object memtkc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tkc_deleted_at'
      Origin = 'tkc_deleted_at'
    end
    object memtkc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tkc_dt_registration'
      Origin = 'tkc_dt_registration'
    end
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [12]
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
  object memSub: TFDMemTable
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
    IndexDefs = <>
    IndexFieldNames = 'ticket_category_tkc_cod'
    MasterSource = ds
    MasterFields = 'tkc_cod'
    DetailFields = 'ticket_category_tkc_cod'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 928
    Top = 104
    object memSubtks_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tks_cod'
      Origin = 'tks_cod'
      Size = 32
    end
    object memSubticket_category_tkc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'ticket_category_tkc_cod'
      Origin = 'ticket_category_tkc_cod'
      Size = 32
    end
    object memSubtks_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'tks_name'
      Origin = 'tks_name'
      Size = 35
    end
    object memSubtks_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tks_status'
      Origin = 'tks_status'
    end
    object memSubtks_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tks_deleted_at'
      Origin = 'tks_deleted_at'
    end
    object memSubtks_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tks_dt_registration'
      Origin = 'tks_dt_registration'
    end
  end
  object dsSub: TDataSource
    DataSet = memSub
    Left = 960
    Top = 104
  end
end
