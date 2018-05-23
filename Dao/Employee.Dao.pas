unit Employee.Dao;

interface
 uses
   Conexao, FireDAC.Comp.Client, System.SysUtils, Data.DB,
   Vcl.Forms, Winapi.Windows,Vcl.Dialogs, Employee.Model;

   type
    TEmployee_Dao = class

    private
     FConexao : TConexao;

    private

    public

    procedure Employee_Create(Employee: TEmployeeModel);
    procedure Employee_Update(Employee: TEmployeeModel);
    function Employee_read: TFDQuery;


    end;

implementation

{ TEmployee_Dao }

procedure TEmployee_Dao.Employee_Create(Employee: TEmployeeModel);
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

      StoredProcName := 'proc_employee_create';

      Prepare;
      ParamByName('p_ctr_id').AsInteger              := Employee.ctr_id;
      ParamByName('p_emp_type').AsString             := Employee.emp_type;
      ParamByName('p_emp_status').AsString           := Employee.emp_status;
      ParamByName('p_rec_name').AsString             := Employee.rec_name;
      ParamByName('p_rec_nickname').AsString         := Employee.rec_nickname;
      ParamByName('p_rec_sex').AsString              := Employee.rec_sex;
      ParamByName('p_rec_dt_birth').AsDate           := Employee.rec_dt_birth;
      ParamByName('p_rec_cpf_number').AsString       := Employee.rec_cpf_number;
      ParamByName('p_rec_rg_number').AsString        := Employee.rec_rg_number;
      ParamByName('p_rec_ctps_number').AsString      := Employee.rec_ctps_number;
      ParamByName('p_rec_ctps_serial').AsString      := Employee.rec_ctps_serial;
      ParamByName('p_rec_ctps_state').AsString       := Employee.rec_ctps_state;
      ParamByName('p_rec_ctps_date').AsDate          := Employee.rec_ctps_date;
      ParamByName('p_rec_cam_number').AsString       := Employee.rec_cam_number;
      ParamByName('p_rec_cnh_number').AsString       := Employee.rec_cnh_number;
      ParamByName('p_rec_chn_category').AsString     := Employee.rec_chn_category;
      ParamByName('p_rec_cnh_dt_expiration').AsDate  := Employee.rec_cnh_dt_expiration;
      ParamByName('p_rec_te_number').AsString        := Employee.rec_te_number;
      ParamByName('p_rec_te_zone').AsString          := Employee.rec_te_zone;
      ParamByName('p_rec_te_section').AsString       := Employee.rec_te_section;
      ParamByName('p_rec_crm_number').AsString       := Employee.rec_crm_number;
      ParamByName('p_rec_status_marital').AsString   := Employee.rec_status_marital;
      ParamByName('p_rec_nationality').AsString      := Employee.rec_nationality;
      ParamByName('p_rec_naturalness_uf').AsString   := Employee.rec_naturalness_uf;
      ParamByName('p_rec_naturalness_city').AsString := Employee.rec_naturalness_city;
      ParamByName('p_rec_father_name').AsString      := Employee.rec_father_name;
      ParamByName('p_rec_mother_name').AsString      := Employee.rec_mother_name;
      ParamByName('p_rec_add_zipcode').AsString      := Employee.rec_add_zipcode;
      ParamByName('p_rec_add_address').AsString      := Employee.rec_add_address;
      ParamByName('p_rec_add_number').AsString       := Employee.rec_add_number;
      ParamByName('p_rec_add_street').AsString       := Employee.rec_add_street;
      ParamByName('p_rec_add_complement').AsString   := Employee.rec_add_complement;
      ParamByName('p_rec_add_city').AsString         := Employee.rec_add_city;
      ParamByName('p_rec_add_state').AsString        := Employee.rec_add_state;
      ParamByName('p_rec_add_country').AsString      := Employee.rec_add_country;
      ParamByName('p_rec_phone1').AsString           := Employee.rec_phone1;
      ParamByName('p_rec_phone2').AsString           := Employee.rec_phone2;
      ParamByName('p_rec_phone3').AsString           := Employee.rec_phone3;
      ParamByName('p_rec_phone4').AsString           := Employee.rec_phone4;
      ParamByName('p_rec_contact').AsString          := Employee.rec_contact;
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
end;

function TEmployee_Dao.Employee_read: TFDQuery;
var
qry : TFDQuery;

