inherited frm_billreceive: Tfrm_billreceive
  Caption = 'Manuten'#231#227'o: Contas a Receber'
  OnClose = FormClose
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
          object cxGrid_1DBTableView1brc_id: TcxGridDBColumn
            DataBinding.FieldName = 'brc_id'
            Width = 75
          end
          object cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn
            DataBinding.FieldName = 'client_cli_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1seller_sel_id: TcxGridDBColumn
            DataBinding.FieldName = 'seller_sel_id'
            Width = 75
          end
          object cxGrid_1DBTableView1brc_status: TcxGridDBColumn
            DataBinding.FieldName = 'brc_status'
            Width = 50
          end
          object cxGrid_1DBTableView1brc_value: TcxGridDBColumn
            DataBinding.FieldName = 'brc_value'
            Width = 100
          end
          object cxGrid_1DBTableView1brc_discount: TcxGridDBColumn
            DataBinding.FieldName = 'brc_discount'
            Width = 100
          end
          object cxGrid_1DBTableView1brc_addition: TcxGridDBColumn
            DataBinding.FieldName = 'brc_addition'
            Width = 100
          end
          object cxGrid_1DBTableView1brc_ammount_receive: TcxGridDBColumn
            DataBinding.FieldName = 'brc_ammount_receive'
            Width = 100
          end
          object cxGrid_1DBTableView1brc_document: TcxGridDBColumn
            DataBinding.FieldName = 'brc_document'
            Width = 150
          end
          object cxGrid_1DBTableView1brc_dt_emission: TcxGridDBColumn
            DataBinding.FieldName = 'brc_dt_emission'
            Width = 75
          end
          object cxGrid_1DBTableView1brc_dt_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'brc_dt_maturity'
            Width = 75
          end
          object cxGrid_1DBTableView1brc_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'brc_dt_registration'
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
              Left = 74
              DataBinding.DataField = 'brc_id'
              ExplicitLeft = 74
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 259
              DataBinding.DataField = 'brc_dt_registration'
              ExplicitLeft = 259
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
              Left = 74
              Top = 249
              DataBinding.DataField = 'brc_value'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
              Left = 445
              Top = 249
              DataBinding.DataField = 'brc_discount'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object cxDBCurrencyEdit4: TcxDBCurrencyEdit [4]
              Left = 641
              Top = 249
              DataBinding.DataField = 'brc_ammount_receive'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 14
              Width = 121
            end
            object cxDBCurrencyEdit3: TcxDBCurrencyEdit [5]
              Left = 259
              Top = 249
              DataBinding.DataField = 'brc_addition'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [6]
              Left = 74
              Top = 103
              DataBinding.DataField = 'client_cli_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoSize = True
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'cli_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'cli_first_name'
                end
                item
                  Caption = '75'
                  FieldName = 'cli_id'
                end>
              Properties.ListSource = ds_client
              Properties.OnPopup = cxDBLookupComboBox1PropertiesPopup
              Style.HotTrack = False
              TabOrder = 2
              Width = 306
            end
            object cxDBDateEdit1: TcxDBDateEdit [7]
              Left = 74
              Top = 157
              DataBinding.DataField = 'brc_dt_emission'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [8]
              Left = 74
              Top = 130
              DataBinding.DataField = 'enterprise_ent_id'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'ent_id'
              Properties.ListColumns = <
                item
                  FieldName = 'ent_first_name'
                end
                item
                  FieldName = 'ent_id'
                end>
              Properties.ListSource = ds_enterprise
              Style.HotTrack = False
              TabOrder = 3
              Width = 306
            end
            object cxDBTextEdit1: TcxDBTextEdit [9]
              Left = 445
              Top = 130
              DataBinding.DataField = 'brc_document'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [10]
              Left = 445
              Top = 103
              DataBinding.DataField = 'brc_status'
              DataBinding.DataSource = ds
              Enabled = False
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBDateEdit3: TcxDBDateEdit [11]
              Left = 641
              Top = 130
              DataBinding.DataField = 'brc_invoice'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [12]
              Left = 74
              Top = 184
              DataBinding.DataField = 'brc_reference'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 687
            end
            object cxDBDateEdit2: TcxDBDateEdit [13]
              Left = 259
              Top = 157
              DataBinding.DataField = 'brc_dt_maturity'
              DataBinding.DataSource = ds
              Properties.DateButtons = [btnClear, btnToday]
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBDateEdit4: TcxDBDateEdit [14]
              Left = 445
              Top = 157
              DataBinding.DataField = 'brc_installment'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Valores'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Vl.'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Desconto'
              Control = cxDBCurrencyEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Vl. a Receber'
              Control = cxDBCurrencyEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Acr'#233'scimos'
              Control = cxDBCurrencyEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Cliente'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 306
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dt. Emis.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              CaptionOptions.Text = 'Empresa'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Documento'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Status'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignVert = avClient
              CaptionOptions.Text = 'NFe'
              Control = cxDBDateEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avBottom
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Refer'#234'ncia'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 744
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 687
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Dt. Venc.'
              Control = cxDBDateEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Parcela'
              Control = cxDBDateEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
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
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from billreceive')
    object qrybrc_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'brc_id'
      Origin = 'brc_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryclient_cli_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente ID'
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryseller_sel_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vendedor ID'
      FieldName = 'seller_sel_id'
      Origin = 'seller_sel_id'
    end
    object qrybrc_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'brc_status'
      Origin = 'brc_status'
      FixedChar = True
      Size = 1
    end
    object qrybrc_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl.'
      FieldName = 'brc_value'
      Origin = 'brc_value'
      Precision = 12
    end
    object qrybrc_discount: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Desconto'
      FieldName = 'brc_discount'
      Origin = 'brc_discount'
      Precision = 12
    end
    object qrybrc_addition: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Acr'#233'scimos'
      FieldName = 'brc_addition'
      Origin = 'brc_addition'
      Precision = 12
    end
    object qrybrc_ammount_receive: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. a Receber'
      FieldName = 'brc_ammount_receive'
      Origin = 'brc_ammount_receive'
      Precision = 12
    end
    object qrybrc_document: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Documento'
      FieldName = 'brc_document'
      Origin = 'brc_document'
      Size = 50
    end
    object qrybrc_reference: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'brc_reference'
      Origin = 'brc_reference'
      Size = 255
    end
    object qrybrc_dt_emission: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Emis.'
      FieldName = 'brc_dt_emission'
      Origin = 'brc_dt_emission'
    end
    object qrybrc_dt_maturity: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Venc.'
      FieldName = 'brc_dt_maturity'
      Origin = 'brc_dt_maturity'
    end
    object qrybrc_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'brc_dt_registration'
      Origin = 'brc_dt_registration'
    end
    object qrybrc_installment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_installment'
      Origin = 'brc_installment'
      Size = 10
    end
    object qrybrc_invoice: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'brc_invoice'
      Origin = 'brc_invoice'
      Size = 25
    end
    object qryform_payment_frp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'form_payment_frp_id'
      Origin = 'form_payment_frp_id'
    end
    object qryenterprise_ent_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
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
  object qry_client: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from client')
    Left = 584
    Top = 96
  end
  object ds_client: TDataSource
    DataSet = qry_client
    Left = 616
    Top = 96
  end
  object qry_seller: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from seller')
    Left = 584
    Top = 144
  end
  object ds_seller: TDataSource
    DataSet = qry_seller
    Left = 616
    Top = 144
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 648
    Top = 288
  end
  object qry_enterprise: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise')
    Left = 600
    Top = 288
  end
end
