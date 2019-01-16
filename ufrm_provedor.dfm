inherited frm_provedor: Tfrm_provedor
  Caption = 'Manuten'#231#227'o: Provedores'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl_1: TPageControl
    inherited TabSheet_pesquisar: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 676
      inherited PageControl_registros: TPageControl
        inherited TabSheet_registros_ativos: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 992
          ExplicitHeight = 598
          inherited DBGrid_1: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'prv_id'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prv_nome'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prv_data_registro'
                Width = 125
                Visible = True
              end>
          end
        end
      end
    end
    inherited TabSheet_manutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 676
      inherited PageControl_2: TPageControl
        inherited TabSheet_dados: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 992
          ExplicitHeight = 598
          object Label3: TLabel
            Left = 3
            Top = 3
            Width = 27
            Height = 13
            Caption = 'Nome'
          end
          object dbedt_prv_nome: TDBEdit
            Left = 3
            Top = 22
            Width = 256
            Height = 21
            CharCase = ecUpperCase
            DataField = 'prv_nome'
            DataSource = ds
            TabOrder = 0
          end
        end
      end
      inherited Panel_manutencao_top: TPanel
        inherited dbedt_data_registro: TDBEdit
          DataField = 'prv_data_registro'
        end
        inherited dbedt_id: TDBEdit
          DataField = 'prv_id'
        end
      end
    end
  end
  inherited clientSQL: TRESTDWClientSQL
    Active = True
    FieldDefs = <
      item
        Name = 'prv_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usuario_usr_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'prv_id'
        DataType = ftLongWord
      end
      item
        Name = 'prv_nome'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'prv_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'prv_data_registro'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'prv_id'
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_provedor_read('#39#39');')
    object clientSQLprv_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'prv_codigo'
      Size = 32
    end
    object clientSQLusuario_usr_codigo: TStringField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object clientSQLprv_id: TLongWordField
      DisplayLabel = 'ID'
      FieldName = 'prv_id'
    end
    object clientSQLprv_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'prv_nome'
      Size = 125
    end
    object clientSQLprv_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'prv_data_deletado'
    end
    object clientSQLprv_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'prv_data_registro'
    end
  end
end
