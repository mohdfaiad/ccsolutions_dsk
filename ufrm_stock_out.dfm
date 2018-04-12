inherited frm_stock_out: Tfrm_stock_out
  Caption = 'Sa'#237'da do Estoque'
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
          object cxGrid_1DBTableView1req_id: TcxGridDBColumn
            Caption = 'C'#243'd. Req'
            DataBinding.FieldName = 'req_id'
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            Caption = 'C'#243'd. Contrato'
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 80
          end
          object cxGrid_1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'client_cli_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'cli_id'
            Properties.ListColumns = <
              item
                FieldName = 'cli_first_name'
              end
              item
                FieldName = 'cli_id'
              end>
            Properties.ListSource = ds_qry_client
            Width = 250
          end
          object cxGrid_1DBTableView1doctor_doc_id: TcxGridDBColumn
            Caption = 'Doc. do M'#233'dico'
            DataBinding.FieldName = 'doctor_doc_id'
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            Caption = 'Empresa'
            DataBinding.FieldName = 'enterprise_ent_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ent_id'
            Properties.ListColumns = <
              item
                FieldName = 'ent_first_name'
              end
              item
                FieldName = 'ent_id'
              end>
            Properties.ListSource = ds_enterprise
            Width = 250
          end
          object cxGrid_1DBTableView1insurance_ins_id: TcxGridDBColumn
            DataBinding.FieldName = 'insurance_ins_id'
          end
          object cxGrid_1DBTableView1dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'dt_registration'
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
        Properties.ActivePage = cxTabSheet1
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 63
              DataBinding.DataField = 'req_id'
              ExplicitLeft = 63
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [1]
              Left = 63
              Top = 130
              DataBinding.DataField = 'client_cli_id'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'cli_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  FieldName = 'cli_first_name'
                end
                item
                  FieldName = 'cli_id'
                end>
              Properties.ListSource = ds_qry_client
              Style.HotTrack = False
              TabOrder = 4
              Width = 474
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
              Left = 63
              Top = 103
              DataBinding.DataField = 'enterprise_ent_id'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'ent_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  FieldName = 'ent_first_name'
                end
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'ent_id'
                end>
              Properties.ListSource = ds_enterprise
              Style.HotTrack = False
              TabOrder = 2
              Width = 306
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 236
              DataBinding.DataField = 'dt_registration'
              ExplicitLeft = 236
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox [4]
              Left = 439
              Top = 103
              DataBinding.DataField = 'doctor_doc_id'
              DataBinding.DataSource = ds
              Properties.KeyFieldNames = 'doc_id'
              Properties.ListColumns = <
                item
                  FieldName = 'doc_id'
                end>
              Properties.ListSource = ds_qry_doctor
              Style.HotTrack = False
              TabOrder = 3
              Width = 98
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 506
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Cliente'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Empresa'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 306
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avBottom
              CaptionOptions.Text = 'C'#243'd. M'#233'dico'
              Control = cxDBLookupComboBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 98
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Exames'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 17
              Top = 38
              Width = 739
              Height = 200
              Images = cxImageList_1
              TabOrder = 0
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Visible = True
                DataController.DataSource = ds_qry_lab_request_itens
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1lri_id: TcxGridDBColumn
                  Caption = 'C'#243'd. ID'
                  DataBinding.FieldName = 'lri_id'
                end
                object cxGrid1DBTableView1lab_request_req_id: TcxGridDBColumn
                  Caption = 'Requisi'#231#227'o'
                  DataBinding.FieldName = 'lab_request_req_id'
                  Width = 75
                end
                object cxGrid1DBTableView1product_pro_id: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'pro_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'pro_name'
                    end>
                  Properties.ListSource = ds_product_list
                end
                object cxGrid1DBTableView1lri_product_quant: TcxGridDBColumn
                  Caption = 'Quant.'
                  DataBinding.FieldName = 'lri_product_quant'
                end
                object cxGrid1DBTableView1lri_product_value: TcxGridDBColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'lri_product_value'
                end
                object cxGrid1DBTableView1lri_dt_registration: TcxGridDBColumn
                  Caption = 'Dt. Registro'
                  DataBinding.FieldName = 'lri_dt_registration'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object BitBtn1: TBitBtn
              Left = 10
              Top = 254
              Width = 753
              Height = 25
              Caption = 'Inserir dados Teste'
              TabOrder = 1
              OnClick = BitBtn1Click
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Exames'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 753
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'BitBtn1'
              CaptionOptions.Visible = False
              Control = BitBtn1
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 75
              ControlOptions.ShowBorder = False
              Index = 1
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
      'select * from lab_request')
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
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qrydoctor_doc_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'doctor_doc_id'
      Origin = 'doctor_doc_id'
    end
    object qryenterprise_ent_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
    end
    object qryinsurance_ins_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'insurance_ins_id'
      Origin = 'insurance_ins_id'
    end
    object qrydt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dt_registration'
      Origin = 'dt_registration'
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
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 648
    Top = 312
  end
  object qry_enterprise: TFDQuery
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select ent_id,ent_first_name,contract_ctr_id from enterprise'
      'order by ent_first_name')
    Left = 560
    Top = 312
    object qry_enterpriseent_id: TFDAutoIncField
      FieldName = 'ent_id'
      Origin = 'ent_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_enterpriseent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 50
    end
    object qry_enterprisecontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
  end
  object qry_client: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select cli_id,cli_first_name,contract_ctr_id from client'
      'order by cli_first_name')
    Left = 279
    Top = 210
  end
  object ds_qry_client: TDataSource
    DataSet = qry_client
    Left = 407
    Top = 306
  end
  object qry_lab_request_itens: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'lab_request_req_id'
    MasterSource = ds
    MasterFields = 'req_id'
    DetailFields = 'lab_request_req_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from lab_request_itens'
      'where lab_request_req_id = :req_id')
    Left = 391
    Top = 138
    ParamData = <
      item
        Name = 'REQ_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_lab_request_itenslri_id: TFDAutoIncField
      FieldName = 'lri_id'
      Origin = 'lri_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_lab_request_itenslab_request_req_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'lab_request_req_id'
      Origin = 'lab_request_req_id'
    end
    object qry_lab_request_itensproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_lab_request_itenslri_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'lri_product_quant'
      Origin = 'lri_product_quant'
      Precision = 12
    end
    object qry_lab_request_itenslri_product_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'lri_product_value'
      Origin = 'lri_product_value'
      Precision = 12
    end
    object qry_lab_request_itenslri_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'lri_dt_registration'
      Origin = 'lri_dt_registration'
    end
  end
  object ds_qry_lab_request_itens: TDataSource
    DataSet = qry_lab_request_itens
    Left = 591
    Top = 130
  end
  object qry_product_list: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select pro_id,pro_name from product'
      'where pro_type <> '#39'S'#39
      'order by pro_name ')
    Left = 559
    Top = 210
  end
  object ds_product_list: TDataSource
    DataSet = qry_product_list
    Left = 687
    Top = 218
  end
  object ds_qry_product_out: TDataSource
    Left = 303
    Top = 530
  end
  object qry_stock_iten: TFDQuery
    CachedUpdates = True
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from stock_iten'
      'where stock_sto_id = 1')
    Left = 279
    Top = 266
    object qry_stock_itensti_id: TFDAutoIncField
      FieldName = 'sti_id'
      Origin = 'sti_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_stock_itenstock_sto_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'stock_sto_id'
      Origin = 'stock_sto_id'
    end
    object qry_stock_itenproduct_pro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_pro_id'
      Origin = 'product_pro_id'
    end
    object qry_stock_itenproduct_department_prd_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_department_prd_id'
      Origin = 'product_department_prd_id'
    end
    object qry_stock_itenproduct_sector_prs_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'product_sector_prs_id'
      Origin = 'product_sector_prs_id'
    end
    object qry_stock_itensti_product_quant: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant'
      Origin = 'sti_product_quant'
      Precision = 12
    end
    object qry_stock_itensti_product_quant_min: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sti_product_quant_min'
      Origin = 'sti_product_quant_min'
      Precision = 12
    end
    object qry_stock_itensti_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sti_dt_registration'
      Origin = 'sti_dt_registration'
    end
  end
  object qry_doctor: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select doc_id,contract_ctr_id from doctor'#10'where doc_status = '#39'A'#39)
    Left = 551
    Top = 394
  end
  object ds_qry_doctor: TDataSource
    DataSet = qry_doctor
    Left = 607
    Top = 394
  end
end
