program laboratorio;

uses
  Vcl.Forms,
  ufrm_laboratorio in 'ufrm_laboratorio.pas' {frm_laboratorio},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
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
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise},
  ufrm_requisition in '..\ufrm_requisition.pas' {frm_requisition},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  u_class_rest_client in '..\u_class_rest_client.pas',
  u_class_rest_contract in '..\u_class_rest_contract.pas',
  u_class_rest_enterprise in '..\u_class_rest_enterprise.pas',
  u_class_rest_login in '..\u_class_rest_login.pas',
  u_class_rest_method in '..\u_class_rest_method.pas',
  u_class_rest_phonebook in '..\u_class_rest_phonebook.pas',
  u_class_rest_supplier in '..\u_class_rest_supplier.pas',
  u_class_rest_client_astpp in '..\u_class_rest_client_astpp.pas',
  u_class_rest_client_sippulse in '..\u_class_rest_client_sippulse.pas',
  u_class_rest_contract_user in '..\u_class_rest_contract_user.pas',
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  u_class_rest_material in '..\u_class_rest_material.pas',
  u_class_connection in '..\u_class_connection.pas',
  u_class_rest_medicine in '..\u_class_rest_medicine.pas',
  u_class_rest_product in '..\u_class_rest_product.pas',
  u_class_rest_insurance in '..\u_class_rest_insurance.pas',
  ufrm_table_price in '..\ufrm_table_price.pas' {frm_table_price},
  u_class_rest_table_price in '..\u_class_rest_table_price.pas';

{$R *.res}

begin
  Application.Initialize;
  Modulo := 'Laboratorio';
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
