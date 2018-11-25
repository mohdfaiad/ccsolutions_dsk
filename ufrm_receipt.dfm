inherited frm_receipt: Tfrm_receipt
  Caption = 'Manuten'#231#227'o: Recibos'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1rec_id: TcxGridDBColumn
            DataBinding.FieldName = 'rec_id'
            Width = 75
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'enterprise_ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn
            DataBinding.FieldName = 'client_cli_id'
            Width = 75
          end
          object cxGrid_1DBTableView1rec_title: TcxGridDBColumn
            DataBinding.FieldName = 'rec_title'
            Width = 250
          end
          object cxGrid_1DBTableView1rec_value: TcxGridDBColumn
            DataBinding.FieldName = 'rec_value'
            Width = 100
          end
          object cxGrid_1DBTableView1rec_dt_emission: TcxGridDBColumn
            DataBinding.FieldName = 'rec_dt_emission'
            Width = 100
          end
          object cxGrid_1DBTableView1rec_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'rec_dt_registration'
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
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 68
              DataBinding.DataField = 'rec_id'
              ExplicitLeft = 68
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 241
              DataBinding.DataField = 'rec_dt_registration'
              ExplicitLeft = 241
            end
            object cxDBMemo1: TcxDBMemo [2]
              Left = 68
              Top = 184
              DataBinding.DataField = 'rec_description'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 7
              Height = 89
              Width = 677
            end
            object cxDBTextEdit1: TcxDBTextEdit [3]
              Left = 68
              Top = 157
              DataBinding.DataField = 'rec_title'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 303
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit [4]
              Left = 406
              Top = 157
              DataBinding.DataField = 'rec_value'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 142
            end
            object cxDBDateEdit1: TcxDBDateEdit [5]
              Left = 615
              Top = 157
              DataBinding.DataField = 'rec_dt_emission'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 130
            end
            object cxLookupComboBoxClient: TcxLookupComboBox [6]
              Left = 68
              Top = 130
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cliCod'
              Properties.ListColumns = <
                item
                  FieldName = 'cli_first_name'
                end>
              Properties.ListSource = ds_client
              Style.HotTrack = False
              TabOrder = 3
              Width = 302
            end
            object cxLookupComboBoxEnterprise: TcxLookupComboBox [7]
              Left = 68
              Top = 103
              Properties.KeyFieldNames = 'entCod'
              Properties.ListColumns = <
                item
                  FieldName = 'ent_last_name'
                end>
              Properties.ListSource = ds_enterprise
              Properties.OnCloseUp = cxLookupComboBox2PropertiesCloseUp
              Style.HotTrack = False
              TabOrder = 2
              Width = 302
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 742
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
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Titulo'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Valor'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 142
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
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Emiss'#227'o'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Cliente'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 353
              Control = cxLookupComboBoxClient
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 302
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Empresa'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              Control = cxLookupComboBoxEnterprise
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 302
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
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Imprimir Recibo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited qry: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select receipt.*,hex(client_cli_cod) clientCod,hex(enterprise_en' +
        't_cod) enterpriseCod from receipt'
      'where rec_deleted_at is null')
    object qryrec_title: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Titulo'
      FieldName = 'rec_title'
      Origin = 'rec_title'
      Size = 35
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
    object qryrec_cod: TBytesField
      FieldName = 'rec_cod'
      Origin = 'rec_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
    end
    object qryclient_cli_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
    end
    object qryrec_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rec_deleted_at'
      Origin = 'rec_deleted_at'
    end
    object qryrec_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rec_id'
      Origin = 'rec_id'
    end
    object qryrec_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'rec_value'
      Origin = 'rec_value'
      Precision = 12
    end
    object qryclientCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'clientCod'
      Origin = 'clientCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryenterpriseCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'enterpriseCod'
      Origin = 'enterpriseCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
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
    ReportOptions.CreateDate = 43196.672751666700000000
    ReportOptions.LastChange = 43271.469465555560000000
    ScriptText.Strings = (
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <2vias> = '#39'SIM'#39' then          '
      '   Child1.Visible:=True'
      '   else             '
      '   Child1.Visible:=False;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 256
    Datasets = <
      item
        DataSet = frx_db_recibo
        DataSetName = 'frx_db_recibo'
      end
      item
        DataSet = frx_db_recibo_cliente
        DataSetName = 'frx_db_recibo_cliente'
      end
      item
        DataSet = frx_db_recibo_empresa
        DataSetName = 'frx_db_recibo_empresa'
      end>
    Variables = <
      item
        Name = ' varRecibo'
        Value = Null
      end
      item
        Name = 'extenso'
        Value = Null
      end
      item
        Name = '2vias'
        Value = ''
      end>
    Style = <>
  end
  object qry_enterprise: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select ent_cod,ent_id,ent_last_name,contract_ctr_cod,hex(ent_cod' +
        ') as entCod,ent_first_name,ent_cnpj,'
      
        'ent_add_bus_zipcode,ent_add_bus_address,ent_add_bus_number,ent_a' +
        'dd_bus_street,ent_add_bus_complement,ent_add_bus_city,ent_add_bu' +
        's_state,ent_add_bus_country from enterprise'
      'where ent_deleted_at is null'
      'order by ent_last_name')
    Left = 583
    Top = 98
    object qry_enterpriseent_cod: TBytesField
      FieldName = 'ent_cod'
      Required = True
    end
    object qry_enterpriseent_id: TLongWordField
      FieldName = 'ent_id'
    end
    object qry_enterpriseent_last_name: TStringField
      FieldName = 'ent_last_name'
      Size = 85
    end
    object qry_enterprisecontract_ctr_cod: TBytesField
      FieldName = 'contract_ctr_cod'
    end
    object qry_enterpriseentCod: TStringField
      FieldName = 'entCod'
      ReadOnly = True
      Size = 32
    end
    object qry_enterpriseent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object qry_enterpriseent_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      Size = 25
    end
    object qry_enterpriseent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      Size = 9
    end
    object qry_enterpriseent_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_address'
      Origin = 'ent_add_bus_address'
      Size = 50
    end
    object qry_enterpriseent_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_number'
      Origin = 'ent_add_bus_number'
      Size = 5
    end
    object qry_enterpriseent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      Size = 45
    end
    object qry_enterpriseent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      Size = 50
    end
    object qry_enterpriseent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      Size = 35
    end
    object qry_enterpriseent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qry_enterpriseent_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_country'
      Origin = 'ent_add_bus_country'
      Size = 25
    end
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 615
    Top = 98
  end
  object ds_client: TDataSource
    DataSet = qry_client
    Left = 615
    Top = 146
  end
  object qry_client: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select cli_id,cli_cod,cli_first_name,cli_last_name,hex(cli_cod) ' +
        'as cliCod,cli_dt_birthopen,contract_ctr_cod ,'
      
        '(timestampdiff(month,cli_dt_birthopen,curdate()) div 12) as idad' +
        'e from client'
      'where cli_deleted_at is null'
      'and (cli_status <> '#39'D'#39' or cli_status is null)'
      'order by cli_first_name')
    Left = 583
    Top = 146
    object qry_clientcli_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object qry_clientcli_cod: TBytesField
      FieldName = 'cli_cod'
      Origin = 'cli_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_clientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 85
    end
    object qry_clientcli_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      Size = 85
    end
    object qry_clientcliCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliCod'
      Origin = 'cliCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qry_clientcli_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_dt_birthopen'
      Origin = 'cli_dt_birthopen'
    end
    object qry_clientcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qry_clientidade: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frx_db_recibo: TfrxDBDataset
    UserName = 'frx_db_recibo'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 711
    Top = 98
  end
  object frx_db_recibo_cliente: TfrxDBDataset
    UserName = 'frx_db_recibo_cliente'
    CloseDataSource = False
    DataSet = qry_client
    BCDToCurrency = False
    Left = 711
    Top = 146
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 826
    Top = 147
  end
  object frx_db_recibo_empresa: TfrxDBDataset
    UserName = 'frx_db_recibo_empresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ent_cod=ent_cod'
      'ent_id=ent_id'
      'ent_last_name=ent_last_name'
      'contract_ctr_cod=contract_ctr_cod'
      'entCod=entCod'
      'ent_first_name=ent_first_name'
      'ent_cnpj=ent_cnpj'
      'ent_add_bus_zipcode=ent_add_bus_zipcode'
      'ent_add_bus_address=ent_add_bus_address'
      'ent_add_bus_number=ent_add_bus_number'
      'ent_add_bus_street=ent_add_bus_street'
      'ent_add_bus_complement=ent_add_bus_complement'
      'ent_add_bus_city=ent_add_bus_city'
      'ent_add_bus_state=ent_add_bus_state'
      'ent_add_bus_country=ent_add_bus_country')
    DataSet = qry_enterprise
    BCDToCurrency = False
    Left = 738
    Top = 211
  end
end
