﻿inherited frm_requisition: Tfrm_requisition
  Caption = 'Manuten'#231#227'o: Requisi'#231#245'es'
  ClientHeight = 645
  ClientWidth = 928
  ExplicitWidth = 944
  ExplicitHeight = 684
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Width = 928
    Height = 590
    Properties.ActivePage = cxTabSheet_2
    ExplicitWidth = 928
    ExplicitHeight = 590
    ClientRectBottom = 584
    ClientRectRight = 922
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitWidth = 920
      ExplicitHeight = 556
      inherited cxGrid_1: TcxGrid
        Width = 914
        Height = 550
        ExplicitWidth = 914
        ExplicitHeight = 550
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1req_id: TcxGridDBColumn
            Caption = 'C'#243'd. ID'
            DataBinding.FieldName = 'req_id'
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            Caption = 'Contrato ID'
            DataBinding.FieldName = 'contract_ctr_id'
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            Caption = 'Empresa ID'
            DataBinding.FieldName = 'enterprise_ent_id'
          end
          object cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn
            DataBinding.FieldName = 'client_cli_id'
          end
          object cxGrid_1DBTableView1Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
          end
          object cxGrid_1DBTableView1insurance_ins_id: TcxGridDBColumn
            Caption = 'Conv'#234'nio ID'
            DataBinding.FieldName = 'insurance_ins_id'
          end
          object cxGrid_1DBTableView1requisition_type_ret_id: TcxGridDBColumn
            DataBinding.FieldName = 'requisition_type_ret_id'
          end
          object cxGrid_1DBTableView1req_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg.'
            DataBinding.FieldName = 'req_dt_registration'
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 920
      ExplicitHeight = 556
      inherited cxPageControl_2: TcxPageControl
        Width = 914
        Height = 550
        ExplicitWidth = 914
        ExplicitHeight = 550
        ClientRectBottom = 544
        ClientRectRight = 908
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 906
          ExplicitHeight = 516
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 906
            Height = 516
            ExplicitWidth = 906
            ExplicitHeight = 516
            inherited dbedt_id: TcxDBTextEdit
              Left = 81
              DataBinding.DataField = 'req_id'
              ExplicitLeft = 81
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 254
              DataBinding.DataField = 'req_dt_registration'
              ExplicitLeft = 254
            end
            object cxDBLookupCombConvenio: TcxDBLookupComboBox [2]
              Left = 81
              Top = 128
              DataBinding.DataField = 'insurance_ins_id'
              DataBinding.DataSource = ds
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cin_id'
              Properties.ListColumns = <
                item
                  FieldName = 'ins_first_name'
                end
                item
                  FieldName = 'cin_id'
                end>
              Properties.ListSource = ds_insurance
              Style.HotTrack = False
              TabOrder = 3
              OnEnter = cxDBLookupCombConvenioEnter
              Width = 456
            end
            object cxGrid1: TcxGrid [3]
              Left = 17
              Top = 219
              Width = 520
              Height = 200
              TabOrder = 5
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.First.Visible = True
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Prior.Visible = True
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.Next.Visible = True
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Last.Visible = True
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Buttons.Filter.Visible = True
                Navigator.Visible = True
                DataController.DataSource = ds_requisition_iten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1rei_in: TcxGridDBColumn
                  Caption = 'C'#243'd. ID'
                  DataBinding.FieldName = 'rei_in'
                end
                object cxGrid1DBTableView1requisition_req_id: TcxGridDBColumn
                  Caption = 'Req. ID'
                  DataBinding.FieldName = 'requisition_req_id'
                end
                object cxGrid1DBTableView1product_pro_id: TcxGridDBColumn
                  Caption = 'Exeme'
                  DataBinding.FieldName = 'product_pro_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.GridMode = True
                  Properties.KeyFieldNames = 'product_pro_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'pro_name'
                    end
                    item
                      FieldName = 'tpp_value'
                    end>
                  Properties.ListSource = ds_price_product
                  Width = 300
                end
                object cxGrid1DBTableView1product_value: TcxGridDBColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'product_value'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [4]
              Left = 81
              Top = 101
              DataBinding.DataField = 'client_cli_id'
              DataBinding.DataSource = ds
              Properties.GridMode = True
              Properties.KeyFieldNames = 'cli_id'
              Properties.ListColumns = <
                item
                  FieldName = 'cli_first_name'
                end
                item
                  FieldName = 'cli_id'
                end>
              Properties.ListSource = ds_client
              Style.HotTrack = False
              TabOrder = 2
              Width = 456
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [5]
              Left = 81
              Top = 155
              DataBinding.DataField = 'requisition_type_ret_id'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'ret_id'
              Properties.ListColumns = <
                item
                  FieldName = 'ret_name'
                end
                item
                  FieldName = 'ret_id'
                end>
              Properties.ListSource = ds_requisition_type
              Style.HotTrack = False
              TabOrder = 4
              Width = 184
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'New Group'
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Conv'#234'nio'
              Control = cxDBLookupCombConvenio
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 456
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Cod. Cliente'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 456
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 184
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
      end
    end
  end
  inherited dxBarDockControl_1: TdxBarDockControl
    Width = 928
    ExplicitWidth = 928
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
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
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from requisition')
    object qryreq_id: TFDAutoIncField
      FieldName = 'req_id'
      Origin = 'req_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryclient_cli_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente ID'
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qryenterprise_ent_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
    end
    object qryrequisition_type_ret_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo ID'
      FieldName = 'requisition_type_ret_id'
      Origin = 'requisition_type_ret_id'
    end
    object qryinsurance_ins_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Convenio ID'
      FieldName = 'insurance_ins_id'
      Origin = 'insurance_ins_id'
    end
    object qryreq_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'req_dt_registration'
      Origin = 'req_dt_registration'
    end
    object qryCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = qry_client
      LookupKeyFields = 'cli_id'
      LookupResultField = 'cli_first_name'
      KeyFields = 'client_cli_id'
      Size = 80
      Lookup = True
    end
    object qryConvênio: TStringField
      FieldKind = fkLookup
      FieldName = 'Conv'#234'nio'
      LookupDataSet = qry_insurance
      LookupKeyFields = 'insurance_ins_id'
      LookupResultField = 'ins_first_name'
      KeyFields = 'insurance_ins_id'
      Size = 60
      Lookup = True
    end
    object qryTipoexame: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo exame'
      LookupDataSet = qry_requisition_type
      LookupKeyFields = 'ret_id'
      LookupResultField = 'ret_name'
      KeyFields = 'requisition_type_ret_id'
      Size = 50
      Lookup = True
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
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43229.685769837960000000
    Datasets = <
      item
      end
      item
        DataSet = frxDB_Requisition
        DataSetName = 'frxDB_Requisition'
      end
      item
        DataSet = frxDBD_Requisition_iten
        DataSetName = 'frxDBD_Requisition_iten'
      end>
    Variables = <>
    Style = <>
  end
  object qry_client: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from client')
    Left = 592
    Top = 96
    object qry_clientcli_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      DisplayWidth = 10
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_clientcontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qry_clienttable_price_tbp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_id'
      Origin = 'table_price_tbp_id'
    end
    object qry_clientcli_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_type'
      Origin = 'cli_type'
      FixedChar = True
      Size = 2
    end
    object qry_clientcli_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'cli_first_name'
      Origin = 'cli_first_name'
      Size = 75
    end
    object qry_clientcli_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_last_name'
      Origin = 'cli_last_name'
      Size = 75
    end
    object qry_clientcli_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Size = 65
    end
    object qry_clientcli_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_phone1'
      Origin = 'cli_phone1'
      Size = 15
    end
    object qry_clientcli_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_phone2'
      Origin = 'cli_phone2'
      Size = 15
    end
    object qry_clientcli_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_phone3'
      Origin = 'cli_phone3'
      Size = 15
    end
    object qry_clientcli_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_phone4'
      Origin = 'cli_phone4'
      Size = 15
    end
    object qry_clientcli_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_contact'
      Origin = 'cli_contact'
      Size = 25
    end
    object qry_clientcli_cpfcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpfcnpj'
      Origin = 'cli_cpfcnpj'
      Size = 25
    end
    object qry_clientcli_rgie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rgie'
      Origin = 'cli_rgie'
      Size = 25
    end
    object qry_clientcli_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_im'
      Origin = 'cli_im'
      Size = 25
    end
    object qry_clientcli_suframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_suframa'
      Origin = 'cli_suframa'
      Size = 25
    end
    object qry_clientcli_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_zipcode'
      Origin = 'cli_add_bus_zipcode'
      Size = 9
    end
    object qry_clientcli_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_address'
      Origin = 'cli_add_bus_address'
      Size = 50
    end
    object qry_clientcli_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_number'
      Origin = 'cli_add_bus_number'
      Size = 5
    end
    object qry_clientcli_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_street'
      Origin = 'cli_add_bus_street'
      Size = 45
    end
    object qry_clientcli_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_complement'
      Origin = 'cli_add_bus_complement'
      Size = 50
    end
    object qry_clientcli_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_city'
      Origin = 'cli_add_bus_city'
      Size = 35
    end
    object qry_clientcli_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_state'
      Origin = 'cli_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qry_clientcli_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bus_country'
      Origin = 'cli_add_bus_country'
      Size = 25
    end
    object qry_clientcli_add_bil_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_zipcode'
      Origin = 'cli_add_bil_zipcode'
      Size = 9
    end
    object qry_clientcli_add_bil_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_address'
      Origin = 'cli_add_bil_address'
      Size = 50
    end
    object qry_clientcli_add_bil_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_number'
      Origin = 'cli_add_bil_number'
      Size = 5
    end
    object qry_clientcli_add_bil_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_street'
      Origin = 'cli_add_bil_street'
      Size = 45
    end
    object qry_clientcli_add_bil_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_complement'
      Origin = 'cli_add_bil_complement'
      Size = 50
    end
    object qry_clientcli_add_bil_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_city'
      Origin = 'cli_add_bil_city'
      Size = 35
    end
    object qry_clientcli_add_bil_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_state'
      Origin = 'cli_add_bil_state'
      FixedChar = True
      Size = 3
    end
    object qry_clientcli_add_bil_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_bil_country'
      Origin = 'cli_add_bil_country'
      Size = 25
    end
    object qry_clientcli_add_del_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_zipcode'
      Origin = 'cli_add_del_zipcode'
      Size = 9
    end
    object qry_clientcli_add_del_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_address'
      Origin = 'cli_add_del_address'
      Size = 50
    end
    object qry_clientcli_add_del_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_number'
      Origin = 'cli_add_del_number'
      Size = 5
    end
    object qry_clientcli_add_del_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_street'
      Origin = 'cli_add_del_street'
      Size = 45
    end
    object qry_clientcli_add_del_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_complement'
      Origin = 'cli_add_del_complement'
      Size = 50
    end
    object qry_clientcli_add_del_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_city'
      Origin = 'cli_add_del_city'
      Size = 35
    end
    object qry_clientcli_add_del_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_state'
      Origin = 'cli_add_del_state'
      FixedChar = True
      Size = 3
    end
    object qry_clientcli_add_del_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_add_del_country'
      Origin = 'cli_add_del_country'
      Size = 25
    end
    object qry_clientcli_image: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'cli_image'
      Origin = 'cli_image'
    end
    object qry_clientcli_day_maturity: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_day_maturity'
      Origin = 'cli_day_maturity'
    end
    object qry_clientcli_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_status'
      Origin = 'cli_status'
      FixedChar = True
      Size = 1
    end
    object qry_clientcli_dt_birthopen: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_dt_birthopen'
      Origin = 'cli_dt_birthopen'
    end
    object qry_clientcli_account_code_sippulse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_account_code_sippulse'
      Origin = 'cli_account_code_sippulse'
      Size = 50
    end
    object qry_clientcli_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cli_dt_registration'
      Origin = 'cli_dt_registration'
    end
  end
  object ds_client: TDataSource
    DataSet = qry_client
    Left = 625
    Top = 96
  end
  object qry_insurance: TFDQuery
    IndexFieldNames = 'client_cli_id'
    MasterSource = ds_client
    MasterFields = 'cli_id'
    DetailFields = 'cin_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'SELECT c.cin_id, i.contract_ctr_id, i.table_price_tbp_id, c.clie' +
        'nt_cli_id, c.insurance_ins_id, i.ins_first_name,'
      
        'i.ins_last_name, i.ins_email, i.ins_cnpj FROM client_insurance a' +
        's c'#10
      'inner join insurance as i'#13#10#10
      ''
      ''
      ''
      'WHERE c.insurance_ins_id = i.ins_id and c.client_cli_id =:cli_id')
    Left = 656
    Top = 96
    ParamData = <
      item
        Name = 'CLI_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object qry_insurancecin_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      DisplayWidth = 10
      FieldName = 'cin_id'
      Origin = 'cin_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_insurancecontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_insurancetable_price_tbp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_id'
      Origin = 'table_price_tbp_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_insuranceclient_cli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qry_insuranceinsurance_ins_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'insurance_ins_id'
      Origin = 'insurance_ins_id'
    end
    object qry_insuranceins_first_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'ins_first_name'
      Origin = 'ins_first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_insuranceins_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_last_name'
      Origin = 'ins_last_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_insuranceins_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_email'
      Origin = 'ins_email'
      ProviderFlags = []
      ReadOnly = True
      Size = 65
    end
    object qry_insuranceins_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_cnpj'
      Origin = 'ins_cnpj'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object ds_insurance: TDataSource
    DataSet = qry_insurance
    Left = 688
    Top = 96
  end
  object qry_price_product: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'table_price_tbp_id'
    MasterSource = ds_insurance
    MasterFields = 'table_price_tbp_id'
    DetailFields = 'table_price_tbp_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select pc.tpp_id, pc.table_price_tbp_id, pr.contract_ctr_id, pc.' +
        'product_pro_id, '
      
        'prod.pro_type, prod.pro_name, pc.tpp_value from table_price_prod' +
        'uct as pc'
      'inner join table_price as pr'
      'inner join product as prod'
      
        'where pr.tbp_id = pc.table_price_tbp_id and pc.product_pro_id = ' +
        'prod.pro_id'
      'and pc.table_price_tbp_id =:table_price_tbp_id')
    Left = 784
    Top = 96
    ParamData = <
      item
        Name = 'TABLE_PRICE_TBP_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_price_producttpp_id: TFDAutoIncField
      FieldName = 'tpp_id'
      Origin = 'tpp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_price_producttable_price_tbp_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'table_price_tbp_id'
      Origin = 'table_price_tbp_id'
    end
    object qry_price_productcontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_price_productproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_price_productpro_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_type'
      Origin = 'pro_type'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qry_price_productpro_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_name'
      Origin = 'pro_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_price_producttpp_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tpp_value'
      Origin = 'tpp_value'
      DisplayFormat = '###,###,###.#0'
      Precision = 12
    end
  end
  object ds_price_product: TDataSource
    DataSet = qry_price_product
    Left = 816
    Top = 96
  end
  object qry_requisition_iten: TFDQuery
    AfterInsert = qry_requisition_itenAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'requisition_req_id'
    MasterSource = ds
    MasterFields = 'req_id'
    DetailFields = 'requisition_req_id'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM requisition_iten')
    Left = 847
    Top = 96
    object qry_requisition_itenrei_in: TFDAutoIncField
      FieldName = 'rei_in'
      Origin = 'rei_in'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_requisition_itenrequisition_req_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'requisition_req_id'
      Origin = 'requisition_req_id'
    end
    object qry_requisition_itenproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
      OnValidate = qry_requisition_itenproduct_pro_idValidate
    end
    object qry_requisition_itenproduct_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'product_value'
      Origin = 'product_value'
      DisplayFormat = '###,###,###.#0'
      Precision = 12
    end
    object qry_requisition_itenExame: TStringField
      FieldKind = fkLookup
      FieldName = 'Exame'
      LookupDataSet = qry_price_product
      LookupKeyFields = 'product_pro_id'
      LookupResultField = 'pro_name'
      KeyFields = 'product_pro_id'
      Size = 40
      Lookup = True
    end
  end
  object ds_requisition_iten: TDataSource
    DataSet = qry_requisition_iten
    Left = 880
    Top = 95
  end
  object qry_requisition_type: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'SELECT * FROM requisition_type')
    Left = 720
    Top = 96
    object qry_requisition_typeret_id: TFDAutoIncField
      DisplayLabel = 'Cod. ID'
      DisplayWidth = 10
      FieldName = 'ret_id'
      Origin = 'ret_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_requisition_typecontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qry_requisition_typeret_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'ret_name'
      Origin = 'ret_name'
      Size = 25
    end
    object qry_requisition_typeret_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ret_dt_registration'
      Origin = 'ret_dt_registration'
    end
  end
  object ds_requisition_type: TDataSource
    DataSet = qry_requisition_type
    Left = 752
    Top = 96
  end
  object frxDB_Requisition: TfrxDBDataset
    UserName = 'frxDB_Requisition'
    CloseDataSource = False
    DataSet = qry
    BCDToCurrency = False
    Left = 240
    Top = 88
  end
  object frxDBD_Requisition_iten: TfrxDBDataset
    UserName = 'frxDBD_Requisition_iten'
    CloseDataSource = False
    DataSet = qry_requisition_iten
    BCDToCurrency = False
    Left = 272
    Top = 88
  end
end
