inherited frm_product: Tfrm_product
  Caption = 'Manuten'#231#227'o: Produtos e Servi'#231'os'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1pro_id: TcxGridDBColumn
            DataBinding.FieldName = 'pro_id'
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
          object cxGrid_1DBTableView1pro_initials: TcxGridDBColumn
            DataBinding.FieldName = 'pro_initials'
            Width = 250
          end
          object cxGrid_1DBTableView1pro_tag: TcxGridDBColumn
            DataBinding.FieldName = 'pro_tag'
            Width = 200
          end
          object cxGrid_1DBTableView1pro_gender: TcxGridDBColumn
            DataBinding.FieldName = 'pro_gender'
            Width = 50
          end
          object cxGrid_1DBTableView1pro_barcod: TcxGridDBColumn
            DataBinding.FieldName = 'pro_barcod'
            Width = 150
          end
          object cxGrid_1DBTableView1pro_barcod_manufacturer: TcxGridDBColumn
            DataBinding.FieldName = 'pro_barcod_manufacturer'
            Width = 150
          end
          object cxGrid_1DBTableView1pro_height: TcxGridDBColumn
            DataBinding.FieldName = 'pro_height'
            Width = 75
          end
          object cxGrid_1DBTableView1pro_width: TcxGridDBColumn
            DataBinding.FieldName = 'pro_width'
            Width = 75
          end
          object cxGrid_1DBTableView1pro_length: TcxGridDBColumn
            DataBinding.FieldName = 'pro_length'
            Width = 75
          end
          object cxGrid_1DBTableView1pro_weight: TcxGridDBColumn
            DataBinding.FieldName = 'pro_weight'
            Width = 75
          end
          object cxGrid_1DBTableView1pro_liter: TcxGridDBColumn
            DataBinding.FieldName = 'pro_liter'
            Width = 75
          end
          object cxGrid_1DBTableView1pro_delivery_term: TcxGridDBColumn
            DataBinding.FieldName = 'pro_delivery_term'
            Width = 80
          end
          object cxGrid_1DBTableView1pro_status: TcxGridDBColumn
            DataBinding.FieldName = 'pro_status'
            Width = 50
          end
          object cxGrid_1DBTableView1pro_deleted_at: TcxGridDBColumn
            DataBinding.FieldName = 'pro_deleted_at'
            Width = 125
          end
          object cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'pro_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
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
            object dbcmb_type: TcxDBComboBox [2]
              Left = 77
              Top = 103
              DataBinding.DataField = 'pro_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoWidth = False
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 250
              Properties.Items.Strings = (
                'P'
                'S')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_name: TcxDBTextEdit [3]
              Left = 77
              Top = 130
              DataBinding.DataField = 'pro_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 378
            end
            object dbedt_barcod: TcxDBTextEdit [4]
              Left = 77
              Top = 238
              DataBinding.DataField = 'pro_barcod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 145
            end
            object dbedt_barcod_manufacturer: TcxDBTextEdit [5]
              Left = 323
              Top = 238
              DataBinding.DataField = 'pro_barcod_manufacturer'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 13
              Width = 132
            end
            object dbmem_description: TcxDBMemo [6]
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
            object loopComboxNCM: TcxLookupComboBox [7]
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
              Style.HotTrack = False
              TabOrder = 5
              Width = 145
            end
            object looComboxFornecedor: TcxLookupComboBox [8]
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
              Style.HotTrack = False
              TabOrder = 6
              Width = 378
            end
            object looComboxFabricante: TcxLookupComboBox [9]
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
              Style.HotTrack = False
              TabOrder = 8
              Width = 378
            end
            object looComboxUnidMedida: TcxLookupComboBox [10]
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
              Style.HotTrack = False
              TabOrder = 7
              Width = 145
            end
            object looCombxMarca: TcxLookupComboBox [11]
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
              Style.HotTrack = False
              TabOrder = 9
              Width = 145
            end
            object looComboxClasse: TcxLookupComboBox [12]
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
              Style.HotTrack = False
              TabOrder = 10
              Width = 145
            end
            object looComboxSub_Classe: TcxLookupComboBox [13]
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
              Style.HotTrack = False
              TabOrder = 11
              Width = 132
            end
            object dbchk_status: TcxDBCheckBox [14]
              Left = 386
              Top = 38
              Caption = 'Status'
              DataBinding.DataField = 'pro_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = 1
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahRight
              ItemIndex = 4
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo'
              Control = dbcmb_type
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
              Control = dbedt_name
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
              Control = dbedt_barcod
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
              Control = dbedt_barcod_manufacturer
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 132
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = dbmem_description
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 6
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
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Medidas e Pesos'
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
            object dbedt_height: TcxDBCurrencyEdit
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
            object dbedt_width: TcxDBCurrencyEdit
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
            object dbedt_length: TcxDBCurrencyEdit
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
            object dbedt_weight: TcxDBCurrencyEdit
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
            object dbedt_liter: TcxDBCurrencyEdit
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
              Control = dbedt_height
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
              Control = dbedt_width
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Comprimento'
              Control = dbedt_length
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
              Control = dbedt_weight
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
              Control = dbedt_liter
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited ActionList_1: TActionList
    inherited Action_save: TAction
      OnExecute = Action_saveExecute
    end
  end
  inherited qry: TFDQuery [5]
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
  inherited schadp: TFDSchemaAdapter [9]
  end
  inherited frxReport_1: TfrxReport [10]
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43290.577698993050000000
    Left = 671
    Datasets = <
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
        Top = 449.764070000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSetName = 'produto'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 4.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 0.377952760000000000
          Top = 24.677180000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 106.385900000000000000
          Top = 4.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
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
          AllowVectorExport = True
          Left = 501.811380000000000000
          Top = 4.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
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
        DataSetName = 'produto'
        RowCount = 0
        object produtopro_id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 1.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'pro_id'
          DataSetName = 'produto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[produto."pro_id"]')
        end
        object produtopro_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 106.385900000000000000
          Top = 1.779530000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'pro_name'
          DataSetName = 'produto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[produto."pro_name"]')
        end
        object produtopru_initials: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 501.811380000000000000
          Top = 1.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'pru_initials'
          DataSetName = 'produto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[produto."pru_initials"]')
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 24.236240000000000000
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
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 24.236240000000000000
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
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 0.377952760000000000
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 0.377952760000000000
          Top = 57.692950000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  inherited mem: TFDMemTable [11]
    Active = True
    object mempro_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      Size = 32
    end
    object memmaterial_mat_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Material'
      FieldName = 'material_mat_cod'
      Origin = 'material_mat_cod'
      Size = 32
    end
    object memsupplier_sup_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      FieldName = 'supplier_sup_cod'
      Origin = 'supplier_sup_cod'
      Size = 32
    end
    object memproduct_class_prc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      FieldName = 'product_class_prc_cod'
      Origin = 'product_class_prc_cod'
      Size = 32
    end
    object memproduct_class_sub_prs_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub-Classe'
      FieldName = 'product_class_sub_prs_cod'
      Origin = 'product_class_sub_prs_cod'
      Size = 32
    end
    object memmanufacturer_man_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fabricante'
      FieldName = 'manufacturer_man_cod'
      Origin = 'manufacturer_man_cod'
      Size = 32
    end
    object membrand_bra_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Marca'
      FieldName = 'brand_bra_cod'
      Origin = 'brand_bra_cod'
      Size = 32
    end
    object memncm_ncm_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM'
      FieldName = 'ncm_ncm_cod'
      Origin = 'ncm_ncm_cod'
      Size = 32
    end
    object memproduct_unit_pru_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unid.'
      FieldName = 'product_unit_pru_cod'
      Origin = 'product_unit_pru_cod'
      Size = 32
    end
    object mempro_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object mempro_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'pro_type'
      Origin = 'pro_type'
      FixedChar = True
      Size = 1
    end
    object mempro_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 85
    end
    object mempro_initials: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sigla'
      FieldName = 'pro_initials'
      Origin = 'pro_initials'
      Size = 85
    end
    object mempro_tag: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TAGS'
      FieldName = 'pro_tag'
      Origin = 'pro_tag'
      Size = 255
    end
    object mempro_description: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pro_description'
      Origin = 'pro_description'
      BlobType = ftMemo
    end
    object mempro_gender: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'pro_gender'
      Origin = 'pro_gender'
      FixedChar = True
      Size = 1
    end
    object mempro_annotation: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'pro_annotation'
      Origin = 'pro_annotation'
      BlobType = ftMemo
    end
    object mempro_barcod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'pro_barcod'
      Origin = 'pro_barcod'
      Size = 25
    end
    object mempro_barcod_manufacturer: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra Fabricante'
      FieldName = 'pro_barcod_manufacturer'
      Origin = 'pro_barcod_manufacturer'
      Size = 25
    end
    object mempro_height: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Altura'
      FieldName = 'pro_height'
      Origin = 'pro_height'
      Precision = 12
    end
    object mempro_width: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Largura'
      FieldName = 'pro_width'
      Origin = 'pro_width'
      Precision = 12
    end
    object mempro_length: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Comprimento'
      FieldName = 'pro_length'
      Origin = 'pro_length'
      Precision = 12
    end
    object mempro_weight: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Peso'
      FieldName = 'pro_weight'
      Origin = 'pro_weight'
      Precision = 12
    end
    object mempro_liter: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Litro'
      FieldName = 'pro_liter'
      Origin = 'pro_liter'
      Precision = 12
    end
    object mempro_delivery_term: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prazo Entrega'
      FieldName = 'pro_delivery_term'
      Origin = 'pro_delivery_term'
    end
    object mempro_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'pro_status'
      Origin = 'pro_status'
    end
    object mempro_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'pro_deleted_at'
      Origin = 'pro_deleted_at'
    end
    object mempro_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pro_dt_registration'
      Origin = 'pro_dt_registration'
    end
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [12]
  end
  inherited PopupMenu_1: TPopupMenu [13]
  end
  inherited cxImageList_1: TcxImageList [14]
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [15]
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
