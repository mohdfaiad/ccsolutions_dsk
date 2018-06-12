unit class_contract_user;

interface
 uses
    class_Conexao, FireDAC.Comp.Client, System.SysUtils, Data.DB,
    Vcl.Forms, Winapi.Windows,Vcl.Dialogs,FireDAC.Stan.Param;
 type
   TContract_user = class
   private
     FConexao: TConexao;
    private
    Fctr_id: Int64;
    Fctr_usr_id: Int64;
    Fctr_usr_first_name: string;
    Fctr_usr_last_name: string;
    Fctr_usr_username: string;
    Fctr_usr_email: string;
    Fctr_usr_dt_birth: TDateTime;
    Fctr_usr_admin: string;


    public

     constructor Create;
     destructor Destroy; override;

     property ctr_id: Int64 read Fctr_id write Fctr_id;
     property ctr_usr_id: Int64 read Fctr_usr_id write Fctr_usr_id;
     property ctr_usr_first_name: string read Fctr_usr_first_name write Fctr_usr_first_name;
     property ctr_usr_last_name: string read Fctr_usr_last_name write Fctr_usr_last_name;
     property ctr_usr_username: string read Fctr_usr_username write Fctr_usr_username;
     property ctr_usr_email: string read Fctr_usr_email write Fctr_usr_email;
     property ctr_usr_dt_birth: TDateTime read Fctr_usr_dt_birth write Fctr_usr_dt_birth;
     property ctr_usr_admin: string read Fctr_usr_admin write Fctr_usr_admin;

     procedure Contract_User_Create(Contract_user: TContract_user);
     procedure Contract_User_Update(Contract_user: TContract_user);
     function Consultar: TFDQuery;
     function QryRead: TFDQuery;

   end;

implementation

{ TContract_user }

uses ufrm_dm;

function TContract_user.Consultar: TFDQuery;
var
  VQry: TFDQuery;
begin

  VQry := FConexao.CriarQuery();

  VQry.Open('SELECT * FROM contract_user');
  Result :=VQry;
end;

procedure TContract_user.Contract_User_Create(Contract_user: TContract_user);
var
  FDStoredProc : TFDStoredProc;
begin

   FDStoredProc := FConexao.CriarStoredProc();
   try


    try
    with FDStoredProc do
     begin
      StoredProcName := 'contract_user_create';

      Prepare;
      ParamByName('p_ctr_id').Value                := Contract_user.ctr_id;
      ParamByName('p_ctr_usr_first_name').AsString := Contract_user.ctr_usr_first_name;
      ParamByName('p_ctr_usr_last_name').AsString  := Contract_user.ctr_usr_last_name;
      ParamByName('p_ctr_usr_username').AsString   := Contract_user.ctr_usr_username;
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


{ TContract_user }

procedure TContract_user.Contract_User_Update(Contract_user: TContract_user);
var
  FDStoredProc : TFDStoredProc;
begin

   FDStoredProc := FConexao.CriarStoredProc();
   try
    try

    with FDStoredProc do
     begin
     StoredProcName := 'contract_user_update';

     Prepare;
     ParamByName('p_ctr_usr_id').Value            := Contract_user.ctr_usr_id;
     ParamByName('p_ctr_usr_first_name').AsString := Contract_user.ctr_usr_first_name;
     ParamByName('p_ctr_usr_last_name').AsString  := Contract_user.ctr_usr_last_name;
     ParamByName('p_ctr_usr_username').AsString   := Contract_user.ctr_usr_username;
     ParamByName('p_ctr_usr_email').AsString      := Contract_user.ctr_usr_email;
     ParamByName('p_ctr_usr_dt_birth').Value      := Contract_user.ctr_usr_dt_birth;
     ParamByName('p_ctr_usr_admin').AsString      := Contract_user.ctr_usr_admin;
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

constructor TContract_user.Create;
begin
                             //
end;

destructor TContract_user.Destroy;
begin
  inherited;
end;

function TContract_user.QryRead: TFDQuery;
var
qry : TFDQuery;

begin
  inherited;
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Add('select * from contract_user');
  qry.Open;
  Result := qry;
end;

end.
