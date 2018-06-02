unit Contract_User_Enterprise.Dao;

interface
   uses
   Conexao, FireDAC.Comp.Client, System.SysUtils, Data.DB,
    Vcl.Forms, Winapi.Windows,Vcl.Dialogs, Contract_User_Enterprise.Model;

    type
     TContract_User_Enterprise_Dao = class

     private
       FConexao : TConexao;

     private

     public
      function ListarEmpresasDeUserAcesso(User_Contract: TContract_User_Enterprise_Model): TFDQuery;
      procedure InserirAcessoEmpresa(User_Contract: TContract_User_Enterprise_Model);
      procedure DeletarAcessoEmpresa(User_Contract: TContract_User_Enterprise_Model);

     end;


implementation

{ TContract_User_Enterprise_Dao }

procedure TContract_User_Enterprise_Dao.DeletarAcessoEmpresa(User_Contract: TContract_User_Enterprise_Model);
var
  FDStoredProc : TFDStoredProc;
begin
 if not Assigned(FDStoredProc) then
  begin
   FDStoredProc := FConexao.CriarStoredProc();
   try

    try
    with FDStoredProc do
     begin
      StoredProcName := 'proc_contract_user_enterprise_delete';

      Prepare;
      ParamByName('p_enterprise_ent_cod').AsString := User_Contract.enterprise_ent_cod;
      ExecProc;
      Application.MessageBox('Permicionamentos deletados com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
     end;

    finally
     FDStoredProc.Free;
    end;
   except on E: Exception do
     ShowMessage('Erro ao inserir os registros   :  '+E.Message);
   end;

  end;

end;

procedure TContract_User_Enterprise_Dao.InserirAcessoEmpresa(User_Contract: TContract_User_Enterprise_Model);
var
  FDStoredProc : TFDStoredProc;
begin
 if not Assigned(FDStoredProc) then
  begin
   FDStoredProc := FConexao.CriarStoredProc();
   try

    try
    with FDStoredProc do
     begin
      StoredProcName := 'proc_contract_user_enterprise_create';

      Prepare;
      ParamByName('p_contract_user_cte_usr_cod').AsString := User_Contract.contract_user_ctr_usr_cod;
      ParamByName('p_enterprise_ent_cod').AsString        := User_Contract.enterprise_ent_cod;
      ExecProc;
      Application.MessageBox('Permicionamento inseridos com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
     end;

    finally
     FDStoredProc.Free;
    end;
   except on E: Exception do
     ShowMessage('Erro ao inserir os permicionamentos   :  '+E.Message);
   end;

  end;

end;

function TContract_User_Enterprise_Dao.ListarEmpresasDeUserAcesso(User_Contract: TContract_User_Enterprise_Model): TFDQuery;
var
qry : TFDQuery;

begin
  inherited;
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Add(' select * from contract_user_enterprise where contract_user_ctr_usr_cod = :ctr_usr_cod ');
  qry.ParamByName('ctr_usr_cod').Value := User_Contract.contract_user_ctr_usr_cod;
  qry.Open;
  Result := qry;
end;

end.
