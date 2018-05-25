unit Client.Dao;

interface
 uses
   Conexao, FireDAC.Comp.Client, System.SysUtils, Data.DB,
    Vcl.Forms, Winapi.Windows,Vcl.Dialogs, Employee.Model;

type
 TClient_Dao = class

  private
   FConexao : TConexao;

 private

 public
  function Client_Consultar_0(const Codigo: Integer): TFDQuery;
 end;

implementation

{ TClient_Dao }

function TClient_Dao.Client_Consultar_0(const Codigo: Integer): TFDQuery;
var
  qry : TFDQuery;

begin
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Add(' select * from client where cli_id =:IDClient ');
  qry.ParamByName('IDClient').AsInteger := Codigo;
  qry.Open;
  Result := qry;

end;

end.
