inherited frm_exam: Tfrm_exam
  Caption = 'Manuten'#231#227'o: Exames'
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
          object cxGrid_1DBTableView1pro_tag: TcxGridDBColumn
            DataBinding.FieldName = 'pro_tag'
            Width = 250
          end
          object cxGrid_1DBTableView1pro_gender: TcxGridDBColumn
            DataBinding.FieldName = 'pro_gender'
            Width = 50
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
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'pro_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              DataBinding.DataField = 'pro_dt_registration'
            end
            object dbcmb_type: TcxDBComboBox [2]
              Left = 59
              Top = 101
              DataBinding.DataField = 'pro_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'P'
                'S')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object dbcmb_gender: TcxDBComboBox [3]
              Left = 232
              Top = 101
              DataBinding.DataField = 'pro_gender'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'M'
                'F'
                'A')
              Style.HotTrack = False
              TabOrder = 4
              Width = 130
            end
            object dbedt_name: TcxDBTextEdit [4]
              Left = 59
              Top = 128
              DataBinding.DataField = 'pro_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 473
            end
            object dbedt_initials: TcxDBTextEdit [5]
              Left = 565
              Top = 128
              DataBinding.DataField = 'pro_initials'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 404
            end
            object dbedt_tag: TcxDBTextEdit [6]
              Left = 59
              Top = 155
              DataBinding.DataField = 'pro_tag'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 910
            end
            object dbchk_status: TcxDBCheckBox [7]
              Left = 368
              Top = 37
              Caption = 'Status'
              DataBinding.DataField = 'pro_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '1'
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            object dblookupcmb_mat_cod: TcxDBLookupComboBox [8]
              Left = 411
              Top = 101
              DataBinding.DataField = 'material_mat_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'mat_cod'
              Properties.ListColumns = <
                item
                  Width = 250
                  FieldName = 'mat_name'
                end
                item
                  Width = 75
                  FieldName = 'mat_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsMaterial
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo'
              Control = dbcmb_type
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Sexo'
              Control = dbcmb_gender
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = dbedt_name
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 473
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Sigla'
              Control = dbedt_initials
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 404
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Tags'
              Control = dbedt_tag
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 277
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Material'
              Control = dblookupcmb_mat_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
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
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object dbmem_description: TcxDBMemo
              Left = 17
              Top = 20
              DataBinding.DataField = 'pro_annotation'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 0
              Height = 522
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
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 542
              SizeOptions.Width = 966
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup4
              Control = dbmem_description
              ControlOptions.OriginalHeight = 522
              ControlOptions.OriginalWidth = 185
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
  inherited mem: TFDMemTable [11]
    Active = True
    FieldDefs = <
      item
        Name = 'pro_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'material_mat_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'supplier_sup_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_class_prc_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_class_sub_prs_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'manufacturer_man_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'brand_bra_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ncm_ncm_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_unit_pru_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'pro_id'
        DataType = ftLongWord
      end
      item
        Name = 'pro_type'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pro_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'pro_initials'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'pro_tag'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'pro_description'
        DataType = ftMemo
      end
      item
        Name = 'pro_gender'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pro_annotation'
        DataType = ftMemo
      end
      item
        Name = 'pro_barcod'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'pro_barcod_manufacturer'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'pro_height'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_width'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_length'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_weight'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_liter'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'pro_delivery_term'
        DataType = ftInteger
      end
      item
        Name = 'pro_status'
        DataType = ftShortint
      end
      item
        Name = 'pro_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'pro_dt_registration'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'pro_id'
    StoreDefs = True
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
