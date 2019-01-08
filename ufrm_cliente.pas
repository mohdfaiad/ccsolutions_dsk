unit ufrm_cliente;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.DApt,

  uDWAbout,
  uRESTDWPoolerDB,
  uDWConstsData,

  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.ToolWin,
  Vcl.Menus,
  Vcl.Mask,
  Vcl.DBCtrls,

  ACBrBase,
  ACBrEnterTab,

  ufrm_form_default,
  ufrm_dm;

type
  Tfrm_cliente = class(Tfrm_form_default)
    clientSQLcli_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLcli_id: TLongWordField;
    clientSQLcli_nome: TStringField;
    clientSQLcli_nome_fantasia: TStringField;
    clientSQLcli_tipo: TStringField;
    clientSQLcli_rgie: TStringField;
    clientSQLcli_cpfcnpj: TStringField;
    clientSQLcli_im: TStringField;
    clientSQLcli_suframa: TStringField;
    clientSQLcli_data: TDateField;
    clientSQLcli_status: TShortintField;
    clientSQLcli_data_deletado: TDateTimeField;
    clientSQLcli_data_registro: TDateTimeField;
    Label3: TLabel;
    dbedt_cli_nome: TDBEdit;
    Label4: TLabel;
    dbedt_cli_nome_fantasia: TDBEdit;
    Label6: TLabel;
    dbedt_cli_cpfcnpj: TDBEdit;
    Label7: TLabel;
    dbedt_cli_rgie: TDBEdit;
    Label8: TLabel;
    dbedt_cli_im: TDBEdit;
    Label9: TLabel;
    dbedt_cli_suframa: TDBEdit;
    Label10: TLabel;
    dbedt_cli_data: TDBEdit;
    dbcmb_cli_tipo: TDBComboBox;
    Label5: TLabel;
    dbchkbox_cli_status: TDBCheckBox;
    TabSheet_endereco: TTabSheet;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    DBComboBox1: TDBComboBox;
    Label19: TLabel;
    DBNavigator1: TDBNavigator;
    Bevel1: TBevel;
    TabSheet_contato: TTabSheet;
    DBGrid2: TDBGrid;
    DBEdit9: TDBEdit;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    Label21: TLabel;
    DBEdit11: TDBEdit;
    Label22: TLabel;
    DBEdit12: TDBEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label24: TLabel;
    DBComboBox2: TDBComboBox;
    Label28: TLabel;
    DBNavigator2: TDBNavigator;
    Bevel2: TBevel;
    sqlcliente_endereco: TRESTDWClientSQL;
    sqlcliente_contato: TRESTDWClientSQL;
    sqlcliente_contatocli_con_codigo: TStringField;
    sqlcliente_contatocliente_cli_codigo: TStringField;
    sqlcliente_contatocli_con_tipo: TStringField;
    sqlcliente_contatocli_con_telefone1: TStringField;
    sqlcliente_contatocli_con_telefone2: TStringField;
    sqlcliente_contatocli_con_telefone3: TStringField;
    sqlcliente_contatocli_con_telefone4: TStringField;
    sqlcliente_contatocli_con_contato: TStringField;
    sqlcliente_contatocli_con_data_deletado: TDateTimeField;
    sqlcliente_contatocli_con_data_registro: TDateTimeField;
    sqlcliente_enderecocli_end_codigo: TStringField;
    sqlcliente_enderecocliente_cli_codigo: TStringField;
    sqlcliente_enderecocli_end_tipo: TStringField;
    sqlcliente_enderecocli_end_cep: TStringField;
    sqlcliente_enderecocli_end_rua: TStringField;
    sqlcliente_enderecocli_end_numero: TStringField;
    sqlcliente_enderecocli_end_bairro: TStringField;
    sqlcliente_enderecocli_end_complemento: TStringField;
    sqlcliente_enderecocli_end_cidade: TStringField;
    sqlcliente_enderecocli_end_estado: TStringField;
    sqlcliente_enderecocli_end_pais: TStringField;
    sqlcliente_enderecocli_end_data_deletado: TDateTimeField;
    sqlcliente_enderecocli_end_data_registro: TDateTimeField;
    dscliente_endereco: TDataSource;
    dscliente_contato: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Action_salvarExecute(Sender: TObject);
    procedure Action_inserirExecute(Sender: TObject);
  private
    function valorBoolean(ACheckBox: TDBCheckBox): ShortInt;
    procedure afterInsert;
    procedure afterUpdate;
    procedure cliente_read(AToken: String);
    procedure cliente_contato_read(AToken, AClienteCodigo: String);
    procedure cliente_endereco_read(AToken, AClienteCodigo: String);

  public

  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

procedure Tfrm_cliente.Action_inserirExecute(Sender: TObject);
begin
//  inherited;
  TabSheet_dados.Show;
  ds.DataSet.Insert;
end;

procedure Tfrm_cliente.Action_salvarExecute(Sender: TObject);
var
  vError: String;
  storedProcInsert, storedProcUpdate : TFDStoredProc;
