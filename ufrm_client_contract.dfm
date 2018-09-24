inherited frm_client_contract: Tfrm_client_contract
  Caption = 'Manuten'#231#227'o: Contratos Clientes'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Properties.ActivePage = cxTabSheet_2
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1cli_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'cli_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1client_name: TcxGridDBColumn
            DataBinding.FieldName = 'client_name'
            Width = 250
          end
          object cxGrid_1DBTableView1reseller_name: TcxGridDBColumn
            DataBinding.FieldName = 'reseller_name'
            Width = 250
          end
          object cxGrid_1DBTableView1cli_ctr_status: TcxGridDBColumn
            DataBinding.FieldName = 'cli_ctr_status'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_ctr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'cli_ctr_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxPageControl_2: TcxPageControl
        Properties.ActivePage = cxTabSheet2
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 562
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'cli_ctr_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'cli_ctr_dt_registration'
            end
            object dbchk_status: TcxDBCheckBox [2]
              Left = 368
              Top = 38
              Caption = 'Status'
              DataBinding.DataField = 'cli_ctr_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '1'
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
              Left = 59
              Top = 103
              DataBinding.DataField = 'client_cli_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 450
              Properties.KeyFieldNames = 'cli_cod'
              Properties.ListColumns = <
                item
                  Width = 300
                  FieldName = 'cli_first_name'
                end
                item
                  Width = 75
                  FieldName = 'cli_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsClient
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Cliente'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Revenda'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object cxDBLookupComboBox2: TcxDBLookupComboBox
              Left = 65
              Top = 38
              DataBinding.DataField = 'reseller_res_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 450
              Properties.KeyFieldNames = 'res_cod'
              Properties.ListColumns = <
                item
                  Width = 300
                  FieldName = 'res_first_name'
                end
                item
                  Width = 50
                  FieldName = 'res_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsReseller
              Style.HotTrack = False
              TabOrder = 0
              Width = 303
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 417
              Top = 38
              DataBinding.DataField = 'cli_ctr_value_reseller'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dxLayoutGroup3: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dados'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Revenda'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup7
              CaptionOptions.Text = 'Valor'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup7: TdxLayoutGroup
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'Comiss'#227'o do Contrato'
              ButtonOptions.Buttons = <>
              Index = 1
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Servi'#231'os do Contrato'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object grid: TcxGrid
              Left = 17
              Top = 38
              Width = 952
              Height = 400
              TabOrder = 0
              object griddb: TcxGridDBTableView
                Navigator.Buttons.OnButtonClick = griddbNavigatorButtonsButtonClick
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
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.Visible = True
                DataController.DataSource = dsClientContractIten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                object griddbproduct_pro_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_cod'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.DropDownListStyle = lsFixedList
                  Properties.DropDownWidth = 350
                  Properties.KeyFieldNames = 'pro_cod'
                  Properties.ListColumns = <
                    item
                      Width = 250
                      FieldName = 'pro_name'
                    end
                    item
                      Width = 75
                      FieldName = 'pro_id'
                    end>
                  Properties.ListOptions.SyncMode = True
                  Properties.ListSource = dsProduct
                  Width = 250
                end
                object griddbcci_value: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object griddbcci_quant: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.0000'
                  Width = 100
                end
                object griddbcci_value_discount: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value_discount'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object griddbcci_value_total: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value_total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object griddbcci_value_reseller: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value_reseller'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 100
                end
              end
              object gridlvl: TcxGridLevel
                GridView = griddb
              end
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Dados'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 438
              SizeOptions.Width = 966
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup6
              Control = grid
              ControlOptions.OriginalHeight = 400
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
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [11]
  end
  inherited mem: TFDMemTable [12]
    Active = True
    FieldDefs = <
      item
        Name = 'cli_ctr_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'client_cli_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'reseller_res_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cli_ctr_id'
        DataType = ftLongWord
      end
      item
        Name = 'cli_ctr_status'
        DataType = ftShortint
      end
      item
        Name = 'cli_ctr_value_reseller'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cli_ctr_dt_registration'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'cli_ctr_id'
    StoreDefs = True
    object memcli_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_ctr_cod'
      Origin = 'cli_ctr_cod'
      Size = 32
    end
    object memclient_cli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
      Size = 32
    end
    object memreseller_res_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Revendedor'
      FieldName = 'reseller_res_cod'
      Origin = 'reseller_res_cod'
      Size = 32
    end
    object memcli_ctr_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'cli_ctr_id'
      Origin = 'cli_ctr_id'
    end
    object memcli_ctr_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'cli_ctr_status'
      Origin = 'cli_ctr_status'
    end
    object memcli_ctr_value_reseller: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Revenda'
      FieldName = 'cli_ctr_value_reseller'
      Origin = 'cli_ctr_value_reseller'
      Precision = 12
    end
    object memcli_ctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cli_ctr_dt_registration'
      Origin = 'cli_ctr_dt_registration'
    end
    object memreseller_name: TStringField
      DisplayLabel = 'Revenda'
      FieldKind = fkLookup
      FieldName = 'reseller_name'
      LookupDataSet = memReseller
      LookupKeyFields = 'res_cod'
      LookupResultField = 'res_first_name'
      KeyFields = 'reseller_res_cod'
      Size = 85
      Lookup = True
    end
    object memclient_name: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'client_name'
      LookupDataSet = memClient
      LookupKeyFields = 'cli_cod'
      LookupResultField = 'cli_first_name'
      KeyFields = 'client_cli_cod'
      Size = 85
      Lookup = True
    end
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
  object memProduct: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 896
    Top = 152
    object memProductpro_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      Size = 32
    end
    object memProductmaterial_mat_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Material'
      FieldName = 'material_mat_cod'
      Origin = 'material_mat_cod'
      Size = 32
    end
    object memProductsupplier_sup_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fornecedor'
      FieldName = 'supplier_sup_cod'
      Origin = 'supplier_sup_cod'
      Size = 32
    end
    object memProductproduct_class_prc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      FieldName = 'product_class_prc_cod'
      Origin = 'product_class_prc_cod'
      Size = 32
    end
    object memProductproduct_class_sub_prs_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub-Classe'
      FieldName = 'product_class_sub_prs_cod'
      Origin = 'product_class_sub_prs_cod'
      Size = 32
    end
    object memProductmanufacturer_man_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fabricante'
      FieldName = 'manufacturer_man_cod'
      Origin = 'manufacturer_man_cod'
      Size = 32
    end
    object memProductbrand_bra_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Marca'
      FieldName = 'brand_bra_cod'
      Origin = 'brand_bra_cod'
      Size = 32
    end
    object memProductncm_ncm_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM'
      FieldName = 'ncm_ncm_cod'
      Origin = 'ncm_ncm_cod'
      Size = 32
    end
    object memProductproduct_unit_pru_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unid.'
      FieldName = 'product_unit_pru_cod'
      Origin = 'product_unit_pru_cod'
      Size = 32
    end
    object memProductpro_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object memProductpro_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'pro_type'
      Origin = 'pro_type'
      FixedChar = True
      Size = 1
    end
    object memProductpro_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Size = 85
    end
    object memProductpro_initials: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sigla'
      FieldName = 'pro_initials'
      Origin = 'pro_initials'
      Size = 85
    end
    object memProductpro_tag: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TAGS'
      FieldName = 'pro_tag'
      Origin = 'pro_tag'
      Size = 255
    end
    object memProductpro_description: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pro_description'
      Origin = 'pro_description'
      BlobType = ftMemo
    end
    object memProductpro_gender: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'pro_gender'
      Origin = 'pro_gender'
      FixedChar = True
      Size = 1
    end
    object memProductpro_annotation: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'pro_annotation'
      Origin = 'pro_annotation'
      BlobType = ftMemo
    end
    object memProductpro_barcod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'pro_barcod'
      Origin = 'pro_barcod'
      Size = 25
    end
    object memProductpro_barcod_manufacturer: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. Barra Fabricante'
      FieldName = 'pro_barcod_manufacturer'
      Origin = 'pro_barcod_manufacturer'
      Size = 25
    end
    object memProductpro_height: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Altura'
      FieldName = 'pro_height'
      Origin = 'pro_height'
      Precision = 12
    end
    object memProductpro_width: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Largura'
      FieldName = 'pro_width'
      Origin = 'pro_width'
      Precision = 12
    end
    object memProductpro_length: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Comprimento'
      FieldName = 'pro_length'
      Origin = 'pro_length'
      Precision = 12
    end
    object memProductpro_weight: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Peso'
      FieldName = 'pro_weight'
      Origin = 'pro_weight'
      Precision = 12
    end
    object memProductpro_liter: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Litro'
      FieldName = 'pro_liter'
      Origin = 'pro_liter'
      Precision = 12
    end
    object memProductpro_delivery_term: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prazo Entrega'
      FieldName = 'pro_delivery_term'
      Origin = 'pro_delivery_term'
    end
    object memProductpro_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'pro_status'
      Origin = 'pro_status'
    end
    object memProductpro_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'pro_deleted_at'
      Origin = 'pro_deleted_at'
    end
    object memProductpro_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pro_dt_registration'
      Origin = 'pro_dt_registration'
    end
  end
  object dsProduct: TDataSource
    DataSet = memProduct
    Left = 928
    Top = 152
  end
  object memReseller: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 896
    Top = 104
    object memResellerres_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'res_cod'
      Origin = 'res_cod'
      Size = 32
    end
    object memResellerres_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'res_id'
      Origin = 'res_id'
    end
    object memResellerres_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'res_type'
      Origin = 'res_type'
      FixedChar = True
      Size = 2
    end
    object memResellerres_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'res_first_name'
      Origin = 'res_first_name'
      Size = 85
    end
    object memResellerres_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'res_last_name'
      Origin = 'res_last_name'
      Size = 85
    end
    object memResellerres_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'res_email'
      Origin = 'res_email'
      Size = 65
    end
    object memResellerres_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'res_cpfcnpj'
      Origin = 'res_cpfcnpj'
      Size = 25
    end
    object memResellerres_rgie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG/IE'
      FieldName = 'res_rgie'
      Origin = 'res_rgie'
      Size = 25
    end
    object memResellerres_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'res_im'
      Origin = 'res_im'
      Size = 25
    end
    object memResellerres_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'res_suframa'
      Origin = 'res_suframa'
      Size = 25
    end
    object memResellerres_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'res_add_bus_zipcode'
      Origin = 'res_add_bus_zipcode'
      Size = 9
    end
    object memResellerres_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'res_add_bus_address'
      Origin = 'res_add_bus_address'
      Size = 50
    end
    object memResellerres_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'res_add_bus_number'
      Origin = 'res_add_bus_number'
      Size = 5
    end
    object memResellerres_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'res_add_bus_street'
      Origin = 'res_add_bus_street'
      Size = 45
    end
    object memResellerres_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'res_add_bus_complement'
      Origin = 'res_add_bus_complement'
      Size = 50
    end
    object memResellerres_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'res_add_bus_city'
      Origin = 'res_add_bus_city'
      Size = 35
    end
    object memResellerres_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'res_add_bus_state'
      Origin = 'res_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object memResellerres_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'res_add_bus_country'
      Origin = 'res_add_bus_country'
      Size = 25
    end
    object memResellerres_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'res_phone1'
      Origin = 'res_phone1'
      Size = 15
    end
    object memResellerres_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'res_phone2'
      Origin = 'res_phone2'
      Size = 15
    end
    object memResellerres_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'res_phone3'
      Origin = 'res_phone3'
      Size = 15
    end
    object memResellerres_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'res_phone4'
      Origin = 'res_phone4'
      Size = 15
    end
    object memResellerres_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'res_contact'
      Origin = 'res_contact'
      Size = 25
    end
    object memResellerres_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc./Aber.'
      FieldName = 'res_dt_birthopen'
      Origin = 'res_dt_birthopen'
    end
    object memResellerres_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'res_status'
      Origin = 'res_status'
    end
    object memResellerres_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'res_deleted_at'
      Origin = 'res_deleted_at'
    end
    object memResellerres_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'res_dt_registration'
      Origin = 'res_dt_registration'
    end
  end
  object dsReseller: TDataSource
    DataSet = memReseller
    Left = 928
    Top = 104
  end
  object memClient: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 896
    Top = 200
    object memClientcli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_cod'
      Origin = 'cli_cod'
      Size = 32
    end
    object memClienttable_price_tbp_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tabela Pre'#231'a'
      FieldName = 'table_price_tbp_cod'
      Origin = 'table_price_tbp_cod'
      Size = 32
    end
    object memClientcli_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object memClientcli_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'cli_type'
      Origin = 'cli_type'
      FixedChar = True
      Size = 2
    end
    object memClientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 85
    end
    object memClientcli_last_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      Size = 85
    end
    object memClientcli_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Size = 65
    end
    object memClientcli_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cli_cpfcnpj'
      Origin = 'cli_cpfcnpj'
      Size = 25
    end
    object memClientcli_rgie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG/IE'
      FieldName = 'cli_rgie'
      Origin = 'cli_rgie'
      Size = 25
    end
    object memClientcli_im: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IM'
      FieldName = 'cli_im'
      Origin = 'cli_im'
      Size = 25
    end
    object memClientcli_suframa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Suframa'
      FieldName = 'cli_suframa'
      Origin = 'cli_suframa'
      Size = 25
    end
    object memClientcli_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - CEP'
      FieldName = 'cli_add_bus_zipcode'
      Origin = 'cli_add_bus_zipcode'
      Size = 9
    end
    object memClientcli_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Rua'
      FieldName = 'cli_add_bus_address'
      Origin = 'cli_add_bus_address'
      Size = 50
    end
    object memClientcli_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - N'#250'm.'
      FieldName = 'cli_add_bus_number'
      Origin = 'cli_add_bus_number'
      Size = 5
    end
    object memClientcli_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Bairro'
      FieldName = 'cli_add_bus_street'
      Origin = 'cli_add_bus_street'
      Size = 45
    end
    object memClientcli_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Compl.'
      FieldName = 'cli_add_bus_complement'
      Origin = 'cli_add_bus_complement'
      Size = 50
    end
    object memClientcli_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Cidade'
      FieldName = 'cli_add_bus_city'
      Origin = 'cli_add_bus_city'
      Size = 35
    end
    object memClientcli_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - UF'
      FieldName = 'cli_add_bus_state'
      Origin = 'cli_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object memClientcli_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Com. - Pa'#237's'
      FieldName = 'cli_add_bus_country'
      Origin = 'cli_add_bus_country'
      Size = 25
    end
    object memClientcli_add_bil_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - CEP'
      FieldName = 'cli_add_bil_zipcode'
      Origin = 'cli_add_bil_zipcode'
      Size = 9
    end
    object memClientcli_add_bil_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Rua'
      FieldName = 'cli_add_bil_address'
      Origin = 'cli_add_bil_address'
      Size = 50
    end
    object memClientcli_add_bil_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - N'#250'm.'
      FieldName = 'cli_add_bil_number'
      Origin = 'cli_add_bil_number'
      Size = 5
    end
    object memClientcli_add_bil_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Bairro'
      FieldName = 'cli_add_bil_street'
      Origin = 'cli_add_bil_street'
      Size = 45
    end
    object memClientcli_add_bil_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Compl.'
      FieldName = 'cli_add_bil_complement'
      Origin = 'cli_add_bil_complement'
      Size = 50
    end
    object memClientcli_add_bil_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Cidade'
      FieldName = 'cli_add_bil_city'
      Origin = 'cli_add_bil_city'
      Size = 35
    end
    object memClientcli_add_bil_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - UF'
      FieldName = 'cli_add_bil_state'
      Origin = 'cli_add_bil_state'
      FixedChar = True
      Size = 3
    end
    object memClientcli_add_bil_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Pa'#237's'
      FieldName = 'cli_add_bil_country'
      Origin = 'cli_add_bil_country'
      Size = 25
    end
    object memClientcli_add_del_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ent. - CEP'
      FieldName = 'cli_add_del_zipcode'
      Origin = 'cli_add_del_zipcode'
      Size = 9
    end
    object memClientcli_add_del_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Rua'
      FieldName = 'cli_add_del_address'
      Origin = 'cli_add_del_address'
      Size = 50
    end
    object memClientcli_add_del_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - N'#250'm.'
      FieldName = 'cli_add_del_number'
      Origin = 'cli_add_del_number'
      Size = 5
    end
    object memClientcli_add_del_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Bairro'
      FieldName = 'cli_add_del_street'
      Origin = 'cli_add_del_street'
      Size = 45
    end
    object memClientcli_add_del_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Compl.'
      FieldName = 'cli_add_del_complement'
      Origin = 'cli_add_del_complement'
      Size = 50
    end
    object memClientcli_add_del_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Cidade'
      FieldName = 'cli_add_del_city'
      Origin = 'cli_add_del_city'
      Size = 35
    end
    object memClientcli_add_del_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - UF'
      FieldName = 'cli_add_del_state'
      Origin = 'cli_add_del_state'
      FixedChar = True
      Size = 3
    end
    object memClientcli_add_del_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fin. - Pa'#237's'
      FieldName = 'cli_add_del_country'
      Origin = 'cli_add_del_country'
      Size = 25
    end
    object memClientcli_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'cli_phone1'
      Origin = 'cli_phone1'
      Size = 15
    end
    object memClientcli_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'cli_phone2'
      Origin = 'cli_phone2'
      Size = 15
    end
    object memClientcli_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'cli_phone3'
      Origin = 'cli_phone3'
      Size = 15
    end
    object memClientcli_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fax'
      FieldName = 'cli_phone4'
      Origin = 'cli_phone4'
      Size = 15
    end
    object memClientcli_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'cli_contact'
      Origin = 'cli_contact'
      Size = 25
    end
    object memClientcli_day_maturity: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dia Venc.'
      FieldName = 'cli_day_maturity'
      Origin = 'cli_day_maturity'
    end
    object memClientcli_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc./Aber.'
      FieldName = 'cli_dt_birthopen'
      Origin = 'cli_dt_birthopen'
    end
    object memClientcli_weight: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Peso'
      FieldName = 'cli_weight'
      Origin = 'cli_weight'
      Precision = 12
    end
    object memClientcli_height: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Altura'
      FieldName = 'cli_height'
      Origin = 'cli_height'
      Precision = 12
    end
    object memClientcli_blood_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Sang.'
      FieldName = 'cli_blood_type'
      Origin = 'cli_blood_type'
      Size = 5
    end
    object memClientcli_rh_factor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fator RH'
      FieldName = 'cli_rh_factor'
      Origin = 'cli_rh_factor'
      FixedChar = True
      Size = 1
    end
    object memClientcli_du_factor: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fator DU'
      FieldName = 'cli_du_factor'
      Origin = 'cli_du_factor'
      FixedChar = True
      Size = 1
    end
    object memClientcli_cns: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNS'
      FieldName = 'cli_cns'
      Origin = 'cli_cns'
      Size = 25
    end
    object memClientcli_gender: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'cli_gender'
      Origin = 'cli_gender'
      FixedChar = True
      Size = 1
    end
    object memClientcli_skin_color: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cor Pele'
      FieldName = 'cli_skin_color'
      Origin = 'cli_skin_color'
      Size = 30
    end
    object memClientcli_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'cli_status'
      Origin = 'cli_status'
    end
    object memClientcli_image1: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Foto'
      FieldName = 'cli_image1'
      Origin = 'cli_image1'
    end
    object memClientcli_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'cli_deleted_at'
      Origin = 'cli_deleted_at'
    end
    object memClientcli_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cli_dt_registration'
      Origin = 'cli_dt_registration'
    end
  end
  object dsClient: TDataSource
    DataSet = memClient
    Left = 928
    Top = 200
  end
  object memClientContractIten: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cci_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'client_contract_cli_ctr_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_pro_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cci_value'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_quant'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_value_total'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_value_reseller'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_dt_registration'
        DataType = ftDateTime
      end
      item
        Name = 'cci_value_discount'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end>
    IndexDefs = <>
    IndexFieldNames = 'client_contract_cli_ctr_cod'
    MasterSource = ds
    MasterFields = 'cli_ctr_cod'
    DetailFields = 'client_contract_cli_ctr_cod'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 896
    Top = 248
    object memClientContractItencci_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cci_cod'
      Origin = 'cci_cod'
      Size = 32
    end
    object memClientContractItenclient_contract_cli_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato'
      FieldName = 'client_contract_cli_ctr_cod'
      Origin = 'client_contract_cli_ctr_cod'
      Size = 32
    end
    object memClientContractItenproduct_pro_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
      Size = 32
    end
    object memClientContractItencci_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'cci_value'
      Origin = 'cci_value'
      Precision = 12
    end
    object memClientContractItencci_quant: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant.'
      FieldName = 'cci_quant'
      Origin = 'cci_quant'
      Precision = 12
    end
    object memClientContractItencci_value_discount: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Desc.'
      FieldName = 'cci_value_discount'
      Origin = 'cci_value_discount'
      Precision = 12
    end
    object memClientContractItencci_value_total: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Total'
      FieldName = 'cci_value_total'
      Origin = 'cci_value_total'
      Precision = 12
    end
    object memClientContractItencci_value_reseller: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Revenda'
      FieldName = 'cci_value_reseller'
      Origin = 'cci_value_reseller'
      Precision = 12
    end
    object memClientContractItencci_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cci_dt_registration'
      Origin = 'cci_dt_registration'
    end
    object memClientContractItenproduct_name: TStringField
      FieldKind = fkLookup
      FieldName = 'product_name'
      LookupDataSet = memProduct
      LookupKeyFields = 'pro_cod'
      LookupResultField = 'pro_name'
      KeyFields = 'product_pro_cod'
      Size = 85
      Lookup = True
    end
  end
  object dsClientContractIten: TDataSource
    DataSet = memClientContractIten
    Left = 928
    Top = 248
  end
end
