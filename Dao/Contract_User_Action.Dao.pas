unit Contract_User_Action.Dao;

interface
  uses
   Conexao, FireDAC.Comp.Client, System.SysUtils, Data.DB,
   Vcl.Forms, Winapi.Windows,Vcl.Dialogs;

   type
   TContract_User_Action_Dao = class

   private
      FConexao : TConexao;

   private

   public
    function listaMudulo(const CodUsuario, pMenu: string): TFDQuery;
    function ExibirActionMudulo(const pSys_Act_Option, pSys_Act_Module: string): TFDQuery;
    function LocalizarAction(const nomeAction: string): TFDQuery;
    procedure Contract_User_Action_Create(const codUsuario, Action_Name: string);
    procedure Contract_User_Action_Delete(const codUsuario: string);


   end;

implementation

{ TContract_User_Action_Dao }

procedure TContract_User_Action_Dao.Contract_User_Action_Create(const codUsuario, Action_Name: string);
var
  FDStoredProc : TFDStoredProc;
begin
   FDStoredProc := FConexao.CriarStoredProc();
   try


    try
    with FDStoredProc do
     begin
      StoredProcName := 'proc_contract_user_action_create';

      Prepare;
      ParamByName('p_contract_user_ctr_usr_cod').AsString := codUsuario;
      ParamByName('p_cta_action_name').AsString  := Action_Name;
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

procedure TContract_User_Action_Dao.Contract_User_Action_Delete(const codUsuario: string);
var
  FDStoredProc : TFDStoredProc;
begin

   FDStoredProc := FConexao.CriarStoredProc();
   try

    try
    with FDStoredProc do
     begin
      StoredProcName := 'proc_contract_user_action_delete';

      Prepare;
      ParamByName('p_cta_cod').AsString := codUsuario;
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

function TContract_User_Action_Dao.ExibirActionMudulo(const pSys_Act_Option, pSys_Act_Module: string): TFDQuery;
var
 qry : TFDQuery;
begin
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Text := ' select sys_act_subtitle,sys_Act_name from system_action             ' +
                  ' where sys_act_option =:sys_Act_option                               ' +
                  ' and sys_act_module = :sys_act_module and sys_act_deleted_at is null  ' +
                  ' order by sys_act_name   ';
  qry.ParamByName('sys_Act_option').AsString := pSys_Act_Option;
  qry.ParamByName('sys_act_module').AsString := pSys_Act_Module;
  qry.Prepare;
  qry.Open;
  Result := qry;
end;

function TContract_User_Action_Dao.listaMudulo(const CodUsuario, pMenu: string): TFDQuery;
var
qry : TFDQuery;
begin
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Text := ' select contract_user_action.*, hex(cta_cod)as CodAction from contract_user_action  ' +
                  ' where contract_user_ctr_usr_cod = unhex(:act_user_cod)                             ' +
                  ' and cta_action_name =:menu and cta_deleted_at is null ';
  qry.ParamByName('act_user_cod').Value := CodUsuario;
  qry.ParamByName('menu').AsString := pMenu;
  qry.Prepare;
  qry.Open;
  Result := qry;

end;

function TContract_User_Action_Dao.LocalizarAction(const nomeAction: string): TFDQuery;
var
qry : TFDQuery;
begin
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Text := ' select contract_user_action.*, hex(cta_cod) as CodAction from contract_user_action ' +
                  ' where cta_action_name =:PnomeAction   ' +
                  ' and cta_deleted_at is null ';
  qry.ParamByName('PnomeAction').AsString := nomeAction;
  qry.Prepare;
  qry.Open;
  Result := qry;

end;

end.