begin
  valorBoolean(dbchkbox_cli_status);
  case ds.State of
    dsEdit:
      try
        try
          if Application.MessageBox('Ao Salvar as altera��es, as informa��es antigas n�o poder�o ser recuperadas!', 'Deseja Salvar as Altera��es?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            storedProcUpdate := TFDStoredProc.Create(Self);
            storedProcUpdate.Connection := frm_dm.connDB;
            storedProcUpdate.StoredProcName := 'proc_cliente_update';
            storedProcUpdate.Prepare;
            storedProcUpdate.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
            storedProcUpdate.ParamByName('p_cli_codigo').AsString         := clientSQLcli_codigo.AsString;
            storedProcUpdate.ParamByName('p_cli_nome').AsString           := dbedt_cli_nome.Text;
            storedProcUpdate.ParamByName('p_cli_nome_fantasia').AsString  := dbedt_cli_nome_fantasia.Text;
            storedProcUpdate.ParamByName('p_cli_tipo').AsString           := dbcmb_cli_tipo.Text;
            storedProcUpdate.ParamByName('p_cli_rgie').AsString           := dbedt_cli_rgie.Text;
            storedProcUpdate.ParamByName('p_cli_cpfcnpj').AsString        := dbedt_cli_cpfcnpj.Text;
            storedProcUpdate.ParamByName('p_cli_im').AsString             := dbedt_cli_im.Text;
            storedProcUpdate.ParamByName('p_cli_suframa').AsString        := dbedt_cli_suframa.Text;
            storedProcUpdate.ParamByName('p_cli_data').AsDate             := StrToDate(dbedt_cli_data.Text);
            storedProcUpdate.ParamByName('p_cli_status').AsShortInt       := valorBoolean(dbchkbox_cli_status);
            storedProcUpdate.ExecProc;

            afterUpdate;
          end else begin
            ds.DataSet.Cancel;
          end;
        except on E: Exception do
          ShowMessage('Erro Update: ' + E.Message);
        end;
      finally
      end;

    dsInsert:
      try
        try
          storedProcInsert := TFDStoredProc.Create(Self);
          storedProcInsert.Connection := frm_dm.connDB;
          storedProcInsert.StoredProcName := 'proc_cliente_create';
          storedProcInsert.Prepare;
          storedProcInsert.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
          storedProcInsert.ParamByName('p_cli_nome').AsString           := dbedt_cli_nome.Text;
          storedProcInsert.ParamByName('p_cli_nome_fantasia').AsString  := dbedt_cli_nome_fantasia.Text;
          storedProcInsert.ParamByName('p_cli_tipo').AsString           := dbcmb_cli_tipo.Text;
          storedProcInsert.ParamByName('p_cli_rgie').AsString           := dbedt_cli_rgie.Text;
          storedProcInsert.ParamByName('p_cli_cpfcnpj').AsString        := dbedt_cli_cpfcnpj.Text;
          storedProcInsert.ParamByName('p_cli_im').AsString             := dbedt_cli_im.Text;
          storedProcInsert.ParamByName('p_cli_suframa').AsString        := dbedt_cli_suframa.Text;
          storedProcInsert.ParamByName('p_cli_data').AsDate             := StrToDate(dbedt_cli_data.Text);
          storedProcInsert.ParamByName('p_cli_status').AsShortInt       := valorBoolean(dbchkbox_cli_status);
          storedProcInsert.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Error Inserir: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_cliente.afterInsert;
begin
  ShowMessage('Registro Inserido com Sucesso');
  TabSheet_dados.Show;
  ds.DataSet.Last;
end;

procedure Tfrm_cliente.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  TabSheet_dados.Show;
end;

procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_cliente.Destroy;
  frm_cliente := Nil;
end;

procedure Tfrm_cliente.FormShow(Sender: TObject);
begin
  inherited;
  cliente_read(frm_dm.usuario_usr_token);
  cliente_contato_read(frm_dm.usuario_usr_token, clientSQLcli_codigo.AsString);
  cliente_endereco_read(frm_dm.usuario_usr_token, clientSQLcli_codigo.AsString);
end;

procedure Tfrm_cliente.cliente_contato_read(AToken, AClienteCodigo: String);
var
  SQL: String;
begin
  inherited;
  SQL := 'call proc_cliente_contato_read('+QuotedStr(AToken) +', '+ QuotedStr(AClienteCodigo) +');';

  sqlcliente_contato.Active    := False;
  sqlcliente_contato.DataBase  := frm_dm.database;
  sqlcliente_contato.SQL.Clear;
  sqlcliente_contato.SQL.Text  := SQL;
  sqlcliente_contato.Active    := True
end;

procedure Tfrm_cliente.cliente_endereco_read(AToken, AClienteCodigo: String);
var
  SQL: String;
begin
  inherited;
  SQL := 'call proc_cliente_endereco_read('+QuotedStr(AToken) +', '+ QuotedStr(AClienteCodigo) +');';

  sqlcliente_endereco.Active    := False;
  sqlcliente_endereco.DataBase  := frm_dm.database;
  sqlcliente_endereco.SQL.Clear;
  sqlcliente_endereco.SQL.Text  := SQL;
  sqlcliente_endereco.Active    := True
end;

procedure Tfrm_cliente.cliente_read(AToken: String);
var
  SQL: String;
begin
  inherited;
  SQL := 'call proc_cliente_read('+QuotedStr(AToken) +');';

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True
end;

function Tfrm_cliente.valorBoolean(ACheckBox: TDBCheckBox): ShortInt;
begin
  if ACheckBox.Checked then begin
    Result := 1;
  end else begin
    Result := 0;
  end;
end;

end.
