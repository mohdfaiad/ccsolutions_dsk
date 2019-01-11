unit ufrm_contrato;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,

  System.ImageList,
  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.ToolWin,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,

  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,

  ACBrBase,
  ACBrEnterTab,

  uDWAbout,
  uRESTDWPoolerDB,
  uDWConstsData,

  ufrm_form_default,
  ufrm_dm;

type
  Tfrm_contrato = class(Tfrm_form_default)
    Label3: TLabel;
    dbedt_ctr_data_contrato: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbedt_ctr_data_assinatura: TDBEdit;
    Label6: TLabel;
    sqlrevenda: TRESTDWClientSQL;
    dsrevenda: TDataSource;
    dscliente: TDataSource;
    sqlcliente: TRESTDWClientSQL;
    dblkpcmbbox_revenda_rev_codigo: TDBLookupComboBox;
    dblkpcmbbox_cliente_cli_codigo: TDBLookupComboBox;
    clientSQLctr_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLcliente_cli_codigo: TStringField;
    clientSQLrevenda_rev_codigo: TStringField;
    clientSQLctr_data_contrato: TDateField;
    clientSQLctr_data_assinatura: TDateField;
    clientSQLctr_data_deletado: TDateTimeField;
    clientSQLctr_data_registro: TDateTimeField;
    clientSQLctr_id: TLongWordField;
    sqlclientecli_codigo: TStringField;
    sqlclienteusuario_usr_codigo: TStringField;
    sqlclientecli_id: TLongWordField;
    sqlclientecli_nome: TStringField;
    sqlclientecli_nome_fantasia: TStringField;
    sqlclientecli_tipo: TStringField;
    sqlclientecli_rgie: TStringField;
    sqlclientecli_cpfcnpj: TStringField;
    sqlclientecli_im: TStringField;
    sqlclientecli_suframa: TStringField;
    sqlclientecli_data: TDateField;
    sqlclientecli_status: TShortintField;
    sqlclientecli_data_deletado: TDateTimeField;
    sqlclientecli_data_registro: TDateTimeField;
    sqlrevendarev_codigo: TStringField;
    sqlrevendausuario_usr_codigo: TStringField;
    sqlrevendarev_id: TLongWordField;
    sqlrevendarev_nome: TStringField;
    sqlrevendarev_nome_fantasia: TStringField;
    sqlrevendarev_cnpj: TStringField;
    sqlrevendarev_ie: TStringField;
    sqlrevendarev_data_deletado: TDateTimeField;
    sqlrevendarev_data_registro: TDateTimeField;
    clientSQLrevenda_nome: TStringField;
    clientSQLctr_valor: TSingleField;
    dbedt_ctr_valor: TDBEdit;
    Label7: TLabel;
    clientSQLcliente_nome: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_salvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;
    procedure contrato_read(AToken: String);
    procedure cliente_read(AToken: String);
    procedure revenda_read(AToken: String);

  public

  end;

var
  frm_contrato: Tfrm_contrato;

implementation

{$R *.dfm}

procedure Tfrm_contrato.Action_salvarExecute(Sender: TObject);
var
  storedProcInsert, storedProcUpdate : TFDStoredProc;
begin
  case ds.State of
    dsEdit:
      try
        try
          if Application.MessageBox('Ao Salvar as altera��es, as informa��es antigas n�o poder�o ser recuperadas!', 'Deseja Salvar as Altera��es?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            storedProcUpdate := TFDStoredProc.Create(Self);
            storedProcUpdate.Connection := frm_dm.connDB;
            storedProcUpdate.StoredProcName := 'proc_contrato_update';
            storedProcUpdate.Prepare;
            storedProcUpdate.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
            storedProcUpdate.ParamByName('p_ctr_codigo').AsString         := clientSQLctr_codigo.AsString;
            storedProcUpdate.ParamByName('p_cliente_cli_codigo').AsString := sqlcliente.FieldByName('cli_codigo').AsString;
            storedProcUpdate.ParamByName('p_revenda_rev_codigo').AsString := sqlrevenda.FieldByName('rev_codigo').AsString;
            storedProcUpdate.ParamByName('p_ctr_valor').AsFloat           := StrToFloat(dbedt_ctr_valor.Text);
            storedProcUpdate.ParamByName('p_ctr_data_contrato').AsDate    := StrToDate(dbedt_ctr_data_contrato.Text);
            storedProcUpdate.ParamByName('p_ctr_data_assinatura').AsDate  := StrToDate(dbedt_ctr_data_assinatura.Text);
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
          storedProcInsert.StoredProcName := 'proc_contrato_create';
          storedProcInsert.Prepare;
          storedProcInsert.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
          storedProcInsert.ParamByName('p_cliente_cli_codigo').AsString := sqlcliente.FieldByName('cli_codigo').AsString;
          storedProcInsert.ParamByName('p_revenda_rev_codigo').AsString := sqlrevenda.FieldByName('rev_codigo').AsString;
          storedProcInsert.ParamByName('p_ctr_valor').AsFloat           := StrToFloat(dbedt_ctr_valor.Text);
          storedProcInsert.ParamByName('p_ctr_data_contrato').AsDate    := StrToDate(dbedt_ctr_data_contrato.Text);
          storedProcInsert.ParamByName('p_ctr_data_assinatura').AsDate  := StrToDate(dbedt_ctr_data_assinatura.Text);
          storedProcInsert.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Error Inserir: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_contrato.afterInsert;
begin
  ShowMessage('Registro Inserido com Sucesso');
  contrato_read(frm_dm.usuario_usr_token);
  TabSheet_dados.Show;
  ds.DataSet.Last;
end;

procedure Tfrm_contrato.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  TabSheet_dados.Show;
end;

procedure Tfrm_contrato.cliente_read(AToken: String);
var
  SQL: String;
begin
  inherited;
  SQL := 'call proc_cliente_read('+QuotedStr(AToken) +');';

  sqlcliente.Active    := False;
  sqlcliente.DataBase  := frm_dm.database;
  sqlcliente.SQL.Clear;
  sqlcliente.SQL.Text  := SQL;
  sqlcliente.Active    := True
end;

procedure Tfrm_contrato.contrato_read(AToken: String);
var
  SQL: String;
begin
  inherited;
  SQL := 'call proc_contrato_read('+QuotedStr(AToken) +');';

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True
end;

procedure Tfrm_contrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_contrato.Destroy;
  frm_contrato := Nil;
end;

procedure Tfrm_contrato.FormShow(Sender: TObject);
begin
  inherited;
  cliente_read(frm_dm.usuario_usr_token);
  revenda_read(frm_dm.usuario_usr_token);
  contrato_read(frm_dm.usuario_usr_token);
end;

procedure Tfrm_contrato.revenda_read(AToken: String);
var
  SQL: String;
begin
  inherited;
  SQL := 'call proc_revenda_read('+QuotedStr(AToken) +');';

  sqlrevenda.Active    := False;
  sqlrevenda.DataBase  := frm_dm.database;
  sqlrevenda.SQL.Clear;
  sqlrevenda.SQL.Text  := SQL;
  sqlrevenda.Active    := True
end;

end.
