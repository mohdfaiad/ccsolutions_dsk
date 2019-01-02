inherited frm_manufacturer: Tfrm_manufacturer
  Caption = 'Manuten'#231#227'o: Fabricantes'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
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
              Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
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
  inherited dxBarManager_1: TdxBarManager
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\fabricante'
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
      
        'select manufacturer.*, hex(man_cod)as CodManufacturer from manuf' +
        'acturer'
      'where contract_ctr_cod =:ctr_cod and man_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryman_cod: TBytesField
      FieldName = 'man_cod'
      Origin = 'man_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryman_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'man_id'
      Origin = 'man_id'
    end
    object qryman_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_status'
      Origin = 'man_status'
      FixedChar = True
      Size = 1
    end
    object qryCodManufacturer: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodManufacturer'
      Origin = 'CodManufacturer'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryman_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'man_first_name'
      Origin = 'man_first_name'
      Required = True
      Size = 50
    end
    object qryman_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'man_last_name'
      Origin = 'man_last_name'
      Required = True
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
    object qryman_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'man_im'
      Origin = 'man_im'
      Size = 25
    end
    object qryman_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_ie'
      Origin = 'man_ie'
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
    object qryman_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'man_deleted_at'
      Origin = 'man_deleted_at'
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
  inherited frxReport_1: TfrxReport
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43286.746634363420000000
    Left = 792
    Top = 16
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frxDBD_Fabriante
        DataSetName = 'Fabricante'
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 612.283860000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
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
        object Memo32: TfrxMemoView
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 105.826754570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 137.338590000000000000
          Top = 5.779530000000000000
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
        object Memo26: TfrxMemoView
          Left = 148.456710000000000000
          Top = 2.559060000000000000
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
        object Memo27: TfrxMemoView
          Left = 148.456710000000000000
          Top = 22.354360000000000000
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
        object Memo28: TfrxMemoView
          Left = 148.456710000000000000
          Top = 41.811070000000000000
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
        object Memo29: TfrxMemoView
          Left = 148.456710000000000000
          Top = 61.811070000000000000
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
        object Memo33: TfrxMemoView
          Left = 148.456710000000000000
          Top = 82.488250000000000000
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
          Top = 8.559060000000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 359.055350000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 5.779530000000000000
          Top = 202.669450000000000000
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
          Top = 202.669450000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_complement'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_complement"]')
        end
        object Memo14: TfrxMemoView
          Left = 375.291590000000000000
          Top = 202.669450000000000000
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
          Top = 202.669450000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_street'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_street"]')
        end
        object Fabricanteman_add_bus_zipcode: TfrxMemoView
          IndexTag = 1
          Left = 117.165430000000000000
          Top = 225.669450000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_zipcode'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_zipcode"]')
        end
        object Memo15: TfrxMemoView
          Left = 5.779530000000000000
          Top = 225.669450000000000000
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
          Top = 225.669450000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_city'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_city"]')
        end
        object Memo16: TfrxMemoView
          Left = 268.346630000000000000
          Top = 225.669450000000000000
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
          Top = 225.669450000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_state'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_state"]')
        end
        object Memo17: TfrxMemoView
          Left = 604.724800000000000000
          Top = 225.669450000000000000
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
          Top = 249.464750000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_country'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_country"]')
        end
        object Memo18: TfrxMemoView
          Left = 5.779530000000000000
          Top = 249.464750000000000000
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
          Top = 295.700990000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 276.582870000000000000
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
          Top = 301.157700000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'man_phone1'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_phone1"]')
        end
        object Fabricanteman_phone2: TfrxMemoView
          IndexTag = 1
          Left = 232.228510000000000000
          Top = 301.157700000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'man_phone2'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_phone2"]')
        end
        object Fabricanteman_phone3: TfrxMemoView
          IndexTag = 1
          Left = 412.086890000000000000
          Top = 301.157700000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'man_phone3'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_phone3"]')
        end
        object Fabricanteman_phone4: TfrxMemoView
          IndexTag = 1
          Left = 590.724800000000000000
          Top = 301.157700000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'man_phone4'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_phone4"]')
        end
        object Fabricanteman_contact: TfrxMemoView
          IndexTag = 1
          Left = 79.370130000000000000
          Top = 323.834880000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'man_contact'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_contact"]')
        end
        object Memo20: TfrxMemoView
          Left = 5.779530000000000000
          Top = 301.157700000000000000
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
        object Memo21: TfrxMemoView
          Left = 185.756030000000000000
          Top = 301.157700000000000000
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
        object Memo22: TfrxMemoView
          Left = 365.732530000000000000
          Top = 301.157700000000000000
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
        object Memo23: TfrxMemoView
          Left = 545.031850000000000000
          Top = 301.157700000000000000
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
        object Memo24: TfrxMemoView
          Left = 5.779530000000000000
          Top = 323.834880000000000000
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
          Top = 30.236240000000000000
          Width = 718.110700000000000000
          Height = 120.944960000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Fabricante')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 5.779530000000000000
          Top = 34.015770000000000000
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
          Left = 117.165430000000000000
          Top = 34.015770000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'man_first_name'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_first_name"]')
          ParentFont = False
        end
        object Fabricanteman_last_name: TfrxMemoView
          IndexTag = 1
          Left = 117.165430000000000000
          Top = 57.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'man_last_name'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_last_name"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 5.779530000000000000
          Top = 57.472480000000000000
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
          Left = 5.779530000000000000
          Top = 81.488250000000000000
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
          Left = 117.165430000000000000
          Top = 81.488250000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'man_cnpj'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_cnpj"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 325.819110000000000000
          Top = 81.488250000000000000
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
          Left = 403.086890000000000000
          Top = 81.488250000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'man_ie'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_ie"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 5.779530000000000000
          Top = 104.606370000000000000
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
          Left = 117.165430000000000000
          Top = 104.606370000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'man_im'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_im"]')
        end
        object Memo7: TfrxMemoView
          Left = 325.819110000000000000
          Top = 104.606370000000000000
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
          Left = 403.086890000000000000
          Top = 104.606370000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'man_suframa'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_suframa"]')
        end
        object Memo8: TfrxMemoView
          Left = 5.779530000000000000
          Top = 127.842610000000000000
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
          Left = 117.165430000000000000
          Top = 127.842610000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataField = 'man_email'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_email"]')
        end
        object Memo9: TfrxMemoView
          Left = 485.338900000000000000
          Top = 127.842610000000000000
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
          Left = 599.504330000000000000
          Top = 127.842610000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'man_dt_open'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_dt_open"]')
        end
        object Shape2: TfrxShapeView
          Top = 177.417440000000000000
          Width = 718.110700000000000000
          Height = 92.598425200000000000
          Frame.Typ = []
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 157.858380000000000000
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
          Top = 181.315090000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_address'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_address"]')
        end
        object Memo11: TfrxMemoView
          Left = 5.779530000000000000
          Top = 181.315090000000000000
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
        object Memo12: TfrxMemoView
          Left = 536.693260000000000000
          Top = 181.315090000000000000
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
          Top = 181.315090000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'man_add_bus_number'
          DataSet = frxDBD_Fabriante
          DataSetName = 'Fabricante'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fabricante."man_add_bus_number"]')
        end
      end
    end
  end
  inherited ACBrCEP_1: TACBrCEP
    OnBuscaEfetuada = ACBrCEP_1BuscaEfetuada
  end
  object frxDBD_Fabriante: TfrxDBDataset
    UserName = 'Fabricante'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 832
    Top = 16
  end
end
