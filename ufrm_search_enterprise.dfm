inherited frm_search_enterprise: Tfrm_search_enterprise
  Caption = 'Consultar Empresa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid_1: TcxGrid
    inherited cxGrid_1DBTableView1: TcxGridDBTableView
      OnCellDblClick = cxGrid_1DBTableView1CellDblClick
      DataController.DataSource = frm_dm.ds_enterprise
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid_1DBTableView1ent_id: TcxGridDBColumn
        Caption = 'Cod. ID'
        DataBinding.FieldName = 'ent_id'
        Width = 50
      end
      object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
        Caption = 'Contrato ID'
        DataBinding.FieldName = 'contract_ctr_id'
        Width = 65
      end
      object cxGrid_1DBTableView1ent_type: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'ent_type'
        Width = 40
      end
      object cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn
        Caption = 'Raz'#227'o Social'
        DataBinding.FieldName = 'ent_first_name'
        Width = 180
      end
      object cxGrid_1DBTableView1ent_last_name: TcxGridDBColumn
        Caption = 'Nome Fantasia'
        DataBinding.FieldName = 'ent_last_name'
        Width = 170
      end
      object cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn
        Caption = 'CNPJ'
        DataBinding.FieldName = 'ent_cnpj'
        Width = 100
      end
      object cxGrid_1DBTableView1ent_email: TcxGridDBColumn
        Caption = 'E-mail'
        DataBinding.FieldName = 'ent_email'
        Width = 100
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    Left = 480
    Top = 24
  end
  inherited ActionList_1: TActionList
    Left = 520
    Top = 24
  end
  inherited qry: TFDQuery
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      '')
    Left = 384
    Top = 24
    object qryent_id: TFDAutoIncField
      FieldName = 'ent_id'
      Origin = 'ent_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryent_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_type'
      Origin = 'ent_type'
      FixedChar = True
      Size = 1
    end
    object qryent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 50
    end
    object qryent_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_last_name'
      Origin = 'ent_last_name'
      Size = 50
    end
    object qryent_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_email'
      Origin = 'ent_email'
      Size = 65
    end
    object qryent_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_cnpj'
      Origin = 'ent_cnpj'
      Size = 25
    end
    object qryent_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_ie'
      Origin = 'ent_ie'
      Size = 25
    end
    object qryent_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_im'
      Origin = 'ent_im'
      Size = 25
    end
    object qryent_suframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_suframa'
      Origin = 'ent_suframa'
      Size = 25
    end
    object qryent_add_bus_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_zipcode'
      Origin = 'ent_add_bus_zipcode'
      Size = 9
    end
    object qryent_add_bus_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_address'
      Origin = 'ent_add_bus_address'
      Size = 50
    end
    object qryent_add_bus_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_number'
      Origin = 'ent_add_bus_number'
      Size = 5
    end
    object qryent_add_bus_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_street'
      Origin = 'ent_add_bus_street'
      Size = 45
    end
    object qryent_add_bus_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_complement'
      Origin = 'ent_add_bus_complement'
      Size = 50
    end
    object qryent_add_bus_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_city'
      Origin = 'ent_add_bus_city'
      Size = 35
    end
    object qryent_add_bus_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_state'
      Origin = 'ent_add_bus_state'
      FixedChar = True
      Size = 3
    end
    object qryent_add_bus_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_add_bus_country'
      Origin = 'ent_add_bus_country'
      Size = 25
    end
    object qryent_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone1'
      Origin = 'ent_phone1'
      Size = 15
    end
    object qryent_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone2'
      Origin = 'ent_phone2'
      Size = 15
    end
    object qryent_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone3'
      Origin = 'ent_phone3'
      Size = 15
    end
    object qryent_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_phone4'
      Origin = 'ent_phone4'
      Size = 15
    end
    object qryent_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_contact'
      Origin = 'ent_contact'
      Size = 25
    end
    object qryent_dt_open: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ent_dt_open'
      Origin = 'ent_dt_open'
    end
    object qryent_image: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'ent_image'
      Origin = 'ent_image'
    end
    object qryent_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ent_dt_registration'
      Origin = 'ent_dt_registration'
    end
  end
  inherited ds: TDataSource
    Left = 416
    Top = 24
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 1573310
  end
end
