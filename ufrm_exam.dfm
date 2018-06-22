inherited frm_exam: Tfrm_exam
  Caption = 'Manuten'#231#227'o: Exames'
  OnClose = FormClose
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
          object cxGrid_1DBTableView1pro_tag: TcxGridDBColumn
            DataBinding.FieldName = 'pro_tag'
            Width = 250
          end
          object cxGrid_1DBTableView1pro_gender: TcxGridDBColumn
            DataBinding.FieldName = 'pro_gender'
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
      OnShow = cxTabSheet_2Show
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
              Left = 60
              DataBinding.DataField = 'pro_id'
              ExplicitLeft = 60
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 233
              DataBinding.DataField = 'pro_dt_registration'
              ExplicitLeft = 233
            end
            object cxDBCombTipo: TcxDBComboBox [2]
              Left = 60
              Top = 103
              DataBinding.DataField = 'pro_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'P - PRODUTO'
                'S - SERVICO')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBComboBox1: TcxDBComboBox [3]
              Left = 389
              Top = 103
              DataBinding.DataField = 'pro_gender'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'M - MASCULINO'
                'F - FEMININO'
                'A - AMBOS')
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextNome: TcxDBTextEdit [4]
              Left = 60
              Top = 130
              DataBinding.DataField = 'pro_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 296
            end
            object cxDBTextEdit4: TcxDBTextEdit [5]
              Left = 389
              Top = 130
              DataBinding.DataField = 'pro_initials'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [6]
              Left = 233
              Top = 157
              DataBinding.DataField = 'pro_tag'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 277
            end
            object cxDBCombStatus: TcxDBComboBox [7]
              Left = 233
              Top = 103
              DataBinding.DataField = 'pro_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object lookupComboBoxMaterial: TcxLookupComboBox [8]
              Left = 60
              Top = 157
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.GridMode = True
              Properties.KeyFieldNames = 'codMaterial'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'mat_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'mat_id'
                end>
              Properties.ListSource = ds_material
              Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
              Properties.OnPopup = lookupComboBoxMaterialPropertiesPopup
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Tipo'
              Control = cxDBCombTipo
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Sexo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextNome
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Sigla'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tags'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 277
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avBottom
              CaptionOptions.Text = 'Status'
              Control = cxDBCombStatus
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Material'
              Control = lookupComboBoxMaterial
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Anota'#231#245'es'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object cxDBMemo1: TcxDBMemo
              Left = 17
              Top = 38
              DataBinding.DataField = 'pro_annotation'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 0
              Height = 89
              Width = 952
            end
            object dxLayoutGroup3: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'Informa'#231#245'es do Exame'
              LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup5
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 185
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
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select product.*,concat('#39'0x'#39',hex(material_mat_cod)) as codMateri' +
        'al from product'
      'where pro_deleted_at is null'#10)
    object qrypro_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'pro_type'
      Origin = 'pro_type'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrypro_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'pro_name'
      Origin = 'pro_name'
      Required = True
      Size = 50
    end
    object qrypro_tag: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tags'
      FieldName = 'pro_tag'
      Origin = 'pro_tag'
      Required = True
      Size = 255
    end
    object qrypro_gender: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'pro_gender'
      Origin = 'pro_gender'
      FixedChar = True
      Size = 1
    end
    object qrypro_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'pro_dt_registration'
      Origin = 'pro_dt_registration'
    end
    object qrypro_initials: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sigla'
      FieldName = 'pro_initials'
      Origin = 'pro_initials'
      Required = True
      Size = 50
    end
    object qrypro_annotation: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'pro_annotation'
      Origin = 'pro_annotation'
      BlobType = ftMemo
    end
    object qrypro_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'pro_status'
      Origin = 'pro_status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrypro_cod: TBytesField
      FieldName = 'pro_cod'
      Origin = 'pro_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      FieldName = 'product_unit_pru_cod'
      Origin = 'product_unit_pru_cod'
    end
    object qrypro_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'pro_id'
      Origin = 'pro_id'
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
    object qrypro_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'pro_deleted_at'
      Origin = 'pro_deleted_at'
    end
    object qrypro_description: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'pro_description'
      Origin = 'pro_description'
      BlobType = ftMemo
    end
    object qrycodMaterial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codMaterial'
      Origin = 'codMaterial'
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
  object qry_material: TFDQuery
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select mat_id,mat_name,contract_ctr_cod,mat_cod,'
      'concat('#39'0x'#39',hex(mat_cod)) as codMaterial from material'
      'where mat_deleted_at is null'
      'order by mat_name'#10)
    Left = 792
    Top = 64
    object qry_materialmat_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'mat_id'
      Origin = 'mat_id'
    end
    object qry_materialmat_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mat_name'
      Origin = 'mat_name'
      ProviderFlags = []
      Size = 35
    end
    object qry_materialcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_materialmat_cod: TBytesField
      FieldName = 'mat_cod'
      Origin = 'mat_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_materialcodMaterial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codMaterial'
      Origin = 'codMaterial'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
  end
  object ds_material: TDataSource
    DataSet = qry_material
    Left = 824
    Top = 64
  end
end