begin
  inherited;
  qry := FConexao.CriarQuery();
  qry.Close;
  qry.SQL.Add(' select * from employee as e inner join record as r on e.record_rec_cod = r.rec_cod ' +
	            ' where e.emp_deleted_at is null ');
  qry.Open;
  Result := qry;

end;

procedure TEmployee_Dao.Employee_Update(Employee: TEmployeeModel);
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

      StoredProcName := 'proc_employee_update';

      Prepare;
      ParamByName('p_rec_id').AsInteger              := Employee.rec_id;
      ParamByName('p_emp_id').AsInteger              := Employee.emp_id;
      ParamByName('p_emp_type').AsString             := Employee.emp_type;
      ParamByName('p_emp_status').AsString           := Employee.emp_status;
      ParamByName('p_rec_name').AsString             := Employee.rec_name;
      ParamByName('p_rec_nickname').AsString         := Employee.rec_nickname;
      ParamByName('p_rec_sex').AsString              := Employee.rec_sex;
      ParamByName('p_rec_dt_birth').AsDate           := Employee.rec_dt_birth;
      ParamByName('p_rec_cpf_number').AsString       := Employee.rec_cpf_number;
      ParamByName('p_rec_rg_number').AsString        := Employee.rec_rg_number;
      ParamByName('p_rec_ctps_number').AsString      := Employee.rec_ctps_number;
      ParamByName('p_rec_ctps_serial').AsString      := Employee.rec_ctps_serial;
      ParamByName('p_rec_ctps_state').AsString       := Employee.rec_ctps_state;
      ParamByName('p_rec_ctps_date').AsDate          := Employee.rec_ctps_date;
      ParamByName('p_rec_cam_number').AsString       := Employee.rec_cam_number;
      ParamByName('p_rec_cnh_number').AsString       := Employee.rec_cnh_number;
      ParamByName('p_rec_chn_category').AsString     := Employee.rec_chn_category;
      ParamByName('p_rec_cnh_dt_expiration').AsDate  := Employee.rec_cnh_dt_expiration;
      ParamByName('p_rec_te_number').AsString        := Employee.rec_te_number;
      ParamByName('p_rec_te_zone').AsString          := Employee.rec_te_zone;
      ParamByName('p_rec_te_section').AsString       := Employee.rec_te_section;
      ParamByName('p_rec_crm_number').AsString       := Employee.rec_crm_number;
      ParamByName('p_rec_status_marital').AsString   := Employee.rec_status_marital;
      ParamByName('p_rec_nationality').AsString      := Employee.rec_nationality;
      ParamByName('p_rec_naturalness_uf').AsString   := Employee.rec_naturalness_uf;
      ParamByName('p_rec_naturalness_city').AsString := Employee.rec_naturalness_city;
      ParamByName('p_rec_father_name').AsString      := Employee.rec_father_name;
      ParamByName('p_rec_mother_name').AsString      := Employee.rec_mother_name;
      ParamByName('p_rec_add_zipcode').AsString      := Employee.rec_add_zipcode;
      ParamByName('p_rec_add_address').AsString      := Employee.rec_add_address;
      ParamByName('p_rec_add_number').AsString       := Employee.rec_add_number;
      ParamByName('p_rec_add_street').AsString       := Employee.rec_add_street;
      ParamByName('p_rec_add_complement').AsString   := Employee.rec_add_complement;
      ParamByName('p_rec_add_city').AsString         := Employee.rec_add_city;
      ParamByName('p_rec_add_state').AsString        := Employee.rec_add_state;
      ParamByName('p_rec_add_country').AsString      := Employee.rec_add_country;
      ParamByName('p_rec_phone1').AsString           := Employee.rec_phone1;
      ParamByName('p_rec_phone2').AsString           := Employee.rec_phone2;
      ParamByName('p_rec_phone3').AsString           := Employee.rec_phone3;
      ParamByName('p_rec_phone4').AsString           := Employee.rec_phone4;
      ParamByName('p_rec_contact').AsString          := Employee.rec_contact;

      ExecProc;

      Application.MessageBox('Registros alterados com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
     end;

    finally
     FDStoredProc.Free;
    end;
   except on E: Exception do
     ShowMessage('Erro ao inserir os registros   :  '+E.Message);
   end;

  end;
end;

end.
