inherited frm_reseller: Tfrm_reseller
  Caption = 'Manuten'#231#227'o: Revendas'
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
          object cxGrid_1DBTableView1res_id: TcxGridDBColumn
            DataBinding.FieldName = 'res_id'
            Width = 75
          end
          object cxGrid_1DBTableView1res_type: TcxGridDBColumn
            DataBinding.FieldName = 'res_type'
            Width = 50
          end
          object cxGrid_1DBTableView1res_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'res_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1res_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'res_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1res_email: TcxGridDBColumn
            DataBinding.FieldName = 'res_email'
            Width = 200
          end
          object cxGrid_1DBTableView1res_cpfcnpj: TcxGridDBColumn
            DataBinding.FieldName = 'res_cpfcnpj'
            Width = 100
          end
          object cxGrid_1DBTableView1res_rgie: TcxGridDBColumn
            DataBinding.FieldName = 'res_rgie'
            Width = 100
          end
          object cxGrid_1DBTableView1res_im: TcxGridDBColumn
            DataBinding.FieldName = 'res_im'
            Width = 100
          end
          object cxGrid_1DBTableView1res_suframa: TcxGridDBColumn
            DataBinding.FieldName = 'res_suframa'
            Width = 100
          end
          object cxGrid_1DBTableView1res_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1res_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_address'
            Width = 200
          end
          object cxGrid_1DBTableView1res_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_number'
            Width = 50
          end
          object cxGrid_1DBTableView1res_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_street'
            Width = 200
          end
          object cxGrid_1DBTableView1res_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_complement'
            Width = 200
          end
          object cxGrid_1DBTableView1res_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_city'
            Width = 150
          end
          object cxGrid_1DBTableView1res_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_state'
            Width = 50
          end
          object cxGrid_1DBTableView1res_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'res_add_bus_country'
            Width = 150
          end
          object cxGrid_1DBTableView1res_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'res_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1res_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'res_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1res_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'res_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1res_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'res_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1res_contact: TcxGridDBColumn
            DataBinding.FieldName = 'res_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1res_dt_birthopen: TcxGridDBColumn
            DataBinding.FieldName = 'res_dt_birthopen'
            Width = 100
          end
          object cxGrid_1DBTableView1res_status: TcxGridDBColumn
            DataBinding.FieldName = 'res_status'
            Width = 65
          end
          object cxGrid_1DBTableView1res_deleted_at: TcxGridDBColumn
            DataBinding.FieldName = 'res_deleted_at'
            Width = 100
          end
          object cxGrid_1DBTableView1res_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'res_dt_registration'
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
              Left = 70
              DataBinding.DataField = 'res_id'
              ExplicitLeft = 70
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 243
              DataBinding.DataField = 'res_dt_registration'
              ExplicitLeft = 243
            end
            object dbedt_cpfcnpj: TcxDBTextEdit [2]
              Left = 70
              Top = 222
              DataBinding.DataField = 'res_cpfcnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object dbedt_im: TcxDBTextEdit [3]
              Left = 387
              Top = 222
              DataBinding.DataField = 'res_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 130
            end
            object dbedt_rgie: TcxDBTextEdit [4]
              Left = 243
              Top = 222
              DataBinding.DataField = 'res_rgie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object dbedt_suframa: TcxDBTextEdit [5]
              Left = 568
              Top = 222
              DataBinding.DataField = 'res_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object dbedt_first_name: TcxDBTextEdit [6]
              Left = 70
              Top = 130
              DataBinding.DataField = 'res_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object dbedt_email: TcxDBTextEdit [7]
              Left = 70
              Top = 157
              DataBinding.DataField = 'res_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 303
            end
            object dbedt_last_name: TcxDBTextEdit [8]
              Left = 460
              Top = 130
              DataBinding.DataField = 'res_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 303
            end
            object dbedt_dt_birthopen: TcxDBDateEdit [9]
              Left = 460
              Top = 157
              DataBinding.DataField = 'res_dt_birthopen'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dbcmb_type: TcxDBComboBox [10]
              Left = 70
              Top = 103
              DataBinding.DataField = 'res_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'PF'
                'PJ')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbchk_status: TcxDBCheckBox [11]
              Left = 379
              Top = 38
              Caption = 'Status'
              DataBinding.DataField = 'res_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = 1
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Documentos'
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CPF/CNPJ'
              Control = dbedt_cpfcnpj
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'IM'
              Control = dbedt_im
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'IRG/E'
              Control = dbedt_rgie
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Suframa'
              Control = dbedt_suframa
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = dbedt_first_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'E-mail'
              Control = dbedt_email
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome Fantasia'
              Control = dbedt_last_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Nasc./Aber.'
              Control = dbedt_dt_birthopen
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo'
              Control = dbcmb_type
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Endere'#231'os'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_add_bus_country: TcxDBTextEdit
              Left = 666
              Top = 65
              DataBinding.DataField = 'res_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dbedt_add_bus_number: TcxDBTextEdit
              Left = 506
              Top = 38
              DataBinding.DataField = 'res_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_add_bus_street: TcxDBTextEdit
              Left = 666
              Top = 38
              DataBinding.DataField = 'res_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object dbedt_add_bus_zipcode: TcxDBButtonEdit
              Left = 55
              Top = 38
              DataBinding.DataField = 'res_add_bus_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dbedt_add_bus_city: TcxDBTextEdit
              Left = 349
              Top = 65
              DataBinding.DataField = 'res_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dbedt_add_bus_state: TcxDBTextEdit
              Left = 506
              Top = 65
              DataBinding.DataField = 'res_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object dbedt_add_bus_address: TcxDBTextEdit
              Left = 206
              Top = 38
              DataBinding.DataField = 'res_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 264
            end
            object dbedt_add_bus_complement: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataField = 'res_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 250
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Endere'#231'o'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = dbedt_add_bus_country
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'N'#250'm.'
              Control = dbedt_add_bus_number
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avBottom
              CaptionOptions.Text = 'Bairro'
              Control = dbedt_add_bus_street
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = dbedt_add_bus_zipcode
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = dbedt_add_bus_city
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'UF'
              Control = dbedt_add_bus_state
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = dbedt_add_bus_address
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 264
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = dbedt_add_bus_complement
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Contatos'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_phone1: TcxDBTextEdit
              Left = 49
              Top = 38
              DataBinding.DataField = 'res_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dbedt_contact: TcxDBTextEdit
              Left = 688
              Top = 38
              DataBinding.DataField = 'res_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 281
            end
            object dbedt_phone2: TcxDBTextEdit
              Left = 208
              Top = 38
              DataBinding.DataField = 'res_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dbedt_phone3: TcxDBTextEdit
              Left = 367
              Top = 38
              DataBinding.DataField = 'res_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_phone4: TcxDBTextEdit
              Left = 517
              Top = 38
              DataBinding.DataField = 'res_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dxLayoutGroup6: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup8: TdxLayoutGroup
              Parent = dxLayoutGroup6
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutItem32: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tel. 1'
              Control = dbedt_phone1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem35: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = dbedt_contact
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 281
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = dbedt_phone2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem37: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = dbedt_phone3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem38: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = dbedt_phone4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
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
    IndexFieldNames = 'res_id'
    object memres_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'res_cod'
      Origin = 'res_cod'
      Size = 32
    end
    object memres_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'res_id'
      Origin = 'res_id'
    end
    object memres_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'res_type'
      Origin = 'res_type'
      FixedChar = True
      Size = 2
    end
    object memres_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'res_first_name'
      Origin = 'res_first_name'
      Size = 85
    end
    object memres_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'res_last_name'
      Origin = 'res_last_name'
      Size = 85
    end
    object memres_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'res_email'
      Origin = 'res_email'
      Size = 65
    end
    object memres_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'res_cpfcnpj'
      Origin = 'res_cpfcnpj'
      Size = 25
    end
    object memres_rgie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG/IE'
      FieldName = 'res_rgie'
      Origin = 'res_rgie'
      Size = 25
    end
    object memres_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'res_im'
      Origin = 'res_im'
      Size = 25
    end
    object memres_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'res_suframa'
      Origin = 'res_suframa'
      Size = 25
    end
    object memres_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'res_add_bus_zipcode'
      Origin = 'res_add_bus_zipcode'
      Size = 9
    end
    object memres_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'res_add_bus_address'
      Origin = 'res_add_bus_address'
      Size = 50
    end
    object memres_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'res_add_bus_number'
      Origin = 'res_add_bus_number'
      Size = 5
    end
    object memres_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'res_add_bus_street'
      Origin = 'res_add_bus_street'
      Size = 45
    end
    object memres_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'res_add_bus_complement'
      Origin = 'res_add_bus_complement'
      Size = 50
    end
    object memres_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'res_add_bus_city'
      Origin = 'res_add_bus_city'
      Size = 35
    end
    object memres_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'res_add_bus_state'
      Origin = 'res_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object memres_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'res_add_bus_country'
      Origin = 'res_add_bus_country'
      Size = 25
    end
    object memres_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'res_phone1'
      Origin = 'res_phone1'
      Size = 15
    end
    object memres_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'res_phone2'
      Origin = 'res_phone2'
      Size = 15
    end
    object memres_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'res_phone3'
      Origin = 'res_phone3'
      Size = 15
    end
    object memres_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'res_phone4'
      Origin = 'res_phone4'
      Size = 15
    end
    object memres_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'res_contact'
      Origin = 'res_contact'
      Size = 25
    end
    object memres_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc./Aber.'
      FieldName = 'res_dt_birthopen'
      Origin = 'res_dt_birthopen'
    end
    object memres_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'res_status'
      Origin = 'res_status'
    end
    object memres_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'res_deleted_at'
      Origin = 'res_deleted_at'
    end
    object memres_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'res_dt_registration'
      Origin = 'res_dt_registration'
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
