unit class_Conexao;

interface
 uses
   ufrm_dm, FireDAC.Comp.Client;

  type
   TConexao = class

   private

   public
   function CriarStoredProc: TFDStoredProc;

   end;

implementation

{ TConexao }

function TConexao.CriarStoredProc: TFDStoredProc;
var
  FDStoredProc : TFDStoredProc;
begin
     FDStoredProc := TFDStoredProc.Create(nil);
     FDStoredProc.Connection :=frm_dm.connCCS;
     Result := FDStoredProc;
end;

end.
