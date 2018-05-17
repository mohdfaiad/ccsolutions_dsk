unit class_contract_user;

interface
 uses
   FireDAC.Comp.Client, ufrm_dm;
 type
   TContract_user = class
   private
   FConexao : Tfrm_dm;

   FDStoredProc: TFDStoredProc;

    private
    Fcontract_ctr_cod: string;
    Fctr_usr_first_name: string;
    Fctr_usr_last_name: string;
    Fctr_usr_username: string;
    Fctr_usr_email: string;
    Fctr_usr_dt_birth: TDateTime;
    Fctr_usr_admin: string;

     public

    constructor Create;
    destructor Destroy; override;

     property contract_ctr_cod: string read Fcontract_ctr_cod write Fcontract_ctr_cod;
     property ctr_usr_first_name: string read Fctr_usr_first_name write Fctr_usr_first_name;
     property ctr_usr_last_name: string read Fctr_usr_last_name write Fctr_usr_last_name;
     property ctr_usr_username: string read Fctr_usr_username write Fctr_usr_username;
     property ctr_usr_email: string read Fctr_usr_email write Fctr_usr_email;
     property ctr_usr_dt_birth: TDateTime read Fctr_usr_dt_birth write Fctr_usr_dt_birth;
     property ctr_usr_admin: string read Fctr_usr_admin write Fctr_usr_admin;

     procedure CreateContract_user(Contract_user: TContract_user);

   end;

implementation

{ TContract_user }


procedure TContract_user.CreateContract_user(Contract_user: TContract_user);
 var
  StoredProc: TFDStoredProc;
begin
 if not Assigned(StoredProc) then
  begin
   StoredProc:=FDStoredProc.Create;
   StoredProc.StoredProcName := 'contract_user_create';
    try
     StoredProc.ParamByName('p_contract_ctr_cod').ToString := Contract_user.contract_ctr_cod;
     StoredProc.ParamByName('p_ctr_usr_first_name').ToString := Contract_user.ctr_usr_first_name;
     StoredProc.ParamByName('p_ctr_usr_last_name').ToString := Contract_user.ctr_usr_last_name;
     StoredProc.ParamByName('p_ctr_usr_username').ToString := Contract_user.ctr_usr_username;
     StoredProc.ParamByName('p_ctr_usr_email').ToString := Contract_user.ctr_usr_email;
     StoredProc.ParamByName('p_ctr_usr_dt_birth').ToString := Contract_user.ctr_usr_dt_birth;
     StoredProc.ParamByName('p_ctr_usr_admin').ToString := Contract_user.ctr_usr_admin;
     StoredProc.Prepare;
     StoredProc.ExecProc;

    finally
     StoredProc.Free;
    end;
  end;

end;

destructor TContract_user.Destroy;
begin
  FConexao.Free;
  inherited;
end;

{ TContract_user }

constructor TContract_user.Create;
begin
  FDStoredProc.Connection := FConexao.connCCS;

end;

end.
