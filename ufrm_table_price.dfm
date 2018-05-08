inherited frm_table_price: Tfrm_table_price
  Caption = 'Cadastro de Tabela de pre'#231'o'
  ExplicitTop = -291
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1tbp_id: TcxGridDBColumn
            Caption = 'C'#243'd. ID'
            DataBinding.FieldName = 'tbp_id'
            Width = 70
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            Caption = 'Contrato'
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 70
          end
          object cxGrid_1DBTableView1tbp_name: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'tbp_name'
            Width = 200
          end
          object cxGrid_1DBTableView1tbp_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg.'
            DataBinding.FieldName = 'tbp_dt_registration'
            Width = 125
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
        Properties.ActivePage = cxTabSheet1
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'tbp_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'tbp_dt_registration'
            end
            object dbedit_nome: TcxDBTextEdit [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'tbp_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 303
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Nome'
              Control = dbedit_nome
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Exames da  Tabela'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 17
              Top = 488
              Width = 672
              Height = 200
              Images = cxImageList_1
              TabOrder = 1
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Enabled = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Enabled = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Append.Enabled = False
                Navigator.Buttons.Delete.ImageIndex = 7
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 8
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Enabled = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Visible = True
                DataController.DataSource = ds_table_price_product
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1tpp_id: TcxGridDBColumn
                  Caption = 'C'#243'd. ID'
                  DataBinding.FieldName = 'tpp_id'
                  Width = 70
                end
                object cxGrid1DBTableView1table_price_tbp_id: TcxGridDBColumn
                  Caption = 'C'#243'd. Tabela'
                  DataBinding.FieldName = 'table_price_tbp_id'
                  Width = 70
                end
                object cxGrid1DBTableView1product_pro_id: TcxGridDBColumn
                  Caption = 'Exame'
                  DataBinding.FieldName = 'product_pro_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'pro_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'pro_name'
                    end>
                  Properties.ListSource = ds_product
                  Width = 200
                end
                object cxGrid1DBTableView1tpp_value: TcxGridDBColumn
                  Caption = 'Valor R$.'
                  DataBinding.FieldName = 'tpp_value'
                  Width = 100
                end
                object cxGrid1DBTableView1tpp_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg.'
                  DataBinding.FieldName = 'tpp_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dxLayoutControl2: TdxLayoutControl
              Left = 10
              Top = 10
              Width = 686
              Height = 444
              TabOrder = 0
              LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
              object cxRadioDesconto: TcxRadioButton
                Left = 17
                Top = 309
                Width = 191
                Height = 17
                Caption = 'Desconto (-)'
                Color = clWhite
                ParentColor = False
                TabOrder = 2
                ParentBackground = False
              end
              object cxEditPercentual: TcxTextEdit
                Left = 87
                Top = 282
                Style.HotTrack = False
                TabOrder = 1
                Text = '0'
                Width = 121
              end
              object cxRadioAcrescimo: TcxRadioButton
                Left = 214
                Top = 309
                Width = 159
                Height = 17
                Caption = 'Acr'#233'scimo (+)'
                Color = clWhite
                ParentColor = False
                TabOrder = 4
                ParentBackground = False
              end
              object cxEditValor: TcxTextEdit
                Left = 252
                Top = 282
                Style.HotTrack = False
                TabOrder = 3
                Width = 121
              end
              object cxButton1: TcxButton
                Left = 379
                Top = 282
                Width = 70
                Height = 44
                Caption = 'Confirmar'
                TabOrder = 5
                OnClick = cxButton1Click
              end
              object cxGrid2: TcxGrid
                Left = 17
                Top = 38
                Width = 720
                Height = 200
                TabOrder = 0
                object cxGrid2DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Buttons.Images = cxImageList_1
                  Navigator.Buttons.First.ImageIndex = 0
                  Navigator.Buttons.PriorPage.Visible = False
                  Navigator.Buttons.Prior.ImageIndex = 1
                  Navigator.Buttons.Next.ImageIndex = 2
                  Navigator.Buttons.NextPage.Visible = False
                  Navigator.Buttons.Last.ImageIndex = 3
                  Navigator.Buttons.Insert.ImageIndex = 4
                  Navigator.Buttons.Delete.ImageIndex = 7
                  Navigator.Buttons.Edit.ImageIndex = 5
                  Navigator.Buttons.Post.ImageIndex = 6
                  Navigator.Buttons.Cancel.ImageIndex = 8
                  Navigator.Buttons.Refresh.ImageIndex = 9
                  Navigator.Buttons.SaveBookmark.Visible = False
                  Navigator.Buttons.GotoBookmark.Visible = False
                  Navigator.Buttons.Filter.ImageIndex = 10
                  Navigator.Visible = True
                  DataController.DataSource = ds_table_price_product
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  object cxGrid2DBTableView1tpp_id: TcxGridDBColumn
                    DataBinding.FieldName = 'tpp_id'
                  end
                  object cxGrid2DBTableView1table_price_tbp_id: TcxGridDBColumn
                    DataBinding.FieldName = 'table_price_tbp_id'
                  end
                  object cxGrid2DBTableView1product_pro_id: TcxGridDBColumn
                    DataBinding.FieldName = 'product_pro_id'
                  end
                  object cxGrid2DBTableView1tpp_value: TcxGridDBColumn
                    DataBinding.FieldName = 'tpp_value'
                  end
                  object cxGrid2DBTableView1tpp_dt_registration: TcxGridDBColumn
                    DataBinding.FieldName = 'tpp_dt_registration'
                  end
                  object cxGrid2DBTableView1vlrAntigo: TcxGridDBColumn
                    DataBinding.FieldName = 'vlrAntigo'
                  end
                end
                object cxGrid2Level1: TcxGridLevel
                  GridView = cxGrid2DBTableView1
                end
              end
              object dxLayoutGroup4: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutGroup6: TdxLayoutGroup
                Parent = dxLayoutGroup4
                CaptionOptions.Text = 'Exames da tabela'
                SizeOptions.AssignedValues = [sovSizableHorz]
                SizeOptions.SizableHorz = True
                SizeOptions.Width = 734
                ButtonOptions.Buttons = <>
                Index = 0
              end
              object dxLayoutGroup7: TdxLayoutGroup
                Parent = dxLayoutGroup4
                CaptionOptions.Text = 'Op'#231#227'o para altera'#231#227'o de Pre'#231'os'
                ButtonOptions.Buttons = <>
                ItemIndex = 1
                LayoutDirection = ldHorizontal
                Index = 1
              end
              object dxLayoutItem7: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                CaptionOptions.Text = 'cxRadioButton1'
                CaptionOptions.Visible = False
                Control = cxRadioDesconto
                ControlOptions.AutoColor = True
                ControlOptions.OriginalHeight = 17
                ControlOptions.OriginalWidth = 113
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem8: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup1
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Percentual %'
                Control = cxEditPercentual
                ControlOptions.OriginalHeight = 21
                ControlOptions.OriginalWidth = 121
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutGroup7
                Index = 0
                AutoCreated = True
              end
              object dxLayoutItem9: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                CaptionOptions.Text = 'cxRadioButton2'
                CaptionOptions.Visible = False
                Control = cxRadioAcrescimo
                ControlOptions.AutoColor = True
                ControlOptions.OriginalHeight = 17
                ControlOptions.OriginalWidth = 113
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutItem10: TdxLayoutItem
                Parent = dxLayoutAutoCreatedGroup2
                AlignHorz = ahClient
                AlignVert = avTop
                CaptionOptions.Text = 'Valor $'
                Control = cxEditValor
                ControlOptions.OriginalHeight = 21
                ControlOptions.OriginalWidth = 121
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutGroup7
                Index = 1
                AutoCreated = True
              end
              object dxLayoutItem11: TdxLayoutItem
                Parent = dxLayoutGroup7
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = cxButton1
                ControlOptions.OriginalHeight = 44
                ControlOptions.OriginalWidth = 70
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutItem6: TdxLayoutItem
                Parent = dxLayoutGroup6
                Control = cxGrid2
                ControlOptions.OriginalHeight = 200
                ControlOptions.OriginalWidth = 250
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'New Group'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 686
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              Control = dxLayoutControl2
              ControlOptions.OriginalHeight = 444
              ControlOptions.OriginalWidth = 300
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
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from table_price'
      'where contract_ctr_id = :ctr_id')
    ParamData = <
      item
        Name = 'CTR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrytbp_id: TFDAutoIncField
      FieldName = 'tbp_id'
      Origin = 'tbp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrytbp_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbp_name'
      Origin = 'tbp_name'
      Size = 25
    end
    object qrytbp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'tbp_dt_registration'
      Origin = 'tbp_dt_registration'
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
  object qry_table_price_product: TFDQuery
    AfterInsert = qry_table_price_productAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'table_price_tbp_id'
    MasterSource = ds
    MasterFields = 'tbp_id'
    DetailFields = 'table_price_tbp_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select table_price_product.*,tpp_value as vlrAntigo  from table_' +
        'price_product'
      'where table_price_tbp_id = :tbp_id')
    Left = 439
    Top = 130
    ParamData = <
      item
        Name = 'TBP_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_table_price_producttpp_id: TFDAutoIncField
      FieldName = 'tpp_id'
      Origin = 'tpp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_table_price_producttable_price_tbp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_id'
      Origin = 'table_price_tbp_id'
    end
    object qry_table_price_productproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_table_price_producttpp_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tpp_value'
      Origin = 'tpp_value'
      Precision = 12
    end
    object qry_table_price_producttpp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'tpp_dt_registration'
      Origin = 'tpp_dt_registration'
    end
    object qry_table_price_productvlrAntigo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlrAntigo'
      Origin = 'tpp_value'
      ProviderFlags = []
      Precision = 12
    end
  end
  object ds_table_price_product: TDataSource
    DataSet = qry_table_price_product
    Left = 543
    Top = 130
  end
  object qry_product: TFDQuery
    Active = True
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select pro_id,pro_name from product'
      'where pro_type = '#39'S'#39
      'order by pro_name')
    Left = 407
    Top = 218
    object qry_productpro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_productpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 50
    end
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 472
    Top = 216
  end
end
