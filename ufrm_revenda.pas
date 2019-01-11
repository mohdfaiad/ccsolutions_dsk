unit ufrm_revenda;

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
  Vcl.ActnList,
  Vcl.Menus,
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.ToolWin,

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
  Tfrm_revenda = class(Tfrm_form_default)
    clientSQLrev_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLrev_nome: TStringField;
    clientSQLrev_nome_fantasia: TStringField;
    clientSQLrev_cnpj: TStringField;
    clientSQLrev_ie: TStringField;
    clientSQLrev_data_deletado: TDateTimeField;
    clientSQLrev_data_registro: TDateTimeField;
    clientSQLrev_id: TLongWordField;
    dbedt_rev_nome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbedt_rev_nome_fantasia: TDBEdit;
    Label5: TLabel;
    dbedt_rev_cnpj: TDBEdit;
    Label6: TLabel;
    dbedt_rev_ie: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Action_salvarExecute(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;
    procedure revenda_read(AToken: String);

  public

  end;

var
  frm_revenda: Tfrm_revenda;

implementation

{$R *.dfm}

procedure Tfrm_revenda.Action_salvarExecute(Sender: TObject);
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
            storedProcUpdate.StoredProcName := 'proc_revenda_update';
            storedProcUpdate.Prepare;
            storedProcUpdate.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
            storedProcUpdate.ParamByName('p_rev_codigo').AsString         := clientSQLrev_codigo.AsString;
            storedProcUpdate.ParamByName('p_rev_nome').AsString           := dbedt_rev_nome.Text;
            storedProcUpdate.ParamByName('p_rev_nome_fantasia').AsString  := dbedt_rev_nome_fantasia.Text;
            storedProcUpdate.ParamByName('p_rev_cnpj').AsString           := dbedt_rev_cnpj.Text;
            storedProcUpdate.ParamByName('p_rev_ie').AsString             := dbedt_rev_ie.Text;
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
          storedProcInsert.StoredProcName := 'proc_revenda_create';
          storedProcInsert.Prepare;
          storedProcInsert.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
          storedProcInsert.ParamByName('p_rev_nome').AsString           := dbedt_rev_nome.Text;
          storedProcInsert.ParamByName('p_rev_nome_fantasia').AsString  := dbedt_rev_nome_fantasia.Text;
          storedProcInsert.ParamByName('p_rev_cnpj').AsString           := dbedt_rev_cnpj.Text;
          storedProcInsert.ParamByName('p_rev_ie').AsString             := dbedt_rev_ie.Text;
          storedProcInsert.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Error Inserir: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_revenda.afterInsert;
begin
  ShowMessage('Registro Inserido com Sucesso');
  revenda_read(frm_dm.usuario_usr_token);
  TabSheet_dados.Show;
  ds.DataSet.Last;
end;

procedure Tfrm_revenda.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  TabSheet_dados.Show;
end;

procedure Tfrm_revenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_revenda.Destroy;
  frm_revenda := Nil;
end;

procedure Tfrm_revenda.FormShow(Sender: TObject);
begin
  inherited;
  revenda_read(frm_dm.usuario_usr_token);
end;

procedure Tfrm_revenda.revenda_read(AToken: String);
var
  SQL: String;
begin
  inherited;
  SQL := 'call proc_revenda_read('+QuotedStr(AToken) +');';

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True
end;

end.
