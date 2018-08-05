inherited frm_enterprise: Tfrm_enterprise
  Caption = 'Manuten'#231#227'o: Empresas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ent_type: TcxGridDBColumn
            DataBinding.FieldName = 'ent_type'
            Width = 35
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
            Width = 200
          end
          object cxGrid_1DBTableView1ent_email: TcxGridDBColumn
            DataBinding.FieldName = 'ent_email'
            Width = 200
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
            Width = 35
          end
          object cxGrid_1DBTableView1ent_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'ent_add_bus_country'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'ent_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_contact: TcxGridDBColumn
            DataBinding.FieldName = 'ent_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1ent_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'ent_dt_open'
            Width = 75
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
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'ent_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              DataBinding.DataField = 'ent_dt_registration'
              ExplicitLeft = 240
            end
            object dbcmb_type: TcxDBComboBox [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'ent_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'M'
                'F')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_im: TcxDBTextEdit [3]
              Left = 422
              Top = 249
              DataBinding.DataField = 'ent_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object dbedt_dt_open: TcxDBDateEdit [4]
              Left = 240
              Top = 103
              DataBinding.DataField = 'ent_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            object dbedt_cnpj: TcxDBTextEdit [5]
              Left = 59
              Top = 249
              DataBinding.DataField = 'ent_cnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object dbedt_ie: TcxDBTextEdit [6]
              Left = 240
              Top = 249
              DataBinding.DataField = 'ent_ie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 130
            end
            object dbedt_suframa: TcxDBTextEdit [7]
              Left = 594
              Top = 249
              DataBinding.DataField = 'ent_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object dbcmb_status: TcxDBComboBox [8]
              Left = 422
              Top = 103
              DataBinding.DataField = 'ent_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A'
                'D')
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dbedt_first_name: TcxDBTextEdit [9]
              Left = 59
              Top = 130
              DataBinding.DataField = 'ent_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 311
            end
            object dbedt_nickname: TcxDBTextEdit [10]
              Left = 59
              Top = 157
              DataBinding.DataField = 'ent_nickname'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 311
            end
            object dbedt_last_name: TcxDBTextEdit [11]
              Left = 422
              Top = 130
              DataBinding.DataField = 'ent_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 293
            end
            object dbedt_email: TcxDBTextEdit [12]
              Left = 59
              Top = 184
              DataBinding.DataField = 'ent_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 311
            end
            object dbimg_image1: TcxDBImage [13]
              Left = 721
              Top = 103
              DataBinding.DataField = 'ent_image1'
              DataBinding.DataSource = ds
              Properties.Caption = 'Logo'
              Style.HotTrack = False
              TabOrder = 9
              Height = 100
              Width = 140
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
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo'
              Control = dbcmb_type
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
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
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'IM'
              Control = dbedt_im
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Abert.'
              Control = dbedt_dt_open
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
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
              AlignVert = avClient
              CaptionOptions.Text = 'CNPJ'
              Control = dbedt_cnpj
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'IE'
              Control = dbedt_ie
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
              Control = dbedt_suframa
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              CaptionOptions.Text = 'Status'
              Control = dbcmb_status
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Raz'#227'o'
              Control = dbedt_first_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Apelido'
              Control = dbedt_nickname
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Fantasia'
              Control = dbedt_last_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 293
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = dbedt_email
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutGroup2
              Control = dbimg_image1
              ControlOptions.OriginalHeight = 100
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup8
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl_address: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_add_bus_city: TcxDBTextEdit
              Left = 373
              Top = 65
              DataBinding.DataField = 'ent_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dbedt_add_bus_state: TcxDBTextEdit
              Left = 538
              Top = 65
              DataBinding.DataField = 'ent_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object dbedt_add_bus_country: TcxDBTextEdit
              Left = 709
              Top = 65
              DataBinding.DataField = 'ent_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dbedt_phone1: TcxDBTextEdit
              Left = 55
              Top = 130
              DataBinding.DataField = 'ent_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object dbedt_phone2: TcxDBTextEdit
              Left = 214
              Top = 130
              DataBinding.DataField = 'ent_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object dbedt_add_bus_zipcode: TcxDBButtonEdit
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
            object dbedt_add_bus_address: TcxDBTextEdit
              Left = 214
              Top = 38
              DataBinding.DataField = 'ent_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 280
            end
            object dbedt_add_bus_number: TcxDBTextEdit
              Left = 538
              Top = 38
              DataBinding.DataField = 'ent_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_add_bus_street: TcxDBTextEdit
              Left = 709
              Top = 38
              DataBinding.DataField = 'ent_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_add_bus_complement: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataField = 'ent_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 274
            end
            object dbedt_phone3: TcxDBTextEdit
              Left = 373
              Top = 130
              DataBinding.DataField = 'ent_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object dbedt_phone4: TcxDBTextEdit
              Left = 538
              Top = 130
              DataBinding.DataField = 'ent_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object dbedt_contact: TcxDBTextEdit
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
              Control = dbedt_add_bus_city
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
              Control = dbedt_add_bus_state
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
              Control = dbedt_add_bus_country
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = dbedt_phone1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = dbedt_phone2
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
              Control = dbedt_add_bus_zipcode
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
              Control = dbedt_add_bus_address
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
              Control = dbedt_add_bus_number
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
              Control = dbedt_add_bus_street
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
              Control = dbedt_add_bus_complement
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 274
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = dbedt_phone3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = dbedt_phone4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = dbedt_contact
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
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\cadastro\basico\empresa'
    end
  end
  inherited qry: TFDQuery [5]
    BeforeOpen = qryBeforeOpen
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'call proc_enterprise_read(:contract_ctr_cod)')
    ParamData = <
      item
        Name = 'CONTRACT_CTR_COD'
        DataType = ftWideString
        ParamType = ptInput
        Value = Null
      end>
    object qrycontract_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato'
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryent_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryent_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'ent_id'
      Origin = 'ent_id'
    end
    object qryent_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'ent_type'
      Origin = 'ent_type'
      FixedChar = True
      Size = 1
    end
    object qryent_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object qryent_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 85
    end
    object qryent_nickname: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Apelido'
      FieldName = 'ent_nickname'
      Origin = 'ent_nickname'
      Size = 85
    end
    object qryent_email: TStringField
      AutoGenerateValue = arDefault
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
      AutoGenerateValue = arDefault
      DisplayLabel = 'IE'
      FieldName = 'ent_ie'
      Origin = 'ent_ie'
      Size = 25
    end
    object qryent_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'ent_im'
      Origin = 'ent_im'
      Size = 25
    end
    object qryent_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'ent_suframa'
      Origin = 'ent_suframa'
      Size = 25
    end
    object qryent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
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
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
    object qryent_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'ent_phone2'
      Origin = 'ent_phone2'
      Size = 15
    end
    object qryent_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'ent_phone3'
      Origin = 'ent_phone3'
      Size = 15
    end
    object qryent_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'ent_phone4'
      Origin = 'ent_phone4'
      Size = 15
    end
    object qryent_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'ent_contact'
      Origin = 'ent_contact'
      Size = 25
    end
    object qryent_dt_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
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
    object qryent_image1: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Logo'
      FieldName = 'ent_image1'
      Origin = 'ent_image1'
    end
    object qryent_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'ent_deleted_at'
      Origin = 'ent_deleted_at'
    end
    object qryent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
    end
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
  inherited schadapter: TFDSchemaAdapter [9]
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [10]
  end
  inherited PopupMenu_1: TPopupMenu [11]
  end
  inherited cxImageList_1: TcxImageList [12]
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [13]
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog [14]
    Left = 735
    Top = 74
  end
  object PopupMenu1: TPopupMenu [15]
    Images = cxImageList_1
    Left = 799
    Top = 74
    object Inserir2: TMenuItem
      Caption = 'Inserir'
      ImageIndex = 4
    end
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      ImageIndex = 8
    end
  end
  object OpenDialogLogo: TOpenDialog [16]
    FileName = '*.png;*.jpg'
    Left = 767
    Top = 74
  end
  object frx_db_empresa: TfrxDBDataset [17]
    UserName = 'Empresa'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 671
    Top = 74
  end
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43290.579703252310000000
    Datasets = <
      item
        DataSet = frx_db_empresa
        DataSetName = 'Empresa'
      end
      item
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
          AllowVectorExport = True
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 4.559060000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 24.354360000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 43.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 63.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 148.456710000000000000
          Top = 84.488250000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 11.456710000000000000
          Top = 10.559060000000000000
          Width = 124.724409450000000000
          Height = 86.929131420000000000
          DataField = 'ent_image1'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677165354330700000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 642.520100000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 389.291590000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 172.858380000000000000
          Width = 718.110700000000000000
          Height = 92.598425200000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
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
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 198.110390000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_complement'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_complement"]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
          Left = 447.645950000000000000
          Top = 198.110390000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_street'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_street"]')
        end
        object Fabricanteman_add_bus_zipcode: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 221.110390000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_zipcode'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_zipcode"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
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
          AllowVectorExport = True
          Left = 344.614410000000000000
          Top = 221.110390000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_city'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_city"]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 221.110390000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_state'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_state"]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
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
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 244.905690000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_country'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_country"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
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
          AllowVectorExport = True
          Top = 291.141930000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
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
          AllowVectorExport = True
          Left = 52.472480000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ent_phone1'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_phone1"]')
        end
        object Fabricanteman_phone2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 232.228510000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ent_phone2'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_phone2"]')
        end
        object Fabricanteman_phone3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 412.086890000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ent_phone3'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_phone3"]')
        end
        object Fabricanteman_phone4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 590.724800000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ent_phone4'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_phone4"]')
        end
        object Fabricanteman_contact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 319.275820000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'ent_contact'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_contact"]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
          Left = 5.779530000000000000
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
          AllowVectorExport = True
          Top = 25.677180000000000000
          Width = 718.110700000000000000
          Height = 120.944960000000000000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
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
            'Dados da Empresa')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 29.456710000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social:')
          ParentFont = False
        end
        object Fabricanteman_first_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 29.456710000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ent_first_name'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_first_name"]')
          ParentFont = False
        end
        object Fabricanteman_last_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 52.913420000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_last_name"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 52.913420000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Fantasia:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 76.929190000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Fabricanteman_cnpj: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 76.929190000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'ent_cnpj'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_cnpj"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 325.819110000000000000
          Top = 76.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IE:')
          ParentFont = False
        end
        object Fabricanteman_ie: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 403.086890000000000000
          Top = 76.929190000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'ent_ie'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_ie"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 100.047310000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IM:')
          ParentFont = False
        end
        object Fabricanteman_im: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 100.047310000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'ent_im'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_im"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 325.819110000000000000
          Top = 100.047310000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Suframa:')
          ParentFont = False
        end
        object Fabricanteman_suframa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 403.086890000000000000
          Top = 100.047310000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'ent_suframa'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_suframa"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 123.283550000000000000
          Width = 98.267780000000000000
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
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 123.283550000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataField = 'ent_email'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_email"]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 485.338900000000000000
          Top = 123.283550000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Abertura:')
          ParentFont = False
        end
        object Fabricanteman_dt_open: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 599.504330000000000000
          Top = 123.283550000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'ent_dt_open'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_dt_open"]')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
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
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 176.756030000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_address'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_address"]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
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
          AllowVectorExport = True
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
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 176.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'ent_add_bus_number'
          DataSet = frx_db_empresa
          DataSetName = 'Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa."ent_add_bus_number"]')
        end
      end
    end
  end
  object acbr_cep: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    PesquisarIBGE = True
    Left = 703
    Top = 74
  end
end
