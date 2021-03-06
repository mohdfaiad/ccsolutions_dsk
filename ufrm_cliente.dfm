inherited frm_cliente: Tfrm_cliente
  Caption = 'Manuten'#231#227'o: Clientes'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl_1: TPageControl
    inherited TabSheet_pesquisar: TTabSheet
      inherited PageControl_registros: TPageControl
        inherited TabSheet_registros_ativos: TTabSheet
          inherited DBGrid_1: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'cli_id'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_nome'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_nome_fantasia'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_tipo'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_rgie'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_cpfcnpj'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_im'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_suframa'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_data'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_status'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_data_deletado'
                Width = 125
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_data_registro'
                Width = 125
                Visible = True
              end>
          end
        end
      end
    end
    inherited TabSheet_manutencao: TTabSheet
      inherited PageControl_2: TPageControl
        inherited TabSheet_dados: TTabSheet
          object Label3: TLabel
            Left = 3
            Top = 49
            Width = 27
            Height = 13
            Caption = 'Nome'
          end
          object Label4: TLabel
            Left = 3
            Top = 95
            Width = 71
            Height = 13
            Caption = 'Nome Fantasia'
          end
          object Label6: TLabel
            Left = 3
            Top = 141
            Width = 48
            Height = 13
            Caption = 'CPF/CNPJ'
          end
          object Label7: TLabel
            Left = 134
            Top = 141
            Width = 28
            Height = 13
            Caption = 'RG/IE'
          end
          object Label8: TLabel
            Left = 265
            Top = 141
            Width = 12
            Height = 13
            Caption = 'IM'
          end
          object Label9: TLabel
            Left = 396
            Top = 141
            Width = 40
            Height = 13
            Caption = 'Suframa'
          end
          object Label10: TLabel
            Left = 396
            Top = 49
            Width = 80
            Height = 13
            Caption = 'Dt. Nasc./Abert.'
          end
          object Label5: TLabel
            Left = 3
            Top = 3
            Width = 20
            Height = 13
            Caption = 'Tipo'
          end
          object dbedt_cli_nome: TDBEdit
            Left = 3
            Top = 68
            Width = 387
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_nome'
            DataSource = ds
            TabOrder = 1
          end
          object dbedt_cli_nome_fantasia: TDBEdit
            Left = 3
            Top = 114
            Width = 387
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_nome_fantasia'
            DataSource = ds
            TabOrder = 3
          end
          object dbedt_cli_cpfcnpj: TDBEdit
            Left = 3
            Top = 160
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_cpfcnpj'
            DataSource = ds
            TabOrder = 4
          end
          object dbedt_cli_rgie: TDBEdit
            Left = 134
            Top = 160
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_rgie'
            DataSource = ds
            TabOrder = 5
          end
          object dbedt_cli_im: TDBEdit
            Left = 265
            Top = 160
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_im'
            DataSource = ds
            TabOrder = 6
          end
          object dbedt_cli_suframa: TDBEdit
            Left = 396
            Top = 160
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_suframa'
            DataSource = ds
            TabOrder = 7
          end
          object dbedt_cli_data: TDBEdit
            Left = 396
            Top = 68
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_data'
            DataSource = ds
            MaxLength = 10
            TabOrder = 2
          end
          object dbcmb_cli_tipo: TDBComboBox
            Left = 3
            Top = 22
            Width = 125
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'cli_tipo'
            DataSource = ds
            Items.Strings = (
              'PF'
              'PJ')
            TabOrder = 0
          end
        end
        object TabSheet_endereco: TTabSheet
          Caption = 'Endere'#231'os'
          ImageIndex = 1
          DesignSize = (
            992
            598)
          object Label11: TLabel
            Left = 134
            Top = 3
            Width = 19
            Height = 13
            Caption = 'CEP'
          end
          object Label12: TLabel
            Left = 265
            Top = 3
            Width = 19
            Height = 13
            Caption = 'Rua'
          end
          object Label13: TLabel
            Left = 571
            Top = 3
            Width = 25
            Height = 13
            Caption = 'N'#250'm.'
          end
          object Label14: TLabel
            Left = 702
            Top = 3
            Width = 28
            Height = 13
            Caption = 'Bairro'
          end
          object Label15: TLabel
            Left = 3
            Top = 49
            Width = 65
            Height = 13
            Caption = 'Complemento'
          end
          object Label16: TLabel
            Left = 265
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label17: TLabel
            Left = 571
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object Label18: TLabel
            Left = 702
            Top = 49
            Width = 19
            Height = 13
            Caption = 'Pa'#237's'
          end
          object Label19: TLabel
            Left = 3
            Top = 3
            Width = 20
            Height = 13
            Caption = 'Tipo'
          end
          object Bevel1: TBevel
            Left = 3
            Top = 95
            Width = 986
            Height = 5
            Anchors = [akLeft, akTop, akRight]
            Shape = bsBottomLine
          end
          object DBGrid_cliente_endereco: TDBGrid
            Left = 3
            Top = 140
            Width = 986
            Height = 455
            Anchors = [akLeft, akTop, akRight]
            DataSource = dscliente_endereco
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'cli_end_tipo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_cep'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_rua'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_numero'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_bairro'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_complemento'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_cidade'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_estado'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_end_pais'
                Width = 150
                Visible = True
              end>
          end
          object dbedt_cli_end_cep: TDBEdit
            Left = 134
            Top = 22
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_cep'
            DataSource = dscliente_endereco
            TabOrder = 1
          end
          object dbedt_cli_end_rua: TDBEdit
            Left = 265
            Top = 22
            Width = 300
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_rua'
            DataSource = dscliente_endereco
            TabOrder = 2
          end
          object dbedt_cli_end_numero: TDBEdit
            Left = 571
            Top = 22
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_numero'
            DataSource = dscliente_endereco
            TabOrder = 3
          end
          object dbedt_cli_end_bairro: TDBEdit
            Left = 702
            Top = 22
            Width = 287
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_bairro'
            DataSource = dscliente_endereco
            TabOrder = 4
          end
          object dbedt_cli_end_complemento: TDBEdit
            Left = 3
            Top = 68
            Width = 256
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_complemento'
            DataSource = dscliente_endereco
            TabOrder = 5
          end
          object dbedt_cli_end_cidade: TDBEdit
            Left = 265
            Top = 68
            Width = 300
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_cidade'
            DataSource = dscliente_endereco
            TabOrder = 6
          end
          object dbedt_cli_end_estado: TDBEdit
            Left = 571
            Top = 68
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_estado'
            DataSource = dscliente_endereco
            TabOrder = 7
          end
          object dbedt_cli_end_pais: TDBEdit
            Left = 702
            Top = 68
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_end_pais'
            DataSource = dscliente_endereco
            TabOrder = 8
          end
          object dbcmb_cli_end_tipo: TDBComboBox
            Left = 3
            Top = 22
            Width = 125
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'cli_end_tipo'
            DataSource = dscliente_endereco
            Items.Strings = (
              'C'
              'F'
              'E')
            TabOrder = 9
          end
          object Panel_contrato_iten: TPanel
            Left = 3
            Top = 106
            Width = 986
            Height = 28
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 10
            object SpeedButton_cli_end_inserir: TSpeedButton
              Left = 886
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_endereco_inserir
              Align = alRight
              ExplicitLeft = 892
            end
            object SpeedButton_cli_end_cancelar: TSpeedButton
              Left = 911
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_endereco_cancelar
              Align = alRight
              ExplicitLeft = 892
              ExplicitTop = 2
              ExplicitHeight = 24
            end
            object SpeedButton_cli_end_salvar: TSpeedButton
              Left = 936
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_endereco_salvar
              Align = alRight
              ExplicitLeft = 915
              ExplicitTop = 1
              ExplicitHeight = 24
            end
            object SpeedButton_cli_end_deletar: TSpeedButton
              Left = 961
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_endereco_deletar
              Align = alRight
              ExplicitLeft = 938
              ExplicitTop = 2
              ExplicitHeight = 24
            end
          end
        end
        object TabSheet_contato: TTabSheet
          Caption = 'Contatos'
          ImageIndex = 2
          DesignSize = (
            992
            598)
          object Label20: TLabel
            Left = 134
            Top = 3
            Width = 27
            Height = 13
            Caption = 'Tel. 1'
          end
          object Label21: TLabel
            Left = 265
            Top = 3
            Width = 27
            Height = 13
            Caption = 'Tel. 2'
          end
          object Label22: TLabel
            Left = 396
            Top = 3
            Width = 27
            Height = 13
            Caption = 'Tel. 3'
          end
          object Label23: TLabel
            Left = 527
            Top = 3
            Width = 27
            Height = 13
            Caption = 'Tel. 4'
          end
          object Label24: TLabel
            Left = 658
            Top = 3
            Width = 39
            Height = 13
            Caption = 'Contato'
          end
          object Label28: TLabel
            Left = 3
            Top = 3
            Width = 20
            Height = 13
            Caption = 'Tipo'
          end
          object Bevel2: TBevel
            Left = 3
            Top = 49
            Width = 986
            Height = 5
            Anchors = [akLeft, akTop, akRight]
            Shape = bsBottomLine
          end
          object DBGrid_cliente_contato: TDBGrid
            Left = 3
            Top = 94
            Width = 986
            Height = 501
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dscliente_contato
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'cli_con_tipo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_con_telefone1'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_con_telefone2'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_con_telefone3'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_con_telefone4'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cli_con_contato'
                Width = 150
                Visible = True
              end>
          end
          object dbedt_cli_con_telefone1: TDBEdit
            Left = 134
            Top = 22
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_con_telefone1'
            DataSource = dscliente_contato
            TabOrder = 1
          end
          object dbedt_cli_con_telefone2: TDBEdit
            Left = 265
            Top = 22
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_con_telefone2'
            DataSource = dscliente_contato
            TabOrder = 2
          end
          object dbedt_cli_con_telefone3: TDBEdit
            Left = 396
            Top = 22
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_con_telefone3'
            DataSource = dscliente_contato
            TabOrder = 3
          end
          object dbedt_cli_con_telefone4: TDBEdit
            Left = 527
            Top = 22
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_con_telefone4'
            DataSource = dscliente_contato
            TabOrder = 4
          end
          object dbedt_cli_con_contato: TDBEdit
            Left = 658
            Top = 22
            Width = 331
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cli_con_contato'
            DataSource = dscliente_contato
            TabOrder = 5
          end
          object dbcmb_cli_con_tipo: TDBComboBox
            Left = 3
            Top = 22
            Width = 125
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'cli_con_tipo'
            DataSource = dscliente_contato
            Items.Strings = (
              'C'
              'F'
              'E')
            TabOrder = 6
          end
          object Panel1: TPanel
            Left = 3
            Top = 60
            Width = 986
            Height = 28
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 7
            object SpeedButton1: TSpeedButton
              Left = 886
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_contato_inserir
              Align = alRight
              ExplicitLeft = 892
            end
            object SpeedButton2: TSpeedButton
              Left = 911
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_contato_cancelar
              Align = alRight
              ExplicitLeft = 892
              ExplicitTop = 2
              ExplicitHeight = 24
            end
            object SpeedButton3: TSpeedButton
              Left = 936
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_contato_salvar
              Align = alRight
              ExplicitLeft = 915
              ExplicitTop = 1
              ExplicitHeight = 24
            end
            object SpeedButton4: TSpeedButton
              Left = 961
              Top = 0
              Width = 25
              Height = 28
              Action = Action_cliente_contato_deletar
              Align = alRight
              ExplicitLeft = 938
              ExplicitTop = 2
              ExplicitHeight = 24
            end
          end
        end
      end
      inherited Panel_manutencao_top: TPanel
        inherited dbedt_data_registro: TDBEdit
          DataField = 'cli_data_registro'
        end
        inherited dbedt_id: TDBEdit
          DataField = 'cli_id'
        end
      end
      object dbchkbox_cli_status: TDBCheckBox
        Left = 269
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Status'
        DataField = 'cli_status'
        DataSource = ds
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  inherited actlist: TActionList
    object Action_cliente_endereco_inserir: TAction
      Hint = 'Inserir Registro'
      ImageIndex = 4
    end
    object Action_cliente_endereco_salvar: TAction
      Hint = 'Salvar Altera'#231#245'es'
      ImageIndex = 7
    end
    object Action_cliente_endereco_deletar: TAction
      Hint = 'Deletar Registro'
      ImageIndex = 8
    end
    object Action_cliente_endereco_cancelar: TAction
      Hint = 'Cancelar Altera'#231#245'es'
      ImageIndex = 6
    end
    object Action_cliente_contato_inserir: TAction
      Hint = 'Inserir Registro'
      ImageIndex = 4
    end
    object Action_cliente_contato_salvar: TAction
      Hint = 'Salvar Altera'#231#245'es'
      ImageIndex = 7
    end
    object Action_cliente_contato_deletar: TAction
      Hint = 'Deletar Registro'
      ImageIndex = 8
    end
    object Action_cliente_contato_cancelar: TAction
      Hint = 'Cancelar Altera'#231#245'es'
      ImageIndex = 6
    end
  end
  inherited clientSQL: TRESTDWClientSQL
    Active = True
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
    IndexFieldNames = 'cli_id'
    DataBase = frm_dm.database
    SQL.Strings = (
      'call dbcloud.proc_cliente_read('#39#39');')
    object clientSQLcli_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_codigo'
      Size = 32
    end
    object clientSQLusuario_usr_codigo: TStringField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object clientSQLcli_id: TLongWordField
      DisplayLabel = 'ID'
      FieldName = 'cli_id'
    end
    object clientSQLcli_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'cli_nome'
      Size = 125
    end
    object clientSQLcli_nome_fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'cli_nome_fantasia'
      Size = 125
    end
    object clientSQLcli_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cli_tipo'
      Size = 2
    end
    object clientSQLcli_rgie: TStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'cli_rgie'
      Size = 25
    end
    object clientSQLcli_cpfcnpj: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cli_cpfcnpj'
      Size = 25
    end
    object clientSQLcli_im: TStringField
      DisplayLabel = 'IM'
      FieldName = 'cli_im'
      Size = 25
    end
    object clientSQLcli_suframa: TStringField
      DisplayLabel = 'Suframa'
      FieldName = 'cli_suframa'
      Size = 25
    end
    object clientSQLcli_data: TDateField
      DisplayLabel = 'Dt. Nasc./Abert.'
      FieldName = 'cli_data'
      EditMask = '!99/99/0000;1;_'
    end
    object clientSQLcli_status: TShortintField
      DisplayLabel = 'Status'
      FieldName = 'cli_status'
    end
    object clientSQLcli_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'cli_data_deletado'
    end
    object clientSQLcli_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'cli_data_registro'
    end
  end
  object sqlcliente_endereco: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'cli_end_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cliente_cli_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cli_end_tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cli_end_cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'cli_end_rua'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'cli_end_numero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'cli_end_bairro'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'cli_end_complemento'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cli_end_cidade'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'cli_end_estado'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cli_end_pais'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'cli_end_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'cli_end_data_registro'
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
    MasterDataSet = clientSQL
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_cliente_endereco_read('#39#39', '#39#39');')
    RelationFields.Strings = (
      'cli_codigo=cliente_cli_codigo')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 864
    Top = 56
    object sqlcliente_enderecocli_end_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_end_codigo'
      Size = 32
    end
    object sqlcliente_enderecocliente_cli_codigo: TStringField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'cliente_cli_codigo'
      Size = 32
    end
    object sqlcliente_enderecocli_end_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cli_end_tipo'
      Size = 1
    end
    object sqlcliente_enderecocli_end_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cli_end_cep'
      Size = 9
    end
    object sqlcliente_enderecocli_end_rua: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'cli_end_rua'
      Size = 125
    end
    object sqlcliente_enderecocli_end_numero: TStringField
      DisplayLabel = 'N'#250'm.'
      FieldName = 'cli_end_numero'
      Size = 10
    end
    object sqlcliente_enderecocli_end_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'cli_end_bairro'
      Size = 75
    end
    object sqlcliente_enderecocli_end_complemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'cli_end_complemento'
      Size = 100
    end
    object sqlcliente_enderecocli_end_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cli_end_cidade'
      Size = 45
    end
    object sqlcliente_enderecocli_end_estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'cli_end_estado'
      Size = 3
    end
    object sqlcliente_enderecocli_end_pais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'cli_end_pais'
      Size = 45
    end
    object sqlcliente_enderecocli_end_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'cli_end_data_deletado'
    end
    object sqlcliente_enderecocli_end_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'cli_end_data_registro'
    end
  end
  object sqlcliente_contato: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'cli_con_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cliente_cli_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cli_con_tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cli_con_telefone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_con_telefone2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_con_telefone3'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_con_telefone4'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'cli_con_contato'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'cli_con_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'cli_con_data_registro'
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
      'call proc_cliente_contato_read('#39#39', '#39#39');')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 800
    Top = 56
    object sqlcliente_contatocli_con_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_con_codigo'
      Size = 32
    end
    object sqlcliente_contatocliente_cli_codigo: TStringField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'cliente_cli_codigo'
      Size = 32
    end
    object sqlcliente_contatocli_con_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cli_con_tipo'
      Size = 1
    end
    object sqlcliente_contatocli_con_telefone1: TStringField
      DisplayLabel = 'Tel. 1'
      FieldName = 'cli_con_telefone1'
      Size = 15
    end
    object sqlcliente_contatocli_con_telefone2: TStringField
      DisplayLabel = 'Tel. 2'
      FieldName = 'cli_con_telefone2'
      Size = 15
    end
    object sqlcliente_contatocli_con_telefone3: TStringField
      DisplayLabel = 'Tel. 3'
      FieldName = 'cli_con_telefone3'
      Size = 15
    end
    object sqlcliente_contatocli_con_telefone4: TStringField
      DisplayLabel = 'Tel. 4'
      FieldName = 'cli_con_telefone4'
      Size = 15
    end
    object sqlcliente_contatocli_con_contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'cli_con_contato'
      Size = 25
    end
    object sqlcliente_contatocli_con_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'cli_con_data_deletado'
    end
    object sqlcliente_contatocli_con_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'cli_con_data_registro'
    end
  end
  object dscliente_endereco: TDataSource
    DataSet = sqlcliente_endereco
    Left = 896
    Top = 56
  end
  object dscliente_contato: TDataSource
    DataSet = sqlcliente_contato
    Left = 832
    Top = 56
  end
end
