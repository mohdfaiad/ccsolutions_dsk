inherited frm_fornecedor: Tfrm_fornecedor
  Caption = 'Manuten'#231#227'o: Fornecedores'
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
                FieldName = 'for_id'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_nome'
                Width = 275
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_nome_fantasia'
                Width = 275
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_cnpj'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_ie'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_im'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_suframa'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_data'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_status'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_data_registro'
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
          object Label7: TLabel
            Left = 265
            Top = 95
            Width = 12
            Height = 13
            Caption = 'IM'
          end
          object Label8: TLabel
            Left = 396
            Top = 95
            Width = 40
            Height = 13
            Caption = 'Suframa'
          end
          object Label9: TLabel
            Left = 396
            Top = 49
            Width = 49
            Height = 13
            Caption = 'Dt. Abert.'
          end
          object dbedt_for_nome: TDBEdit
            Left = 3
            Top = 22
            Width = 387
            Height = 21
            CharCase = ecUpperCase
            DataField = 'for_nome'
            DataSource = ds
            TabOrder = 0
          end
          object dbedt_for_nome_fantasia: TDBEdit
            Left = 3
            Top = 68
            Width = 387
            Height = 21
            CharCase = ecUpperCase
            DataField = 'for_nome_fantasia'
            DataSource = ds
            TabOrder = 1
          end
          object dbedt_for_cnpj: TDBEdit
            Left = 3
            Top = 114
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'for_cnpj'
            DataSource = ds
            TabOrder = 3
          end
          object dbedt_for_ie: TDBEdit
            Left = 134
            Top = 114
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'for_ie'
            DataSource = ds
            TabOrder = 4
          end
          object dbedt_for_im: TDBEdit
            Left = 265
            Top = 114
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'for_im'
            DataSource = ds
            TabOrder = 5
          end
          object dbedt_for_suframa: TDBEdit
            Left = 396
            Top = 114
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'for_suframa'
            DataSource = ds
            TabOrder = 6
          end
          object dbedt_for_data: TDBEdit
            Left = 396
            Top = 68
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'for_data'
            DataSource = ds
            MaxLength = 10
            TabOrder = 2
          end
        end
      end
      inherited Panel_manutencao_top: TPanel
        inherited dbedt_data_registro: TDBEdit
          DataField = 'for_data_registro'
        end
        inherited dbedt_id: TDBEdit
          DataField = 'for_id'
        end
        object dbchkbox_for_status: TDBCheckBox
          Left = 269
          Top = 24
          Width = 60
          Height = 17
          Caption = 'Status'
          DataField = 'for_status'
          DataSource = ds
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  inherited clientSQL: TRESTDWClientSQL
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_fornecedor_read('#39#39');')
    object clientSQLfor_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'for_codigo'
      Size = 32
    end
    object clientSQLusuario_usr_codigo: TStringField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object clientSQLfor_id: TLongWordField
      DisplayLabel = 'ID'
      FieldName = 'for_id'
    end
    object clientSQLfor_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'for_nome'
      Size = 125
    end
    object clientSQLfor_nome_fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'for_nome_fantasia'
      Size = 125
    end
    object clientSQLfor_cnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'for_cnpj'
      Size = 25
    end
    object clientSQLfor_ie: TStringField
      DisplayLabel = 'IE'
      FieldName = 'for_ie'
      Size = 25
    end
    object clientSQLfor_im: TStringField
      DisplayLabel = 'IM'
      FieldName = 'for_im'
      Size = 25
    end
    object clientSQLfor_suframa: TStringField
      DisplayLabel = 'Suframa'
      FieldName = 'for_suframa'
      Size = 25
    end
    object clientSQLfor_data: TDateField
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'for_data'
      EditMask = '!99/99/0000;1;_'
    end
    object clientSQLfor_status: TShortintField
      DisplayLabel = 'Status'
      FieldName = 'for_status'
    end
    object clientSQLfor_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'for_data_deletado'
    end
    object clientSQLfor_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'for_data_registro'
    end
  end
end
