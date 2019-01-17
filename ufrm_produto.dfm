inherited frm_produto: Tfrm_produto
  Caption = 'Manuten'#231#227'o - Produtos e Servi'#231'os'
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
                FieldName = 'pro_id'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pro_tipo'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pro_nome'
                Width = 275
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pro_data_registro'
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
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label5: TLabel
            Left = 3
            Top = 3
            Width = 20
            Height = 13
            Caption = 'Tipo'
          end
          object dbedt_pro_nome: TDBEdit
            Left = 3
            Top = 68
            Width = 256
            Height = 21
            CharCase = ecUpperCase
            DataField = 'pro_nome'
            DataSource = ds
            TabOrder = 1
          end
          object dbmem_pro_descricao: TDBMemo
            Left = 3
            Top = 114
            Width = 986
            Height = 100
            DataField = 'pro_descricao'
            DataSource = ds
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object dbcmbbox_pro_tipo: TDBComboBox
            Left = 3
            Top = 22
            Width = 125
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'pro_tipo'
            DataSource = ds
            Items.Strings = (
              'P'
              'S')
            TabOrder = 0
          end
        end
      end
      inherited Panel_manutencao_top: TPanel
        inherited dbedt_data_registro: TDBEdit
          DataField = 'pro_data_registro'
        end
        inherited dbedt_id: TDBEdit
          DataField = 'pro_id'
        end
      end
    end
  end
  inherited clientSQL: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'pro_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usuario_usr_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'pro_id'
        DataType = ftLongWord
      end
      item
        Name = 'pro_tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'pro_nome'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'pro_descricao'
        DataType = ftMemo
      end
      item
        Name = 'pro_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'pro_data_registro'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'pro_id'
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_produto_read('#39#39');')
    object clientSQLpro_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'pro_codigo'
      Size = 32
    end
    object clientSQLusuario_usr_codigo: TStringField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object clientSQLpro_id: TLongWordField
      DisplayLabel = 'ID'
      FieldName = 'pro_id'
    end
    object clientSQLpro_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'pro_tipo'
      Size = 1
    end
    object clientSQLpro_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'pro_nome'
      Size = 125
    end
    object clientSQLpro_descricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pro_descricao'
      BlobType = ftMemo
    end
    object clientSQLpro_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'pro_data_deletado'
    end
    object clientSQLpro_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'pro_data_registro'
    end
  end
end
