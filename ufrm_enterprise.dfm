inherited frm_enterprise: Tfrm_enterprise
  Caption = 'Manuten'#231#227'o: Empresas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 240
              ExplicitLeft = 240
            end
            object dbcmb_type: TcxDBComboBox [2]
              Left = 59
              Top = 103
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
            object dbedt_im: TcxDBTextEdit [3]
              Left = 422
              Top = 278
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object dbedt_dt_open: TcxDBDateEdit [4]
              Left = 240
              Top = 103
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            object dbedt_cnpj: TcxDBTextEdit [5]
              Left = 59
              Top = 278
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object dbedt_ie: TcxDBTextEdit [6]
              Left = 240
              Top = 278
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 130
            end
            object dbedt_suframa: TcxDBTextEdit [7]
              Left = 594
              Top = 278
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 14
              Width = 139
            end
            object dbcmb_status: TcxDBComboBox [8]
              Left = 422
              Top = 103
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dbedt_first_name: TcxDBTextEdit [9]
              Left = 59
              Top = 130
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 311
            end
            object dbedt_nickname: TcxDBTextEdit [10]
              Left = 59
              Top = 157
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 311
            end
            object dbedt_last_name: TcxDBTextEdit [11]
              Left = 422
              Top = 130
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 311
            end
            object dbedt_email: TcxDBTextEdit [12]
              Left = 422
              Top = 157
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 311
            end
            object cxImgLogo: TcxImage [13]
              Left = 739
              Top = 103
              Properties.FitMode = ifmStretch
              Properties.GraphicClassName = 'TdxPNGImage'
              Style.HotTrack = False
              TabOrder = 9
              Height = 100
              Width = 140
            end
            object btnLogo: TcxButton [14]
              Left = 739
              Top = 209
              Width = 140
              Height = 25
              Caption = 'Logo'
              TabOrder = 10
              OnClick = btnLogoClick
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
              ControlOptions.OriginalWidth = 139
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
              Parent = dxLayoutAutoCreatedGroup4
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
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Apelido'
              Control = dbedt_nickname
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Fantasia'
              Control = dbedt_last_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = dbedt_email
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 311
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              Control = cxImgLogo
              ControlOptions.OriginalHeight = 100
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnLogo
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 75
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup8
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup8
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
          object dxLayoutControl_address: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object dbedt_city: TcxDBTextEdit
              Left = 373
              Top = 65
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dbedt_state: TcxDBTextEdit
              Left = 538
              Top = 65
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object dbedt_country: TcxDBTextEdit
              Left = 709
              Top = 65
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object dbedt_phone1: TcxDBTextEdit
              Left = 55
              Top = 130
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object dbedt_phone2: TcxDBTextEdit
              Left = 214
              Top = 130
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object dbedt_zipcode: TcxDBButtonEdit
              Left = 55
              Top = 38
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
            object dbedt_address: TcxDBTextEdit
              Left = 214
              Top = 38
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 280
            end
            object dbedt_number: TcxDBTextEdit
              Left = 538
              Top = 38
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dbedt_street: TcxDBTextEdit
              Left = 709
              Top = 38
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbedt_complement: TcxDBTextEdit
              Left = 55
              Top = 65
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 274
            end
            object dbedt_phone3: TcxDBTextEdit
              Left = 373
              Top = 130
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object dbedt_phone4: TcxDBTextEdit
              Left = 538
              Top = 130
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object dbedt_contact: TcxDBTextEdit
              Left = 709
              Top = 130
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
              Control = dbedt_city
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
              Control = dbedt_state
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
              Control = dbedt_country
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
              Control = dbedt_zipcode
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
              Control = dbedt_address
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
              Control = dbedt_number
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
              Control = dbedt_street
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
              Control = dbedt_complement
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
  inherited ActionList_1: TActionList
    object Action_insert_image: TAction
      Caption = 'Inserir'
      ImageIndex = 4
      OnExecute = Action_insert_imageExecute
    end
    object Action_delete_image: TAction
      Caption = 'Deletar'
      ImageIndex = 8
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
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'call proc_enterprise_read(:contract_ctr_cod)')
    ParamData = <
      item
        Name = 'CONTRACT_CTR_COD'
        DataType = ftWideString
        ParamType = ptInput
        Value = ''
      end>
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
    ReportOptions.LastChange = 43290.579703252310000000
    Datasets = <
      item
        DataSet = frx_db_empresa
        DataSetName = 'Empresa'
      end
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
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
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 735
    Top = 74
  end
  object PopupMenu1: TPopupMenu
    Images = cxImageList_1
    Left = 799
    Top = 74
    object Inserir2: TMenuItem
      Action = Action_insert_image
    end
    object Deletar1: TMenuItem
      Action = Action_delete_image
    end
  end
  object OpenDialogLogo: TOpenDialog
    FileName = '*.png;*.jpg'
    Left = 767
    Top = 74
  end
  object frx_db_empresa: TfrxDBDataset
    UserName = 'Empresa'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 671
    Top = 74
  end
  object acbr_cep: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    PesquisarIBGE = True
    Left = 703
    Top = 74
  end
  object str_proc_enterprise_create: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_enterprise_create'
    Left = 919
    Top = 218
    ParamData = <
      item
        Position = 1
        Name = 'p_contract_ctr_cod'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end
      item
        Position = 2
        Name = 'p_ent_type'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = 'p_ent_first_name'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 4
        Name = 'p_ent_last_name'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 5
        Name = 'p_ent_nickname'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 6
        Name = 'p_ent_email'
        DataType = ftString
        ParamType = ptInput
        Size = 65
      end
      item
        Position = 7
        Name = 'p_ent_cnpj'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 8
        Name = 'p_ent_ie'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 9
        Name = 'p_ent_im'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 10
        Name = 'p_ent_suframa'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 11
        Name = 'p_ent_add_bus_zipcode'
        DataType = ftString
        ParamType = ptInput
        Size = 9
      end
      item
        Position = 12
        Name = 'p_ent_add_bus_address'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 13
        Name = 'p_ent_add_bus_number'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 14
        Name = 'p_ent_add_bus_street'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 15
        Name = 'p_ent_add_bus_complement'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 16
        Name = 'p_ent_add_bus_city'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 17
        Name = 'p_ent_add_bus_state'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 18
        Name = 'p_ent_add_bus_country'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 19
        Name = 'p_ent_phone1'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 20
        Name = 'p_ent_phone2'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 21
        Name = 'p_ent_phone3'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 22
        Name = 'p_ent_phone4'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 23
        Name = 'p_ent_contact'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 24
        Name = 'p_ent_dt_open'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 25
        Name = 'p_ent_image1'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Position = 26
        Name = 'p_ent_status'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object str_proc_enterprise_update: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_enterprise_update'
    Left = 919
    Top = 266
    ParamData = <
      item
        Position = 1
        Name = 'p_ent_cod'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end
      item
        Position = 2
        Name = 'p_ent_type'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = 'p_ent_first_name'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 4
        Name = 'p_ent_last_name'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 5
        Name = 'p_ent_nickname'
        DataType = ftString
        ParamType = ptInput
        Size = 85
      end
      item
        Position = 6
        Name = 'p_ent_email'
        DataType = ftString
        ParamType = ptInput
        Size = 65
      end
      item
        Position = 7
        Name = 'p_ent_cnpj'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 8
        Name = 'p_ent_ie'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 9
        Name = 'p_ent_im'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 10
        Name = 'p_ent_suframa'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 11
        Name = 'p_ent_add_bus_zipcode'
        DataType = ftString
        ParamType = ptInput
        Size = 9
      end
      item
        Position = 12
        Name = 'p_ent_add_bus_address'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 13
        Name = 'p_ent_add_bus_number'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 14
        Name = 'p_ent_add_bus_street'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 15
        Name = 'p_ent_add_bus_complement'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 16
        Name = 'p_ent_add_bus_city'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 17
        Name = 'p_ent_add_bus_state'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 18
        Name = 'p_ent_add_bus_country'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 19
        Name = 'p_ent_phone1'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 20
        Name = 'p_ent_phone2'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 21
        Name = 'p_ent_phone3'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 22
        Name = 'p_ent_phone4'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 23
        Name = 'p_ent_contact'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 24
        Name = 'p_ent_dt_open'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 25
        Name = 'p_ent_image1'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Position = 26
        Name = 'p_ent_status'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object str_proc_enterprise_delete: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_enterprise_delete'
    Left = 919
    Top = 314
    ParamData = <
      item
        Position = 1
        Name = 'p_ent_cod'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end
      item
        Position = 2
        Name = 'p_ent_deleted_at'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
end
