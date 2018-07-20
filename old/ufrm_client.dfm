inherited frm_client: Tfrm_client
  Caption = 'Manuten'#231#227'o: Clientes'
  ClientHeight = 691
  OnClose = FormClose
  ExplicitHeight = 730
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Height = 636
    Properties.ActivePage = cxTabSheet_2
    ExplicitHeight = 636
    ClientRectBottom = 630
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 602
      inherited cxGrid_1: TcxGrid
        Height = 596
        ExplicitHeight = 596
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1Column1: TcxGridDBColumn
            Caption = 'C'#243'd.: ID'
            DataBinding.FieldName = 'cli_id'
            Width = 75
          end
          object cxGrid_1DBTableView1cli_type: TcxGridDBColumn
            DataBinding.FieldName = 'cli_type'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'cli_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1cli_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'cli_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1cli_email: TcxGridDBColumn
            DataBinding.FieldName = 'cli_email'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_cpfcnpj: TcxGridDBColumn
            DataBinding.FieldName = 'cli_cpfcnpj'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_rgie: TcxGridDBColumn
            DataBinding.FieldName = 'cli_rgie'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_im: TcxGridDBColumn
            DataBinding.FieldName = 'cli_im'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_suframa: TcxGridDBColumn
            DataBinding.FieldName = 'cli_suframa'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1cli_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_address'
            Width = 200
          end
          object cxGrid_1DBTableView1cli_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_number'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_street'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_complement'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_city'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_state'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bus_country'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1cli_add_bil_address: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_address'
            Width = 200
          end
          object cxGrid_1DBTableView1cli_add_bil_number: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_number'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_add_bil_street: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_street'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_bil_complement: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_complement'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_bil_city: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_city'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_bil_state: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_state'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_add_bil_country: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_bil_country'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_add_del_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_zipcode'
          end
          object cxGrid_1DBTableView1cli_add_del_address: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_address'
            Width = 200
          end
          object cxGrid_1DBTableView1cli_add_del_number: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_number'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_add_del_street: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_street'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_del_complement: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_complement'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_del_city: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_city'
            Width = 150
          end
          object cxGrid_1DBTableView1cli_add_del_state: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_state'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_add_del_country: TcxGridDBColumn
            DataBinding.FieldName = 'cli_add_del_country'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'cli_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'cli_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'cli_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'cli_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_contact: TcxGridDBColumn
            DataBinding.FieldName = 'cli_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1cli_dt_birthopen: TcxGridDBColumn
            DataBinding.FieldName = 'cli_dt_birthopen'
            Width = 75
          end
          object cxGrid_1DBTableView1cli_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'cli_dt_registration'
            Width = 125
          end
          object cxGrid_1DBTableView1cli_day_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'cli_day_maturity'
            Width = 75
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitHeight = 602
      inherited cxPageControl_2: TcxPageControl
        Height = 596
        Properties.ActivePage = tabLaboratorio
        ExplicitHeight = 596
        ClientRectBottom = 590
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitHeight = 562
          inherited dxLayoutControl_1: TdxLayoutControl
            Height = 562
            ExplicitHeight = 562
            inherited dbedt_id: TcxDBTextEdit
              Left = 76
              DataBinding.DataField = 'cli_id'
              ExplicitLeft = 76
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 253
              DataBinding.DataField = 'cli_dt_registration'
              ExplicitLeft = 253
            end
            object edt_cpfcnpj: TcxDBTextEdit [2]
              Left = 76
              Top = 249
              DataBinding.DataField = 'cli_cpfcnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              OnExit = edt_cpfcnpjExit
              Width = 121
            end
            object cxDBTextEdit20: TcxDBTextEdit [3]
              Left = 253
              Top = 249
              DataBinding.DataField = 'cli_rgie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 130
            end
            object cxDBTextEdit28: TcxDBTextEdit [4]
              Left = 406
              Top = 249
              DataBinding.DataField = 'cli_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [5]
              Left = 76
              Top = 184
              DataBinding.DataField = 'cli_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 307
            end
            object edtClient: TcxDBTextEdit [6]
              Left = 76
              Top = 130
              DataBinding.DataField = 'cli_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 307
            end
            object cxDBTextEdit2: TcxDBTextEdit [7]
              Left = 76
              Top = 157
              DataBinding.DataField = 'cli_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 307
            end
            object cxDBDateEdit1: TcxDBDateEdit [8]
              Left = 253
              Top = 103
              DataBinding.DataField = 'cli_dt_birthopen'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            object cxDBComboBox1: TcxDBComboBox [9]
              Left = 76
              Top = 103
              DataBinding.DataField = 'cli_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'PF - PESSOA FISICA'
                'PJ - PESSOA JURIDICA')
              Properties.OnChange = cxDBComboBox1PropertiesChange
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit29: TcxDBTextEdit [10]
              Left = 578
              Top = 249
              DataBinding.DataField = 'cli_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBImage1: TcxDBImage [11]
              Left = 389
              Top = 103
              DataBinding.DataField = 'cli_image1'
              DataBinding.DataSource = ds
              Properties.GraphicClassName = 'TdxPNGImage'
              Style.HotTrack = False
              TabOrder = 7
              Height = 102
              Width = 140
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
              ItemIndex = 1
              LayoutDirection = ldHorizontal
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Documentos'
              ButtonOptions.Buttons = <>
              ItemIndex = 2
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem32: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'CPF/CNPJ'
              Control = edt_cpfcnpj
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem33: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'RG/IE'
              Control = cxDBTextEdit20
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem34: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'IM'
              Control = cxDBTextEdit28
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 307
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = edtClient
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 83
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Sobrenome'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Nasc.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem35: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Suframa'
              Control = cxDBTextEdit29
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem47: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignVert = avClient
              Control = cxDBImage1
              ControlOptions.OriginalHeight = 100
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'os'
          OnShow = cxTabSheet_addressShow
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
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 55
              Top = 330
              DataBinding.DataField = 'cli_add_del_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 21
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 220
              Top = 330
              DataBinding.DataField = 'cli_add_del_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 22
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 380
              Top = 330
              DataBinding.DataField = 'cli_add_del_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 23
              Width = 121
            end
            object cxDBButtonEdit2: TcxDBButtonEdit
              Left = 55
              Top = 38
              DataBinding.DataField = 'cli_add_bus_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit27: TcxDBTextEdit
              Left = 380
              Top = 92
              DataBinding.DataField = 'cli_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit26: TcxDBTextEdit
              Left = 220
              Top = 92
              DataBinding.DataField = 'cli_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 55
              Top = 92
              DataBinding.DataField = 'cli_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataField = 'cli_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 220
              Top = 65
              DataBinding.DataField = 'cli_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 380
              Top = 65
              DataBinding.DataField = 'cli_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 55
              Top = 303
              DataBinding.DataField = 'cli_add_del_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 17
              Width = 121
            end
            object cxDBButtonEdit3: TcxDBButtonEdit
              Left = 55
              Top = 276
              DataBinding.DataField = 'cli_add_del_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Properties.OnButtonClick = cxDBButtonEdit3PropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 16
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 220
              Top = 303
              DataBinding.DataField = 'cli_add_del_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 18
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 380
              Top = 303
              DataBinding.DataField = 'cli_add_del_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 19
              Width = 121
            end
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 55
              Top = 157
              DataBinding.DataField = 'cli_add_bil_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 55
              Top = 184
              DataBinding.DataField = 'cli_add_bil_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 220
              Top = 184
              DataBinding.DataField = 'cli_add_bil_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 380
              Top = 184
              DataBinding.DataField = 'cli_add_bil_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 55
              Top = 211
              DataBinding.DataField = 'cli_add_bil_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 220
              Top = 211
              DataBinding.DataField = 'cli_add_bil_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 14
              Width = 121
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 380
              Top = 211
              DataBinding.DataField = 'cli_add_bil_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 15
              Width = 121
            end
            object cxDBTextEdit24: TcxDBTextEdit
              Left = 545
              Top = 65
              DataBinding.DataField = 'cli_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 200
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 545
              Top = 184
              DataBinding.DataField = 'cli_add_bil_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 200
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 545
              Top = 303
              DataBinding.DataField = 'cli_add_del_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 20
              Width = 200
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Comercial'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Entrega'
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup5
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup13
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup13
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup14
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit27
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = cxDBTextEdit26
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit25
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit21
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit22
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit23
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Cobran'#231'a'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem31: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = cxDBTextEdit18
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit19
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup14
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup7
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup8
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit24
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 200
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 200
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 200
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
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
            OnDblClick = dxLayoutControl_1DblClick
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 220
              Top = 38
              DataBinding.DataField = 'cli_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit30: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'cli_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit31: TcxDBTextEdit
              Left = 529
              Top = 38
              DataBinding.DataField = 'cli_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit32: TcxDBTextEdit
              Left = 379
              Top = 38
              DataBinding.DataField = 'cli_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit33: TcxDBTextEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'cli_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dxLayoutGroup7: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup8: TdxLayoutGroup
              Parent = dxLayoutGroup7
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem37: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit30
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem38: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = cxDBTextEdit31
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem39: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit32
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem40: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit33
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Financeiro'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label1: TLabel
            Left = 0
            Top = 22
            Width = 31
            Height = 13
            Caption = 'Label1'
            Color = clWhite
            ParentColor = False
          end
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object cxDBTextEdit38: TcxDBTextEdit
              Left = 67
              Top = 38
              DataBinding.DataField = 'cli_day_maturity'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dxLayoutGroup9: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup10: TdxLayoutGroup
              Parent = dxLayoutGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Faturas'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutItem45: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dia Venc.'
              Control = cxDBTextEdit38
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object tabTelefonia: TcxTabSheet
          Caption = 'Telefonia'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid2: TcxGrid
              Left = 17
              Top = 33
              Width = 503
              Height = 200
              PopupMenu = PopupMenu1
              TabOrder = 1
              object cxGrid2DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = ds_client_sippulse
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid2DBTableView1cls_account_sippulse: TcxGridDBColumn
                  Caption = 'C'#243'd. Sippulse'
                  DataBinding.FieldName = 'cls_account_sippulse'
                  Width = 300
                end
                object cxGrid2DBTableView1cls_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Registro'
                  DataBinding.FieldName = 'cls_dt_registration'
                  Width = 180
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object cxEditCodsippulse: TcxTextEdit
              Left = 87
              Top = -32
              Style.HotTrack = False
              TabOrder = 0
              OnKeyDown = cxEditCodsippulseKeyDown
              Width = 433
            end
            object cxEditCodastpp: TcxTextEdit
              Left = 87
              Top = 277
              Style.HotTrack = False
              TabOrder = 2
              OnKeyDown = cxEditCodastppKeyDown
              Width = 433
            end
            object cxGrid3: TcxGrid
              Left = 17
              Top = 342
              Width = 503
              Height = 200
              TabOrder = 3
              object cxGrid3DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = ds_client_astpp
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid3DBTableView1cla_account_astpp: TcxGridDBColumn
                  Caption = 'C'#243'd. Astpp'
                  DataBinding.FieldName = 'cla_account_astpp'
                  Width = 300
                end
                object cxGrid3DBTableView1cla_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Registro'
                  DataBinding.FieldName = 'cla_dt_registration'
                  Width = 180
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBTableView1
              end
            end
            object dxLayoutControl4Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup11: TdxLayoutGroup
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'Par'#226'metros Sippulse'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutGroup13: TdxLayoutGroup
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'C'#243'd. Sippulse'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 517
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem41: TdxLayoutItem
              Parent = dxLayoutGroup13
              Control = cxGrid2
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem42: TdxLayoutItem
              Parent = dxLayoutGroup11
              CaptionOptions.Text = 'C'#243'd. Sippulse'
              Control = cxEditCodsippulse
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup14: TdxLayoutGroup
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'Par'#226'metro Astpp'
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem44: TdxLayoutItem
              Parent = dxLayoutGroup14
              CaptionOptions.Text = 'C'#243'd. Astpp'
              Control = cxEditCodastpp
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup15: TdxLayoutGroup
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'New Group'
              ButtonOptions.Buttons = <>
              Index = 3
            end
            object dxLayoutItem46: TdxLayoutItem
              Parent = dxLayoutGroup15
              Control = cxGrid3
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object tabLaboratorio: TcxTabSheet
          Caption = 'Laborat'#243'rio'
          OnShow = tabLaboratorioShow
          object dxLayoutControl5: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 17
              Top = 38
              Width = 724
              Height = 200
              TabOrder = 0
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 7
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 8
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.Visible = True
                DataController.DataSource = ds_client_insirance
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1cin_id: TcxGridDBColumn
                  Caption = 'C'#243'digo ID'
                  DataBinding.FieldName = 'cin_id'
                  Width = 70
                end
                object cxGrid1DBTableView1ins_first_name: TcxGridDBColumn
                  Caption = 'Conv'#234'nio'
                  DataBinding.FieldName = 'ins_first_name'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.GridMode = True
                  Properties.KeyFieldNames = 'ins_first_name'
                  Properties.ListColumns = <
                    item
                      FieldName = 'ins_first_name'
                    end>
                  Properties.ListSource = ds_insurance
                  Properties.OnCloseUp = cxGrid1DBTableView1ins_first_namePropertiesCloseUp
                  Width = 280
                end
                object cxGrid1DBTableView1cin_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'cin_dt_registration'
                  Width = 110
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dxLayoutControl5Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup12: TdxLayoutGroup
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.Text = 'Conv'#234'nios'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 738
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem43: TdxLayoutItem
              Parent = dxLayoutGroup12
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarManager_1Bar6: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
    end
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\cadastro\basico\cliente'
    end
    object dxBarButton5: TdxBarButton
      Action = Action_consult_cpf
      Category = 0
    end
  end
  inherited ActionList_1: TActionList
    object Action_consult_cpf: TAction
      Caption = 'CPF'
      Hint = 'Consular CPF'
      OnExecute = Action_consult_cpfExecute
    end
    object Action_consult_cnpj: TAction
      Caption = 'CNPJ'
      Hint = 'Consultar CNPJ'
      OnExecute = Action_consult_cnpjExecute
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
      
        'select client.*,concat('#39'0x'#39',hex(cli_cod))as CodClient, hex(cli_c' +
        'od)as ClientCod from client'#13#10#10
      ''
      'where contract_ctr_cod =:ctr_cod and cli_deleted_at is null')
    Left = 576
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryClientCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ClientCod'
      Origin = 'ClientCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryCodClient: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodClient'
      Origin = 'CodClient'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object qrycli_cod: TBytesField
      FieldName = 'cli_cod'
      Origin = 'cli_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycli_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object qrycli_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'cli_type'
      Origin = 'cli_type'
      FixedChar = True
      Size = 2
    end
    object qrycli_first_name: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 75
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 75
    end
    object qrycli_last_name: TStringField
      DisplayLabel = 'Sobrenome'
      DisplayWidth = 75
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      Size = 75
    end
    object qrycli_email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Size = 65
    end
    object qrycli_cpfcnpj: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cli_cpfcnpj'
      Origin = 'cli_cpfcnpj'
      Size = 25
    end
    object qrycli_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_im'
      Origin = 'cli_im'
      Size = 25
    end
    object qrycli_rgie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG/IE'
      FieldName = 'cli_rgie'
      Origin = 'cli_rgie'
      Size = 25
    end
    object qrycli_suframa: TStringField
      DisplayLabel = 'Suframa'
      FieldName = 'cli_suframa'
      Origin = 'cli_suframa'
      Size = 25
    end
    object qrycli_add_bus_zipcode: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cli_add_bus_zipcode'
      Size = 9
    end
    object qrycli_add_bus_address: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'cli_add_bus_address'
      Size = 50
    end
    object qrycli_add_bus_number: TStringField
      DisplayLabel = 'N'#250'm.'
      FieldName = 'cli_add_bus_number'
      Size = 5
    end
    object qrycli_add_bus_street: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'cli_add_bus_street'
      Size = 45
    end
    object qrycli_add_bus_complement: TStringField
      DisplayLabel = 'Compl.'
      FieldName = 'cli_add_bus_complement'
      Size = 50
    end
    object qrycli_add_bus_city: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cli_add_bus_city'
      Size = 35
    end
    object qrycli_add_bus_state: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'cli_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qrycli_add_bus_country: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'cli_add_bus_country'
      Size = 25
    end
    object qrycli_add_bil_zipcode: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cli_add_bil_zipcode'
      Size = 9
    end
    object qrycli_add_bil_address: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'cli_add_bil_address'
      Size = 50
    end
    object qrycli_add_bil_number: TStringField
      DisplayLabel = 'N'#250'm.'
      FieldName = 'cli_add_bil_number'
      Size = 5
    end
    object qrycli_add_bil_street: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'cli_add_bil_street'
      Size = 45
    end
    object qrycli_add_bil_complement: TStringField
      DisplayLabel = 'Compl.'
      FieldName = 'cli_add_bil_complement'
      Size = 50
    end
    object qrycli_add_bil_city: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cli_add_bil_city'
      Size = 35
    end
    object qrycli_add_bil_state: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'cli_add_bil_state'
      FixedChar = True
      Size = 3
    end
    object qrycli_add_bil_country: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'cli_add_bil_country'
      Size = 25
    end
    object qrycli_add_del_zipcode: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cli_add_del_zipcode'
      Size = 9
    end
    object qrycli_add_del_address: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'cli_add_del_address'
      Size = 50
    end
    object qrycli_add_del_number: TStringField
      DisplayLabel = 'N'#250'm.'
      FieldName = 'cli_add_del_number'
      Size = 5
    end
    object qrycli_add_del_street: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'cli_add_del_street'
      Size = 45
    end
    object qrycli_add_del_complement: TStringField
      DisplayLabel = 'Compl.'
      FieldName = 'cli_add_del_complement'
      Size = 50
    end
    object qrycli_add_del_city: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cli_add_del_city'
      Size = 35
    end
    object qrycli_add_del_state: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'cli_add_del_state'
      FixedChar = True
      Size = 3
    end
    object qrycli_add_del_country: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'cli_add_del_country'
      Size = 25
    end
    object qrycli_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'cli_phone1'
      Origin = 'cli_phone1'
      Size = 15
    end
    object qrycli_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'cli_phone2'
      Origin = 'cli_phone2'
      Size = 15
    end
    object qrycli_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Te. 3'
      FieldName = 'cli_phone3'
      Origin = 'cli_phone3'
      Size = 15
    end
    object qrycli_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 4'
      FieldName = 'cli_phone4'
      Origin = 'cli_phone4'
      Size = 15
    end
    object qrycli_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'cli_contact'
      Origin = 'cli_contact'
      Size = 25
    end
    object qrycli_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'cli_dt_birthopen'
      Origin = 'cli_dt_birthopen'
    end
    object qrycli_day_maturity: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia Venc.'
      FieldName = 'cli_day_maturity'
      Origin = 'cli_day_maturity'
    end
    object qrycli_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_status'
      Origin = 'cli_status'
      FixedChar = True
      Size = 1
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrytable_price_tbp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
    end
    object qrycli_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cli_deleted_at'
      Origin = 'cli_deleted_at'
    end
    object qrycli_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cli_dt_registration'
      Origin = 'cli_dt_registration'
    end
    object qrycli_image1: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'cli_image1'
      Origin = 'cli_image1'
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
    Top = 24
  end
  inherited FDSchemaAdapter_1: TFDSchemaAdapter
    Top = 16
  end
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43290.649473935170000000
    Left = 816
    Top = 56
    Datasets = <
      item
        DataSet = frx_db_client
        DataSetName = 'client'
      end
      item
        DataSet = frx_db_client_insirance
        DataSetName = 'client_insirance'
      end
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end>
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 105.826754570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 137.338590000000000000
          Top = 7.779530000000000000
          Width = 7.559060000000000000
          Height = 90.708720000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 148.456710000000000000
          Top = 4.559060000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_last_name"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 148.456710000000000000
          Top = 24.354360000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:       [enterprise."ent_cnpj"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 148.456710000000000000
          Top = 43.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Endere'#231'o: [enterprise."ent_add_bus_address"], n'#186' [enterprise."en' +
              't_add_bus_number"], [enterprise."ent_add_bus_street"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          Left = 148.456710000000000000
          Top = 63.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'CEP:        [enterprise."ent_add_bus_zipcode"] - [enterprise."en' +
              't_add_bus_city"] - [enterprise."ent_add_bus_state"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 148.456710000000000000
          Top = 84.488250000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Fone:       [enterprise."ent_phone1"] / [enterprise."ent_phone2"' +
              '] - E-mail : [enterprise."ent_email"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Picture1: TfrxPictureView
          Left = 11.456710000000000000
          Top = 10.559060000000000000
          Width = 124.724409450000000000
          Height = 86.929131420000000000
          DataField = 'ent_image1'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677165350000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 842.835190000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Left = 10.559060000000000000
          Top = 2.779530000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Endere'#231'o: [enterprise."ent_add_bus_address"], n'#186' [enterprise."en' +
              't_add_bus_number"] - [enterprise."ent_add_bus_street"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          Left = 10.559060000000000000
          Top = 23.236240000000000000
          Width = 695.433520000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CEP: [enterprise."ent_add_bus_zipcode"] - [enterprise."ent_add_b' +
              'us_city"] - [enterprise."ent_add_bus_state"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472462910000000000
        Top = 631.181510000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_client_insirance
        DataSetName = 'client_insirance'
        RowCount = 0
        object Memo33: TfrxMemoView
          Left = 1.889763780000000000
          Top = 37.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 105.826840000000000000
          Top = 37.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conv'#234'nio:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 0.377952760000000000
          Top = 58.677180000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 0.377952755905512000
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 0.377952755905512000
          Top = 11.338590000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Lista dos Conv'#234'nios do Cliente')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 714.331170000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_client_insirance
        DataSetName = 'client_insirance'
        RowCount = 0
        object client_insirancecin_id: TfrxMemoView
          IndexTag = 1
          Left = 1.889763780000000000
          Top = 1.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'cin_id'
          DataSet = frx_db_client_insirance
          DataSetName = 'client_insirance'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client_insirance."cin_id"]')
        end
        object client_insiranceins_first_name: TfrxMemoView
          IndexTag = 1
          Left = 105.826840000000000000
          Top = 1.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ins_first_name'
          DataSet = frx_db_client_insirance
          DataSetName = 'client_insirance'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client_insirance."ins_first_name"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 377.953000000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Top = 172.858380000000000000
          Width = 718.110700000000000000
          Height = 92.598425200000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Top = 198.110390000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
        end
        object Fabricanteman_add_bus_complement: TfrxMemoView
          IndexTag = 1
          Left = 117.165430000000000000
          Top = 198.110390000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_bus_complement'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_bus_complement"]')
        end
        object Memo11: TfrxMemoView
          Left = 375.291590000000000000
          Top = 198.110390000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Fabricanteman_add_bus_street: TfrxMemoView
          IndexTag = 1
          Left = 447.645950000000000000
          Top = 198.110390000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_bus_street'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_bus_street"]')
        end
        object Fabricanteman_add_bus_zipcode: TfrxMemoView
          IndexTag = 1
          Left = 117.165430000000000000
          Top = 221.110390000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_bus_zipcode'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_bus_zipcode"]')
        end
        object Memo12: TfrxMemoView
          Left = 1.889763780000000000
          Top = 221.110390000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Fabricanteman_add_bus_city: TfrxMemoView
          IndexTag = 1
          Left = 344.614410000000000000
          Top = 221.110390000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_bus_city'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_bus_city"]')
        end
        object Memo17: TfrxMemoView
          Left = 268.346630000000000000
          Top = 221.110390000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Fabricanteman_add_bus_state: TfrxMemoView
          IndexTag = 1
          Left = 646.299630000000000000
          Top = 221.110390000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_bus_state'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_bus_state"]')
        end
        object Memo19: TfrxMemoView
          Left = 604.724800000000000000
          Top = 221.110390000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Fabricanteman_add_bus_country: TfrxMemoView
          IndexTag = 1
          Left = 117.165430000000000000
          Top = 244.905690000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_del_country'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_del_country"]')
        end
        object Memo20: TfrxMemoView
          Left = 1.889763780000000000
          Top = 244.905690000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pa'#237's:')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Top = 291.141930000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
        end
        object Memo22: TfrxMemoView
          Left = 0.377952755905512000
          Top = 272.023810000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
        end
        object Fabricanteman_phone1: TfrxMemoView
          IndexTag = 1
          Left = 52.472480000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'cli_phone1'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_phone1"]')
        end
        object Fabricanteman_phone2: TfrxMemoView
          IndexTag = 1
          Left = 232.228510000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'cli_phone2'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_phone2"]')
        end
        object Fabricanteman_phone3: TfrxMemoView
          IndexTag = 1
          Left = 412.086890000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'cli_phone3'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_phone3"]')
        end
        object Fabricanteman_phone4: TfrxMemoView
          IndexTag = 1
          Left = 590.724800000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'cli_phone4'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_phone4"]')
        end
        object Fabricanteman_contact: TfrxMemoView
          IndexTag = 1
          Left = 79.370130000000000000
          Top = 319.275820000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'cli_contact'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_contact"]')
        end
        object Memo23: TfrxMemoView
          Left = 1.889763780000000000
          Top = 296.598640000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel 1:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 185.756030000000000000
          Top = 296.598640000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel 2:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 365.732530000000000000
          Top = 296.598640000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel 3:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 545.031850000000000000
          Top = 296.598640000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel 4:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1.889763780000000000
          Top = 319.275820000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato:')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Top = 25.677180000000000000
          Width = 718.110700000000000000
          Height = 120.944960000000000000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          Left = 0.377952755905512000
          Top = 6.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Cliente')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Top = 29.456710000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Fabricanteman_first_name: TfrxMemoView
          IndexTag = 1
          Left = 105.826840000000000000
          Top = 29.456710000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'cli_first_name'
          DataSet = frx_db_client
          DataSetName = 'client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_first_name"]')
          ParentFont = False
        end
        object Fabricanteman_last_name: TfrxMemoView
          IndexTag = 1
          Left = 449.764070000000000000
          Top = 29.456710000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'cli_last_name'
          DataSet = frx_db_client
          DataSetName = 'client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_last_name"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 342.157700000000000000
          Top = 29.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sobrenome:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 243.110390000000000000
          Top = 54.031540000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Fabricanteman_cnpj: TfrxMemoView
          IndexTag = 1
          Left = 315.480520000000000000
          Top = 54.031540000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'cli_cpfcnpj'
          DataSet = frx_db_client
          DataSetName = 'client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_cpfcnpj"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 473.220780000000000000
          Top = 54.031540000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object Fabricanteman_ie: TfrxMemoView
          IndexTag = 1
          Left = 541.149970000000000000
          Top = 54.031540000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'cli_rgie'
          DataSet = frx_db_client
          DataSetName = 'client'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_rgie"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 1.889763780000000000
          Top = 79.488250000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
        end
        object Fabricanteman_email: TfrxMemoView
          IndexTag = 1
          Left = 105.826840000000000000
          Top = 79.488250000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataField = 'cli_email'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_email"]')
        end
        object Memo29: TfrxMemoView
          Left = 1.889763780000000000
          Top = 54.031540000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nascimento:')
          ParentFont = False
        end
        object Fabricanteman_dt_open: TfrxMemoView
          IndexTag = 1
          Left = 105.826840000000000000
          Top = 54.031540000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'cli_dt_birthopen'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_dt_birthopen"]')
        end
        object Memo30: TfrxMemoView
          Left = 0.377952755905512000
          Top = 153.299320000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Fabricanteman_add_bus_address: TfrxMemoView
          IndexTag = 1
          Left = 117.165430000000000000
          Top = 176.756030000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_del_address'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_del_address"]')
        end
        object Memo31: TfrxMemoView
          Left = 1.889763780000000000
          Top = 176.756030000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Logradouro:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 536.693260000000000000
          Top = 176.756030000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Fabricanteman_add_bus_number: TfrxMemoView
          IndexTag = 1
          Left = 582.047620000000000000
          Top = 176.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'cli_add_bus_number'
          DataSet = frx_db_client
          DataSetName = 'client'
          Frame.Typ = []
          Memo.UTF8W = (
            '[client."cli_add_bus_number"]')
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 797.480830000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 0.377952760000000000
          Top = 1.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  inherited ACBrCEP_1: TACBrCEP
    OnBuscaEfetuada = ACBrCEP_1BuscaEfetuada
    Top = 16
  end
  object qry_insurance: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select ins_cod, concat('#39'0x'#39',hex(ins_cod)) as codInsurance, table' +
        '_price_tbp_cod, ins_id,contract_ctr_cod,ins_first_name from insu' +
        'rance'
      'where contract_ctr_cod = :ctr_cod and ins_deleted_at is null'
      'order by ins_first_name')
    Left = 703
    Top = 90
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_insuranceins_cod: TBytesField
      FieldName = 'ins_cod'
      Origin = 'ins_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_insuranceins_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_first_name'
      Origin = 'ins_first_name'
      Size = 50
    end
    object qry_insuranceins_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ins_id'
      Origin = 'ins_id'
    end
    object qry_insurancecontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_insurancetable_price_tbp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
    end
    object qry_insurancecodInsurance: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codInsurance'
      Origin = 'codInsurance'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
  end
  object qry_client_insirance: TFDQuery
    Active = True
    AfterInsert = qry_client_insiranceAfterInsert
    BeforePost = qry_client_insiranceBeforePost
    CachedUpdates = True
    IndexFieldNames = 'client_cli_cod'
    MasterSource = ds
    MasterFields = 'cli_cod'
    DetailFields = 'client_cli_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select client_insurance.*, ins_first_name, hex(cin_cod) as codCl' +
        'iInsirance,'
      ' hex(client_cli_cod)as ClientCod from client_insurance'#13#10#10
      'left join insurance on insurance_ins_cod = ins_cod'#13#10#10
      'where client_cli_cod =:cli_cod and cin_deleted_at is null')
    Left = 575
    Top = 90
    ParamData = <
      item
        Name = 'CLI_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_client_insirancecodCliInsirance: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codCliInsirance'
      Origin = 'codCliInsirance'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_client_insirancecin_cod: TBytesField
      FieldName = 'cin_cod'
      Origin = 'cin_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_client_insirancecin_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cin_id'
      Origin = 'cin_id'
    end
    object qry_client_insiranceinsurance_ins_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'insurance_ins_cod'
      Origin = 'insurance_ins_cod'
    end
    object qry_client_insiranceins_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_first_name'
      Origin = 'ins_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_client_insiranceclient_cli_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
    end
    object qry_client_insirancecin_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cin_deleted_at'
      Origin = 'cin_deleted_at'
    end
    object qry_client_insirancecin_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cin_dt_registration'
      Origin = 'cin_dt_registration'
    end
    object qry_client_insiranceClientCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ClientCod'
      Origin = 'ClientCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_client_insirance: TDataSource
    DataSet = qry_client_insirance
    Left = 607
    Top = 90
  end
  object ds_insurance: TDataSource
    DataSet = qry_insurance
    Left = 735
    Top = 90
  end
  object qry_client_sippulse: TFDQuery
    Active = True
    IndexFieldNames = 'client_cli_cod'
    MasterSource = ds
    MasterFields = 'cli_cod'
    DetailFields = 'client_cli_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from client_sippulse'
      'where client_cli_cod = :cli_cod')
    Left = 505
    Top = 91
    ParamData = <
      item
        Name = 'CLI_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_client_sippulsecls_cod: TBytesField
      FieldName = 'cls_cod'
      Origin = 'cls_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_client_sippulsecls_account_sippulse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cls_account_sippulse'
      Origin = 'cls_account_sippulse'
      Size = 65
    end
    object qry_client_sippulsecls_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cls_deleted_at'
      Origin = 'cls_deleted_at'
    end
    object qry_client_sippulsecls_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cls_dt_registration'
      Origin = 'cls_dt_registration'
      ReadOnly = True
    end
    object qry_client_sippulseclient_cli_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
    end
  end
  object ds_client_sippulse: TDataSource
    DataSet = qry_client_sippulse
    Left = 535
    Top = 90
  end
  object ds_client_astpp: TDataSource
    DataSet = qry_client_astpp
    Left = 671
    Top = 90
  end
  object qry_client_astpp: TFDQuery
    Active = True
    IndexFieldNames = 'client_cli_cod'
    MasterSource = ds
    MasterFields = 'cli_cod'
    DetailFields = 'client_cli_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from client_astpp'
      'where  client_cli_cod = :cli_cod')
    Left = 641
    Top = 91
    ParamData = <
      item
        Name = 'CLI_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_client_astppcla_cod: TBytesField
      FieldName = 'cla_cod'
      Origin = 'cla_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_client_astppcla_account_astpp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cla_account_astpp'
      Origin = 'cla_account_astpp'
      Size = 65
    end
    object qry_client_astppcla_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cla_deleted_at'
      Origin = 'cla_deleted_at'
    end
    object qry_client_astppcla_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cla_dt_registration'
      Origin = 'cla_dt_registration'
    end
    object qry_client_astppclient_cli_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 759
    Top = 50
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      OnClick = Localizar1Click
    end
  end
  object frx_db_client: TfrxDBDataset
    UserName = 'client'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 864
    Top = 56
  end
  object frx_db_client_insirance: TfrxDBDataset
    UserName = 'client_insirance'
    CloseDataSource = False
    DataSet = qry_client_insirance
    BCDToCurrency = False
    Left = 864
    Top = 104
  end
end
