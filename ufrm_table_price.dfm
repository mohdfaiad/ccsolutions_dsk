inherited frm_table_price: Tfrm_table_price
  Caption = 'Cadastro de Tabela de pre'#231'o'
  ExplicitTop = -22
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxGrid_1: TcxGrid
        ExplicitLeft = 3
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
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxPageControl_2: TcxPageControl
        Properties.ActivePage = cxTabExames
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
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
        object cxTabExames: TcxTabSheet
          Caption = 'Exames da  Tabela'
          OnShow = cxTabExamesShow
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            DesignSize = (
              986
              472)
            object cxGrid2: TcxGrid
              Left = 17
              Top = 38
              Width = 720
              Height = 243
              Anchors = [akLeft, akTop, akBottom]
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
                  Caption = 'C'#243'd. ID'
                  DataBinding.FieldName = 'tpp_id'
                  Width = 65
                end
                object cxGrid2DBTableView1table_price_tbp_id: TcxGridDBColumn
                  Caption = 'C'#243'd. Tabela'
                  DataBinding.FieldName = 'table_price_tbp_id'
                  Width = 65
                end
                object cxGrid2DBTableView1product_pro_id: TcxGridDBColumn
                  Caption = 'Exame'
                  DataBinding.FieldName = 'pro_cod'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'pro_cod'
                  Properties.ListColumns = <
                    item
                      FieldName = 'pro_name'
                    end>
                  Properties.ListSource = ds_product
                  Properties.OnCloseUp = cxGrid2DBTableView1product_pro_idPropertiesCloseUp
                  Width = 250
                end
                object cxGrid2DBTableView1tpp_value: TcxGridDBColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'tpp_value'
                  Width = 112
                end
                object cxGrid2DBTableView1tpp_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg.'
                  DataBinding.FieldName = 'tpp_dt_registration'
                  Width = 125
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object cxGrid1: TcxGrid
              Left = 51
              Top = 297
              Width = 693
              Height = 200
              TabOrder = 1
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = ds_table_price_product
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1tpp_value: TcxGridDBColumn
                  DataBinding.FieldName = 'tpp_value'
                end
                object cxGrid1DBTableView1tpp_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'tpp_dt_registration'
                end
                object cxGrid1DBTableView1vlrAntigo: TcxGridDBColumn
                  DataBinding.FieldName = 'vlrAntigo'
                end
                object cxGrid1DBTableView1tpp_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'tpp_cod'
                end
                object cxGrid1DBTableView1table_price_tbp_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'table_price_tbp_cod'
                end
                object cxGrid1DBTableView1product_pro_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_cod'
                end
                object cxGrid1DBTableView1tpp_deleted_at: TcxGridDBColumn
                  DataBinding.FieldName = 'tpp_deleted_at'
                end
                object cxGrid1DBTableView1tpp_id: TcxGridDBColumn
                  DataBinding.FieldName = 'tpp_id'
                end
                object cxGrid1DBTableView1pro_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'pro_cod'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.AssignedValues = [sovSizableVert]
              SizeOptions.SizableVert = True
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'Exames da tabela'
              SizeOptions.AssignedValues = [sovSizableVert]
              SizeOptions.SizableVert = True
              SizeOptions.Height = 273
              SizeOptions.Width = 734
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup6
              Control = cxGrid2
              ControlOptions.OriginalHeight = 243
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'cxGrid1'
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabAlterarPreco: TcxTabSheet
          Caption = 'Alterar Pre'#231'o dos Exames'
          OnShow = cxTabAlterarPrecoShow
          object dxLayoutControl4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
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
            object cxButtonConfirma: TcxButton
              Left = 379
              Top = 282
              Width = 70
              Height = 44
              Caption = 'Confirmar'
              TabOrder = 5
              OnClick = cxButton1Click
            end
            object cxGrid3: TcxGrid
              Left = 17
              Top = 38
              Width = 720
              Height = 200
              TabOrder = 0
              object cxGridDBTableView1: TcxGridDBTableView
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
                DataController.DataSource = ds_table_price_product
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                object cxGridDBTableView1tpp_id: TcxGridDBColumn
                  Caption = 'C'#243'd. ID'
                  DataBinding.FieldName = 'tpp_id'
                  Width = 65
                end
                object cxGridDBTableView1table_price_tbp_id: TcxGridDBColumn
                  Caption = 'C'#243'd. Tabela'
                  DataBinding.FieldName = 'table_price_tbp_id'
                  Width = 65
                end
                object cxGridDBTableView1product_pro_id: TcxGridDBColumn
                  Caption = 'Exame'
                  DataBinding.FieldName = 'product_pro_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'pro_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'pro_name'
                    end>
                  Properties.ListSource = ds_product
                  Width = 250
                end
                object cxGridDBTableView1vlrAntigo: TcxGridDBColumn
                  Caption = 'Vlr. Original'
                  DataBinding.FieldName = 'vlrAntigo'
                  Width = 100
                end
                object cxGridDBTableView1tpp_value: TcxGridDBColumn
                  Caption = 'Vlr. Alterado'
                  DataBinding.FieldName = 'tpp_value'
                  Width = 100
                end
                object cxGridDBTableView1tpp_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Reg.'
                  DataBinding.FieldName = 'tpp_dt_registration'
                  Width = 125
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
            object dxLayoutGroup5: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup8: TdxLayoutGroup
              Parent = dxLayoutGroup5
              CaptionOptions.Text = 'Exames da tabela'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 734
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutGroup9: TdxLayoutGroup
              Parent = dxLayoutGroup5
              CaptionOptions.Text = 'Op'#231#227'o para altera'#231#227'o de Pre'#231'os'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              CaptionOptions.Text = 'cxRadioButton1'
              CaptionOptions.Visible = False
              Control = cxRadioDesconto
              ControlOptions.AutoColor = True
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 113
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Percentual %'
              Control = cxEditPercentual
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup9
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              CaptionOptions.Text = 'cxRadioButton2'
              CaptionOptions.Visible = False
              Control = cxRadioAcrescimo
              ControlOptions.AutoColor = True
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 113
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Valor $'
              Control = cxEditValor
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup9
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutGroup9
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = cxButtonConfirma
              ControlOptions.OriginalHeight = 44
              ControlOptions.OriginalWidth = 70
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup8
              Control = cxGrid3
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
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarManager_1Bar6: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'butonAlterarPreco'
        end>
    end
    object butonAlterarPreco: TdxBarButton
      Caption = 'Alterar Pre'#231'o'
      Category = 0
      Hint = 'Alterar Pre'#231'o'
      Visible = ivAlways
      OnClick = butonAlterarPrecoClick
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select table_price.*,concat('#39'0x'#39',hex(tbp_cod)) from table_price'
      'where tbp_deleted_at is null'
      ''
      '')
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
    object qrytbp_cod: TBytesField
      FieldName = 'tbp_cod'
      Origin = 'tbp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qrytbp_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbp_status'
      Origin = 'tbp_status'
      FixedChar = True
      Size = 1
    end
    object qrytbp_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'tbp_deleted_at'
      Origin = 'tbp_deleted_at'
    end
    object qrytbp_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'tbp_id'
      Origin = 'tbp_id'
    end
    object qryconcat0xhextbp_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'concat('#39'0x'#39',hex(tbp_cod))'
      Origin = '`concat('#39'0x'#39',hex(tbp_cod))`'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
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
    BeforePost = qry_table_price_productBeforePost
    IndexFieldNames = 'table_price_tbp_cod'
    MasterSource = ds
    MasterFields = 'tbp_cod'
    DetailFields = 'table_price_tbp_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select table_price_product.*,tpp_value as vlrAntigo,'
      
        'concat('#39'0x'#39',hex(product_pro_cod)) as pro_cod  from table_price_p' +
        'roduct'
      'where table_price_tbp_cod = :tbp_cod')
    Left = 415
    Top = 130
    ParamData = <
      item
        Name = 'TBP_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qry_table_price_producttpp_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tpp_value'
      Origin = 'tpp_value'
      DisplayFormat = ',0.00'
      currency = True
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
      DisplayFormat = ',0.00'
      currency = True
      Precision = 12
    end
    object qry_table_price_producttpp_cod: TBytesField
      FieldName = 'tpp_cod'
      Origin = 'tpp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_table_price_producttable_price_tbp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
    end
    object qry_table_price_productproduct_pro_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
    end
    object qry_table_price_producttpp_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'tpp_deleted_at'
      Origin = 'tpp_deleted_at'
    end
    object qry_table_price_producttpp_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'tpp_id'
      Origin = 'tpp_id'
    end
    object qry_table_price_productpro_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
  end
  object ds_table_price_product: TDataSource
    DataSet = qry_table_price_product
    Left = 543
    Top = 130
  end
  object qry_product: TFDQuery
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select concat('#39'0x'#39',hex(pro_cod)) as pro_cod ,pro_name,pro_cod fr' +
        'om product'
      'where pro_type = '#39'S'#39
      'order by pro_name')
    Left = 407
    Top = 218
    object qry_productpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 50
    end
    object qry_productpro_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      Size = 34
    end
    object qry_productpro_cod_1: TBytesField
      FieldName = 'pro_cod_1'
      Origin = 'pro_cod'
      Required = True
    end
  end
  object ds_product: TDataSource
    DataSet = qry_product
    Left = 472
    Top = 216
  end
end
