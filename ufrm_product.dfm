inherited frm_product: Tfrm_product
  Caption = 'Manuten'#231#227'o: Produtos e Servi'#231'os'
  OnClose = FormClose
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
          object cxGrid_1DBTableView1material_mat_id: TcxGridDBColumn
            DataBinding.FieldName = 'material_mat_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
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
              Left = 297
              DataBinding.DataField = 'pro_dt_registration'
              ExplicitLeft = 297
            end
            object cxDBMemo1: TcxDBMemo [2]
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
            object cxDBComboBox1: TcxDBComboBox [3]
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
            object cxDBLookupComboBox2: TcxDBLookupComboBox [4]
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
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox [5]
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
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [6]
              Left = 491
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
              Width = 121
            end
            object cxDBLookupComboBox4: TcxDBLookupComboBox [7]
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
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBLookupComboBox5: TcxDBLookupComboBox [8]
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
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBLookupComboBox6: TcxDBLookupComboBox [9]
              Left = 491
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
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [10]
              Left = 77
              Top = 130
              DataBinding.DataField = 'pro_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 341
            end
            object cxDBLookupComboBox7: TcxDBLookupComboBox [11]
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
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [12]
              Left = 77
              Top = 211
              DataBinding.DataField = 'pro_barcod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [13]
              Left = 297
              Top = 211
              DataBinding.DataField = 'pro_barcod_manufacturer'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 3
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
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 2
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
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
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
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
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
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
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
    object qrymaterial_mat_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Material ID'
      FieldName = 'material_mat_id'
      Origin = 'material_mat_id'
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
      FieldName = 'ncm_ncm_id'
      Origin = 'ncm_ncm_id'
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
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from product_class_sub')
    Left = 456
    Top = 96
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
end
