unit Conexao;

interface
 uses
   ufrm_dm, FireDAC.Comp.Client;

  type
   TConexao = class

   private

   public
   function CriarStoredProc: TFDStoredProc;
   function CriarQuery: TFDQuery;

   end;

implementation

{ TConexao }

function TConexao.CriarQuery: TFDQuery;
var
  Query : TFDQuery;
begin
     Query := TFDQuery.Create(nil);
     Query.Connection :=frm_dm.connCCS;
     Result := Query;

end;

function TConexao.CriarStoredProc: TFDStoredProc;
var
  FDStoredProc : TFDStoredProc;
begin
     FDStoredProc := TFDStoredProc.Create(nil);
     FDStoredProc.Connection :=frm_dm.connCCS;
     Result := FDStoredProc;
end;

end.
