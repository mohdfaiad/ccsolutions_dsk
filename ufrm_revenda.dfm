inherited frm_revenda: Tfrm_revenda
  Caption = 'Manuten'#231#227'o: Revendas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl_1: TPageControl
    inherited TabSheet_pesquisar: TTabSheet
      inherited DBGrid_1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'rev_id'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rev_nome'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rev_nome_fantasia'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rev_cnpj'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rev_ie'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rev_data_registro'
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
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 992
          ExplicitHeight = 549
          object Label3: TLabel
            Left = 3
            Top = 3
            Width = 27
            Height = 13
            Caption = 'Nome'
          end
          object Label4: TLabel
            Left = 3
            Top = 49
            Width = 71
            Height = 13
            Caption = 'Nome Fantasia'
          end
          object Label5: TLabel
            Left = 3
            Top = 95
            Width = 25
            Height = 13
            Caption = 'CNPJ'
          end
          object Label6: TLabel
            Left = 134
            Top = 95
            Width = 10
            Height = 13
            Caption = 'IE'
          end
          object dbedt_rev_nome: TDBEdit
            Left = 3
            Top = 22
            Width = 387
            Height = 21
            CharCase = ecUpperCase
            DataField = 'rev_nome'
            DataSource = ds
            TabOrder = 0
          end
          object dbedt_rev_nome_fantasia: TDBEdit
            Left = 3
            Top = 68
            Width = 387
            Height = 21
            CharCase = ecUpperCase
            DataField = 'rev_nome_fantasia'
            DataSource = ds
            TabOrder = 1
          end
          object dbedt_rev_cnpj: TDBEdit
            Left = 3
            Top = 114
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'rev_cnpj'
            DataSource = ds
            TabOrder = 2
          end
          object dbedt_rev_ie: TDBEdit
            Left = 134
            Top = 114
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'rev_ie'
            DataSource = ds
            TabOrder = 3
          end
        end
      end
      inherited dbedt_id: TDBEdit
        DataField = 'rev_id'
      end
      inherited dbedt_data_registro: TDBEdit
        DataField = 'rev_data_registro'
      end
    end
  end
  inherited clientSQL: TRESTDWClientSQL
    IndexFieldNames = 'rev_id'
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_revenda_read('#39#39');')
    object clientSQLrev_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'rev_codigo'
      Size = 32
    end
    object clientSQLusuario_usr_codigo: TStringField
      DisplayLabel = 'C'#243'd. - Usu'#225'rio'
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object clientSQLrev_id: TLongWordField
      DisplayLabel = 'ID'
      FieldName = 'rev_id'
    end
    object clientSQLrev_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'rev_nome'
      Size = 125
    end
    object clientSQLrev_nome_fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'rev_nome_fantasia'
      Size = 125
    end
    object clientSQLrev_cnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'rev_cnpj'
      Size = 25
    end
    object clientSQLrev_ie: TStringField
      DisplayLabel = 'IE'
      FieldName = 'rev_ie'
      Size = 25
    end
    object clientSQLrev_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'rev_data_deletado'
    end
    object clientSQLrev_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'rev_data_registro'
    end
  end
end
