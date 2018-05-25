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
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
          end
          object cxGrid_1DBTableView1pro_type: TcxGridDBColumn
            DataBinding.FieldName = 'pro_type'
          end
          object cxGrid_1DBTableView1pro_name: TcxGridDBColumn
            DataBinding.FieldName = 'pro_name'
          end
          object cxGrid_1DBTableView1pro_description: TcxGridDBColumn
            DataBinding.FieldName = 'pro_description'
          end
          object cxGrid_1DBTableView1pro_tag: TcxGridDBColumn
            DataBinding.FieldName = 'pro_tag'
          end
          object cxGrid_1DBTableView1pro_gender: TcxGridDBColumn
            DataBinding.FieldName = 'pro_gender'
          end
          object cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'pro_dt_registration'
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
              Left = 68
              DataBinding.DataField = 'pro_id'
              ExplicitLeft = 68
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 241
              DataBinding.DataField = 'pro_dt_registration'
              ExplicitLeft = 241
            end
            object cxDBTextEdit2: TcxDBTextEdit [2]
              Left = 68
              Top = 184
              DataBinding.DataField = 'pro_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 450
            end
            object cxDBCombTipo: TcxDBComboBox [3]
              Left = 68
              Top = 103
              DataBinding.DataField = 'pro_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownSizeable = True
              Properties.Items.Strings = (
                'P - Produto'
                'S - Servi'#231'o')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBComboBox1: TcxDBComboBox [4]
              Left = 397
              Top = 103
              DataBinding.DataField = 'pro_gender'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownSizeable = True
              Properties.Items.Strings = (
                'M - Masculino'
                'F - Feminino'
                'A - Ambos')
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextNome: TcxDBTextEdit [5]
              Left = 68
              Top = 130
              DataBinding.DataField = 'pro_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 296
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [6]
              Left = 68
              Top = 157
              DataBinding.DataField = 'material_mat_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownSizeable = True
              Properties.KeyFieldNames = 'mat_id'
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
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [7]
              Left = 397
              Top = 130
              DataBinding.DataField = 'pro_initials'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [8]
              Left = 241
              Top = 157
              DataBinding.DataField = 'pro_tag'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 277
            end
            object cxDBCombStatus: TcxDBComboBox [9]
              Left = 241
              Top = 103
              DataBinding.DataField = 'pro_status'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
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
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Material'
              Control = cxDBLookupComboBox1
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
              AlignVert = avClient
              CaptionOptions.Text = 'Tags'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 277
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
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
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qrymaterial_mat_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Material ID'
      FieldName = 'material_mat_id'
      Origin = 'material_mat_id'
      Required = True
    end
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
    object qrypro_description: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pro_description'
      Origin = 'pro_description'
      Required = True
      Size = 255
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
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from material')
    Left = 584
    Top = 96
  end
  object ds_material: TDataSource
    DataSet = qry_material
    Left = 616
    Top = 96
  end
end
