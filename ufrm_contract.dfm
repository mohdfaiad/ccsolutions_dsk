inherited frm_contract: Tfrm_contract
  Caption = 'Manuten'#231#227'o: Contrato'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1ctr_id: TcxGridDBColumn
            Caption = 'C'#243'd.: ID.'
            DataBinding.FieldName = 'ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ctr_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_first_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ctr_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_last_name'
            Width = 250
          end
          object cxGrid_1DBTableView1ctr_email: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_email'
            Width = 200
          end
          object cxGrid_1DBTableView1ctr_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1ctr_dt_birth_open: TcxGridDBColumn
            Caption = 'Dt. Anivers'#225'rio'
            DataBinding.FieldName = 'ctr_dt_birth'
            Width = 120
          end
          object cxGrid_1DBTableView1ctr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_dt_registration'
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
              Left = 63
              DataBinding.DataField = 'ctr_id'
              ExplicitLeft = 63
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 275
              DataBinding.DataField = 'ctr_dt_registration'
              ExplicitLeft = 275
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 63
              Top = 103
              DataBinding.DataField = 'ctr_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 342
            end
            object cxDBTextEdit2: TcxDBTextEdit [3]
              Left = 63
              Top = 130
              DataBinding.DataField = 'ctr_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 342
            end
            object cxDBTextEdit3: TcxDBTextEdit [4]
              Left = 63
              Top = 157
              DataBinding.DataField = 'ctr_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 342
            end
            object cxDBTextEdit4: TcxDBTextEdit [5]
              Left = 63
              Top = 184
              DataBinding.DataField = 'ctr_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [6]
              Left = 275
              Top = 184
              DataBinding.DataField = 'ctr_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 127
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 3
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Raz'#227'o'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Fantasia'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Data Anivers'#225'rio'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 212
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 127
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarButton_first: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_prior: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_next: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_last: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_insert: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_delete: TdxBarButton
      Visible = ivNever
    end
  end
  inherited PopupMenu_1: TPopupMenu
    inherited Primeiro1: TMenuItem
      Enabled = False
    end
    inherited Anterior1: TMenuItem
      Enabled = False
    end
    inherited Prximo1: TMenuItem
      Enabled = False
    end
    inherited ltimo1: TMenuItem
      Enabled = False
    end
    inherited Inserir1: TMenuItem
      Enabled = False
    end
    inherited Excluir1: TMenuItem
      Enabled = False
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    IndexFieldNames = 'ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from contract')
    object qryctr_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'ctr_first_name'
      Origin = 'ctr_first_name'
      Size = 50
    end
    object qryctr_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fantasia'
      FieldName = 'ctr_last_name'
      Origin = 'ctr_last_name'
      Size = 50
    end
    object qryctr_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_email'
      Origin = 'ctr_email'
      Size = 65
    end
    object qryctr_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'ctr_phone1'
      Origin = 'ctr_phone1'
      Size = 15
    end
    object qryctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_dt_registration'
      Origin = 'ctr_dt_registration'
    end
    object qryctr_cod: TBytesField
      FieldName = 'ctr_cod'
      Required = True
    end
    object qryctr_dt_birth: TDateField
      FieldName = 'ctr_dt_birth'
    end
    object qryctr_user_license: TWordField
      FieldName = 'ctr_user_license'
    end
    object qryctr_status: TStringField
      FieldName = 'ctr_status'
      FixedChar = True
      Size = 1
    end
    object qryctr_deleted_at: TDateTimeField
      FieldName = 'ctr_deleted_at'
    end
    object qryctr_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_id'
      Origin = 'ctr_id'
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
    ReportOptions.LastChange = 43286.747143391200000000
    Datasets = <
      item
        DataSet = frx_db_contrato
        DataSetName = 'Contrato'
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
        Height = 26.456695350000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 453.543600000000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 196.535560000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Top = 39.181200000000000000
          Width = 718.110700000000000000
          Height = 151.181200000000000000
          Frame.Typ = []
        end
        object Contratoctr_first_name: TfrxMemoView
          IndexTag = 1
          Left = 116.787477240000000000
          Top = 94.417440000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_first_name'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_first_name"]')
        end
        object Contratoctr_last_name: TfrxMemoView
          IndexTag = 1
          Left = 116.787477240000000000
          Top = 119.094620000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_last_name'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_last_name"]')
        end
        object Contratoctr_email: TfrxMemoView
          IndexTag = 1
          Left = 415.370347240000000000
          Top = 167.110390000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_email'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_email"]')
        end
        object Contratoctr_phone1: TfrxMemoView
          IndexTag = 1
          Left = 116.787477240000000000
          Top = 167.110390000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_phone1'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_phone1"]')
        end
        object Contratoctr_status: TfrxMemoView
          IndexTag = 1
          Left = 350.708937240000000000
          Top = 43.960730000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_status'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_status"]')
        end
        object Contratoctr_user_license: TfrxMemoView
          IndexTag = 1
          Left = 116.787477240000000000
          Top = 68.874150000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_user_license'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_user_license"]')
        end
        object Contratoctr_id: TfrxMemoView
          IndexTag = 1
          Left = 116.787477240000000000
          Top = 43.960730000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_id'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_id"]')
        end
        object Contratoctr_dt_birth: TfrxMemoView
          IndexTag = 1
          Left = 116.787477240000000000
          Top = 143.228510000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_dt_birth'
          DataSet = frx_db_contrato
          DataSetName = 'Contrato'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Contrato."ctr_dt_birth"]')
        end
        object Memo1: TfrxMemoView
          Left = 1.511811020000000000
          Top = 43.960730000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 1.511811020000000000
          Top = 94.417440000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 1.511811020000000000
          Top = 119.094620000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sobrenome:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 1.511811020000000000
          Top = 167.110390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 343.559277240000000000
          Top = 167.110390000000000000
          Width = 60.472480000000000000
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
        object Memo20: TfrxMemoView
          Left = 275.118337240000000000
          Top = 43.960730000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 1.511811020000000000
          Top = 68.874150000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Licen'#231'as:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 1.511811020000000000
          Top = 143.228510000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nascimento:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 18.897650000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Contrato')
          ParentFont = False
        end
        object enterpriseent_add_bus_city: TfrxMemoView
          IndexTag = 1
          Align = baRight
          Left = 540.472790000000000000
          Top = 19.677180000000000000
          Width = 177.637910000000000000
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
            
              '[enterprise."ent_add_bus_city"] / [enterprise."ent_add_bus_state' +
              '"] - [Date]')
          ParentFont = False
        end
      end
    end
  end
  object frx_db_contrato: TfrxDBDataset
    UserName = 'Contrato'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 672
    Top = 56
  end
end
