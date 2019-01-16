unit ufrm_provedor;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,
  System.UITypes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
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
  Tfrm_provedor = class(Tfrm_form_default)
    clientSQLprv_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLprv_nome: TStringField;
    clientSQLprv_data_deletado: TDateTimeField;
    clientSQLprv_data_registro: TDateTimeField;
    clientSQLprv_id: TLongWordField;
    dbedt_prv_nome: TDBEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_salvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;
    procedure provedor_read(AToken: String);

  public

  end;

var
  frm_provedor: Tfrm_provedor;

implementation

{$R *.dfm}

procedure Tfrm_provedor.Action_salvarExecute(Sender: TObject);
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
            storedProcUpdate.StoredProcName := 'proc_provedor_update';
            storedProcUpdate.Prepare;
            storedProcUpdate.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
            storedProcUpdate.ParamByName('p_prv_codigo').AsString         := clientSQLprv_codigo.AsString;
            storedProcUpdate.ParamByName('p_prv_nome').AsString           := dbedt_prv_nome.Text;
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
          storedProcInsert.StoredProcName := 'proc_provedor_create';
          storedProcInsert.Prepare;
          storedProcInsert.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
          storedProcInsert.ParamByName('p_prv_nome').AsString           := dbedt_prv_nome.Text;
          storedProcInsert.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Error Inserir: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_provedor.afterInsert;
begin
  ShowMessage('Registro Inserido com Sucesso');
  provedor_read(frm_dm.usuario_usr_token);
  TabSheet_dados.Show;
  ds.DataSet.Last;
end;

procedure Tfrm_provedor.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  TabSheet_dados.Show;
end;

procedure Tfrm_provedor.provedor_read(AToken: String);
var
  SQL: String;
begin
  SQL := 'call proc_provedor_read('+QuotedStr(AToken) +');';

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True
end;

procedure Tfrm_provedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_provedor.Destroy;
  frm_provedor := Nil;
end;

procedure Tfrm_provedor.FormShow(Sender: TObject);
begin
  inherited;
  provedor_read(frm_dm.usuario_usr_token);
end;

end.
