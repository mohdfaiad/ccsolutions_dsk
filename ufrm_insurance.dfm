inherited frm_insurance: Tfrm_insurance
  Caption = 'Manuten'#231#227'o: Conv'#234'nios'
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
          object cxGrid_1DBTableView1ins_id: TcxGridDBColumn
            DataBinding.FieldName = 'ins_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ins_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ins_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ins_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ins_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ins_nickname: TcxGridDBColumn
            DataBinding.FieldName = 'ins_nickname'
            Width = 200
          end
          object cxGrid_1DBTableView1ins_email: TcxGridDBColumn
            DataBinding.FieldName = 'ins_email'
            Width = 175
          end
          object cxGrid_1DBTableView1ins_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'ins_cnpj'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_im: TcxGridDBColumn
            DataBinding.FieldName = 'ins_im'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1ins_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_address'
            Width = 200
          end
          object cxGrid_1DBTableView1ins_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_number'
            Width = 50
          end
          object cxGrid_1DBTableView1ins_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_street'
            Width = 150
          end
          object cxGrid_1DBTableView1ins_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_complement'
            Width = 200
          end
          object cxGrid_1DBTableView1ins_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_city'
            Width = 150
          end
          object cxGrid_1DBTableView1ins_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_state'
            Width = 35
          end
          object cxGrid_1DBTableView1ins_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'ins_add_bus_country'
            Width = 150
          end
          object cxGrid_1DBTableView1ins_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ins_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'ins_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'ins_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'ins_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_contact: TcxGridDBColumn
            DataBinding.FieldName = 'ins_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_dt_maturity_contract: TcxGridDBColumn
            DataBinding.FieldName = 'ins_dt_maturity_contract'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_day_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'ins_day_maturity'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'ins_dt_open'
            Width = 100
          end
          object cxGrid_1DBTableView1ins_status: TcxGridDBColumn
            DataBinding.FieldName = 'ins_status'
            Width = 50
          end
          object cxGrid_1DBTableView1ins_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ins_dt_registration'
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
              Left = 67
              DataBinding.DataField = 'ins_id'
              ExplicitLeft = 67
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              DataBinding.DataField = 'ins_dt_registration'
              ExplicitLeft = 240
            end
            object dbedt_im: TcxDBTextEdit [2]
              Left = 240
              Top = 249
              DataBinding.DataField = 'ins_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 130
            end
            object dbedt_dt_open: TcxDBDateEdit [3]
              Left = 67
              Top = 103
              DataBinding.DataField = 'ins_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_last_name: TcxDBTextEdit [4]
              Left = 422
              Top = 157
              DataBinding.DataField = 'ins_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 303
            end
            object lookupComboBoxTable: TcxLookupComboBox [5]
              Left = 67
              Top = 130
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'codTabela'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'tbp_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'tbp_id'
                end>
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object dbedt_first_name: TcxDBTextEdit [6]
              Left = 67
              Top = 157
              DataBinding.DataField = 'ins_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 303
            end
            object dbedt_cnpj: TcxDBTextEdit [7]
              Left = 67
              Top = 249
              DataBinding.DataField = 'ins_cnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object dbedt_email: TcxDBTextEdit [8]
              Left = 67
              Top = 184
              DataBinding.DataField = 'ins_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 303
            end
            object dbedt_nickname: TcxDBTextEdit [9]
              Left = 771
              Top = 157
              DataBinding.DataField = 'ins_nickname'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 198
            end
            object dbchk_status: TcxDBCheckBox [10]
              Left = 376
              Top = 38
              Caption = 'Status'
              DataBinding.DataField = 'ins_status'
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
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 965
              ItemIndex = 1
            end
            inherited dxLayoutItem1: TdxLayoutItem
              AlignVert = avClient
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Documentos'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'IM'
              Control = dbedt_im
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dt. Aber.'
              Control = dbedt_dt_open
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahRight
              AlignVert = avClient
              CaptionOptions.Text = 'Fantasia'
              Control = dbedt_last_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tabela'
              Control = lookupComboBoxTable
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Raz'#227'o'
              Control = dbedt_first_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup7
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'CNPJ'
              Control = dbedt_cnpj
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'E-mail'
              Control = dbedt_email
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahRight
              AlignVert = avClient
              CaptionOptions.Text = 'Apelido'
              Control = dbedt_nickname
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 198
              ControlOptions.ShowBorder = False
              Index = 1
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
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Endere'#231'os'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_add_bus_zipcode: TcxDBButtonEdit
              Left = 55
              Top = 38
              DataBinding.DataField = 'ins_add_bus_zipcode'
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
            object dbedt_add_bus_complement: TcxDBTextEdit
              Left = 797
              Top = 38
              DataBinding.DataField = 'ins_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 172
            end
            object dbedt_add_bus_address: TcxDBTextEdit
              Left = 206
              Top = 38
              DataBinding.DataField = 'ins_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 272
            end
            object dbedt_add_bus_number: TcxDBTextEdit
              Left = 514
              Top = 38
              DataBinding.DataField = 'ins_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 50
            end
            object dbedt_add_bus_street: TcxDBTextEdit
              Left = 603
              Top = 38
              DataBinding.DataField = 'ins_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 150
            end
            object dbedt_add_bus_city: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataField = 'ins_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 178
            end
            object dbedt_add_bus_state: TcxDBTextEdit
              Left = 277
              Top = 65
              DataBinding.DataField = 'ins_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 50
            end
            object dbedt_add_bus_country: TcxDBTextEdit
              Left = 357
              Top = 65
              DataBinding.DataField = 'ins_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
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
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = dbedt_add_bus_zipcode
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = dbedt_add_bus_complement
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 172
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = dbedt_add_bus_address
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 272
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = dbedt_add_bus_number
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 50
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = dbedt_add_bus_street
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 150
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = dbedt_add_bus_city
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 178
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = dbedt_add_bus_state
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 50
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = dbedt_add_bus_country
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object tbsht_contact: TcxTabSheet
          Caption = 'Contatos'
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_phone2: TcxDBTextEdit
              Left = 208
              Top = 38
              DataBinding.DataField = 'ins_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dbedt_phone4: TcxDBTextEdit
              Left = 526
              Top = 38
              DataBinding.DataField = 'ins_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_phone1: TcxDBTextEdit
              Left = 49
              Top = 38
              DataBinding.DataField = 'ins_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dbedt_phone3: TcxDBTextEdit
              Left = 367
              Top = 38
              DataBinding.DataField = 'ins_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_contact: TcxDBTextEdit
              Left = 697
              Top = 38
              DataBinding.DataField = 'ins_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 272
            end
            object dxLayoutGroup8: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup10: TdxLayoutGroup
              Parent = dxLayoutGroup8
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = dbedt_phone2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 4'
              Control = dbedt_phone4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tel. 1'
              Control = dbedt_phone1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem31: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = dbedt_phone3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem39: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = dbedt_contact
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 272
              ControlOptions.ShowBorder = False
              Index = 4
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Contrato'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_dt_maturity_contract: TcxDBDateEdit
              Left = 128
              Top = 38
              DataBinding.DataField = 'ins_dt_maturity_contract'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dbedt_day_maturity: TcxDBSpinEdit
              Left = 319
              Top = 38
              DataBinding.DataField = 'ins_day_maturity'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dxLayoutControl2Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl2Group_Root
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Prazo'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutGroup6
              CaptionOptions.Text = 'Dt. Venc. do Contrato'
              Control = dbedt_dt_maturity_contract
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup7: TdxLayoutGroup
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Financeiro'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutGroup7
              CaptionOptions.Text = 'Dia Venc.'
              Control = dbedt_day_maturity
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
  inherited mem: TFDMemTable [11]
    Active = True
    FieldDefs = <
      item
        Name = 'ins_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'table_price_tbp_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ins_id'
        DataType = ftLongWord
      end
      item
        Name = 'ins_first_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ins_last_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ins_nickname'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ins_email'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'ins_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ins_im'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ins_add_bus_zipcode'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ins_add_bus_address'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ins_add_bus_number'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ins_add_bus_street'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ins_add_bus_complement'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ins_add_bus_city'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'ins_add_bus_state'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ins_add_bus_country'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ins_phone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ins_phone2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ins_phone3'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ins_phone4'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ins_contact'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ins_dt_maturity_contract'
        DataType = ftDate
      end
      item
        Name = 'ins_day_maturity'
        DataType = ftByte
      end
      item
        Name = 'ins_dt_open'
        DataType = ftDate
      end
      item
        Name = 'ins_status'
        DataType = ftShortint
      end
      item
        Name = 'ins_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'ins_dt_registration'
        DataType = ftDateTime
      end>
    StoreDefs = True
    object memins_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ins_cod'
      Origin = 'ins_cod'
      Size = 32
    end
    object memtable_price_tbp_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tabela de Pre'#231'o'
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
      Size = 32
    end
    object memins_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ins_id'
      Origin = 'ins_id'
    end
    object memins_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'ins_first_name'
      Origin = 'ins_first_name'
      Size = 85
    end
    object memins_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'ins_last_name'
      Origin = 'ins_last_name'
      Size = 85
    end
    object memins_nickname: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Apelido'
      FieldName = 'ins_nickname'
      Origin = 'ins_nickname'
      Size = 85
    end
    object memins_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ins_email'
      Origin = 'ins_email'
      Size = 65
    end
    object memins_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'ins_cnpj'
      Origin = 'ins_cnpj'
      Size = 25
    end
    object memins_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'ins_im'
      Origin = 'ins_im'
      Size = 25
    end
    object memins_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'ins_add_bus_zipcode'
      Origin = 'ins_add_bus_zipcode'
      Size = 9
    end
    object memins_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'ins_add_bus_address'
      Origin = 'ins_add_bus_address'
      Size = 50
    end
    object memins_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'ins_add_bus_number'
      Origin = 'ins_add_bus_number'
      Size = 5
    end
    object memins_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'ins_add_bus_street'
      Origin = 'ins_add_bus_street'
      Size = 45
    end
    object memins_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'ins_add_bus_complement'
      Origin = 'ins_add_bus_complement'
      Size = 50
    end
    object memins_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'ins_add_bus_city'
      Origin = 'ins_add_bus_city'
      Size = 35
    end
    object memins_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'ins_add_bus_state'
      Origin = 'ins_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object memins_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'ins_add_bus_country'
      Origin = 'ins_add_bus_country'
      Size = 25
    end
    object memins_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ins_phone1'
      Origin = 'ins_phone1'
      Size = 15
    end
    object memins_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'ins_phone2'
      Origin = 'ins_phone2'
      Size = 15
    end
    object memins_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'ins_phone3'
      Origin = 'ins_phone3'
      Size = 15
    end
    object memins_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'ins_phone4'
      Origin = 'ins_phone4'
      Size = 15
    end
    object memins_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'ins_contact'
      Origin = 'ins_contact'
      Size = 15
    end
    object memins_dt_maturity_contract: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Venc. Contrato'
      FieldName = 'ins_dt_maturity_contract'
      Origin = 'ins_dt_maturity_contract'
    end
    object memins_day_maturity: TByteField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia Faturamento'
      FieldName = 'ins_day_maturity'
      Origin = 'ins_day_maturity'
    end
    object memins_dt_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Abert.'
      FieldName = 'ins_dt_open'
      Origin = 'ins_dt_open'
    end
    object memins_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ins_status'
      Origin = 'ins_status'
    end
    object memins_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ins_deleted_at'
      Origin = 'ins_deleted_at'
    end
    object memins_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ins_dt_registration'
      Origin = 'ins_dt_registration'
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
end
