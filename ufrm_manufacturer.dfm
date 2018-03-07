inherited frm_manufacturer: Tfrm_manufacturer
  Caption = 'Manuten'#231#227'o: Fabricantes'
  OnClose = FormClose
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
          object cxGrid_1DBTableView1man_id: TcxGridDBColumn
            DataBinding.FieldName = 'man_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1man_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'man_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1man_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'man_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1man_email: TcxGridDBColumn
            DataBinding.FieldName = 'man_email'
            Width = 200
          end
          object cxGrid_1DBTableView1man_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'man_cnpj'
            Width = 100
          end
          object cxGrid_1DBTableView1man_ie: TcxGridDBColumn
            DataBinding.FieldName = 'man_ie'
            Width = 100
          end
          object cxGrid_1DBTableView1man_im: TcxGridDBColumn
            DataBinding.FieldName = 'man_im'
            Width = 100
          end
          object cxGrid_1DBTableView1man_suframa: TcxGridDBColumn
            DataBinding.FieldName = 'man_suframa'
            Width = 100
          end
          object cxGrid_1DBTableView1man_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'man_dt_open'
            Width = 100
          end
          object cxGrid_1DBTableView1man_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1man_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_address'
            Width = 200
          end
          object cxGrid_1DBTableView1man_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_number'
            Width = 50
          end
          object cxGrid_1DBTableView1man_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_street'
            Width = 150
          end
          object cxGrid_1DBTableView1man_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_complement'
            Width = 200
          end
          object cxGrid_1DBTableView1man_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_city'
            Width = 150
          end
          object cxGrid_1DBTableView1man_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_state'
            Width = 50
          end
          object cxGrid_1DBTableView1man_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'man_add_bus_country'
            Width = 150
          end
          object cxGrid_1DBTableView1man_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'man_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1man_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'man_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1man_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'man_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1man_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'man_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1man_contact: TcxGridDBColumn
            DataBinding.FieldName = 'man_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1man_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'man_dt_registration'
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
              DataBinding.DataField = 'man_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 236
              DataBinding.DataField = 'man_dt_registration'
              ExplicitLeft = 236
            end
            object cxDBTextEdit4: TcxDBTextEdit [2]
              Left = 63
              Top = 222
              DataBinding.DataField = 'man_cnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [3]
              Left = 236
              Top = 222
              DataBinding.DataField = 'man_ie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit [4]
              Left = 417
              Top = 222
              DataBinding.DataField = 'man_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit [5]
              Left = 589
              Top = 222
              DataBinding.DataField = 'man_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [6]
              Left = 63
              Top = 157
              DataBinding.DataField = 'man_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 294
            end
            object cxDBTextEdit2: TcxDBTextEdit [7]
              Left = 63
              Top = 130
              DataBinding.DataField = 'man_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 294
            end
            object cxDBTextEdit1: TcxDBTextEdit [8]
              Left = 63
              Top = 103
              DataBinding.DataField = 'man_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 294
            end
            object cxDBDateEdit1: TcxDBDateEdit [9]
              Left = 417
              Top = 157
              DataBinding.DataField = 'man_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
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
              ItemIndex = 3
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CNPJ'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
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
            object dxLayoutItem8: TdxLayoutItem
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
            object dxLayoutItem9: TdxLayoutItem
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
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Fantasia'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 294
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
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
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Endere'#231'o'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 55
              Top = 38
              DataBinding.DataField = 'man_add_bus_zipcode'
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
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 357
              Top = 65
              DataBinding.DataField = 'man_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 517
              Top = 65
              DataBinding.DataField = 'man_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 55
              Top = 119
              DataBinding.DataField = 'man_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataField = 'man_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 266
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 55
              Top = 92
              DataBinding.DataField = 'man_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 423
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 357
              Top = 119
              DataBinding.DataField = 'man_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 200
              Top = 119
              DataBinding.DataField = 'man_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
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
              ItemIndex = 1
              Index = 0
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 266
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 423
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avClient
              CaptionOptions.Text = 'UF'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Contato'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'man_phone1'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'man_contact'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 220
              Top = 38
              DataBinding.DataField = 'man_phone2'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 379
              Top = 38
              DataBinding.DataField = 'man_phone3'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 538
              Top = 38
              DataBinding.DataField = 'man_phone4'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
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
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit19
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 4'
              Control = cxDBTextEdit18
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
      'select * from manufacturer')
    object qryman_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'man_id'
      Origin = 'man_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryman_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'man_first_name'
      Origin = 'man_first_name'
      Size = 50
    end
    object qryman_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'man_last_name'
      Origin = 'man_last_name'
      Size = 50
    end
    object qryman_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'man_email'
      Origin = 'man_email'
      Size = 65
    end
    object qryman_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'man_cnpj'
      Origin = 'man_cnpj'
      Size = 25
    end
    object qryman_ie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IE'
      FieldName = 'man_ie'
      Origin = 'man_ie'
      Size = 25
    end
    object qryman_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'man_im'
      Origin = 'man_im'
      Size = 25
    end
    object qryman_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'man_suframa'
      Origin = 'man_suframa'
      Size = 25
    end
    object qryman_dt_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Abert.'
      FieldName = 'man_dt_open'
      Origin = 'man_dt_open'
    end
    object qryman_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'man_add_bus_zipcode'
      Origin = 'man_add_bus_zipcode'
      Size = 9
    end
    object qryman_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'man_add_bus_address'
      Origin = 'man_add_bus_address'
      Size = 50
    end
    object qryman_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'man_add_bus_number'
      Origin = 'man_add_bus_number'
      Size = 5
    end
    object qryman_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'man_add_bus_street'
      Origin = 'man_add_bus_street'
      Size = 45
    end
    object qryman_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'man_add_bus_complement'
      Origin = 'man_add_bus_complement'
      Size = 50
    end
    object qryman_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'man_add_bus_city'
      Origin = 'man_add_bus_city'
      Size = 35
    end
    object qryman_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'man_add_bus_state'
      Origin = 'man_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qryman_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'man_add_bus_country'
      Origin = 'man_add_bus_country'
      Size = 25
    end
    object qryman_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'man_phone1'
      Origin = 'man_phone1'
      Size = 15
    end
    object qryman_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'man_phone2'
      Origin = 'man_phone2'
      Size = 15
    end
    object qryman_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'man_phone3'
      Origin = 'man_phone3'
      Size = 15
    end
    object qryman_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 4'
      FieldName = 'man_phone4'
      Origin = 'man_phone4'
      Size = 15
    end
    object qryman_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'man_contact'
      Origin = 'man_contact'
      Size = 25
    end
    object qryman_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'man_dt_registration'
      Origin = 'man_dt_registration'
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
