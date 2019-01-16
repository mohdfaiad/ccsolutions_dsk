inherited frm_servidor: Tfrm_servidor
  Caption = 'Manuten'#231#227'o: Servidores'
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
                FieldName = 'srv_id'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'srv_nome'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'srv_status'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'srv_data_registro'
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
            Top = 60
            Width = 67
            Height = 13
            Caption = 'Endere'#231'o SSH'
          end
          object Label5: TLabel
            Left = 265
            Top = 60
            Width = 48
            Height = 13
            Caption = 'Porta SSH'
          end
          object Label6: TLabel
            Left = 396
            Top = 60
            Width = 58
            Height = 13
            Caption = 'Usu'#225'rio SSH'
          end
          object Label7: TLabel
            Left = 527
            Top = 60
            Width = 52
            Height = 13
            Caption = 'Senha SSH'
          end
          object Bevel1: TBevel
            Left = 3
            Top = 49
            Width = 986
            Height = 5
            Shape = bsBottomLine
          end
          object dbedt_srv_nome: TDBEdit
            Left = 3
            Top = 22
            Width = 256
            Height = 21
            CharCase = ecUpperCase
            DataField = 'srv_nome'
            DataSource = ds
            TabOrder = 0
          end
          object dbedt_srv_ssh_endereco: TDBEdit
            Left = 3
            Top = 79
            Width = 256
            Height = 21
            CharCase = ecLowerCase
            DataField = 'srv_ssh_endereco'
            DataSource = ds
            TabOrder = 1
          end
          object dbedt_srv_ssh_porta: TDBEdit
            Left = 265
            Top = 79
            Width = 125
            Height = 21
            DataField = 'srv_ssh_porta'
            DataSource = ds
            TabOrder = 2
          end
          object dbedt_srv_ssh_usuario: TDBEdit
            Left = 396
            Top = 79
            Width = 125
            Height = 21
            DataField = 'srv_ssh_usuario'
            DataSource = ds
            TabOrder = 3
          end
          object dbedt_srv_ssh_senha: TDBEdit
            Left = 527
            Top = 79
            Width = 125
            Height = 21
            DataField = 'srv_ssh_senha'
            DataSource = ds
            PasswordChar = '*'
            TabOrder = 4
          end
        end
      end
      inherited Panel_manutencao_top: TPanel
        inherited dbedt_data_registro: TDBEdit
          DataField = 'srv_data_registro'
        end
        inherited dbedt_id: TDBEdit
          DataField = 'srv_id'
        end
        object dbchkbox_srv_status: TDBCheckBox
          Left = 269
          Top = 27
          Width = 60
          Height = 17
          Caption = 'Status'
          DataField = 'srv_status'
          DataSource = ds
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  inherited clientSQL: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'srv_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usuario_usr_codigo'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'srv_id'
        DataType = ftLongWord
      end
      item
        Name = 'srv_nome'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'srv_ssh_endereco'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'srv_ssh_porta'
        DataType = ftInteger
      end
      item
        Name = 'srv_ssh_usuario'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'srv_ssh_senha'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'srv_status'
        DataType = ftShortint
      end
      item
        Name = 'srv_data_deletado'
        DataType = ftDateTime
      end
      item
        Name = 'srv_data_registro'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'srv_id'
    DataBase = frm_dm.database
    SQL.Strings = (
      'call proc_servidor_read('#39#39');')
    object clientSQLsrv_codigo: TStringField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'srv_codigo'
      Size = 32
    end
    object clientSQLusuario_usr_codigo: TStringField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuario_usr_codigo'
      Size = 32
    end
    object clientSQLsrv_id: TLongWordField
      DisplayLabel = 'ID'
      FieldName = 'srv_id'
    end
    object clientSQLsrv_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'srv_nome'
      Size = 125
    end
    object clientSQLsrv_ssh_endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'srv_ssh_endereco'
      Size = 125
    end
    object clientSQLsrv_ssh_porta: TIntegerField
      DisplayLabel = 'Porta'
      FieldName = 'srv_ssh_porta'
    end
    object clientSQLsrv_ssh_usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'srv_ssh_usuario'
      Size = 125
    end
    object clientSQLsrv_ssh_senha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'srv_ssh_senha'
      Size = 50
    end
    object clientSQLsrv_status: TShortintField
      DisplayLabel = 'Status'
      FieldName = 'srv_status'
    end
    object clientSQLsrv_data_deletado: TDateTimeField
      DisplayLabel = 'Dt. Deletado'
      FieldName = 'srv_data_deletado'
    end
    object clientSQLsrv_data_registro: TDateTimeField
      DisplayLabel = 'Dt. Registro'
      FieldName = 'srv_data_registro'
    end
  end
end
