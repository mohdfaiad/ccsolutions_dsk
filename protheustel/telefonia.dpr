program telefonia;

uses
  System.SysUtils,
  Vcl.Forms,
  ufrm_telefonia in 'ufrm_telefonia.pas' {frm_protheustel},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_supplier in '..\ufrm_supplier.pas' {frm_supplier},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  ufrm_voip_server in '..\ufrm_voip_server.pas' {frm_voip_server},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas',
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  u_class_connection in '..\u_class_connection.pas',
  u_class_rest_client in '..\u_class_rest_client.pas',
  u_class_rest_method in '..\u_class_rest_method.pas',
  u_class_rest_contract in '..\u_class_rest_contract.pas',
  u_class_rest_contract_user in '..\u_class_rest_contract_user.pas',
  u_class_rest_enterprise in '..\u_class_rest_enterprise.pas',
  u_class_rest_phonebook in '..\u_class_rest_phonebook.pas',
  u_class_rest_login in '..\u_class_rest_login.pas',
  u_class_rest_voip_server in '..\u_class_rest_voip_server.pas',
  u_class_rest_client_astpp in '..\u_class_rest_client_astpp.pas',
  u_class_rest_client_sippulse in '..\u_class_rest_client_sippulse.pas',
  ufrm_import_astpp in '..\ufrm_import_astpp.pas' {frm_import_astpp},
  ufrm_print_default in '..\models\ufrm_print_default.pas' {frm_print_default},
  ufrm_import_sippulse in '..\ufrm_import_sippulse.pas' {frm_import_sippulse},
  u_class_rest_supplier in '..\u_class_rest_supplier.pas',
  ufrm_print_astpp in '..\ufrm_print_astpp.pas' {frm_print_astpp},
  u_class_rest_print_astpp in '..\u_class_rest_print_astpp.pas';

{$R *.res}


begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
