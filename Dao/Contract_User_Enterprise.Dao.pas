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
      function ListarEmpresasDeUserAcesso(const CodUsuario: string): TFDQuery;
      procedure Contract_User_Enterprise_Create(User_Contract: TContract_User_Enterprise_Model);
      procedure Contract_User_Enterprise_Delete(User_Contract: TContract_User_Enterprise_Model);

     end;

implementation

{ TContract_User_Enterprise_Dao }

procedure TContract_User_Enterprise_Dao.Contract_User_Enterprise_Delete(User_Contract: TContract_User_Enterprise_Model);
var
  FDStoredProc : TFDStoredProc;
begin

   FDStoredProc := FConexao.CriarStoredProc();
   try

    try
    with FDStoredProc do
     begin
      StoredProcName := 'proc_contract_user_enterprise_delete';

      Prepare;
      ParamByName('p_cte_usr_ent_cod').AsString := User_Contract.cte_usr_ent_cod;
      ExecProc;
      Application.MessageBox('Permicionamentos deletados com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
     end;

    finally
     FDStoredProc.Free;
    end;
   except on E: Exception do
     ShowMessage('Erro ao retirar o permicionamento   :  '+E.Message);
   end;

end;

procedure TContract_User_Enterprise_Dao.Contract_User_Enterprise_Create(User_Contract: TContract_User_Enterprise_Model);
var
  FDStoredProc : TFDStoredProc;
begin

   FDStoredProc := FConexao.CriarStoredProc();
   try

    try
    with FDStoredProc do
     begin
      StoredProcName := 'proc_contract_user_enterprise_create';

      Prepare;
      ParamByName('p_contract_user_ctr_usr_cod').AsString := User_Contract.contract_user_ctr_usr_cod;
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

function TContract_User_Enterprise_Dao.ListarEmpresasDeUserAcesso(const CodUsuario: string): TFDQuery;
var
qry : TFDQuery;

begin
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Text := ' select hex(a.ent_cod)as CodEmp, a.ent_cod, a.ent_first_name, b.cte_usr_ent_id, b.enterprise_ent_cod, hex(b.enterprise_ent_cod) as codUserEmpresa, ' +
                  ' b.contract_user_ctr_usr_cod, b.cte_usr_ent_cod, hex(b.cte_usr_ent_cod)as CodContracUser  from enterprise a ' +
                  ' left join contract_user_enterprise b on a.ent_cod=b.enterprise_ent_cod                                     ' +
                  ' and b.contract_user_ctr_usr_cod = unhex(:ctr_usr_cod) and cte_usr_ent_deleted_at is null order by 1 ';
  qry.ParamByName('ctr_usr_cod').Value := CodUsuario;
  qry.Prepare;
  qry.Open;
  Result := qry;
end;

end.
