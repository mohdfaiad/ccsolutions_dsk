inherited frm_supplier: Tfrm_supplier
  Caption = 'Manuten'#231#227'o: Fornecedores'
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
          object cxGrid_1DBTableView1sup_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'sup_id'
            Width = 75
          end
          object cxGrid_1DBTableView1sup_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'sup_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'sup_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1sup_email: TcxGridDBColumn
            DataBinding.FieldName = 'sup_email'
            Width = 150
          end
          object cxGrid_1DBTableView1sup_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'sup_cnpj'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_ie: TcxGridDBColumn
            DataBinding.FieldName = 'sup_ie'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_im: TcxGridDBColumn
            DataBinding.FieldName = 'sup_im'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_status: TcxGridDBColumn
            DataBinding.FieldName = 'sup_status'
          end
          object cxGrid_1DBTableView1sup_suframa: TcxGridDBColumn
            DataBinding.FieldName = 'sup_suframa'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'sup_dt_open'
            Width = 75
          end
          object cxGrid_1DBTableView1sup_add_bus_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1sup_add_bus_address: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_address'
            Width = 200
          end
          object cxGrid_1DBTableView1sup_add_bus_number: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_number'
            Width = 50
          end
          object cxGrid_1DBTableView1sup_add_bus_street: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_street'
            Width = 150
          end
          object cxGrid_1DBTableView1sup_add_bus_complement: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_complement'
            Width = 200
          end
          object cxGrid_1DBTableView1sup_add_bus_city: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_city'
            Width = 150
          end
          object cxGrid_1DBTableView1sup_add_bus_state: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_state'
            Width = 50
          end
          object cxGrid_1DBTableView1sup_add_bus_country: TcxGridDBColumn
            DataBinding.FieldName = 'sup_add_bus_country'
            Width = 150
          end
          object cxGrid_1DBTableView1sup_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'sup_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'sup_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'sup_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'sup_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_contact: TcxGridDBColumn
            DataBinding.FieldName = 'sup_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1sup_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'sup_dt_registration'
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
              Left = 67
              DataBinding.DataField = 'sup_id'
              ExplicitLeft = 67
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              DataBinding.DataField = 'sup_dt_registration'
              ExplicitLeft = 240
            end
            object cxDBDateEdit1: TcxDBDateEdit [2]
              Left = 67
              Top = 103
              DataBinding.DataField = 'sup_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [3]
              Left = 240
              Top = 249
              DataBinding.DataField = 'sup_ie'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 130
            end
            object cxDBTextEdit4: TcxDBTextEdit [4]
              Left = 67
              Top = 249
              DataBinding.DataField = 'sup_cnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit [5]
              Left = 393
              Top = 249
              DataBinding.DataField = 'sup_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit [6]
              Left = 565
              Top = 249
              DataBinding.DataField = 'sup_suframa'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [7]
              Left = 67
              Top = 130
              DataBinding.DataField = 'sup_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object cxDBTextEdit2: TcxDBTextEdit [8]
              Left = 67
              Top = 157
              DataBinding.DataField = 'sup_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object cxDBTextEdit3: TcxDBTextEdit [9]
              Left = 67
              Top = 184
              DataBinding.DataField = 'sup_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 303
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
              ItemIndex = 3
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dt. Aber.'
              Control = cxDBDateEdit1
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
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'CNPJ'
              Control = cxDBTextEdit4
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
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              CaptionOptions.Text = 'Fantasia'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 61
              Top = 92
              DataBinding.DataField = 'sup_add_bus_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit26: TcxDBTextEdit
              Left = 220
              Top = 92
              DataBinding.DataField = 'sup_add_bus_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit27: TcxDBTextEdit
              Left = 380
              Top = 92
              DataBinding.DataField = 'sup_add_bus_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'sup_add_bus_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBButtonEdit2: TcxDBButtonEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'sup_add_bus_zipcode'
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
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 220
              Top = 65
              DataBinding.DataField = 'sup_add_bus_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 380
              Top = 65
              DataBinding.DataField = 'sup_add_bus_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit29: TcxDBTextEdit
              Left = 545
              Top = 65
              DataBinding.DataField = 'sup_add_bus_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 208
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 61
              Top = 157
              DataBinding.DataField = 'sup_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 61
              Top = 184
              DataBinding.DataField = 'sup_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 220
              Top = 157
              DataBinding.DataField = 'sup_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 380
              Top = 157
              DataBinding.DataField = 'sup_phone3'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 545
              Top = 157
              DataBinding.DataField = 'sup_phone4'
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
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Comercial'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit25
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'UF'
              Control = cxDBTextEdit26
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit27
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit21
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
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
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit23
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahClient
              AlignVert = avBottom
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit29
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 208
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Contatos'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fax'
              Control = cxDBTextEdit11
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
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\cadastro\basico\fornecedor'
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
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
      'select supplier'#10'.*,hex(sup_cod)as CodSupplier from supplier'#10
      'where contract_ctr_cod =:ctr_cod and sup_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qrysup_first_name: TStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 75
      FieldName = 'sup_first_name'
      Origin = 'sup_first_name'
      Size = 75
    end
    object qrysup_last_name: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 75
      FieldName = 'sup_last_name'
      Origin = 'sup_last_name'
      Size = 75
    end
    object qrysup_email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'sup_email'
      Origin = 'sup_email'
      Size = 65
    end
    object qrysup_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'sup_cnpj'
      Origin = 'sup_cnpj'
      Size = 25
    end
    object qrysup_ie: TStringField
      DisplayLabel = 'IE'
      FieldName = 'sup_ie'
      Origin = 'sup_ie'
      Size = 25
    end
    object qrysup_im: TStringField
      DisplayLabel = 'IM'
      FieldName = 'sup_im'
      Origin = 'sup_im'
      Size = 25
    end
    object qrysup_suframa: TStringField
      DisplayLabel = 'Suframa'
      FieldName = 'sup_suframa'
      Origin = 'sup_suframa'
      Size = 25
    end
    object qrysup_dt_open: TDateField
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'sup_dt_open'
      Origin = 'sup_dt_open'
    end
    object qrysup_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'sup_add_bus_zipcode'
      Origin = 'sup_add_bus_zipcode'
      Size = 9
    end
    object qrysup_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'sup_add_bus_address'
      Origin = 'sup_add_bus_address'
      Size = 50
    end
    object qrysup_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'sup_add_bus_number'
      Origin = 'sup_add_bus_number'
      Size = 5
    end
    object qrysup_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'sup_add_bus_street'
      Origin = 'sup_add_bus_street'
      Size = 45
    end
    object qrysup_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'sup_add_bus_complement'
      Origin = 'sup_add_bus_complement'
      Size = 50
    end
    object qrysup_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'sup_add_bus_city'
      Origin = 'sup_add_bus_city'
      Size = 35
    end
    object qrysup_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'sup_add_bus_state'
      Origin = 'sup_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qrysup_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'sup_add_bus_country'
      Origin = 'sup_add_bus_country'
      Size = 25
    end
    object qrysup_phone1: TStringField
      DisplayLabel = 'Tel. 1'
      FieldName = 'sup_phone1'
      Origin = 'sup_phone1'
      Size = 15
    end
    object qrysup_phone2: TStringField
      DisplayLabel = 'Tel. 2'
      FieldName = 'sup_phone2'
      Origin = 'sup_phone2'
      Size = 15
    end
    object qrysup_phone3: TStringField
      DisplayLabel = 'Tel. 3'
      FieldName = 'sup_phone3'
      Origin = 'sup_phone3'
      Size = 15
    end
    object qrysup_phone4: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'sup_phone4'
      Origin = 'sup_phone4'
      Size = 15
    end
    object qrysup_contact: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'sup_contact'
      Origin = 'sup_contact'
      Size = 25
    end
    object qrysup_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'sup_dt_registration'
      Origin = 'sup_dt_registration'
    end
    object qrysup_cod: TBytesField
      FieldName = 'sup_cod'
      Origin = 'sup_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrysup_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sup_id'
      Origin = 'sup_id'
    end
    object qrysup_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_status'
      Origin = 'sup_status'
      FixedChar = True
      Size = 1
    end
    object qrysup_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sup_deleted_at'
      Origin = 'sup_deleted_at'
    end
    object qryCodSupplier: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodSupplier'
      Origin = 'CodSupplier'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
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
    ReportOptions.LastChange = 43287.390635231500000000
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frx_db_fornecedor
        DataSetName = 'fornecedor'
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          AllowVectorExport = True
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
          DataField = 'sup_add_bus_complement'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_complement"]')
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
          DataField = 'sup_add_bus_street'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_street"]')
        end
        object Fabricanteman_add_bus_zipcode: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 221.110390000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'sup_add_bus_zipcode'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_zipcode"]')
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
          DataField = 'sup_add_bus_city'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_city"]')
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
          DataField = 'sup_add_bus_state'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_state"]')
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
          DataField = 'sup_add_bus_country'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_country"]')
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
          DataField = 'sup_phone1'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_phone1"]')
        end
        object Fabricanteman_phone2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 232.228510000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'sup_phone2'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_phone2"]')
        end
        object Fabricanteman_phone3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 412.086890000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'sup_phone3'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_phone3"]')
        end
        object Fabricanteman_phone4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 590.724800000000000000
          Top = 296.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'sup_phone4'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_phone4"]')
        end
        object Fabricanteman_contact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 319.275820000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'sup_contact'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_contact"]')
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
            'Dados do Fornecedor')
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
          DataField = 'sup_first_name'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_first_name"]')
          ParentFont = False
        end
        object Fabricanteman_last_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 52.913420000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'sup_last_name'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_last_name"]')
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
          DataField = 'sup_cnpj'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_cnpj"]')
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
          DataField = 'sup_ie'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_ie"]')
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
          DataField = 'sup_im'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_im"]')
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
          DataField = 'sup_suframa'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_suframa"]')
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
          DataField = 'sup_email'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_email"]')
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
          DataField = 'sup_dt_open'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_dt_open"]')
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
          DataField = 'sup_add_bus_address'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_address"]')
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
          DataField = 'sup_add_bus_number'
          DataSet = frx_db_fornecedor
          DataSetName = 'fornecedor'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fornecedor."sup_add_bus_number"]')
        end
      end
    end
  end
  object frx_db_fornecedor: TfrxDBDataset
    UserName = 'fornecedor'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 256
    Top = 48
  end
  object acbr_cep: TACBrCEP
    ProxyPort = '8080'
    PesquisarIBGE = True
    Left = 672
    Top = 56
  end
end
