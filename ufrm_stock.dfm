inherited frm_stock: Tfrm_stock
  Caption = 'Manuten'#231#227'o Estoques'
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
          object cxGrid_1DBTableView1sto_id: TcxGridDBColumn
            DataBinding.FieldName = 'sto_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'enterprise_ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1sto_type: TcxGridDBColumn
            DataBinding.FieldName = 'sto_type'
            Width = 50
          end
          object cxGrid_1DBTableView1sto_status: TcxGridDBColumn
            DataBinding.FieldName = 'sto_status'
            Width = 50
          end
          object cxGrid_1DBTableView1sto_description: TcxGridDBColumn
            DataBinding.FieldName = 'sto_description'
            Width = 250
          end
          object cxGrid_1DBTableView1sto_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'sto_dt_registration'
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
              Left = 68
              DataBinding.DataField = 'contract_ctr_id'
              ExplicitLeft = 68
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 241
              DataBinding.DataField = 'sto_dt_registration'
              ExplicitLeft = 241
            end
            object cxDBTextEdit3: TcxDBTextEdit [2]
              Left = 68
              Top = 157
              DataBinding.DataField = 'sto_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 294
            end
            object cxDBComboBox2: TcxDBComboBox [3]
              Left = 241
              Top = 103
              DataBinding.DataField = 'sto_status'
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
            object cxDBComboBox1: TcxDBComboBox [4]
              Left = 68
              Top = 103
              DataBinding.DataField = 'sto_type'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'G - GERENCIAL'
                'F - FISCAL')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [5]
              Left = 68
              Top = 130
              DataBinding.DataField = 'enterprise_ent_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'ent_id'
              Properties.ListColumns = <
                item
                  Caption = 'Raz'#227'o'
                  Width = 250
                  FieldName = 'ent_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'ent_id'
                end>
              Properties.ListSource = ds_enterprise
              Style.HotTrack = False
              TabOrder = 4
              Width = 294
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Empresa'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarManager_1Bar4: TdxBar
      DockedLeft = 427
    end
    inherited dxBarManager_1Bar5: TdxBar
      DockedLeft = 281
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
      'select * from stock')
    object qrysto_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'sto_id'
      Origin = 'sto_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryenterprise_ent_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Empresa ID'
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
    end
    object qrysto_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'sto_type'
      Origin = 'sto_type'
      FixedChar = True
      Size = 1
    end
    object qrysto_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'sto_status'
      Origin = 'sto_status'
      FixedChar = True
      Size = 1
    end
    object qrysto_description: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'sto_description'
      Origin = 'sto_description'
      Size = 50
    end
    object qrysto_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'sto_dt_registration'
      Origin = 'sto_dt_registration'
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
  object qry_enterprise: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise')
    Left = 584
    Top = 96
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 616
    Top = 96
  end
end
