program protheuscli;

uses
  Vcl.Forms,
  ufrm_protheuscli in 'ufrm_protheuscli.pas' {frm_protheuscli},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_main_default_2 in '..\models\ufrm_main_default_2.pas' {frm_main_default_2},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  uthred_logged in '..\uthred_logged.pas',
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_insurance in '..\ufrm_insurance.pas' {frm_insurance},
  ufrm_exam in '..\ufrm_exam.pas' {frm_exam},
  ufrm_material in '..\ufrm_material.pas' {frm_material},
  ufrm_default in '..\models\ufrm_default.pas' {frm_default},
  class_Conexao in '..\class_Conexao.pas',
  class_contract_user in '..\class_contract_user.pas',
  class_required_field in '..\class_required_field.pas',
  Contract_user.Model in '..\Model\Contract_user.Model.pas',
  Contract_User.Dao in '..\Dao\Contract_User.Dao.pas',
  Conexao in '..\Dao\Conexao.pas',
  ufrm_doctor in '..\ufrm_doctor.pas' {frm_doctor},
  ufrm_employee in '..\ufrm_employee.pas' {frm_employee},
  ufrm_employeee in '..\ufrm_employeee.pas' {frm_employee_},
  Employee.Dao in '..\Dao\Employee.Dao.pas',
  Employee.Model in '..\Model\Employee.Model.pas',
  ufrm_scheduling in '..\ufrm_scheduling.pas' {frm_scheduling},
  ufrm_table_price in '..\ufrm_table_price.pas' {frm_table_price},
  class_table_price in '..\class_table_price.pas',
  ufrm_scheduling_clinical in '..\ufrm_scheduling_clinical.pas' {frm_scheduling_clinical};

{$R *.res}
var
v_contract_ctr_cod: string;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_ds, frm_dm_ds);
  Application.CreateForm(Tfrm_dm_report, frm_dm_report);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_scheduling_clinical, frm_scheduling_clinical);
  Application.Run;
end.
