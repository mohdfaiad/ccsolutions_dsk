inherited frm_insurance: Tfrm_insurance
  Caption = 'Manuten'#231#227'o: Conv'#234'nios'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ins_id: TcxGridDBColumn
            DataBinding.FieldName = 'ins_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
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
          object cxGrid_1DBTableView1ins_email: TcxGridDBColumn
            DataBinding.FieldName = 'ins_email'
            Width = 150
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
            Width = 50
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
            Width = 75
          end
          object cxGrid_1DBTableView1ins_dt_day_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'ins_dt_day_maturity'
            Width = 75
          end
          object cxGrid_1DBTableView1ins_status: TcxGridDBColumn
            DataBinding.FieldName = 'ins_status'
            Width = 50
          end
          object cxGrid_1DBTableView1ins_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'ins_dt_open'
            Width = 100
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
      ExplicitHeight = 512
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 986
            Height = 472
            ExplicitWidth = 986
            ExplicitHeight = 472
            inherited dbedt_id: TcxDBTextEdit
              Left = 63
              DataBinding.DataField = 'ins_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              DataBinding.DataField = 'ins_dt_registration'
              ExplicitLeft = 240
            end
            object cxDBTextEdit3: TcxDBTextEdit [2]
              Left = 63
              Top = 211
              DataBinding.DataField = 'ins_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 307
            end
            object cxDBTextEdit4: TcxDBTextEdit [3]
              Left = 63
              Top = 276
              DataBinding.DataField = 'ins_cnpj'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [4]
              Left = 240
              Top = 276
              DataBinding.DataField = 'ins_im'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBDateEdit2: TcxDBDateEdit [5]
              Left = 240
              Top = 103
              DataBinding.DataField = 'ins_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [6]
              Left = 63
              Top = 184
              DataBinding.DataField = 'ins_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 307
            end
            object cxDBTextEdit1: TcxDBTextEdit [7]
              Left = 63
              Top = 157
              DataBinding.DataField = 'ins_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 307
            end
            object cxDBComboBox1: TcxDBComboBox [8]
              Left = 63
              Top = 103
              DataBinding.DataField = 'ins_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [9]
              Left = 63
              Top = 130
              DataBinding.DataField = 'table_price_tbp_id'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'tbp_id'
              Properties.ListColumns = <
                item
                  FieldName = 'tbp_name'
                end>
              Properties.ListSource = ds_table_price
              Style.HotTrack = False
              TabOrder = 4
              Width = 307
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Documentos'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
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
              CaptionOptions.Text = 'IM'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dt. Aber.'
              Control = cxDBDateEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              CaptionOptions.Text = 'Fantasia'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Tabela'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
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
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'ins_add_bus_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 386
              Top = 92
              DataBinding.DataField = 'ins_add_bus_country'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 386
              Top = 65
              DataBinding.DataField = 'ins_add_bus_street'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 61
              Top = 184
              DataBinding.DataField = 'ins_contact'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 226
              Top = 157
              DataBinding.DataField = 'ins_phone2'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'ins_add_bus_address'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 226
              Top = 65
              DataBinding.DataField = 'ins_add_bus_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 551
              Top = 157
              DataBinding.DataField = 'ins_phone4'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 61
              Top = 157
              DataBinding.DataField = 'ins_phone1'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 61
              Top = 92
              DataBinding.DataField = 'ins_add_bus_city'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 226
              Top = 92
              DataBinding.DataField = 'ins_add_bus_state'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 386
              Top = 157
              DataBinding.DataField = 'ins_phone3'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 551
              Top = 65
              DataBinding.DataField = 'ins_add_bus_complement'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
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
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
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
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 4'
              Control = cxDBTextEdit16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Contrato'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBDateEdit1: TcxDBDateEdit
              Left = 128
              Top = 38
              DataBinding.DataField = 'ins_dt_maturity_contract'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBSpinEdit1: TcxDBSpinEdit
              Left = 128
              Top = 103
              DataBinding.DataField = 'ins_dt_day_maturity'
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
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Prazo'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutGroup7: TdxLayoutGroup
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Financeiro'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutGroup6
              CaptionOptions.Text = 'Dt. Venc. do Contrato'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutGroup7
              CaptionOptions.Text = 'Dia Venc.'
              Control = cxDBSpinEdit1
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
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from insurance')
    object qryins_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'ins_id'
      Origin = 'ins_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryins_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'ins_first_name'
      Origin = 'ins_first_name'
      Size = 50
    end
    object qryins_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'ins_last_name'
      Origin = 'ins_last_name'
      Size = 50
    end
    object qryins_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ins_email'
      Origin = 'ins_email'
      Size = 65
    end
    object qryins_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'ins_cnpj'
      Origin = 'ins_cnpj'
      Size = 25
    end
    object qryins_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'ins_im'
      Origin = 'ins_im'
      Size = 25
    end
    object qryins_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'ins_add_bus_zipcode'
      Origin = 'ins_add_bus_zipcode'
      Size = 9
    end
    object qryins_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'ins_add_bus_address'
      Origin = 'ins_add_bus_address'
      Size = 50
    end
    object qryins_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'ins_add_bus_number'
      Origin = 'ins_add_bus_number'
      Size = 5
    end
    object qryins_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'ins_add_bus_street'
      Origin = 'ins_add_bus_street'
      Size = 45
    end
    object qryins_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'ins_add_bus_complement'
      Origin = 'ins_add_bus_complement'
      Size = 50
    end
    object qryins_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'ins_add_bus_city'
      Origin = 'ins_add_bus_city'
      Size = 35
    end
    object qryins_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'ins_add_bus_state'
      Origin = 'ins_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qryins_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'ins_add_bus_country'
      Origin = 'ins_add_bus_country'
      Size = 25
    end
    object qryins_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ins_phone1'
      Origin = 'ins_phone1'
      Size = 15
    end
    object qryins_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'ins_phone2'
      Origin = 'ins_phone2'
      Size = 15
    end
    object qryins_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'ins_phone3'
      Origin = 'ins_phone3'
      Size = 15
    end
    object qryins_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 4'
      FieldName = 'ins_phone4'
      Origin = 'ins_phone4'
      Size = 15
    end
    object qryins_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'ins_contact'
      Origin = 'ins_contact'
      Size = 25
    end
    object qryins_dt_maturity_contract: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Venc. do Contrato'
      FieldName = 'ins_dt_maturity_contract'
      Origin = 'ins_dt_maturity_contract'
    end
    object qryins_dt_day_maturity: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia Venc.'
      FieldName = 'ins_dt_day_maturity'
      Origin = 'ins_dt_day_maturity'
    end
    object qryins_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'ins_status'
      Origin = 'ins_status'
      FixedChar = True
      Size = 1
    end
    object qryins_dt_open: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'ins_dt_open'
      Origin = 'ins_dt_open'
    end
    object qryins_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ins_dt_registration'
      Origin = 'ins_dt_registration'
    end
    object qrytable_price_tbp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_id'
      Origin = 'table_price_tbp_id'
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
  object qry_table_price: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select tbp_id,tbp_name,contract_ctr_id from table_price'
      'where contract_ctr_id = :ctr_id'
      'order by tbp_name')
    Left = 247
    Top = 458
    ParamData = <
      item
        Name = 'CTR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object qry_table_pricetbp_id: TFDAutoIncField
      FieldName = 'tbp_id'
      Origin = 'tbp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_table_pricetbp_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbp_name'
      Origin = 'tbp_name'
      Size = 25
    end
    object qry_table_pricecontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
  end
  object ds_table_price: TDataSource
    DataSet = qry_table_price
    Left = 311
    Top = 458
  end
end
