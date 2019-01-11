inherited frm_contrato: Tfrm_contrato
  Caption = 'Manuten'#231#227'o: Contratos'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl_1: TPageControl
    inherited TabSheet_pesquisar: TTabSheet
      inherited DBGrid_1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'ctr_id'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente_nome'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'revenda_nome'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ctr_data_contrato'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ctr_data_assinatura'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ctr_data_registro'
            Width = 125
            Visible = True
          end>
      end
    end
    inherited TabSheet_manutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 626
      inherited PageControl_2: TPageControl
        inherited TabSheet_dados: TTabSheet
          ExplicitTop = 26
          ExplicitWidth = 992
          ExplicitHeight = 549
          object Label3: TLabel
            Left = 3
            Top = 3
            Width = 33
            Height = 13
            Caption = 'Cliente'
          end
          object Label4: TLabel
            Left = 3
            Top = 49
            Width = 43
            Height = 13
            Caption = 'Revenda'
          end
          object Label5: TLabel
            Left = 527
            Top = 49
            Width = 61
            Height = 13
            Caption = 'Dt. Contrato'
          end
          object Label6: TLabel
            Left = 658
            Top = 49
            Width = 69
            Height = 13
            Caption = 'Dt. Assinatura'
          end
          object Label7: TLabel
            Left = 396
            Top = 49
            Width = 45
            Height = 13
            Caption = 'Comiss'#227'o'
          end
          object dbedt_ctr_data_contrato: TDBEdit
            Left = 527
            Top = 68
            Width = 125
            Height = 21
            DataField = 'ctr_data_contrato'
            DataSource = ds
            MaxLength = 10
            TabOrder = 3
          end
          object dbedt_ctr_data_assinatura: TDBEdit
            Left = 658
            Top = 68
            Width = 125
            Height = 21
            DataField = 'ctr_data_assinatura'
            DataSource = ds
            MaxLength = 10
            TabOrder = 4
          end
          object dblkpcmbbox_revenda_rev_codigo: TDBLookupComboBox
            Left = 3
            Top = 68
            Width = 387
            Height = 21
            DataField = 'revenda_rev_codigo'
            DataSource = ds
            KeyField = 'rev_codigo'
            ListField = 'rev_nome'
            ListSource = dsrevenda
            TabOrder = 1
          end
          object dblkpcmbbox_cliente_cli_codigo: TDBLookupComboBox
            Left = 3
            Top = 22
            Width = 387
            Height = 21
            DataField = 'cliente_cli_codigo'
            DataSource = ds
            KeyField = 'cli_codigo'
            ListField = 'cli_nome'
            ListSource = dscliente
            TabOrder = 0
          end
          object dbedt_ctr_valor: TDBEdit
            Left = 396
            Top = 68
            Width = 125
            Height = 21
            DataField = 'ctr_valor'
            DataSource = ds
            TabOrder = 2
          end
        end
      end
      inherited dbedt_id: TDBEdit
        DataField = 'ctr_id'
      end
      inherited dbedt_data_registro: TDBEdit
        DataField = 'ctr_data_registro'
      end
    end
  end
  inherited clientSQL: TRESTDWClientSQL
    Active = True
    FieldDefs = <
      item
        Name = 'ctr_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usuario_usr_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cliente_cli_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'revenda_rev_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ctr_id'
        DataType = ftLongWord
      end
      item
        Name = 'ctr_data_contrato'
        DataType = ftDate
      end
      item
        Name = 'ctr_data_assinatura'
        DataType = ftDate
      end
      item
        Name = 'ctr_valor'
        DataType = ftSingle
      end
      item
        Name = 'ctr_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'ctr_data_registro'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'ctr_id'
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_contrato_read('#39#39');')
    object clientSQLctr_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ctr_codigo'
      Size = 32
    end
    object clientSQLusuario_usr_codigo: TStringField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object clientSQLcliente_cli_codigo: TStringField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'cliente_cli_codigo'
      Size = 32
    end
    object clientSQLrevenda_rev_codigo: TStringField
      DisplayLabel = 'C'#243'd. Revenda'
      FieldName = 'revenda_rev_codigo'
      Size = 32
    end
    object clientSQLctr_id: TLongWordField
      DisplayLabel = 'ID'
      FieldName = 'ctr_id'
    end
    object clientSQLctr_data_contrato: TDateField
      DisplayLabel = 'Dt. Contrato'
      FieldName = 'ctr_data_contrato'
      EditMask = '!99/99/0000;1;_'
    end
    object clientSQLctr_data_assinatura: TDateField
      DisplayLabel = 'Dt. Assinatura'
      FieldName = 'ctr_data_assinatura'
      EditMask = '!99/99/0000;1;_'
    end
    object clientSQLctr_valor: TSingleField
      DisplayLabel = 'Valor'
      FieldName = 'ctr_valor'
    end
    object clientSQLctr_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'ctr_data_deletado'
    end
    object clientSQLctr_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'ctr_data_registro'
    end
    object clientSQLcliente_nome: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'cliente_nome'
      LookupDataSet = sqlcliente
      LookupKeyFields = 'cli_codigo'
      LookupResultField = 'cli_nome'
      KeyFields = 'cliente_cli_codigo'
      Size = 125
      Lookup = True
    end
    object clientSQLrevenda_nome: TStringField
      DisplayLabel = 'Revenda'
      FieldKind = fkLookup
      FieldName = 'revenda_nome'
      LookupDataSet = sqlrevenda
      LookupKeyFields = 'rev_codigo'
      LookupResultField = 'rev_nome'
      KeyFields = 'revenda_rev_codigo'
      Size = 125
      Lookup = True
    end
  end
  object sqlrevenda: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'rev_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usuario_usr_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'rev_id'
        DataType = ftLongWord
      end
      item
        Name = 'rev_nome'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'rev_nome_fantasia'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'rev_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'rev_ie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'rev_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'rev_data_registro'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_revenda_read('#39#39');')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 864
    Top = 104
    object sqlrevendarev_codigo: TStringField
      FieldName = 'rev_codigo'
      Size = 32
    end
    object sqlrevendausuario_usr_codigo: TStringField
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object sqlrevendarev_id: TLongWordField
      FieldName = 'rev_id'
    end
    object sqlrevendarev_nome: TStringField
      FieldName = 'rev_nome'
      Size = 125
    end
    object sqlrevendarev_nome_fantasia: TStringField
      FieldName = 'rev_nome_fantasia'
      Size = 125
    end
    object sqlrevendarev_cnpj: TStringField
      FieldName = 'rev_cnpj'
      Size = 25
    end
    object sqlrevendarev_ie: TStringField
      FieldName = 'rev_ie'
      Size = 25
    end
    object sqlrevendarev_data_deletado: TDateTimeField
      FieldName = 'rev_data_deletado'
    end
    object sqlrevendarev_data_registro: TDateTimeField
      FieldName = 'rev_data_registro'
    end
  end
  object dsrevenda: TDataSource
    DataSet = sqlrevenda
    Left = 896
    Top = 104
  end
  object dscliente: TDataSource
    DataSet = sqlcliente
    Left = 896
    Top = 56
  end
  object sqlcliente: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'cli_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usuario_usr_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cli_id'
        DataType = ftLongWord
      end
      item
        Name = 'cli_nome'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'cli_nome_fantasia'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'cli_tipo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cli_rgie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_cpfcnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_im'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_suframa'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_data'
        DataType = ftDate
      end
      item
        Name = 'cli_status'
        DataType = ftShortint
      end
      item
        Name = 'cli_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'cli_data_registro'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_cliente_read('#39#39');')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 864
    Top = 56
    object sqlclientecli_codigo: TStringField
      FieldName = 'cli_codigo'
      Size = 32
    end
    object sqlclienteusuario_usr_codigo: TStringField
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object sqlclientecli_id: TLongWordField
      FieldName = 'cli_id'
    end
    object sqlclientecli_nome: TStringField
      FieldName = 'cli_nome'
      Size = 125
    end
    object sqlclientecli_nome_fantasia: TStringField
      FieldName = 'cli_nome_fantasia'
      Size = 125
    end
    object sqlclientecli_tipo: TStringField
      FieldName = 'cli_tipo'
      Size = 2
    end
    object sqlclientecli_rgie: TStringField
      FieldName = 'cli_rgie'
      Size = 25
    end
    object sqlclientecli_cpfcnpj: TStringField
      FieldName = 'cli_cpfcnpj'
      Size = 25
    end
    object sqlclientecli_im: TStringField
      FieldName = 'cli_im'
      Size = 25
    end
    object sqlclientecli_suframa: TStringField
      FieldName = 'cli_suframa'
      Size = 25
    end
    object sqlclientecli_data: TDateField
      FieldName = 'cli_data'
    end
    object sqlclientecli_status: TShortintField
      FieldName = 'cli_status'
    end
    object sqlclientecli_data_deletado: TDateTimeField
      FieldName = 'cli_data_deletado'
    end
    object sqlclientecli_data_registro: TDateTimeField
      FieldName = 'cli_data_registro'
    end
  end
end
