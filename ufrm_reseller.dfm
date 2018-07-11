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
      ExplicitHeight = 512
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1res_id: TcxGridDBColumn
            DataBinding.FieldName = 'res_id'
            Width = 75
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
            Width = 150
          end
          object cxGrid_1DBTableView1res_cpfcnpj: TcxGridDBColumn
            DataBinding.FieldName = 'res_cpfcnpj'
          end
          object cxGrid_1DBTableView1res_rgie: TcxGridDBColumn
            DataBinding.FieldName = 'res_rgie'
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
            Width = 100
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
          object cxGrid_1DBTableView1res_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'res_dt_open'
            Width = 100
          end
          object cxGrid_1DBTableView1res_status: TcxGridDBColumn
            DataBinding.FieldName = 'res_status'
          end
          object cxGrid_1DBTableView1res_deleted_at: TcxGridDBColumn
            DataBinding.FieldName = 'res_deleted_at'
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
      ExplicitHeight = 512
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
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
            object cxDBTextEdit4: TcxDBTextEdit [2]
              Left = 70
              Top = 222
              DataBinding.DataField = 'res_cpfcnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [3]
              Left = 243
              Top = 222
              DataBinding.DataField = 'res_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 130
            end
            object cxDBTextEdit6: TcxDBTextEdit [4]
              Left = 429
              Top = 222
              DataBinding.DataField = 'res_rgie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit [5]
              Left = 601
              Top = 222
              DataBinding.DataField = 'res_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [6]
              Left = 70
              Top = 103
              DataBinding.DataField = 'res_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            object cxDBTextEdit3: TcxDBTextEdit [7]
              Left = 70
              Top = 157
              DataBinding.DataField = 'res_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object cxDBTextEdit2: TcxDBTextEdit [8]
              Left = 70
              Top = 130
              DataBinding.DataField = 'res_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object cxDBDateEdit1: TcxDBDateEdit [9]
              Left = 429
              Top = 157
              DataBinding.DataField = 'res_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
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
              Control = cxDBTextEdit4
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
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'IRG/E'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Suframa'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit1
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
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
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
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Aber.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
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
          Caption = 'Endere'#231'o e Contato'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_add_bus_country: TcxDBTextEdit
              Left = 545
              Top = 65
              DataBinding.DataField = 'res_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dbedt_add_bus_number: TcxDBTextEdit
              Left = 385
              Top = 38
              DataBinding.DataField = 'res_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_add_bus_street: TcxDBTextEdit
              Left = 545
              Top = 38
              DataBinding.DataField = 'res_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_add_bus_zipcode: TcxDBButtonEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'res_add_bus_zipcode'
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
            object dbedt_add_bus_city: TcxDBTextEdit
              Left = 226
              Top = 65
              DataBinding.DataField = 'res_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dbedt_add_bus_state: TcxDBTextEdit
              Left = 385
              Top = 65
              DataBinding.DataField = 'res_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 61
              Top = 130
              DataBinding.DataField = 'res_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object dbedt_add_bus_address: TcxDBTextEdit
              Left = 226
              Top = 38
              DataBinding.DataField = 'res_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dbedt_add_bus_complement: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'res_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 61
              Top = 157
              DataBinding.DataField = 'res_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 226
              Top = 130
              DataBinding.DataField = 'res_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 385
              Top = 130
              DataBinding.DataField = 'res_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 545
              Top = 130
              DataBinding.DataField = 'res_phone4'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
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
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
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
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
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
              Index = 1
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avBottom
              CaptionOptions.Text = 'Bairro'
              Control = dbedt_add_bus_street
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem11: TdxLayoutItem
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
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = dbedt_add_bus_address
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = dbedt_add_bus_complement
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit20
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit18
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = cxDBTextEdit19
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from reseller')
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryres_cod: TBytesField
      FieldName = 'res_cod'
      Origin = 'res_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryres_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'res_id'
      Origin = 'res_id'
    end
    object qryres_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'res_first_name'
      Origin = 'res_first_name'
      OnGetText = qryres_first_nameGetText
      Size = 75
    end
    object qryres_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'res_last_name'
      Origin = 'res_last_name'
      Size = 75
    end
    object qryres_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'res_email'
      Origin = 'res_email'
      Size = 65
    end
    object qryres_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'res_cpfcnpj'
      Origin = 'res_cpfcnpj'
      Size = 25
    end
    object qryres_rgie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'res_rgie'
      Origin = 'res_rgie'
      Size = 25
    end
    object qryres_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'res_im'
      Origin = 'res_im'
      Size = 25
    end
    object qryres_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'res_suframa'
      Origin = 'res_suframa'
      Size = 25
    end
    object qryres_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'res_add_bus_zipcode'
      Origin = 'res_add_bus_zipcode'
      Size = 9
    end
    object qryres_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'res_add_bus_address'
      Origin = 'res_add_bus_address'
      Size = 50
    end
    object qryres_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'res_add_bus_number'
      Origin = 'res_add_bus_number'
      Size = 5
    end
    object qryres_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'res_add_bus_street'
      Origin = 'res_add_bus_street'
      Size = 45
    end
    object qryres_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'res_add_bus_complement'
      Origin = 'res_add_bus_complement'
      Size = 50
    end
    object qryres_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'res_add_bus_city'
      Origin = 'res_add_bus_city'
      Size = 35
    end
    object qryres_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'res_add_bus_state'
      Origin = 'res_add_bus_state'
      Size = 3
    end
    object qryres_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'res_add_bus_country'
      Origin = 'res_add_bus_country'
      Size = 25
    end
    object qryres_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'res_phone1'
      Origin = 'res_phone1'
      Size = 15
    end
    object qryres_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'res_phone2'
      Origin = 'res_phone2'
      Size = 15
    end
    object qryres_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'res_phone3'
      Origin = 'res_phone3'
      Size = 15
    end
    object qryres_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'res_phone4'
      Origin = 'res_phone4'
      Size = 15
    end
    object qryres_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'res_contact'
      Origin = 'res_contact'
      Size = 25
    end
    object qryres_dt_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'res_dt_open'
      Origin = 'res_dt_open'
    end
    object qryres_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'res_status'
      Origin = 'res_status'
      FixedChar = True
      Size = 1
    end
    object qryres_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'res_deleted_at'
      Origin = 'res_deleted_at'
    end
    object qryres_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'res_dt_registration'
      Origin = 'res_dt_registration'
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
  end
  inherited ACBrCEP_1: TACBrCEP
    OnBuscaEfetuada = ACBrCEP_1BuscaEfetuada
  end
end
