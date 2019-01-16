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
    DBGrid_cliente_endereco: TDBGrid;
    dbedt_cli_end_cep: TDBEdit;
    Label11: TLabel;
    dbedt_cli_end_rua: TDBEdit;
    Label12: TLabel;
    dbedt_cli_end_numero: TDBEdit;
    Label13: TLabel;
    dbedt_cli_end_bairro: TDBEdit;
    Label14: TLabel;
    dbedt_cli_end_complemento: TDBEdit;
    Label15: TLabel;
    dbedt_cli_end_cidade: TDBEdit;
    Label16: TLabel;
    dbedt_cli_end_estado: TDBEdit;
    Label17: TLabel;
    dbedt_cli_end_pais: TDBEdit;
    Label18: TLabel;
    dbcmb_cli_end_tipo: TDBComboBox;
    Label19: TLabel;
    Bevel1: TBevel;
    TabSheet_contato: TTabSheet;
    DBGrid_cliente_contato: TDBGrid;
    dbedt_cli_con_telefone1: TDBEdit;
    Label20: TLabel;
    dbedt_cli_con_telefone2: TDBEdit;
    Label21: TLabel;
    dbedt_cli_con_telefone3: TDBEdit;
    Label22: TLabel;
    dbedt_cli_con_telefone4: TDBEdit;
    Label23: TLabel;
    dbedt_cli_con_contato: TDBEdit;
    Label24: TLabel;
    dbcmb_cli_con_tipo: TDBComboBox;
    Label28: TLabel;
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
    Panel_contrato_iten: TPanel;
    SpeedButton_cli_end_inserir: TSpeedButton;
    SpeedButton_cli_end_cancelar: TSpeedButton;
    SpeedButton_cli_end_salvar: TSpeedButton;
    SpeedButton_cli_end_deletar: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Action_cliente_endereco_inserir: TAction;
    Action_cliente_endereco_salvar: TAction;
    Action_cliente_endereco_deletar: TAction;
    Action_cliente_endereco_cancelar: TAction;
    Action_cliente_contato_inserir: TAction;
    Action_cliente_contato_salvar: TAction;
    Action_cliente_contato_deletar: TAction;
    Action_cliente_contato_cancelar: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Action_salvarExecute(Sender: TObject);
    procedure Action_inserirExecute(Sender: TObject);
    procedure dbnav_cliente_enderecoClick(Sender: TObject; Button: TNavigateBtn);
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
  cliente_read(frm_dm.usuario_usr_token);
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
  SQL := 'call proc_cliente_read('+QuotedStr(AToken) +');';

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True
end;

procedure Tfrm_cliente.dbnav_cliente_enderecoClick(Sender: TObject; Button: TNavigateBtn);
var
  storedProcInsert, storedProcUpdate : TFDStoredProc;
begin
  inherited;
  case Button of
    nbPost:
      case dscliente_endereco.State of
        dsEdit:
          try
            try
              storedProcUpdate := TFDStoredProc.Create(Self);
              storedProcUpdate.Connection := frm_dm.connDB;
              storedProcUpdate.StoredProcName := 'proc_cliente_endereco_update';
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

//              afterUpdate;
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
              storedProcInsert.StoredProcName := 'proc_cliente_endereco_create';
              storedProcInsert.Prepare;
              storedProcInsert.ParamByName('p_usuario_usr_token').AsString    := frm_dm.usuario_usr_token;
              storedProcInsert.ParamByName('p_cliente_cli_codigo').AsString   := clientSQLcli_codigo.AsString;
              storedProcInsert.ParamByName('p_cli_con_tipo').AsString         := dbcmb_cli_end_tipo.Text;
              storedProcInsert.ParamByName('p_cli_con_cep').AsString          := dbedt_cli_end_cep.Text;
              storedProcInsert.ParamByName('p_cli_con_rua').AsString          := dbedt_cli_end_rua.Text;
              storedProcInsert.ParamByName('p_cli_con_numero').AsString       := dbedt_cli_end_numero.Text;
              storedProcInsert.ParamByName('p_cli_con_bairro').AsString       := dbedt_cli_end_bairro.Text;
              storedProcInsert.ParamByName('p_cli_con_complemento').AsString  := dbedt_cli_end_complemento.Text;
              storedProcInsert.ParamByName('p_cli_con_cidade').AsString       := dbedt_cli_end_cidade.Text;
              storedProcInsert.ParamByName('p_cli_con_estado').AsString       := dbedt_cli_end_estado.Text;
              storedProcInsert.ParamByName('p_cli_con_pais').AsString         := dbedt_cli_end_pais.Text;
              storedProcInsert.ExecProc;

//              afterInsert;
            except on E: Exception do
              ShowMessage('Error Inserir: ' + E.Message);
            end;
          finally
          end;
      end;
  end;
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
