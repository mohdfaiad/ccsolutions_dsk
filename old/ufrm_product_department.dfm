inherited frm_product_department: Tfrm_product_department
  Caption = 'Manuten'#231#227'o: Departamentos e Se'#231#245'es'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1prd_id: TcxGridDBColumn
            Caption = 'C'#243'digo ID'
            DataBinding.FieldName = 'prd_id'
            Width = 75
          end
          object cxGrid_1DBTableView1prd_name: TcxGridDBColumn
            Caption = 'Departamento'
            DataBinding.FieldName = 'prd_name'
            Width = 250
          end
          object cxGrid_1DBTableView1prd_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'prd_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 91
              DataBinding.DataField = 'prd_id'
              ExplicitLeft = 91
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 264
              DataBinding.DataField = 'prd_dt_registration'
              ExplicitLeft = 264
            end
            object cxGrid1: TcxGrid [2]
              Left = 17
              Top = 168
              Width = 619
              Height = 200
              TabOrder = 3
              object cxGrid1DBTableView1: TcxGridDBTableView
                PopupMenu = pupMenuDepartment
                Navigator.Buttons.ConfirmDelete = True
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 12
                DataController.DataSource = ds_product_sector
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                OptionsData.Editing = False
                object cxGrid1DBTableView1prs_id: TcxGridDBColumn
                  Caption = 'C'#243'digo ID'
                  DataBinding.FieldName = 'prs_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1prs_name: TcxGridDBColumn
                  Caption = 'Se'#231#227'o'
                  DataBinding.FieldName = 'prs_name'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Width = 250
                end
                object cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg'
                  DataBinding.FieldName = 'prs_dt_registration'
                  Options.Editing = False
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 91
              Top = 103
              DataBinding.DataField = 'prd_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            object edtSecoes: TcxTextEdit [4]
              Left = 58
              Top = 374
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              OnKeyDown = edtSecoesKeyDown
              Width = 336
            end
            object btnSalvar_Item: TcxButton [5]
              Left = 400
              Top = 374
              Width = 25
              Height = 25
              Action = act_save_depart_secoes
              TabOrder = 5
            end
            object btnEditar_Item: TcxButton [6]
              Left = 431
              Top = 374
              Width = 25
              Height = 25
              Action = act_edit_depart_secoes
              TabOrder = 6
            end
            object btnCancel_Item: TcxButton [7]
              Left = 462
              Top = 374
              Width = 25
              Height = 25
              Action = act_cancel_depart_secoes
              TabOrder = 7
            end
            object btnExcluir_Item: TcxButton [8]
              Left = 493
              Top = 374
              Width = 25
              Height = 25
              Action = act_delete_depart_secoes
              TabOrder = 8
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Setores'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 633
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Departamento'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Se'#231#245'es'
              Offsets.Left = 2
              Control = edtSecoes
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 336
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnSalvar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnEditar_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnCancel_Item
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 25
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
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
    inherited cxBarEditItem_1: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\modulo\estoque\departamento'
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
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select product_department.*, hex(prd_cod)as CodDepartment from p' +
        'roduct_department'#13#10#10
      'where contract_ctr_cod =:ctr_cod'#10
      'and prd_deleted_at is null')
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qryprd_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'prd_name'
      Origin = 'prd_name'
      Required = True
      Size = 35
    end
    object qryprd_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'prd_dt_registration'
      Origin = 'prd_dt_registration'
    end
    object qryprd_cod: TBytesField
      FieldName = 'prd_cod'
      Origin = 'prd_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryprd_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prd_id'
      Origin = 'prd_id'
    end
    object qryprd_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prd_deleted_at'
      Origin = 'prd_deleted_at'
    end
    object qryCodDepartment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodDepartment'
      Origin = 'CodDepartment'
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
    ReportOptions.LastChange = 43286.590953298600000000
    Datasets = <
      item
        DataSet = frx_db_departamento
        DataSetName = 'Departamento'
      end
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frx_db_secoes
        DataSetName = 'Secoes'
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
        Top = 548.031850000000000000
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
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_secoes
        DataSetName = 'Secoes'
        RowCount = 0
        object Line2: TfrxLineView
          Left = 0.377952760000000000
          Top = 24.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
        object Memo11: TfrxMemoView
          Left = 124.724490000000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        DataSet = frx_db_secoes
        DataSetName = 'Secoes'
        RowCount = 0
        object Secoesprs_id: TfrxMemoView
          IndexTag = 1
          Left = 1.889763780000000000
          Top = 2.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'prs_id'
          DataSet = frx_db_secoes
          DataSetName = 'Secoes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Secoes."prs_id"]')
        end
        object Secoesprs_name: TfrxMemoView
          IndexTag = 1
          Left = 124.724490000000000000
          Top = 2.000000000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'prs_name'
          DataSet = frx_db_secoes
          DataSetName = 'Secoes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Secoes."prs_name"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 117.165354330000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 0.377952760000000000
          Top = 37.236240000000000000
          Width = 718.110700000000000000
          Height = 56.692913390000000000
          Frame.Typ = []
        end
        object Departamentoprd_id: TfrxMemoView
          IndexTag = 1
          Left = 116.842610000000000000
          Top = 44.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'prd_id'
          DataSet = frx_db_departamento
          DataSetName = 'Departamento'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Departamento."prd_id"]')
        end
        object Departamentoprd_name: TfrxMemoView
          IndexTag = 1
          Left = 117.283550000000000000
          Top = 69.472480000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          DataField = 'prd_name'
          DataSet = frx_db_departamento
          DataSetName = 'Departamento'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Departamento."prd_name"]')
        end
        object Memo12: TfrxMemoView
          Left = 1.889763780000000000
          Top = 44.795300000000000000
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
        object Memo17: TfrxMemoView
          Left = 1.889763780000000000
          Top = 69.472480000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Departamento:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 0.377952760000000000
          Top = 17.338590000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DEPARTAMENTO E SE'#199#213'ES')
          ParentFont = False
        end
        object enterpriseent_add_bus_city: TfrxMemoView
          IndexTag = 1
          Align = baRight
          Left = 551.811380000000000000
          Top = 17.338590000000000000
          Width = 166.299320000000000000
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
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 0.377952760000000000
          Top = 2.559060000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object ds_product_sector: TDataSource
    DataSet = qry_product_sector
    Left = 760
    Top = 160
  end
  object Action_Depart_Secoes: TActionList
    Images = cxImageList_1
    Left = 792
    Top = 160
    object act_save_depart_secoes: TAction
      ImageIndex = 6
      OnExecute = act_save_depart_secoesExecute
    end
    object act_edit_depart_secoes: TAction
      ImageIndex = 5
      OnExecute = act_edit_depart_secoesExecute
    end
    object act_cancel_depart_secoes: TAction
      ImageIndex = 7
      OnExecute = act_cancel_depart_secoesExecute
    end
    object act_delete_depart_secoes: TAction
      ImageIndex = 8
      OnExecute = act_delete_depart_secoesExecute
    end
  end
  object qry_product_sector: TFDQuery
    Active = True
    IndexFieldNames = 'product_department_prd_cod'
    MasterSource = ds
    MasterFields = 'prd_cod'
    DetailFields = 'product_department_prd_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product_sector.*, hex(prs_cod)as CodSetor from product_se' +
        'ctor'#13#10#10
      'where product_department_prd_cod =:prd_cod'#13#10#10
      'and prs_deleted_at is null')
    Left = 728
    Top = 160
    ParamData = <
      item
        Name = 'PRD_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_product_sectorprs_cod: TBytesField
      FieldName = 'prs_cod'
      Origin = 'prs_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_product_sectorproduct_department_prd_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_department_prd_cod'
      Origin = 'product_department_prd_cod'
    end
    object qry_product_sectorprs_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'prs_id'
      Origin = 'prs_id'
    end
    object qry_product_sectorprs_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prs_name'
      Origin = 'prs_name'
      Size = 35
    end
    object qry_product_sectorprs_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_deleted_at'
      Origin = 'prs_deleted_at'
    end
    object qry_product_sectorprs_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prs_dt_registration'
      Origin = 'prs_dt_registration'
    end
    object qry_product_sectorCodSetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodSetor'
      Origin = 'CodSetor'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object pupMenuDepartment: TPopupMenu
    Left = 823
    Top = 160
    object Excluir2: TMenuItem
      Action = act_delete_depart_secoes
      Caption = 'Excluir'
    end
    object Editar2: TMenuItem
      Action = act_edit_depart_secoes
      Caption = 'Editar'
    end
    object Cancelar1: TMenuItem
      Action = act_cancel_depart_secoes
      Caption = 'Cancelar'
    end
  end
  object frx_db_departamento: TfrxDBDataset
    UserName = 'Departamento'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 256
    Top = 48
  end
  object frx_db_secoes: TfrxDBDataset
    UserName = 'Secoes'
    CloseDataSource = False
    DataSet = qry_product_sector
    BCDToCurrency = False
    Left = 224
    Top = 48
  end
end
