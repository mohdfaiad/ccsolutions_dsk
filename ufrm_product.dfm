inherited frm_product: Tfrm_product
  Caption = 'Manuten'#231#227'o: Produtos e Servi'#231'os'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      OnShow = cxTabSheet_1Show
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1pro_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'pro_id'
            Width = 75
          end
          object cxGrid_1DBTableView1pro_name: TcxGridDBColumn
            DataBinding.FieldName = 'pro_name'
            Width = 250
          end
          object cxGrid_1DBTableView1pro_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'pro_status'
            Width = 50
          end
          object cxGrid_1DBTableView1pro_height: TcxGridDBColumn
            DataBinding.FieldName = 'pro_height'
            Width = 100
          end
          object cxGrid_1DBTableView1pro_width: TcxGridDBColumn
            DataBinding.FieldName = 'pro_width'
            Width = 100
          end
          object cxGrid_1DBTableView1pro_length: TcxGridDBColumn
            DataBinding.FieldName = 'pro_length'
          end
          object cxGrid_1DBTableView1pro_weight: TcxGridDBColumn
            DataBinding.FieldName = 'pro_weight'
          end
          object cxGrid_1DBTableView1pro_liter: TcxGridDBColumn
            DataBinding.FieldName = 'pro_liter'
          end
          object cxGrid_1DBTableView1prc_name: TcxGridDBColumn
            Caption = 'Classe'
            DataBinding.FieldName = 'prc_name'
            Width = 100
          end
          object cxGrid_1DBTableView1prs_name: TcxGridDBColumn
            Caption = 'Sub-Classe'
            DataBinding.FieldName = 'prs_name'
            Width = 100
          end
          object cxGrid_1DBTableView1man_last_name: TcxGridDBColumn
            Caption = 'Fabricante'
            DataBinding.FieldName = 'man_last_name'
            Width = 200
          end
          object cxGrid_1DBTableView1bra_name: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'bra_name'
            Width = 120
          end
          object cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn
            Caption = 'Fornecedor'
            DataBinding.FieldName = 'sup_last_name'
            Width = 120
          end
          object cxGrid_1DBTableView1pru_name: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'pru_name'
            Width = 100
          end
          object cxGrid_1DBTableView1pru_initials: TcxGridDBColumn
            DataBinding.FieldName = 'pru_initials'
            Width = 100
          end
          object cxGrid_1DBTableView1pro_initials: TcxGridDBColumn
            DataBinding.FieldName = 'pro_initials'
            Width = 150
          end
          object cxGrid_1DBTableView1pro_tag: TcxGridDBColumn
            DataBinding.FieldName = 'pro_tag'
            Width = 150
          end
          object cxGrid_1DBTableView1pro_description: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'pro_description'
            Width = 70
          end
          object cxGrid_1DBTableView1pro_gender: TcxGridDBColumn
            DataBinding.FieldName = 'pro_gender'
            Width = 50
          end
          object cxGrid_1DBTableView1pro_barcod: TcxGridDBColumn
            DataBinding.FieldName = 'pro_barcod'
            Width = 120
          end
          object cxGrid_1DBTableView1pro_barcod_manufacturer: TcxGridDBColumn
            DataBinding.FieldName = 'pro_barcod_manufacturer'
            Width = 130
          end
          object cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg'
            DataBinding.FieldName = 'pro_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          OnShow = cxTabSheet_3Show
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 77
              DataBinding.DataField = 'pro_id'
              ExplicitLeft = 77
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 250
              DataBinding.DataField = 'pro_dt_registration'
              ExplicitLeft = 250
            end
            object dbComboxPro_type: TcxDBComboBox [2]
              Left = 77
              Top = 103
              DataBinding.DataField = 'pro_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoWidth = False
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 250
              Properties.Items.Strings = (
                'P - PRODUTO'
                'S - SERVI'#199'O')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 77
              Top = 130
              DataBinding.DataField = 'pro_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 378
            end
            object cxDBTextEdit2: TcxDBTextEdit [4]
              Left = 77
              Top = 238
              DataBinding.DataField = 'pro_barcod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 145
            end
            object cxDBTextEdit3: TcxDBTextEdit [5]
              Left = 323
              Top = 238
              DataBinding.DataField = 'pro_barcod_manufacturer'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 13
              Width = 132
            end
            object cxDBMemo1: TcxDBMemo [6]
              Left = 77
              Top = 265
              DataBinding.DataField = 'pro_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 14
              Height = 89
              Width = 601
            end
            object dbComboxStatus: TcxDBComboBox [7]
              Left = 250
              Top = 103
              DataBinding.DataField = 'pro_status'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object loopComboxNCM: TcxLookupComboBox [8]
              Left = 533
              Top = 130
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ncm_description'
              Properties.ListColumns = <
                item
                  FieldName = 'ncm_description'
                end
                item
                  FieldName = 'ncm_code'
                end>
              Properties.ListSource = ds_ncm
              Style.HotTrack = False
              TabOrder = 5
              Width = 145
            end
            object looComboxFornecedor: TcxLookupComboBox [9]
              Left = 77
              Top = 157
              Properties.GridMode = True
              Properties.KeyFieldNames = 'sup_last_name'
              Properties.ListColumns = <
                item
                  FieldName = 'sup_last_name'
                end
                item
                  FieldName = 'sup_id'
                end>
              Properties.ListSource = ds_supplier
              Style.HotTrack = False
              TabOrder = 6
              Width = 378
            end
            object looComboxFabricante: TcxLookupComboBox [10]
              Left = 77
              Top = 184
              Properties.GridMode = True
              Properties.KeyFieldNames = 'man_last_name'
              Properties.ListColumns = <
                item
                  FieldName = 'man_last_name'
                end
                item
                  FieldName = 'man_id'
                end>
              Properties.ListSource = ds_manufacturer
              Style.HotTrack = False
              TabOrder = 8
              Width = 378
            end
            object looComboxUnidMedida: TcxLookupComboBox [11]
              Left = 533
              Top = 157
              Properties.GridMode = True
              Properties.KeyFieldNames = 'pru_name'
              Properties.ListColumns = <
                item
                  FieldName = 'pru_name'
                end
                item
                  FieldName = 'pru_id'
                end>
              Properties.ListSource = ds_product_unit
              Style.HotTrack = False
              TabOrder = 7
              Width = 145
            end
            object looCombxMarca: TcxLookupComboBox [12]
              Left = 533
              Top = 184
              Properties.GridMode = True
              Properties.KeyFieldNames = 'bra_name'
              Properties.ListColumns = <
                item
                  FieldName = 'bra_name'
                end
                item
                  FieldName = 'bra_id'
                end>
              Properties.ListSource = ds_brand
              Style.HotTrack = False
              TabOrder = 9
              Width = 145
            end
            object looComboxClasse: TcxLookupComboBox [13]
              Left = 77
              Top = 211
              Properties.GridMode = True
              Properties.KeyFieldNames = 'prc_name'
              Properties.ListColumns = <
                item
                  FieldName = 'prc_name'
                end
                item
                  FieldName = 'prc_id'
                end>
              Properties.ListSource = ds_product_class
              Style.HotTrack = False
              TabOrder = 10
              Width = 145
            end
            object looComboxSub_Classe: TcxLookupComboBox [14]
              Left = 323
              Top = 211
              Properties.KeyFieldNames = 'prs_name'
              Properties.ListColumns = <
                item
                  FieldName = 'prs_name'
                end
                item
                  FieldName = 'prs_id'
                end>
              Properties.ListSource = ds_product_class_sub
              Style.HotTrack = False
              TabOrder = 11
              Width = 132
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahRight
              ItemIndex = 4
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo'
              Control = dbComboxPro_type
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 378
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 5
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'C'#243'd. Barra'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'C'#243'd. Barra - Fabr.'
              Offsets.Left = 2
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 132
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = dbComboxStatus
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'NCM'
              Offsets.Left = 5
              Padding.AssignedValues = [lpavLeft]
              Control = loopComboxNCM
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Fornecedor'
              Control = looComboxFornecedor
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 378
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Fabricante'
              Control = looComboxFabricante
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 378
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Unid. Medida'
              Offsets.Left = 5
              Control = looComboxUnidMedida
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Marca'
              Offsets.Left = 5
              Control = looCombxMarca
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Classe'
              Control = looComboxClasse
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Sub-Classe'
              Offsets.Left = 2
              Control = looComboxSub_Classe
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 132
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Medidas e Pesos'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBCurrencyEdit3: TcxDBCurrencyEdit
              Left = 51
              Top = 38
              DataBinding.DataField = 'pro_height'
              DataBinding.DataSource = ds
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.0000;-0.0000'
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBCurrencyEdit4: TcxDBCurrencyEdit
              Left = 220
              Top = 38
              DataBinding.DataField = 'pro_width'
              DataBinding.DataSource = ds
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.0000;-0.0000'
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBCurrencyEdit5: TcxDBCurrencyEdit
              Left = 415
              Top = 38
              DataBinding.DataField = 'pro_length'
              DataBinding.DataSource = ds
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.0000;-0.0000'
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 51
              Top = 103
              DataBinding.DataField = 'pro_weight'
              DataBinding.DataSource = ds
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.0000;-0.0000'
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit
              Left = 220
              Top = 103
              DataBinding.DataField = 'pro_liter'
              DataBinding.DataSource = ds
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.0000;-0.0000'
              Style.HotTrack = False
              TabOrder = 4
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
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Medidas'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Pesos'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Altura'
              Control = cxDBCurrencyEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Largura'
              Control = cxDBCurrencyEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Comprimento'
              Control = cxDBCurrencyEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Peso'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Litro'
              Control = cxDBCurrencyEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Insumos'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 17
              Top = 38
              Width = 500
              Height = 200
              TabOrder = 0
              object cxGrid1DBTableView1: TcxGridDBTableView
                PopupMenu = pupMenu_Product_Input
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.Filter.ImageIndex = 11
                DataController.DataSource = ds_product_input
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                object cxGrid1DBTableView1pri_id: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'pri_id'
                  Width = 75
                end
                object cxGrid1DBTableView1pro_name: TcxGridDBColumn
                  Caption = 'Produto'
                  DataBinding.FieldName = 'pro_name'
                  Width = 280
                end
                object cxGrid1DBTableView1pri_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'pri_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object btnEditar_Item: TcxButton
              Left = 413
              Top = 244
              Width = 25
              Height = 25
              Action = act_edit_product_input
              TabOrder = 3
            end
            object btnCancel_Item: TcxButton
              Left = 444
              Top = 244
              Width = 25
              Height = 25
              Action = act_cancel_product_input
              TabOrder = 4
            end
            object btnSalvar_Item: TcxButton
              Left = 382
              Top = 244
              Width = 25
              Height = 25
              Action = act_save_product_input
              TabOrder = 2
            end
            object looComboxProduto: TcxLookupComboBox
              Left = 60
              Top = 244
              Properties.GridMode = True
              Properties.KeyFieldNames = 'pro_name'
              Properties.ListColumns = <
                item
                  FieldName = 'pro_name'
                end>
              Properties.ListSource = ds_product_list_input
              Style.HotTrack = False
              TabOrder = 1
              Width = 316
            end
            object btnExcluir_Item: TcxButton
              Left = 475
              Top = 244
              Width = 25
              Height = 25
              Action = act_delete_product_input
              TabOrder = 5
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
              CaptionOptions.Text = 'New Group'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 514
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 0
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutGroup5
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup5
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnEditar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnCancel_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Produto'
              Control = looComboxProduto
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 316
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              CaptionOptions.Text = 'cxButton4'
              CaptionOptions.Visible = False
              Control = btnExcluir_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 4
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    Left = 640
    Top = 64
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\produto'
    end
    inherited cxlooComBoxRep: TcxBarEditItem
      Properties.OnCloseUp = cxlooComBoxRepPropertiesCloseUp
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 1049240
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    SQL.Strings = (
      
        'select pro.*, hex(pro_cod)as CodProduct,hex(pro.product_class_pr' +
        'c_cod)as CodClass, hex(pro.product_class_sub_prs_cod)as CodSub_C' +
        'lass,'
      
        'sup.sup_last_name, cla.prc_name, cla.prc_status, cla_sub.prs_nam' +
        'e, manuf.man_last_name,'#13#10#10
      
        'br.bra_name, br.bra_status, pr_unt.pru_name, pr_unt.pru_initials' +
        ', pr_unt.pru_status,nc.ncm_code,nc.ncm_description from product ' +
        'as pro'#13#10#10
      
        'left join supplier as sup on sup.sup_cod = pro.supplier_sup_cod'#13 +
        #10#10
      
        'left join product_class as cla on cla.prc_cod = pro.product_clas' +
        's_prc_cod '#10
      
        'left join product_class_sub as cla_sub on cla_sub.prs_cod = pro.' +
        'product_class_prc_cod'#10
      
        'left join manufacturer as manuf on manuf.man_cod = pro.manufactu' +
        'rer_man_cod '#13#10#10
      'left join brand as br on br.bra_cod = pro.brand_bra_cod'#10
      'left join ncm as nc on nc.ncm_cod = pro.ncm_ncm_cod'#10
      
        'left join product_unit as pr_unt on pr_unt.pru_cod = pro.product' +
        '_unit_pru_cod'#10
      
        'where pro_type ='#39'P'#39' and pro.contract_ctr_cod =:ctr_cod and pro.p' +
        'ro_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qrypro_cod: TBytesField
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrymaterial_mat_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'material_mat_cod'
      Origin = 'material_mat_cod'
    end
    object qrysupplier_sup_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'supplier_sup_cod'
      Origin = 'supplier_sup_cod'
    end
    object qryproduct_class_prc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_class_prc_cod'
      Origin = 'product_class_prc_cod'
    end
    object qryproduct_class_sub_prs_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_class_sub_prs_cod'
      Origin = 'product_class_sub_prs_cod'
    end
    object qrymanufacturer_man_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'manufacturer_man_cod'
      Origin = 'manufacturer_man_cod'
    end
    object qrybrand_bra_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'brand_bra_cod'
      Origin = 'brand_bra_cod'
    end
    object qryncm_ncm_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_ncm_cod'
      Origin = 'ncm_ncm_cod'
    end
    object qryproduct_unit_pru_cod: TBytesField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade de Medida'
      FieldName = 'product_unit_pru_cod'
      Origin = 'product_unit_pru_cod'
    end
    object qrypro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object qryprc_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prc_name'
      Origin = 'prc_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryprc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prc_status'
      Origin = 'prc_status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryprs_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_name'
      Origin = 'prs_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryman_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_last_name'
      Origin = 'man_last_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qrybra_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bra_name'
      Origin = 'bra_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qrybra_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bra_status'
      Origin = 'bra_status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrypru_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_name'
      Origin = 'pru_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qrypru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qrypru_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_status'
      Origin = 'pru_status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryncm_code: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_code'
      Origin = 'ncm_code'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryncm_description: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_description'
      Origin = 'ncm_description'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object qrypro_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_type'
      Origin = 'pro_type'
      FixedChar = True
      Size = 1
    end
    object qrypro_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Produto'
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Required = True
      Size = 85
    end
    object qrypro_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_initials'
      Origin = 'pro_initials'
      Size = 85
    end
    object qrypro_tag: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_tag'
      Origin = 'pro_tag'
      Size = 255
    end
    object qrypro_description: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'pro_description'
      Origin = 'pro_description'
      BlobType = ftMemo
    end
    object qrypro_gender: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_gender'
      Origin = 'pro_gender'
      FixedChar = True
      Size = 1
    end
    object qrypro_annotation: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'pro_annotation'
      Origin = 'pro_annotation'
      BlobType = ftMemo
    end
    object qrypro_barcod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barcod'
      Origin = 'pro_barcod'
      Size = 25
    end
    object qrypro_barcod_manufacturer: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barcod_manufacturer'
      Origin = 'pro_barcod_manufacturer'
      Size = 25
    end
    object qrypro_height: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_height'
      Origin = 'pro_height'
      Precision = 12
    end
    object qrypro_width: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_width'
      Origin = 'pro_width'
      Precision = 12
    end
    object qrypro_length: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_length'
      Origin = 'pro_length'
      Precision = 12
    end
    object qrypro_weight: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_weight'
      Origin = 'pro_weight'
      Precision = 12
    end
    object qrypro_liter: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pro_liter'
      Origin = 'pro_liter'
      Precision = 12
    end
    object qrypro_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_status'
      Origin = 'pro_status'
      FixedChar = True
      Size = 1
    end
    object qrypro_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pro_deleted_at'
      Origin = 'pro_deleted_at'
    end
    object qrypro_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pro_dt_registration'
      Origin = 'pro_dt_registration'
    end
    object qrysup_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_last_name'
      Origin = 'sup_last_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qryCodClass: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodClass'
      Origin = 'CodClass'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryCodSub_Class: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodSub_Class'
      Origin = 'CodSub_Class'
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
    ReportOptions.LastChange = 43287.747316909700000000
    Left = 271
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frx_db_produto
        DataSetName = 'produto'
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
        Height = 22.677165354330700000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 438.425480000000000000
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
        Height = 26.456692910000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_produto
        DataSetName = 'produto'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Top = 4.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frx_db_produto
          DataSetName = 'produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 0.377952760000000000
          Top = 24.677180000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 106.385900000000000000
          Top = 4.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frx_db_produto
          DataSetName = 'produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 501.811380000000000000
          Top = 4.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frx_db_produto
          DataSetName = 'produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_produto
        DataSetName = 'produto'
        RowCount = 0
        object produtopro_id: TfrxMemoView
          IndexTag = 1
          Left = 1.889763780000000000
          Top = 1.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'pro_id'
          DataSet = frx_db_produto
          DataSetName = 'produto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[produto."pro_id"]')
        end
        object produtopro_name: TfrxMemoView
          IndexTag = 1
          Left = 106.385900000000000000
          Top = 1.779530000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSet = frx_db_produto
          DataSetName = 'produto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[produto."pro_name"]')
        end
        object produtopru_initials: TfrxMemoView
          IndexTag = 1
          Left = 501.811380000000000000
          Top = 1.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'pru_initials'
          DataSet = frx_db_produto
          DataSetName = 'produto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[produto."pru_initials"]')
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 634.961040000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1,2)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 498.897960000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Registros:')
          ParentFont = False
        end
      end
    end
  end
  object qry_ncm: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select ncm.*, hex(ncm_cod)as CodNCM from ncm')
    Left = 752
    Top = 224
    object qry_ncmncm_cod: TBytesField
      FieldName = 'ncm_cod'
      Origin = 'ncm_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_ncmcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_ncmncm_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_id'
      Origin = 'ncm_id'
    end
    object qry_ncmncm_code: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM Cod.'
      DisplayWidth = 12
      FieldName = 'ncm_code'
      Origin = 'ncm_code'
      Size = 10
    end
    object qry_ncmncm_description: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM'
      DisplayWidth = 50
      FieldName = 'ncm_description'
      Origin = 'ncm_description'
      BlobType = ftMemo
    end
    object qry_ncmncm_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_status'
      Origin = 'ncm_status'
      FixedChar = True
      Size = 1
    end
    object qry_ncmncm_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_deleted_at'
      Origin = 'ncm_deleted_at'
    end
    object qry_ncmncm_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ncm_dt_registration'
      Origin = 'ncm_dt_registration'
    end
    object qry_ncmCodNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodNCM'
      Origin = 'CodNCM'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_ncm: TDataSource
    DataSet = qry_ncm
    Left = 784
    Top = 224
  end
  object qry_supplier: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select supplier.*,hex(sup_cod)as CodSupplier from supplier')
    Left = 752
    Top = 304
    object qry_suppliersup_cod: TBytesField
      FieldName = 'sup_cod'
      Origin = 'sup_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_suppliercontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_suppliersup_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 12
      FieldName = 'sup_id'
      Origin = 'sup_id'
    end
    object qry_suppliersup_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_first_name'
      Origin = 'sup_first_name'
      Size = 85
    end
    object qry_suppliersup_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 80
      FieldName = 'sup_last_name'
      Origin = 'sup_last_name'
      Size = 85
    end
    object qry_suppliersup_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_email'
      Origin = 'sup_email'
      Size = 65
    end
    object qry_suppliersup_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_cnpj'
      Origin = 'sup_cnpj'
      Size = 25
    end
    object qry_suppliersup_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_ie'
      Origin = 'sup_ie'
      Size = 25
    end
    object qry_suppliersup_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_im'
      Origin = 'sup_im'
      Size = 25
    end
    object qry_suppliersup_suframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_suframa'
      Origin = 'sup_suframa'
      Size = 25
    end
    object qry_suppliersup_dt_open: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'sup_dt_open'
      Origin = 'sup_dt_open'
    end
    object qry_suppliersup_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_zipcode'
      Origin = 'sup_add_bus_zipcode'
      Size = 9
    end
    object qry_suppliersup_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_address'
      Origin = 'sup_add_bus_address'
      Size = 50
    end
    object qry_suppliersup_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_number'
      Origin = 'sup_add_bus_number'
      Size = 5
    end
    object qry_suppliersup_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_street'
      Origin = 'sup_add_bus_street'
      Size = 45
    end
    object qry_suppliersup_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_complement'
      Origin = 'sup_add_bus_complement'
      Size = 50
    end
    object qry_suppliersup_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_city'
      Origin = 'sup_add_bus_city'
      Size = 35
    end
    object qry_suppliersup_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_state'
      Origin = 'sup_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qry_suppliersup_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_add_bus_country'
      Origin = 'sup_add_bus_country'
      Size = 25
    end
    object qry_suppliersup_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_phone1'
      Origin = 'sup_phone1'
      Size = 15
    end
    object qry_suppliersup_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_phone2'
      Origin = 'sup_phone2'
      Size = 15
    end
    object qry_suppliersup_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_phone3'
      Origin = 'sup_phone3'
      Size = 15
    end
    object qry_suppliersup_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_phone4'
      Origin = 'sup_phone4'
      Size = 15
    end
    object qry_suppliersup_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_contact'
      Origin = 'sup_contact'
      Size = 25
    end
    object qry_suppliersup_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sup_status'
      Origin = 'sup_status'
      FixedChar = True
      Size = 1
    end
    object qry_suppliersup_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sup_deleted_at'
      Origin = 'sup_deleted_at'
    end
    object qry_suppliersup_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sup_dt_registration'
      Origin = 'sup_dt_registration'
    end
    object qry_supplierCodSupplier: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodSupplier'
      Origin = 'CodSupplier'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_supplier: TDataSource
    DataSet = qry_supplier
    Left = 784
    Top = 304
  end
  object qry_manufacturer: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select manufacturer.*, hex(man_cod)as CodManufact from manufactu' +
        'rer')
    Left = 832
    Top = 304
    object qry_manufacturerman_cod: TBytesField
      FieldName = 'man_cod'
      Origin = 'man_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_manufacturercontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_manufacturerman_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 12
      FieldName = 'man_id'
      Origin = 'man_id'
    end
    object qry_manufacturerman_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_first_name'
      Origin = 'man_first_name'
      Size = 85
    end
    object qry_manufacturerman_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fabricante'
      DisplayWidth = 80
      FieldName = 'man_last_name'
      Origin = 'man_last_name'
      Size = 85
    end
    object qry_manufacturerman_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_email'
      Origin = 'man_email'
      Size = 65
    end
    object qry_manufacturerman_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_cnpj'
      Origin = 'man_cnpj'
      Size = 25
    end
    object qry_manufacturerman_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_ie'
      Origin = 'man_ie'
      Size = 25
    end
    object qry_manufacturerman_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_im'
      Origin = 'man_im'
      Size = 25
    end
    object qry_manufacturerman_suframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_suframa'
      Origin = 'man_suframa'
      Size = 25
    end
    object qry_manufacturerman_dt_open: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'man_dt_open'
      Origin = 'man_dt_open'
    end
    object qry_manufacturerman_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_zipcode'
      Origin = 'man_add_bus_zipcode'
      Size = 9
    end
    object qry_manufacturerman_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_address'
      Origin = 'man_add_bus_address'
      Size = 50
    end
    object qry_manufacturerman_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_number'
      Origin = 'man_add_bus_number'
      Size = 5
    end
    object qry_manufacturerman_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_street'
      Origin = 'man_add_bus_street'
      Size = 45
    end
    object qry_manufacturerman_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_complement'
      Origin = 'man_add_bus_complement'
      Size = 50
    end
    object qry_manufacturerman_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_city'
      Origin = 'man_add_bus_city'
      Size = 35
    end
    object qry_manufacturerman_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_state'
      Origin = 'man_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qry_manufacturerman_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_add_bus_country'
      Origin = 'man_add_bus_country'
      Size = 25
    end
    object qry_manufacturerman_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_phone1'
      Origin = 'man_phone1'
      Size = 15
    end
    object qry_manufacturerman_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_phone2'
      Origin = 'man_phone2'
      Size = 15
    end
    object qry_manufacturerman_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_phone3'
      Origin = 'man_phone3'
      Size = 15
    end
    object qry_manufacturerman_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_phone4'
      Origin = 'man_phone4'
      Size = 15
    end
    object qry_manufacturerman_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_contact'
      Origin = 'man_contact'
      Size = 25
    end
    object qry_manufacturerman_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'man_status'
      Origin = 'man_status'
      FixedChar = True
      Size = 1
    end
    object qry_manufacturerman_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'man_deleted_at'
      Origin = 'man_deleted_at'
    end
    object qry_manufacturerman_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'man_dt_registration'
      Origin = 'man_dt_registration'
    end
    object qry_manufacturerCodManufact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodManufact'
      Origin = 'CodManufact'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_manufacturer: TDataSource
    DataSet = qry_manufacturer
    Left = 864
    Top = 304
  end
  object qry_brand: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select brand.*, hex(bra_cod)as CodBrand from brand')
    Left = 752
    Top = 192
    object qry_brandbra_cod: TBytesField
      FieldName = 'bra_cod'
      Origin = 'bra_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_brandcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_brandbra_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 12
      FieldName = 'bra_id'
      Origin = 'bra_id'
    end
    object qry_brandbra_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Marca'
      DisplayWidth = 50
      FieldName = 'bra_name'
      Origin = 'bra_name'
      Size = 35
    end
    object qry_brandbra_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bra_status'
      Origin = 'bra_status'
      FixedChar = True
      Size = 1
    end
    object qry_brandbra_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'bra_deleted_at'
      Origin = 'bra_deleted_at'
    end
    object qry_brandbra_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'bra_dt_registration'
      Origin = 'bra_dt_registration'
    end
    object qry_brandCodBrand: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodBrand'
      Origin = 'CodBrand'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_brand: TDataSource
    DataSet = qry_brand
    Left = 784
    Top = 192
  end
  object qry_product_class: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product_class.*, hex(prc_cod)as CodProductClass from prod' +
        'uct_class')
    Left = 752
    Top = 264
    object qry_product_classprc_cod: TBytesField
      FieldName = 'prc_cod'
      Origin = 'prc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_classcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_product_classprc_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 12
      FieldName = 'prc_id'
      Origin = 'prc_id'
    end
    object qry_product_classprc_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      DisplayWidth = 50
      FieldName = 'prc_name'
      Origin = 'prc_name'
      Size = 35
    end
    object qry_product_classprc_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prc_status'
      Origin = 'prc_status'
      FixedChar = True
      Size = 1
    end
    object qry_product_classprc_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prc_deleted_at'
      Origin = 'prc_deleted_at'
    end
    object qry_product_classprc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prc_dt_registration'
      Origin = 'prc_dt_registration'
    end
    object qry_product_classCodProductClass: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProductClass'
      Origin = 'CodProductClass'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_product_class: TDataSource
    DataSet = qry_product_class
    Left = 784
    Top = 264
  end
  object qry_product_class_sub: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'product_class_prc_cod'
    MasterSource = ds_product_class
    MasterFields = 'prc_cod'
    DetailFields = 'product_class_prc_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product_class_sub.*, hex(prs_cod)as CodClassSub from prod' +
        'uct_class_sub')
    Left = 824
    Top = 264
    object qry_product_class_subprs_cod: TBytesField
      FieldName = 'prs_cod'
      Origin = 'prs_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_class_subcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_product_class_subproduct_class_prc_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_class_prc_cod'
      Origin = 'product_class_prc_cod'
    end
    object qry_product_class_subprs_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'dido ID'
      DisplayWidth = 12
      FieldName = 'prs_id'
      Origin = 'prs_id'
    end
    object qry_product_class_subprs_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub-Classe'
      DisplayWidth = 50
      FieldName = 'prs_name'
      Origin = 'prs_name'
      Size = 35
    end
    object qry_product_class_subprs_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_deleted_at'
      Origin = 'prs_deleted_at'
    end
    object qry_product_class_subprs_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_dt_registration'
      Origin = 'prs_dt_registration'
    end
    object qry_product_class_subCodClassSub: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodClassSub'
      Origin = 'CodClassSub'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_product_class_sub: TDataSource
    DataSet = qry_product_class_sub
    Left = 856
    Top = 264
  end
  object qry_product_unit: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select product_unit.*, hex(pru_cod)as CodProdUnit from product_u' +
        'nit')
    Left = 816
    Top = 224
    object qry_product_unitpru_cod: TBytesField
      FieldName = 'pru_cod'
      Origin = 'pru_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_unitcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_product_unitpru_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo ID'
      DisplayWidth = 12
      FieldName = 'pru_id'
      Origin = 'pru_id'
    end
    object qry_product_unitpru_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'pru_name'
      Origin = 'pru_name'
      Size = 35
    end
    object qry_product_unitpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      Size = 35
    end
    object qry_product_unitpru_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_status'
      Origin = 'pru_status'
      FixedChar = True
      Size = 1
    end
    object qry_product_unitpru_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pru_deleted_at'
      Origin = 'pru_deleted_at'
    end
    object qry_product_unitpru_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pru_dt_registration'
      Origin = 'pru_dt_registration'
    end
    object qry_product_unitCodProdUnit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProdUnit'
      Origin = 'CodProdUnit'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_product_unit: TDataSource
    DataSet = qry_product_unit
    Left = 848
    Top = 224
  end
  object qry_product_input: TFDQuery
    Active = True
    IndexFieldNames = 'product_pro_cod'
    MasterSource = ds
    MasterFields = 'pro_cod'
    DetailFields = 'product_pro_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product_input.*, hex(pri_cod)as CodInput,hex(product_pro_' +
        'cod)as CodProduct,'#13#10#10
      'pro_id, pro_name, pru_name, pru_initials from product_input'#13#10#10
      'left join product on pro_cod = product_pro_cod'#13#10#10
      'left join product_unit on pru_cod = product_unit_pru_cod'#13#10#10
      'where product_pro_cod =:pro_cod')
    Left = 658
    Top = 107
    ParamData = <
      item
        Name = 'PRO_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_product_inputpri_cod: TBytesField
      FieldName = 'pri_cod'
      Origin = 'pri_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_inputproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_product_inputpri_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pri_id'
      Origin = 'pri_id'
    end
    object qry_product_inputpri_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pri_deleted_at'
      Origin = 'pri_deleted_at'
    end
    object qry_product_inputpri_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pri_dt_registration'
      Origin = 'pri_dt_registration'
    end
    object qry_product_inputCodInput: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodInput'
      Origin = 'CodInput'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_product_inputpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_product_inputpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qry_product_inputpru_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_name'
      Origin = 'pru_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_product_inputpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_product_inputCodProduct: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodProduct'
      Origin = 'CodProduct'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object ds_product_input: TDataSource
    DataSet = qry_product_input
    Left = 687
    Top = 106
  end
  object qry_product_list_input: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select hex(pro.pro_cod) as proCod, pro.pro_name, pro.pro_cod, pr' +
        'o.contract_ctr_cod,'#10'uni.pru_name, '
      'uni.pru_initials, pro.pro_id from product as pro'#13#10#10
      
        'left join product_unit as uni on uni.pru_cod = pro.product_unit_' +
        'pru_cod '#10
      'where pro.contract_ctr_cod =:ctr_cod  '#10
      'order by pro.pro_name')
    Left = 759
    Top = 106
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_product_list_inputproCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'proCod'
      Origin = 'proCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_product_list_inputpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 85
    end
    object qry_product_list_inputpro_cod: TBytesField
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_list_inputcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_product_list_inputpru_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_name'
      Origin = 'pru_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_product_list_inputpru_initials: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pru_initials'
      Origin = 'pru_initials'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qry_product_list_inputpro_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
  end
  object ds_product_list_input: TDataSource
    DataSet = qry_product_list_input
    Left = 856
    Top = 128
  end
  object frx_db_produto: TfrxDBDataset
    UserName = 'produto'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 232
    Top = 48
  end
  object Action_product_input: TActionList
    Images = cxImageList_1
    Left = 864
    Top = 64
    object act_save_product_input: TAction
      Hint = 'Salvar'
      ImageIndex = 6
      OnExecute = act_save_product_inputExecute
    end
    object act_edit_product_input: TAction
      Hint = 'Editar'
      ImageIndex = 5
      OnExecute = act_edit_product_inputExecute
    end
    object act_cancel_product_input: TAction
      Hint = 'Cancelar'
      ImageIndex = 7
      OnExecute = act_cancel_product_inputExecute
    end
    object act_delete_product_input: TAction
      Hint = 'Excluir'
      ImageIndex = 8
      OnExecute = act_delete_product_inputExecute
    end
  end
  object pupMenu_Product_Input: TPopupMenu
    Left = 863
    Top = 18
    object Excluir2: TMenuItem
      Action = act_delete_product_input
      Caption = 'Excluir'
    end
    object Editar2: TMenuItem
      Action = act_edit_product_input
      Caption = 'Editar'
    end
    object Cancelar1: TMenuItem
      Action = act_cancel_product_input
      Caption = 'Cancelar'
    end
  end
end
