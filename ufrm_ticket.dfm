inherited frm_ticket: Tfrm_ticket
  Caption = 'Manute'#231#227'o: Tickets'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1tkt_id: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_id'
            Width = 75
          end
          object cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn
            DataBinding.FieldName = 'client_cli_id'
            Width = 75
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'enterprise_ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1reseller_res_id: TcxGridDBColumn
            DataBinding.FieldName = 'reseller_res_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ticket_type_tky_id: TcxGridDBColumn
            DataBinding.FieldName = 'ticket_type_tky_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ticket_category_tkc_id: TcxGridDBColumn
            DataBinding.FieldName = 'ticket_category_tkc_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ticket_category_sub_tks_id: TcxGridDBColumn
            DataBinding.FieldName = 'ticket_category_sub_tks_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ticket_priority_tkp_id: TcxGridDBColumn
            DataBinding.FieldName = 'ticket_priority_tkp_id'
            Width = 75
          end
          object cxGrid_1DBTableView1tkt_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_open'
            Width = 125
          end
          object cxGrid_1DBTableView1contract_user_ctr_usr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_user_ctr_usr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1tkt_dt_close: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_close'
            Width = 125
          end
          object cxGrid_1DBTableView1tkt_dt_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_maturity'
            Width = 125
          end
          object cxGrid_1DBTableView1tkt_status: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_status'
            Width = 50
          end
          object cxGrid_1DBTableView1tkt_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1tkt_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1tkt_contact: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1tkt_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_registration'
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
              DataBinding.DataField = 'tkt_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'tkt_dt_registration'
            end
            object cxPageControl1: TcxPageControl [2]
              Left = 17
              Top = 103
              Width = 952
              Height = 155
              Color = clWhite
              ParentBackground = False
              ParentColor = False
              TabOrder = 2
              Properties.ActivePage = cxTabSheet2
              Properties.CustomButtons.Buttons = <>
              ClientRectBottom = 149
              ClientRectLeft = 2
              ClientRectRight = 946
              ClientRectTop = 27
              object cxTabSheet2: TcxTabSheet
                Caption = 'Ticket'
                ImageIndex = 0
                object dxLayoutControl2: TdxLayoutControl
                  Left = 0
                  Top = 0
                  Width = 944
                  Height = 122
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
                  object cxDBLookupComboBox1: TcxDBLookupComboBox
                    Left = 60
                    Top = 64
                    DataBinding.DataField = 'client_cli_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'cli_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 350
                        FieldName = 'cli_first_name'
                      end
                      item
                        Caption = 'C'#243'd. ID'
                        Width = 75
                        FieldName = 'cli_id'
                      end>
                    Style.HotTrack = False
                    TabOrder = 6
                    Width = 292
                  end
                  object cxDBDateEdit3: TcxDBDateEdit
                    Left = 408
                    Top = 37
                    DataBinding.DataField = 'tkt_dt_maturity'
                    DataBinding.DataSource = ds
                    Properties.DateButtons = [btnClear, btnNow, btnToday]
                    Properties.Kind = ckDateTime
                    Style.HotTrack = False
                    TabOrder = 5
                    Width = 121
                  end
                  object cxDBDateEdit1: TcxDBDateEdit
                    Left = 60
                    Top = 37
                    DataBinding.DataField = 'tkt_dt_open'
                    DataBinding.DataSource = ds
                    Properties.DateButtons = [btnClear, btnNow, btnToday]
                    Properties.Kind = ckDateTime
                    Style.HotTrack = False
                    TabOrder = 3
                    Width = 121
                  end
                  object cxDBDateEdit2: TcxDBDateEdit
                    Left = 231
                    Top = 37
                    DataBinding.DataField = 'tkt_dt_close'
                    DataBinding.DataSource = ds
                    Properties.DateButtons = [btnClear, btnNow, btnToday]
                    Properties.Kind = ckDateTime
                    Style.HotTrack = False
                    TabOrder = 4
                    Width = 121
                  end
                  object cxDBComboBox1: TcxDBComboBox
                    Left = 60
                    Top = 10
                    DataBinding.DataField = 'tkt_status'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      'A - ABERTO'
                      'F- FECHADO'
                      'C - CANCELADO')
                    Style.HotTrack = False
                    TabOrder = 0
                    Width = 121
                  end
                  object cxDBTextEdit3: TcxDBTextEdit
                    Left = 408
                    Top = 64
                    DataBinding.DataField = 'tkt_contact'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Style.HotTrack = False
                    TabOrder = 7
                    Width = 121
                  end
                  object cxDBTextEdit1: TcxDBTextEdit
                    Left = 583
                    Top = 64
                    DataBinding.DataField = 'tkt_phone1'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Style.HotTrack = False
                    TabOrder = 8
                    Width = 121
                  end
                  object cxDBTextEdit2: TcxDBTextEdit
                    Left = 742
                    Top = 64
                    DataBinding.DataField = 'tkt_phone2'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Style.HotTrack = False
                    TabOrder = 9
                    Width = 121
                  end
                  object cxDBLookupComboBox3: TcxDBLookupComboBox
                    Left = 231
                    Top = 91
                    DataBinding.DataField = 'ticket_type_tky_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'tky_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 200
                        FieldName = 'tky_name'
                      end
                      item
                        Caption = 'C'#243'd. ID'
                        Width = 75
                        FieldName = 'tky_id'
                      end>
                    Style.HotTrack = False
                    TabOrder = 11
                    Width = 121
                  end
                  object cxDBLookupComboBox4: TcxDBLookupComboBox
                    Left = 408
                    Top = 91
                    DataBinding.DataField = 'ticket_category_tkc_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'tkc_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 200
                        FieldName = 'tkc_name'
                      end
                      item
                        Caption = 'C'#243'd. ID'
                        Width = 75
                        FieldName = 'tkc_id'
                      end>
                    Properties.ListOptions.SyncMode = True
                    Style.HotTrack = False
                    TabOrder = 12
                    Width = 121
                  end
                  object cxDBLookupComboBox5: TcxDBLookupComboBox
                    Left = 583
                    Top = 91
                    DataBinding.DataField = 'ticket_category_sub_tks_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'tks_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 200
                        FieldName = 'tks_name'
                      end
                      item
                        Caption = 'C'#243'd. ID'
                        Width = 75
                        FieldName = 'tks_id'
                      end>
                    Style.HotTrack = False
                    TabOrder = 13
                    Width = 121
                  end
                  object cxDBLookupComboBox8: TcxDBLookupComboBox
                    Left = 231
                    Top = 10
                    DataBinding.DataField = 'contract_user_ctr_usr_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'ctr_usr_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 250
                        FieldName = 'ctr_usr_first_name'
                      end
                      item
                        Caption = 'C'#243'd. ID'
                        Width = 75
                        FieldName = 'ctr_usr_id'
                      end>
                    Style.HotTrack = False
                    TabOrder = 1
                    Width = 121
                  end
                  object cxDBLookupComboBox7: TcxDBLookupComboBox
                    Left = 408
                    Top = 10
                    DataBinding.DataField = 'enterprise_ent_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'ent_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 250
                        FieldName = 'ent_first_name'
                      end
                      item
                        Width = 75
                        FieldName = 'ent_id'
                      end>
                    Style.HotTrack = False
                    TabOrder = 2
                    Width = 296
                  end
                  object cxDBLookupComboBox2: TcxDBLookupComboBox
                    Left = 60
                    Top = 91
                    DataBinding.DataField = 'ticket_priority_tkp_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'tkp_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 250
                        FieldName = 'tkp_name'
                      end
                      item
                        Caption = 'C'#243'd. ID'
                        Width = 75
                        FieldName = 'tkp_id'
                      end>
                    Style.HotTrack = False
                    TabOrder = 10
                    Width = 121
                  end
                  object dxLayoutControl2Group_Root: TdxLayoutGroup
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem13: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    CaptionOptions.Text = 'Cliente'
                    Control = cxDBLookupComboBox1
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 292
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutControl2Group_Root
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    Index = 1
                    AutoCreated = True
                  end
                  object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup1
                    AlignVert = avClient
                    LayoutDirection = ldHorizontal
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutItem7: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignVert = avClient
                    CaptionOptions.Text = 'Dt. Venc.'
                    Control = cxDBDateEdit3
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem4: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Dt. Aber.'
                    Control = cxDBDateEdit1
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem6: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup3
                    AlignVert = avClient
                    CaptionOptions.Text = 'Dt. Fec.'
                    Control = cxDBDateEdit2
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutControl2Group_Root
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 0
                    AutoCreated = True
                  end
                  object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutAutoCreatedGroup1
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    LayoutDirection = ldHorizontal
                    Index = 1
                    AutoCreated = True
                  end
                  object dxLayoutItem11: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Status'
                    Control = cxDBComboBox1
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                  object dxLayoutItem10: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Contato'
                    Control = cxDBTextEdit3
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem8: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Tel. 1'
                    Control = cxDBTextEdit1
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem9: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup4
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Tel. 2'
                    Control = cxDBTextEdit2
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                  object dxLayoutItem15: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup2
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Tipo'
                    Control = cxDBLookupComboBox3
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem16: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup2
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Categ.'
                    Control = cxDBLookupComboBox4
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                    Parent = dxLayoutControl2Group_Root
                    AlignVert = avClient
                    LayoutDirection = ldHorizontal
                    Index = 2
                    AutoCreated = True
                  end
                  object dxLayoutItem17: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup2
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Subcatg.'
                    Control = cxDBLookupComboBox5
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 3
                  end
                  object dxLayoutItem12: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignVert = avClient
                    CaptionOptions.Text = 'Usu'#225'rio'
                    Control = cxDBLookupComboBox8
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 1
                  end
                  object dxLayoutItem19: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup6
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Empresa'
                    Control = cxDBLookupComboBox7
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 296
                    ControlOptions.ShowBorder = False
                    Index = 2
                  end
                  object dxLayoutItem14: TdxLayoutItem
                    Parent = dxLayoutAutoCreatedGroup2
                    AlignHorz = ahLeft
                    AlignVert = avClient
                    CaptionOptions.Text = 'Prior.'
                    Control = cxDBLookupComboBox2
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 121
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                end
              end
              object cxTabSheet3: TcxTabSheet
                Caption = 'Revenda'
                ImageIndex = 1
                object dxLayoutControl3: TdxLayoutControl
                  Left = 0
                  Top = 0
                  Width = 944
                  Height = 122
                  Align = alClient
                  TabOrder = 0
                  LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
                  object cxDBLookupComboBox6: TcxDBLookupComboBox
                    Left = 58
                    Top = 10
                    DataBinding.DataField = 'reseller_res_id'
                    DataBinding.DataSource = ds
                    Properties.CharCase = ecUpperCase
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownWidth = 350
                    Properties.KeyFieldNames = 'res_id'
                    Properties.ListColumns = <
                      item
                        Caption = 'Nome'
                        Width = 250
                        FieldName = 'res_first_name'
                      end
                      item
                        Caption = 'C'#243'd. ID'
                        Width = 75
                        FieldName = 'res_id'
                      end>
                    Style.HotTrack = False
                    TabOrder = 0
                    Width = 285
                  end
                  object dxLayoutControl3Group_Root: TdxLayoutGroup
                    AlignHorz = ahLeft
                    AlignVert = avTop
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    ShowBorder = False
                    Index = -1
                  end
                  object dxLayoutItem18: TdxLayoutItem
                    Parent = dxLayoutControl3Group_Root
                    AlignHorz = ahClient
                    CaptionOptions.Text = 'Revenda'
                    Control = cxDBLookupComboBox6
                    ControlOptions.OriginalHeight = 21
                    ControlOptions.OriginalWidth = 285
                    ControlOptions.ShowBorder = False
                    Index = 0
                  end
                end
              end
            end
            object cxDBMemo1: TcxDBMemo [3]
              Left = 24
              Top = 292
              DataBinding.DataField = 'tkt_reason'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 3
              Height = 150
              Width = 938
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 387
              SizeOptions.Width = 966
              ItemIndex = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Height = 155
              Control = cxPageControl1
              ControlOptions.AutoColor = True
              ControlOptions.OriginalHeight = 155
              ControlOptions.OriginalWidth = 952
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Motivo'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 188
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup3
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Height = 150
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 150
              ControlOptions.OriginalWidth = 185
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
end
