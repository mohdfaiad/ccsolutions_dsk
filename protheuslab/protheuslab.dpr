program protheuslab;

uses
  Vcl.Forms,
  ufrm_protheuslab in 'ufrm_protheuslab.pas' {frm_protheuslab},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_receipt in '..\ufrm_receipt.pas' {frm_receipt},
  ufrm_supplier in '..\ufrm_supplier.pas' {frm_supplier},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_exam in '..\ufrm_exam.pas' {frm_exam},
  ufrm_material in '..\ufrm_material.pas' {frm_material},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_insurance in '..\ufrm_insurance.pas' {frm_insurance},
  ufrm_department in '..\ufrm_department.pas' {frm_department},
  ufrm_medicine in '..\ufrm_medicine.pas' {frm_medicine},
  ufrm_requisition_type in '..\ufrm_requisition_type.pas' {frm_requisition_type},
  uthred_logged in '..\uthred_logged.pas',
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_requisition in '..\ufrm_requisition.pas' {frm_requisition},
  class_required_field in '..\class_required_field.pas',
  class_check_enterprise in '..\class_check_enterprise.pas',
  ufrm_table_price in '..\ufrm_table_price.pas' {frm_table_price},
  class_table_price in '..\class_table_price.pas';

{$R *.res}

begin
  Application.Initialize;
  modulo:='LABORATORIO';
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_ds, frm_dm_ds);
  Application.CreateForm(Tfrm_dm_report, frm_dm_report);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
