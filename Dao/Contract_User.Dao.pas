unit Contract_User.Dao;

interface
 uses
   Conexao, FireDAC.Comp.Client, System.SysUtils, Data.DB,
    Vcl.Forms, Winapi.Windows,Vcl.Dialogs, Contract_User.Model;

    type
     TContract_User_Dao = class

     private
       FConexao : TConexao;

     private

     public
        procedure Contract_User_Create(Contract_user: TContract_user_Model);
        procedure Contract_User_Update(Contract_user: TContract_user_Model);
        function Consultar: TFDQuery;
        function QryRead: TFDQuery;

     end;

implementation

{ TContract_User_Dao }



procedure TContract_User_Dao.Contract_User_Create(Contract_user: TContract_user_Model);
var
  FDStoredProc : TFDStoredProc;
begin

   FDStoredProc := FConexao.CriarStoredProc();
   try

    try
    with FDStoredProc do
     begin
      StoredProcName := 'proc_contract_user_create';

      Prepare;
      ParamByName('p_ctr_id').Value                := Contract_user.ctr_id;
      ParamByName('p_ctr_usr_first_name').AsString := Contract_user.ctr_usr_first_name;
      ParamByName('p_ctr_usr_last_name').AsString  := Contract_user.ctr_usr_last_name;
      ParamByName('p_ctr_usr_username').AsString   := Contract_user.ctr_usr_username;
      ParamByName('p_ctr_usr_password').AsString   := Contract_user.ctr_usr_password;
      ParamByName('p_ctr_usr_email').AsString      := Contract_user.ctr_usr_email;
      ParamByName('p_ctr_usr_dt_birth').Value      := Contract_user.ctr_usr_dt_birth;
      ParamByName('p_ctr_usr_admin').AsString      := Contract_user.ctr_usr_admin;
      ExecProc;
      Application.MessageBox('Registros inseridos com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
     end;

    finally
     FDStoredProc.Free;
    end;
   except on E: Exception do
     ShowMessage('Erro ao inserir os registros   :  '+E.Message);
   end;

  end;

procedure TContract_User_Dao.Contract_User_Update(Contract_user: TContract_user_Model);
var
  FDStoredProc : TFDStoredProc;
begin

   FDStoredProc := FConexao.CriarStoredProc();
   try
    try

    with FDStoredProc do
     begin

     StoredProcName := 'proc_contract_user_update';

     Prepare;
     ParamByName('p_ctr_usr_cod').AsString        := Contract_user.ctr_usr_cod;
     ParamByName('p_ctr_usr_first_name').AsString := Contract_user.ctr_usr_first_name;
     ParamByName('p_ctr_usr_last_name').AsString  := Contract_user.ctr_usr_last_name;
     ParamByName('p_ctr_usr_username').AsString   := Contract_user.ctr_usr_username;
     ParamByName('p_ctr_usr_email').AsString      := Contract_user.ctr_usr_email;
     ParamByName('p_ctr_usr_dt_birth').Value      := Contract_user.ctr_usr_dt_birth;
     ParamByName('p_ctr_usr_admin').AsString      := Contract_user.ctr_usr_admin;
     ParamByName('p_ctr_usr_status').AsString     := Contract_user.ctr_usr_status;
     ExecProc;
     Application.MessageBox('Registros alterados com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
     end;
    finally
     FDStoredProc.Free;
    end;

   except on E: Exception do
     ShowMessage('Erro ao alterar os registros   :  '+E.Message);
   end;

end;

function TContract_User_Dao.QryRead: TFDQuery;
var
qry : TFDQuery;

begin
  inherited;
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Add('select contract_user.*, hex(ctr_usr_cod) as codUser from contract_user');
  qry.Open;
  Result := qry;
end;

function TContract_User_Dao.Consultar: TFDQuery;
var
  VQry: TFDQuery;
begin

  VQry := FConexao.CriarQuery();

  VQry.Open('SELECT * FROM contract_user');
  Result :=VQry;

end;

end.
