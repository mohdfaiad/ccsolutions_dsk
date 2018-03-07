inherited frm_enterprise: Tfrm_enterprise
  Caption = 'Manuten'#231#227'o: Empresas'
  OnClose = FormClose
  ExplicitTop = -28
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
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
          object cxGrid_1DBTableView1ent_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ent_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 63
              DataBinding.DataField = 'ent_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 244
              DataBinding.DataField = 'ent_dt_registration'
              ExplicitLeft = 244
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
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [3]
              Left = 244
              Top = 103
              DataBinding.DataField = 'ent_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [4]
              Left = 244
              Top = 249
              DataBinding.DataField = 'ent_ie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [5]
              Left = 63
              Top = 249
              DataBinding.DataField = 'ent_cnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit [6]
              Left = 388
              Top = 249
              DataBinding.DataField = 'ent_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit [7]
              Left = 560
              Top = 249
              DataBinding.DataField = 'ent_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [8]
              Left = 63
              Top = 130
              DataBinding.DataField = 'ent_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 302
            end
            object cxDBTextEdit3: TcxDBTextEdit [9]
              Left = 63
              Top = 157
              DataBinding.DataField = 'ent_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 302
            end
            object cxDBTextEdit4: TcxDBTextEdit [10]
              Left = 63
              Top = 184
              DataBinding.DataField = 'ent_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 302
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Documentos'
              ButtonOptions.Buttons = <>
              ItemIndex = 3
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Abert.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'IE'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
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
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Suframa'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 302
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Fantasia'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 302
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'os'
          object dxLayoutControl_address: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBButtonEdit2: TcxDBButtonEdit
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
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 537
              Top = 65
              DataBinding.DataField = 'ent_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit29: TcxDBTextEdit
              Left = 55
              Top = 92
              DataBinding.DataField = 'ent_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 603
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataField = 'ent_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 286
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 377
              Top = 65
              DataBinding.DataField = 'ent_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit26: TcxDBTextEdit
              Left = 220
              Top = 119
              DataBinding.DataField = 'ent_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit27: TcxDBTextEdit
              Left = 377
              Top = 119
              DataBinding.DataField = 'ent_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 55
              Top = 119
              DataBinding.DataField = 'ent_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
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
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl_addressGroup_Root
              CaptionOptions.Text = 'Comercial'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 0
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit23
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit29
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 603
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit21
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 286
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit22
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = cxDBTextEdit26
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit27
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit25
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet_contact: TcxTabSheet
          Caption = 'Contatos'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 220
              Top = 38
              DataBinding.DataField = 'ent_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'ent_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 529
              Top = 38
              DataBinding.DataField = 'ent_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 379
              Top = 38
              DataBinding.DataField = 'ent_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'ent_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup8: TdxLayoutGroup
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = cxDBTextEdit15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit16
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
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise')
    object qryent_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'ent_id'
      Origin = 'ent_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
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
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 50
    end
    object qryent_last_name: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 50
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
    object qryent_dt_open: TDateField
      DisplayLabel = 'Dt. Abert.'
      FieldName = 'ent_dt_open'
      Origin = 'ent_dt_open'
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
    object qryent_phone4: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'ent_phone4'
      Origin = 'ent_phone4'
      Size = 15
    end
    object qryent_phone3: TStringField
      DisplayLabel = 'Tel. 3'
      FieldName = 'ent_phone3'
      Origin = 'ent_phone3'
      Size = 15
    end
    object qryent_phone2: TStringField
      DisplayLabel = 'Tel. 2'
      FieldName = 'ent_phone2'
      Origin = 'ent_phone2'
      Size = 15
    end
    object qryent_phone1: TStringField
      DisplayLabel = 'Tel. 1'
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
    object qryent_contact: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'ent_contact'
      Origin = 'ent_contact'
      Size = 25
    end
    object qryent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
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
end
