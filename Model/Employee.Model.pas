unit Employee.Model;

interface
  type
  TEmployeeModel = class

  private
    Fctr_id : Int64;
    Femp_id: Integer;
    Frec_id: Integer;
    Femp_type: string;
    Femp_status: string;
    Frec_name: string;
    Frec_nickname: string;
    Frec_sex: string;
    Frec_dt_birth: TDate;
    Frec_cpf_number: string;
    Frec_rg_number: string;
    Frec_ctps_number: string;
    Frec_ctps_serial: string;
    Frec_ctps_state: string;
    Frec_ctps_date: TDate;
    Frec_cam_number: string;
    Frec_cnh_number: string;
    Frec_chn_category: string;
    Frec_cnh_dt_expiration: TDate;
    Frec_te_number: string;
    Frec_te_zone: string;
    Frec_te_section: string;
    Frec_crm_number: string;
    Frec_status_marital: string;
    Frec_nationality: string;
    Frec_naturalness_uf: string;
    Frec_naturalness_city: string;
    Frec_father_name: string;
    Frec_mother_name: string;
    Frec_add_zipcode: string;
    Frec_add_address: string;
    Frec_add_number: string;
    Frec_add_street: string;
    Frec_add_complement: string;
    Frec_add_city: string;
    Frec_add_state: string;
    Frec_add_country: string;
    Frec_phone1: string;
    Frec_phone2: string;
    Frec_phone3: string;
    Frec_phone4: string;
    Frec_contact: string;

  public
     constructor Create;
     destructor Destroy; override;

    property ctr_id: Int64 read Fctr_id write Fctr_id;
    property emp_id: Integer read Femp_id write Femp_id;
    property rec_id: Integer read Frec_id write Frec_id;
    property emp_type: string read Femp_type write Femp_type;
    property emp_status: string read Femp_status write Femp_status;
    property rec_name: string read Frec_name write Frec_name;
    property rec_nickname: string read Frec_nickname write Frec_nickname;
    property rec_sex: string read Frec_sex write Frec_sex;
    property rec_dt_birth: TDate read Frec_dt_birth write Frec_dt_birth;
    property rec_cpf_number: string read Frec_cpf_number write Frec_cpf_number;
    property rec_rg_number: string read Frec_rg_number write Frec_rg_number;
    property rec_ctps_number: string read Frec_ctps_number write Frec_ctps_number;
    property rec_ctps_serial: string read Frec_ctps_serial write Frec_ctps_serial;
    property rec_ctps_state: string read Frec_ctps_state write Frec_ctps_state;
    property rec_ctps_date: TDate read Frec_ctps_date write Frec_ctps_date;
    property rec_cam_number: string read Frec_cam_number write Frec_cam_number;
    property rec_cnh_number: string read Frec_cnh_number write Frec_cnh_number;
    property rec_chn_category: string read Frec_chn_category write Frec_chn_category;
    property rec_cnh_dt_expiration: TDate read Frec_cnh_dt_expiration write Frec_cnh_dt_expiration;
    property rec_te_number: string read Frec_te_number write Frec_te_number;
    property rec_te_zone: string read Frec_te_zone write Frec_te_zone;
    property rec_te_section: string read Frec_te_section write Frec_te_section;
    property rec_crm_number: string read Frec_crm_number write Frec_crm_number;
    property rec_status_marital: string read Frec_status_marital write Frec_status_marital;
    property rec_nationality: string read Frec_nationality write Frec_nationality;
    property rec_naturalness_uf: string read Frec_naturalness_uf write Frec_naturalness_uf;
    property rec_naturalness_city: string read Frec_naturalness_city write Frec_naturalness_city;
    property rec_father_name: string read Frec_father_name write Frec_father_name;
    property rec_mother_name: string read Frec_mother_name write Frec_mother_name;
    property rec_add_zipcode: string read Frec_add_zipcode write Frec_add_zipcode;
    property rec_add_address: string read Frec_add_address write Frec_add_address;
    property rec_add_number: string read Frec_add_number write Frec_add_number;
    property rec_add_street: string read Frec_add_street write Frec_add_street;
    property rec_add_complement: string read Frec_add_complement write Frec_add_complement;
    property rec_add_city: string read Frec_add_city write Frec_add_city;
    property rec_add_state: string read Frec_add_state write Frec_add_state;
    property rec_add_country: string read Frec_add_country write Frec_add_country;
    property rec_phone1: string read Frec_phone1 write Frec_phone1;
    property rec_phone2: string read Frec_phone2 write Frec_phone2;
    property rec_phone3: string read Frec_phone3 write Frec_phone3;
    property rec_phone4: string read Frec_phone4 write Frec_phone4;
    property rec_contact: string read Frec_contact write Frec_contact;



  end;

implementation

{ TEmployeeModel }

constructor TEmployeeModel.Create;
begin

end;

destructor TEmployeeModel.Destroy;
begin

  inherited;
end;

end.
