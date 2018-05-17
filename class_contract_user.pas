unit class_contract_user;

interface
 uses
    class_Conexao, FireDAC.Comp.Client, System.SysUtils;
 type
   TContract_user = class
   private
     FConexao: TConexao;
    private
    Fctr_id: Int64;
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
     property ctr_usr_first_name: string read Fctr_usr_first_name write Fctr_usr_first_name;
     property ctr_usr_last_name: string read Fctr_usr_last_name write Fctr_usr_last_name;
     property ctr_usr_username: string read Fctr_usr_username write Fctr_usr_username;
     property ctr_usr_email: string read Fctr_usr_email write Fctr_usr_email;
     property ctr_usr_dt_birth: TDateTime read Fctr_usr_dt_birth write Fctr_usr_dt_birth;
     property ctr_usr_admin: string read Fctr_usr_admin write Fctr_usr_admin;

     procedure CreateContract_User22(Contract_user: TContract_user);
     procedure ReadContract_User;

   end;

implementation

{ TContract_user }


//procedure TContract_user.CreateContract_User(Contract_user: TContract_user);
// var
//  FDStoredProc : TFDStoredProc;
//begin
// if not Assigned(FDStoredProc) then
//  begin
//   FDStoredProc := TFDStoredProc.Create(nil);
//   FDStoredProc.Connection :=frm_dm.connCCS;
//   try
//    with FDStoredProc do       begin
//
//     StoredProcName := 'ccs.contract_user_create';
//     Prepare;
//
//     ParamByName('p_ctr_id').Value                := Contract_user.ctr_id;
//     ParamByName('p_ctr_usr_first_name').AsString := Contract_user.ctr_usr_first_name;
//     ParamByName('p_ctr_usr_last_name').AsString  := Contract_user.ctr_usr_last_name;
//     ParamByName('p_ctr_usr_username').AsString   := Contract_user.ctr_usr_username;
//     ParamByName('p_ctr_usr_email').AsString      := Contract_user.ctr_usr_email;
//     ParamByName('p_ctr_usr_dt_birth').Value      := Contract_user.ctr_usr_dt_birth;
//     ParamByName('p_ctr_usr_admin').AsString      := Contract_user.ctr_usr_admin;
//     ExecProc;
//
//    end;
//   finally
//     FDStoredProc.Free;
//   end;
//  end;
//
//end;

procedure TContract_user.CreateContract_User22(Contract_user: TContract_user);
var
  FDStoredProc : TFDStoredProc;
begin
 if not Assigned(FDStoredProc) then
  begin
   FDStoredProc := FConexao.CriarStoredProc();
   try
    with FDStoredProc do
    begin
     StoredProcName := 'ccs.contract_user_create';

     Prepare;
     ParamByName('p_ctr_id').Value                := Contract_user.ctr_id;
     ParamByName('p_ctr_usr_first_name').AsString := Contract_user.ctr_usr_first_name;
     ParamByName('p_ctr_usr_last_name').AsString  := Contract_user.ctr_usr_last_name;
     ParamByName('p_ctr_usr_username').AsString   := Contract_user.ctr_usr_username;
     ParamByName('p_ctr_usr_email').AsString      := Contract_user.ctr_usr_email;
     ParamByName('p_ctr_usr_dt_birth').Value      := Contract_user.ctr_usr_dt_birth;
     ParamByName('p_ctr_usr_admin').AsString      := Contract_user.ctr_usr_admin;
     ExecProc;

    end;
   finally
     FDStoredProc.Free;
   end;
  end;


end;

destructor TContract_user.Destroy;
begin
  inherited;
end;

procedure TContract_user.ReadContract_User;
begin

end;

{ TContract_user }

constructor TContract_user.Create;
begin

end;

end.
