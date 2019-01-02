inherited frm_cliente: Tfrm_cliente
  Caption = 'Manuten'#231#227'o: Clientes'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl_1: TPageControl
    inherited TabSheet_pesquisar: TTabSheet
      inherited DBGrid1: TDBGrid
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
            Width = 50
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
  inherited clientSQL: TRESTDWClientSQL
    Active = True
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_cliente_read('#39#39');')
    object clientSQLcli_codigo: TStringField
      Alignment = taRightJustify
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
end
