unit Contract_User.Model;

interface

 type
   TContract_user_Model = class

    private
    Fcontract_ctr_cod: string;
    Fctr_usr_id: Integer;
    Fctr_usr_cod: string;
    Fctr_usr_first_name: string;
    Fctr_usr_last_name: string;
    Fctr_usr_dt_birth: TDateTime;
    Fctr_usr_email: string;
    Fctr_usr_username: string;
    Fctr_usr_password: string;
    Fctr_usr_admin: string;
    Fctr_usr_status: string;




    public

     constructor Create;
     destructor Destroy; override;

     property contract_ctr_cod: string read Fcontract_ctr_cod write Fcontract_ctr_cod;
     property ctr_usr_id: Integer read Fctr_usr_id write Fctr_usr_id;
     property ctr_usr_cod: string read Fctr_usr_cod write Fctr_usr_cod;
     property ctr_usr_first_name: string read Fctr_usr_first_name write Fctr_usr_first_name;
     property ctr_usr_last_name: string read Fctr_usr_last_name write Fctr_usr_last_name;
     property ctr_usr_dt_birth: TDateTime read Fctr_usr_dt_birth write Fctr_usr_dt_birth;
     property ctr_usr_email: string read Fctr_usr_email write Fctr_usr_email;
     property ctr_usr_username: string read Fctr_usr_username write Fctr_usr_username;
     property ctr_usr_password: string read Fctr_usr_password write Fctr_usr_password;
     property ctr_usr_admin: string read Fctr_usr_admin write Fctr_usr_admin;
     property ctr_usr_status: string read Fctr_usr_status write Fctr_usr_status;



   end;

implementation

{ TContract_user }


constructor TContract_user_Model.Create;
begin

end;

destructor TContract_user_Model.Destroy;
begin
  inherited;
end;

end.

