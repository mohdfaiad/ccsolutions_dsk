inherited frm_receipt: Tfrm_receipt
  Caption = 'Manuten'#231#227'o: Recibos'
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
          object cxGrid_1DBTableView1rec_id: TcxGridDBColumn
            DataBinding.FieldName = 'rec_id'
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'enterprise_ent_id'
          end
          object cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn
            DataBinding.FieldName = 'client_cli_id'
          end
          object cxGrid_1DBTableView1rec_title: TcxGridDBColumn
            DataBinding.FieldName = 'rec_title'
          end
          object cxGrid_1DBTableView1rec_value: TcxGridDBColumn
            DataBinding.FieldName = 'rec_value'
          end
          object cxGrid_1DBTableView1rec_description: TcxGridDBColumn
            DataBinding.FieldName = 'rec_description'
          end
          object cxGrid_1DBTableView1rec_dt_emission: TcxGridDBColumn
            DataBinding.FieldName = 'rec_dt_emission'
          end
          object cxGrid_1DBTableView1rec_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'rec_dt_registration'
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
              DataBinding.DataField = 'rec_id'
              ExplicitLeft = 68
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 256
              DataBinding.DataField = 'rec_dt_registration'
              ExplicitLeft = 256
            end
            object cxDBMemo1: TcxDBMemo [2]
              Left = 68
              Top = 211
              DataBinding.DataField = 'rec_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 7
              Height = 89
              Width = 309
            end
            object cxDBDateEdit1: TcxDBDateEdit [3]
              Left = 256
              Top = 184
              DataBinding.DataField = 'rec_dt_emission'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [4]
              Left = 68
              Top = 157
              DataBinding.DataField = 'rec_title'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 309
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [5]
              Left = 68
              Top = 103
              DataBinding.DataField = 'enterprise_ent_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
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
              TabOrder = 2
              Width = 309
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [6]
              Left = 68
              Top = 130
              DataBinding.DataField = 'client_cli_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'cli_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome/Raz'#227'o'
                  Width = 250
                  FieldName = 'cli_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'cli_id'
                end>
              Properties.ListSource = ds_client
              Style.HotTrack = False
              TabOrder = 3
              Width = 309
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit [7]
              Left = 68
              Top = 184
              DataBinding.DataField = 'rec_value'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              ItemIndex = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Descri'#231#227'o'
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Emiss'#227'o'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Titulo'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 309
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Empresa'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 309
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Cliente'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Valor'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
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
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from receipt')
    object qryrec_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'rec_id'
      Origin = 'rec_id'
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
    object qryclient_cli_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente ID'
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qryrec_title: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Titulo'
      FieldName = 'rec_title'
      Origin = 'rec_title'
      Size = 50
    end
    object qryrec_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'rec_value'
      Origin = 'rec_value'
      Precision = 12
      Size = 2
    end
    object qryrec_description: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'rec_description'
      Origin = 'rec_description'
      Size = 255
    end
    object qryrec_dt_emission: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Emiss.'
      FieldName = 'rec_dt_emission'
      Origin = 'rec_dt_emission'
    end
    object qryrec_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'rec_dt_registration'
      Origin = 'rec_dt_registration'
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
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise')
    Left = 583
    Top = 90
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 615
    Top = 90
  end
  object ds_client: TDataSource
    DataSet = qry_client
    Left = 615
    Top = 138
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
    Left = 583
    Top = 138
  end
end
