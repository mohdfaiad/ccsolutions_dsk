unit ufrm_servidor;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.Menus,
  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.ToolWin,
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
  Tfrm_servidor = class(Tfrm_form_default)
    clientSQLsrv_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLsrv_id: TLongWordField;
    clientSQLsrv_nome: TStringField;
    clientSQLsrv_status: TShortintField;
    clientSQLsrv_data_deletado: TDateTimeField;
    clientSQLsrv_data_registro: TDateTimeField;
    dbedt_srv_nome: TDBEdit;
    Label3: TLabel;
    dbedt_srv_ssh_endereco: TDBEdit;
    Label4: TLabel;
    dbedt_srv_ssh_porta: TDBEdit;
    Label5: TLabel;
    dbedt_srv_ssh_usuario: TDBEdit;
    Label6: TLabel;
    dbedt_srv_ssh_senha: TDBEdit;
    Label7: TLabel;
    dbchkbox_srv_status: TDBCheckBox;
    clientSQLsrv_ssh_endereco: TStringField;
    clientSQLsrv_ssh_porta: TIntegerField;
    clientSQLsrv_ssh_usuario: TStringField;
    clientSQLsrv_ssh_senha: TStringField;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_salvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;
    procedure servidor_read(AToken: String);

    function valorBoolean(ACheckBox: TDBCheckBox): ShortInt;

  public

  end;

var
  frm_servidor: Tfrm_servidor;

implementation

{$R *.dfm}

procedure Tfrm_servidor.Action_salvarExecute(Sender: TObject);
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
            storedProcUpdate.StoredProcName := 'proc_servidor_update';
            storedProcUpdate.Prepare;
            storedProcUpdate.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
            storedProcUpdate.ParamByName('p_srv_codigo').AsString         := clientSQLsrv_codigo.AsString;
            storedProcUpdate.ParamByName('p_srv_nome').AsString           := dbedt_srv_nome.Text;
            storedProcUpdate.ParamByName('p_srv_ssh_endereco').AsString   := dbedt_srv_ssh_endereco.Text;
            storedProcUpdate.ParamByName('p_srv_ssh_porta').AsInteger     := StrToInt(dbedt_srv_ssh_porta.Text);
            storedProcUpdate.ParamByName('p_srv_ssh_usuario').AsString    := dbedt_srv_ssh_usuario.Text;
            storedProcUpdate.ParamByName('p_srv_ssh_senha').AsString      := dbedt_srv_ssh_senha.Text;
            storedProcUpdate.ParamByName('p_srv_status').AsShortInt       := valorBoolean(dbchkbox_srv_status);
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
          storedProcInsert.StoredProcName := 'proc_servidor_create';
          storedProcInsert.Prepare;
          storedProcInsert.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
          storedProcInsert.ParamByName('p_srv_nome').AsString           := dbedt_srv_nome.Text;
          storedProcInsert.ParamByName('p_srv_ssh_endereco').AsString   := dbedt_srv_ssh_endereco.Text;
          storedProcInsert.ParamByName('p_srv_ssh_porta').AsInteger     := StrToInt(dbedt_srv_ssh_porta.Text);
          storedProcInsert.ParamByName('p_srv_ssh_usuario').AsString    := dbedt_srv_ssh_usuario.Text;
          storedProcInsert.ParamByName('p_srv_ssh_senha').AsString      := dbedt_srv_ssh_senha.Text;
          storedProcInsert.ParamByName('p_srv_status').AsShortInt       := valorBoolean(dbchkbox_srv_status);
          storedProcInsert.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Error Inserir: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_servidor.afterInsert;
begin
  ShowMessage('Registro Inserido com Sucesso');
  servidor_read(frm_dm.usuario_usr_token);
  TabSheet_dados.Show;
  ds.DataSet.Last;
end;

procedure Tfrm_servidor.afterUpdate;
begin
  ds.DataSet.Post;
  ShowMessage('Registro Atualizado com sucesso');
  TabSheet_dados.Show;
end;

procedure Tfrm_servidor.servidor_read(AToken: String);
var
  SQL: String;
begin
  SQL := 'call proc_servidor_read('+ QuotedStr(AToken) +');';

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True
end;

procedure Tfrm_servidor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_servidor.Destroy;
  frm_servidor := Nil;
end;

procedure Tfrm_servidor.FormShow(Sender: TObject);
begin
  inherited;
  servidor_read(frm_dm.usuario_usr_token);
end;

function Tfrm_servidor.valorBoolean(ACheckBox: TDBCheckBox): ShortInt;
begin
  if ACheckBox.Checked then begin
    Result := 1;
  end else begin
    Result := 0;
  end;
end;

end.
