inherited frm_enterprise: Tfrm_enterprise
  Caption = 'Manuten'#231#227'o: Empresas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ent_id: TcxGridDBColumn
            Caption = 'C'#243'd. ID'
            DataBinding.FieldName = 'ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ent_type: TcxGridDBColumn
            DataBinding.FieldName = 'ent_type'
            Width = 50
          end
          object cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ent_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ent_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ent_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ent_nickname: TcxGridDBColumn
            DataBinding.FieldName = 'ent_nickname'
            Width = 250
          end
          object cxGrid_1DBTableView1ent_email: TcxGridDBColumn
            DataBinding.FieldName = 'ent_email'
            Width = 150
          end
          object cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'ent_cnpj'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_ie: TcxGridDBColumn
            DataBinding.FieldName = 'ent_ie'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_im: TcxGridDBColumn
            DataBinding.FieldName = 'ent_im'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_suframa: TcxGridDBColumn
            DataBinding.FieldName = 'ent_suframa'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'ent_dt_open'
            Width = 75
          end
          object cxGrid_1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1ent_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_address'
            Width = 200
          end
          object cxGrid_1DBTableView1ent_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_number'
            Width = 50
          end
          object cxGrid_1DBTableView1ent_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_street'
            Width = 150
          end
          object cxGrid_1DBTableView1ent_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_complement'
            Width = 200
          end
          object cxGrid_1DBTableView1ent_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_city'
            Width = 150
          end
          object cxGrid_1DBTableView1ent_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_state'
            Width = 50
          end
          object cxGrid_1DBTableView1ent_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_country'
            Width = 150
          end
          object cxGrid_1DBTableView1ent_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_contact: TcxGridDBColumn
            DataBinding.FieldName = 'ent_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_status: TcxGridDBColumn
            DataBinding.FieldName = 'ent_status'
            Width = 50
          end
          object cxGrid_1DBTableView1ent_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ent_dt_registration'
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
              DataBinding.DataField = 'ent_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 236
              DataBinding.DataField = 'ent_dt_registration'
              ExplicitLeft = 236
            end
            object cxDBComboBox1: TcxDBComboBox [2]
              Left = 63
              Top = 103
              DataBinding.DataField = 'ent_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'M - MATRIZ'
                'F - FILIAL')
              Style.HotTrack = False
              TabOrder = 2
              Width = 106
            end
            object cxDBTextEdit6: TcxDBTextEdit [3]
              Left = 389
              Top = 278
              DataBinding.DataField = 'ent_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [4]
              Left = 229
              Top = 103
              DataBinding.DataField = 'ent_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 145
            end
            object cxDBTextEdit1: TcxDBTextEdit [5]
              Left = 63
              Top = 278
              DataBinding.DataField = 'ent_cnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [6]
              Left = 236
              Top = 278
              DataBinding.DataField = 'ent_ie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 130
            end
            object cxDBTextEdit7: TcxDBTextEdit [7]
              Left = 561
              Top = 278
              DataBinding.DataField = 'ent_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 14
              Width = 139
            end
            object cxDBComboBox2: TcxDBComboBox [8]
              Left = 416
              Top = 103
              DataBinding.DataField = 'ent_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 4
              Width = 96
            end
            object cxDBTextEdit2: TcxDBTextEdit [9]
              Left = 63
              Top = 130
              DataBinding.DataField = 'ent_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              OnExit = cxDBTextEdit2Exit
              Width = 311
            end
            object cxDBTextEdit13: TcxDBTextEdit [10]
              Left = 63
              Top = 184
              DataBinding.DataField = 'ent_nickname'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 311
            end
            object cxDBTextEdit3: TcxDBTextEdit [11]
              Left = 63
              Top = 157
              DataBinding.DataField = 'ent_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 311
            end
            object cxDBTextEdit4: TcxDBTextEdit [12]
              Left = 63
              Top = 211
              DataBinding.DataField = 'ent_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 311
            end
            object cxImgLogo: TcxImage [13]
              Left = 518
              Top = 103
              Properties.FitMode = ifmStretch
              Properties.GraphicClassName = 'TdxPNGImage'
              Style.HotTrack = False
              TabOrder = 9
              Height = 100
              Width = 140
            end
            object btnLogo: TcxButton [14]
              Left = 518
              Top = 209
              Width = 140
              Height = 25
              Caption = 'Logo'
              TabOrder = 10
              OnClick = btnLogoClick
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 106
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Documentos'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
              ItemIndex = 3
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'IM'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Abert.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'CNPJ'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'IE'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Suframa'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 139
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 96
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Apelido'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Fantasia'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              Control = cxImgLogo
              ControlOptions.OriginalHeight = 100
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnLogo
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 75
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
          object dxLayoutControl_address: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbtxtedt_city: TcxDBTextEdit
              Left = 373
              Top = 65
              DataBinding.DataField = 'ent_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dbtxtedt_state: TcxDBTextEdit
              Left = 538
              Top = 65
              DataBinding.DataField = 'ent_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object dbtxtedt_country: TcxDBTextEdit
              Left = 709
              Top = 65
              DataBinding.DataField = 'ent_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 55
              Top = 130
              DataBinding.DataField = 'ent_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 214
              Top = 130
              DataBinding.DataField = 'ent_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object dbbtnedt_cep: TcxDBButtonEdit
              Left = 55
              Top = 38
              DataBinding.DataField = 'ent_add_bus_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Properties.OnButtonClick = dbbtnedt_cepPropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dbtxtedt_address: TcxDBTextEdit
              Left = 214
              Top = 38
              DataBinding.DataField = 'ent_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 280
            end
            object dbtxtedt_number: TcxDBTextEdit
              Left = 538
              Top = 38
              DataBinding.DataField = 'ent_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbtxtedt_street: TcxDBTextEdit
              Left = 709
              Top = 38
              DataBinding.DataField = 'ent_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbtxtedt_complement: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataField = 'ent_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 274
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 373
              Top = 130
              DataBinding.DataField = 'ent_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 538
              Top = 130
              DataBinding.DataField = 'ent_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 709
              Top = 130
              DataBinding.DataField = 'ent_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object dxLayoutControl_addressGroup_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutControl_addressGroup_Root
              CaptionOptions.Text = 'Contato'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 742
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl_addressGroup_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Comercial'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = dbtxtedt_city
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = dbtxtedt_state
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = dbtxtedt_country
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = dbbtnedt_cep
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = dbtxtedt_address
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 280
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = dbtxtedt_number
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = dbtxtedt_street
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = dbtxtedt_complement
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 274
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 4
            end
          end
        end
      end
    end
  end
  inherited ActionList_1: TActionList
    object Action_insert_image: TAction
      Caption = 'Inserir'
      ImageIndex = 4
      OnExecute = Action_insert_imageExecute
    end
    object Action_delete_image: TAction
      Caption = 'Deletar'
      ImageIndex = 8
      OnExecute = Action_delete_imageExecute
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise'
      'where ent_deleted_at is null')
    object qryent_cod: TBytesField
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryent_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ent_id'
      Origin = 'ent_id'
    end
    object qryent_type: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ent_type'
      Origin = 'ent_type'
      FixedChar = True
      Size = 1
    end
    object qryent_first_name: TStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 75
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 75
    end
    object qryent_last_name: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 75
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 75
    end
    object qryent_nickname: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Apelido'
      FieldName = 'ent_nickname'
      Origin = 'ent_nickname'
      Size = 85
    end
    object qryent_email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'ent_email'
      Origin = 'ent_email'
      Size = 65
    end
    object qryent_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      Size = 25
    end
    object qryent_ie: TStringField
      DisplayLabel = 'IE'
      FieldName = 'ent_ie'
      Origin = 'ent_ie'
      Size = 25
    end
    object qryent_im: TStringField
      DisplayLabel = 'IM'
      FieldName = 'ent_im'
      Origin = 'ent_im'
      Size = 25
    end
    object qryent_suframa: TStringField
      DisplayLabel = 'Suframa'
      FieldName = 'ent_suframa'
      Origin = 'ent_suframa'
      Size = 25
    end
    object qryent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      DisplayWidth = 9
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      Size = 9
    end
    object qryent_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'ent_add_bus_address'
      Origin = 'ent_add_bus_address'
      Size = 50
    end
    object qryent_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'ent_add_bus_number'
      Origin = 'ent_add_bus_number'
      Size = 5
    end
    object qryent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      Size = 45
    end
    object qryent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      Size = 50
    end
    object qryent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      Size = 35
    end
    object qryent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qryent_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'ent_add_bus_country'
      Origin = 'ent_add_bus_country'
      Size = 25
    end
    object qryent_phone1: TStringField
      DisplayLabel = 'Tel. 1'
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
    object qryent_phone2: TStringField
      DisplayLabel = 'Tel. 2'
      FieldName = 'ent_phone2'
      Origin = 'ent_phone2'
      Size = 15
    end
    object qryent_phone3: TStringField
      DisplayLabel = 'Tel. 3'
      FieldName = 'ent_phone3'
      Origin = 'ent_phone3'
      Size = 15
    end
    object qryent_phone4: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'ent_phone4'
      Origin = 'ent_phone4'
      Size = 15
    end
    object qryent_contact: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'ent_contact'
      Origin = 'ent_contact'
      Size = 25
    end
    object qryent_dt_open: TDateField
      DisplayLabel = 'Dt. Abert.'
      FieldName = 'ent_dt_open'
      Origin = 'ent_dt_open'
    end
    object qryent_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ent_status'
      Origin = 'ent_status'
      FixedChar = True
      Size = 1
    end
    object qryent_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ent_deleted_at'
      Origin = 'ent_deleted_at'
    end
    object qryent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
    end
    object qryent_image1: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'ent_image1'
      Origin = 'ent_image1'
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
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
    end
  end
  inherited ACBrCEP_1: TACBrCEP
    OnBuscaEfetuada = ACBrCEP_1BuscaEfetuada
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 847
    Top = 42
  end
  object PopupMenu1: TPopupMenu
    Images = cxImageList_1
    Left = 879
    Top = 42
    object Inserir2: TMenuItem
      Action = Action_insert_image
    end
    object Deletar1: TMenuItem
      Action = Action_delete_image
    end
  end
  object OpenDialogLogo: TOpenDialog
    FileName = '*.png;*.jpg'
    Left = 855
    Top = 90
  end
end
