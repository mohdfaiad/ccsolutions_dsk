unit ufrm_fornecedor;

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
  Tfrm_fornecedor = class(Tfrm_form_default)
    clientSQLfor_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLfor_id: TLongWordField;
    clientSQLfor_nome: TStringField;
    clientSQLfor_nome_fantasia: TStringField;
    clientSQLfor_cnpj: TStringField;
    clientSQLfor_ie: TStringField;
    clientSQLfor_im: TStringField;
    clientSQLfor_suframa: TStringField;
    clientSQLfor_data: TDateField;
    clientSQLfor_status: TShortintField;
    clientSQLfor_data_deletado: TDateTimeField;
    clientSQLfor_data_registro: TDateTimeField;
    dbedt_for_nome: TDBEdit;
    Label3: TLabel;
    dbedt_for_nome_fantasia: TDBEdit;
    Label4: TLabel;
    dbedt_for_cnpj: TDBEdit;
    Label5: TLabel;
    dbedt_for_ie: TDBEdit;
    Label6: TLabel;
    dbedt_for_im: TDBEdit;
    Label7: TLabel;
    dbedt_for_suframa: TDBEdit;
    Label8: TLabel;
    dbedt_for_data: TDBEdit;
    Label9: TLabel;
    dbchkbox_for_status: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_salvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;
    procedure fornecedor_read(AToken: String);

    function valorBoolean(ACheckBox: TDBCheckBox): ShortInt;

  public

  end;

var
  frm_fornecedor: Tfrm_fornecedor;

implementation

{$R *.dfm}

procedure Tfrm_fornecedor.Action_salvarExecute(Sender: TObject);
var
  storedProcInsert, storedProcUpdate : TFDStoredProc;
begin
  valorBoolean(dbchkbox_for_status);
  case ds.State of
    dsEdit:
      try
        try
          if Application.MessageBox('Ao Salvar as altera��es, as informa��es antigas n�o poder�o ser recuperadas!', 'Deseja Salvar as Altera��es?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            storedProcUpdate := TFDStoredProc.Create(Self);
            storedProcUpdate.Connection := frm_dm.connDB;
            storedProcUpdate.StoredProcName := 'proc_fornecedor_update';
            storedProcUpdate.Prepare;
            storedProcUpdate.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
            storedProcUpdate.ParamByName('p_for_codigo').AsString         := clientSQLfor_codigo.AsString;
            storedProcUpdate.ParamByName('p_for_nome').AsString           := dbedt_for_nome.Text;
            storedProcUpdate.ParamByName('p_for_nome_fantasia').AsString  := dbedt_for_nome_fantasia.Text;
            storedProcUpdate.ParamByName('p_for_cnpj').AsString           := dbedt_for_cnpj.Text;
            storedProcUpdate.ParamByName('p_for_ie').AsString             := dbedt_for_ie.Text;
            storedProcUpdate.ParamByName('p_for_im').AsString             := dbedt_for_im.Text;
            storedProcUpdate.ParamByName('p_for_suframa').AsString        := dbedt_for_suframa.Text;
            storedProcUpdate.ParamByName('p_for_data').AsDate             := StrToDate(dbedt_for_data.Text);
            storedProcUpdate.ParamByName('p_for_status').AsShortInt       := valorBoolean(dbchkbox_for_status);
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
          storedProcInsert.StoredProcName := 'proc_fornecedor_create';
          storedProcInsert.Prepare;
          storedProcInsert.ParamByName('p_usuario_usr_token').AsString  := frm_dm.usuario_usr_token;
          storedProcInsert.ParamByName('p_for_nome').AsString           := dbedt_for_nome.Text;
          storedProcInsert.ParamByName('p_for_nome_fantasia').AsString  := dbedt_for_nome_fantasia.Text;
          storedProcInsert.ParamByName('p_for_cnpj').AsString           := dbedt_for_cnpj.Text;
          storedProcInsert.ParamByName('p_for_ie').AsString             := dbedt_for_ie.Text;
          storedProcInsert.ParamByName('p_for_im').AsString             := dbedt_for_im.Text;
          storedProcInsert.ParamByName('p_for_suframa').AsString        := dbedt_for_suframa.Text;
          storedProcInsert.ParamByName('p_for_data').AsDate             := StrToDate(dbedt_for_data.Text);
          storedProcInsert.ParamByName('p_for_status').AsShortInt       := valorBoolean(dbchkbox_for_status);
          storedProcInsert.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Error Inserir: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_fornecedor.afterInsert;
begin
  ShowMessage('Registro Inserido com Sucesso');
  fornecedor_read(frm_dm.usuario_usr_token);
  TabSheet_dados.Show;
  ds.DataSet.Last;
end;

procedure Tfrm_fornecedor.afterUpdate;
begin
  ds.DataSet.Post;
  ShowMessage('Registro Atualizado com sucesso');
  TabSheet_dados.Show;
end;

procedure Tfrm_fornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_fornecedor.Destroy;
  frm_fornecedor := Nil;
end;

procedure Tfrm_fornecedor.FormShow(Sender: TObject);
begin
  inherited;
  fornecedor_read(frm_dm.usuario_usr_token);
end;

procedure Tfrm_fornecedor.fornecedor_read(AToken: String);
var
  SQL: String;
begin
  SQL := 'call proc_fornecedor_read('+ QuotedStr(AToken) +');';

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True
end;

function Tfrm_fornecedor.valorBoolean(ACheckBox: TDBCheckBox): ShortInt;
begin
  if ACheckBox.Checked then begin
    Result := 1;
  end else begin
    Result := 0;
  end;
end;

end.
