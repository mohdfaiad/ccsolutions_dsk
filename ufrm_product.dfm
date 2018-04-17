inherited frm_product: Tfrm_product
  Caption = 'Manuten'#231#227'o: Produtos e Servi'#231'os'
  OnClose = FormClose
  ExplicitTop = -36
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
          object cxGrid_1DBTableView1pro_id: TcxGridDBColumn
            DataBinding.FieldName = 'pro_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1supplier_sup_id: TcxGridDBColumn
            DataBinding.FieldName = 'supplier_sup_id'
            Width = 75
          end
          object cxGrid_1DBTableView1product_class_prc_id: TcxGridDBColumn
            DataBinding.FieldName = 'product_class_prc_id'
            Width = 75
          end
          object cxGrid_1DBTableView1product_class_sub_prs_id: TcxGridDBColumn
            DataBinding.FieldName = 'product_class_sub_prs_id'
            Width = 75
          end
          object cxGrid_1DBTableView1manufacturer_man_id: TcxGridDBColumn
            DataBinding.FieldName = 'manufacturer_man_id'
            Width = 75
          end
          object cxGrid_1DBTableView1product_unit_pru_id: TcxGridDBColumn
            DataBinding.FieldName = 'product_unit_pru_id'
            Width = 75
          end
          object cxGrid_1DBTableView1brand_bra_id: TcxGridDBColumn
            DataBinding.FieldName = 'brand_bra_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ncm_ncm_id: TcxGridDBColumn
            DataBinding.FieldName = 'ncm_ncm_id'
            Width = 75
          end
          object cxGrid_1DBTableView1pro_type: TcxGridDBColumn
            DataBinding.FieldName = 'pro_type'
            Width = 50
          end
          object cxGrid_1DBTableView1pro_name: TcxGridDBColumn
            DataBinding.FieldName = 'pro_name'
            Width = 250
          end
          object cxGrid_1DBTableView1pro_tag: TcxGridDBColumn
            DataBinding.FieldName = 'pro_tag'
            Width = 250
          end
          object cxGrid_1DBTableView1pro_status: TcxGridDBColumn
            DataBinding.FieldName = 'pro_status'
            Width = 50
          end
          object cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'pro_dt_registration'
            Width = 125
          end
          object cxGrid_1DBTableView1pro_barcod: TcxGridDBColumn
            DataBinding.FieldName = 'pro_barcod'
            Width = 100
          end
          object cxGrid_1DBTableView1pro_barcod_manufacturer: TcxGridDBColumn
            DataBinding.FieldName = 'pro_barcod_manufacturer'
            Width = 100
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
            Width = 100
          end
          object cxGrid_1DBTableView1pro_weight: TcxGridDBColumn
            DataBinding.FieldName = 'pro_weight'
            Width = 100
          end
          object cxGrid_1DBTableView1pro_liter: TcxGridDBColumn
            DataBinding.FieldName = 'pro_liter'
            Width = 100
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
              Left = 77
              DataBinding.DataField = 'pro_id'
              ExplicitLeft = 77
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 250
              DataBinding.DataField = 'pro_dt_registration'
              ExplicitLeft = 250
            end
            object cxDBComboBox1: TcxDBComboBox [2]
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
              TabOrder = 3
              Width = 341
            end
            object cxDBLookupComboBox7: TcxDBLookupComboBox [4]
              Left = 491
              Top = 130
              DataBinding.DataField = 'product_unit_pru_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'pru_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'pru_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'pru_id'
                end>
              Properties.ListSource = ds_product_unit
              Properties.OnPopup = cxDBLookupComboBox7PropertiesPopup
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [5]
              Left = 77
              Top = 157
              DataBinding.DataField = 'supplier_sup_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'pro_id'
              Properties.ListColumns = <
                item
                  Caption = 'Raz'#227'o'
                  Width = 250
                  FieldName = 'sup_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'sup_id'
                end>
              Properties.ListSource = ds_supplier
              Properties.OnPopup = cxDBLookupComboBox2PropertiesPopup
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox [6]
              Left = 297
              Top = 157
              DataBinding.DataField = 'manufacturer_man_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'man_id'
              Properties.ListColumns = <
                item
                  Caption = 'Raz'#227'o'
                  Width = 250
                  FieldName = 'man_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'man_id'
                end>
              Properties.ListSource = ds_manufacturer
              Properties.OnPopup = cxDBLookupComboBox3PropertiesPopup
              Style.HotTrack = False
              TabOrder = 6
              OnEnter = cxDBLookupComboBox3Enter
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [7]
              Left = 482
              Top = 157
              DataBinding.DataField = 'ncm_ncm_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'ncm_id'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  Width = 100
                  FieldName = 'ncm_code'
                end
                item
                  Caption = 'Descri'#231#227'o'
                  Width = 250
                  FieldName = 'ncm_description'
                end>
              Properties.ListSource = ds_ncm
              Style.HotTrack = False
              TabOrder = 7
              OnEnter = cxDBLookupComboBox1Enter
              Width = 121
            end
            object cxDBLookupComboBox4: TcxDBLookupComboBox [8]
              Left = 77
              Top = 184
              DataBinding.DataField = 'brand_bra_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'bra_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'bra_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'bra_id'
                end>
              Properties.ListSource = ds_brand
              Properties.OnPopup = cxDBLookupComboBox4PropertiesPopup
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBLookupComboBox5: TcxDBLookupComboBox [9]
              Left = 297
              Top = 184
              DataBinding.DataField = 'product_class_prc_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'prc_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'prc_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'prc_id'
                end>
              Properties.ListSource = ds_product_class
              Properties.OnPopup = cxDBLookupComboBox5PropertiesPopup
              Style.HotTrack = False
              TabOrder = 9
              OnEnter = cxDBLookupComboBox5Enter
              Width = 121
            end
            object cxDBLookupComboBox6: TcxDBLookupComboBox [10]
              Left = 482
              Top = 184
              DataBinding.DataField = 'product_class_sub_prs_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'prs_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'prs_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'prs_id'
                end>
              Properties.ListSource = ds_product_class_sub
              Properties.OnPopup = cxDBLookupComboBox6PropertiesPopup
              Style.HotTrack = False
              TabOrder = 10
              OnEnter = cxDBLookupComboBox6Enter
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [11]
              Left = 77
              Top = 211
              DataBinding.DataField = 'pro_barcod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [12]
              Left = 297
              Top = 211
              DataBinding.DataField = 'pro_barcod_manufacturer'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBMemo1: TcxDBMemo [13]
              Left = 77
              Top = 238
              DataBinding.DataField = 'pro_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 13
              Height = 89
              Width = 535
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahRight
              ItemIndex = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 341
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Unid. Medida'
              Control = cxDBLookupComboBox7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fornecedor'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Fabricante'
              Control = cxDBLookupComboBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'NCM'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Marca'
              Control = cxDBLookupComboBox4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Classe'
              Control = cxDBLookupComboBox5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Sub-Classe'
              Control = cxDBLookupComboBox6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'C'#243'd. Barra'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'C'#243'd. Barra - Fabr.'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
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
              Index = 4
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Medidas e Pesos'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
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
              ItemIndex = 2
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Pesos'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
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
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 17
              Top = 38
              Width = 418
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
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Visible = True
                DataController.DataSource = ds_product_input
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1pri_id: TcxGridDBColumn
                  DataBinding.FieldName = 'pri_id'
                end
                object cxGrid1DBTableView1product_pro_id: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_id'
                end
                object cxGrid1DBTableView1product_pro_id_input: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_id_input'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'pro_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'pro_name'
                    end
                    item
                      FieldName = 'pro_id'
                    end>
                  Properties.ListSource = ds_product_list_input
                end
                object cxGrid1DBTableView1pri_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'pri_dt_registration'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
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
              SizeOptions.Width = 432
              ButtonOptions.Buttons = <>
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
      'select * from product')
    object qrypro_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrysupplier_sup_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      FieldName = 'supplier_sup_id'
      Origin = 'supplier_sup_id'
    end
    object qryproduct_class_prc_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      FieldName = 'product_class_prc_id'
      Origin = 'product_class_prc_id'
    end
    object qryproduct_class_sub_prs_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub-Classe'
      FieldName = 'product_class_sub_prs_id'
      Origin = 'product_class_sub_prs_id'
    end
    object qrymanufacturer_man_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fabricante'
      FieldName = 'manufacturer_man_id'
      Origin = 'manufacturer_man_id'
    end
    object qryproduct_unit_pru_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unid. Medida'
      FieldName = 'product_unit_pru_id'
      Origin = 'product_unit_pru_id'
    end
    object qrybrand_bra_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Marca'
      FieldName = 'brand_bra_id'
      Origin = 'brand_bra_id'
    end
    object qrypro_barcod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'pro_barcod'
      Origin = 'pro_barcod'
      Size = 25
    end
    object qrypro_barcod_manufacturer: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra - Fabr.'
      FieldName = 'pro_barcod_manufacturer'
      Origin = 'pro_barcod_manufacturer'
      Size = 25
    end
    object qrypro_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'pro_type'
      Origin = 'pro_type'
      FixedChar = True
      Size = 1
    end
    object qrypro_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 50
    end
    object qrypro_tag: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TAGs'
      FieldName = 'pro_tag'
      Origin = 'pro_tag'
      Size = 255
    end
    object qrypro_description: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pro_description'
      Origin = 'pro_description'
      Size = 255
    end
    object qrypro_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'pro_status'
      Origin = 'pro_status'
      FixedChar = True
      Size = 1
    end
    object qrypro_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pro_dt_registration'
      Origin = 'pro_dt_registration'
    end
    object qryncm_ncm_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM ID'
      FieldName = 'ncm_ncm_id'
      Origin = 'ncm_ncm_id'
    end
    object qrypro_height: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Altura'
      FieldName = 'pro_height'
      Origin = 'pro_height'
      Precision = 12
    end
    object qrypro_width: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Largura'
      FieldName = 'pro_width'
      Origin = 'pro_width'
      Precision = 12
    end
    object qrypro_length: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Comprimento'
      FieldName = 'pro_length'
      Origin = 'pro_length'
      Precision = 12
    end
    object qrypro_weight: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Peso'
      FieldName = 'pro_weight'
      Origin = 'pro_weight'
      Precision = 12
    end
    object qrypro_liter: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Litro'
      FieldName = 'pro_liter'
      Origin = 'pro_liter'
      Precision = 12
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
  object qry_ncm: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ncm')
    Left = 584
    Top = 96
  end
  object ds_ncm: TDataSource
    DataSet = qry_ncm
    Left = 616
    Top = 96
  end
  object qry_supplier: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from supplier')
    Left = 584
    Top = 144
  end
  object ds_supplier: TDataSource
    DataSet = qry_supplier
    Left = 616
    Top = 144
  end
  object qry_manufacturer: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from manufacturer')
    Left = 520
    Top = 144
  end
  object ds_manufacturer: TDataSource
    DataSet = qry_manufacturer
    Left = 552
    Top = 144
  end
  object qry_brand: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from brand')
    Left = 648
    Top = 96
  end
  object ds_brand: TDataSource
    DataSet = qry_brand
    Left = 680
    Top = 96
  end
  object qry_product_class: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product_class')
    Left = 648
    Top = 144
  end
  object ds_product_class: TDataSource
    DataSet = qry_product_class
    Left = 680
    Top = 144
  end
  object qry_product_class_sub: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'product_class_prc_id'
    MasterSource = ds_product_class
    MasterFields = 'prc_id'
    DetailFields = 'product_class_prc_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product_class_sub')
    Left = 416
    Top = 88
  end
  object ds_product_class_sub: TDataSource
    DataSet = qry_product_class_sub
    Left = 488
    Top = 96
  end
  object qry_product_unit: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product_unit')
    Left = 520
    Top = 96
  end
  object ds_product_unit: TDataSource
    DataSet = qry_product_unit
    Left = 552
    Top = 96
  end
  object qry_product_input: TFDQuery
    Active = True
    IndexFieldNames = 'product_pro_id_input'
    MasterSource = ds
    MasterFields = 'pro_id'
    DetailFields = 'product_pro_id_input'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product_input'
      'where product_pro_id_input = :pro_id')
    Left = 346
    Top = 107
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
  end
  object ds_product_input: TDataSource
    DataSet = qry_product_input
    Left = 423
    Top = 154
  end
  object qry_product_list_input: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select pro_id,pro_name from product'#13#10#10
      'order by pro_name ')
    Left = 655
    Top = 202
    object qry_product_list_inputpro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_product_list_inputpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 50
    end
  end
  object ds_product_list_input: TDataSource
    DataSet = qry_product_list_input
    Left = 688
    Top = 200
  end
end
