program suporte;

uses
  Vcl.Forms,
  ufrm_suporte in 'ufrm_suporte.pas' {frm_protheussup},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  uthred_logged in '..\uthred_logged.pas',
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  ufrm_supplier in '..\ufrm_supplier.pas' {frm_supplier},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_ticket_type in '..\ufrm_ticket_type.pas' {frm_ticket_type},
  ufrm_ticket_category in '..\ufrm_ticket_category.pas' {frm_ticket_category},
  ufrm_ticket in '..\ufrm_ticket.pas' {frm_ticket},
  ufrm_reseller in '..\ufrm_reseller.pas' {frm_reseller},
  ufrm_ticket_priority in '..\ufrm_ticket_priority.pas' {frm_ticket_priority},
  ufrm_ticket_interaction in '..\ufrm_ticket_interaction.pas' {frm_ticket_interaction},
  uclass_thread_ticket_interation in '..\uclass_thread_ticket_interation.pas',
  u_class_connection in '..\u_class_connection.pas',
  u_class_rest_client in '..\u_class_rest_client.pas',
  u_class_rest_contract in '..\u_class_rest_contract.pas',
  u_class_rest_contract_user in '..\u_class_rest_contract_user.pas',
  u_class_rest_enterprise in '..\u_class_rest_enterprise.pas',
  u_class_rest_login in '..\u_class_rest_login.pas',
  u_class_rest_method in '..\u_class_rest_method.pas',
  u_class_rest_phonebook in '..\u_class_rest_phonebook.pas',
  u_class_rest_client_astpp in '..\u_class_rest_client_astpp.pas',
  u_class_rest_client_sippulse in '..\u_class_rest_client_sippulse.pas',
  u_class_rest_reseller in '..\u_class_rest_reseller.pas',
  u_class_rest_supplier in '..\u_class_rest_supplier.pas',
  u_class_rest_ticket_type in '..\u_class_rest_ticket_type.pas',
  u_class_rest_ticket_priority in '..\u_class_rest_ticket_priority.pas',
  u_class_rest_ticket_category in '..\u_class_rest_ticket_category.pas',
  u_class_rest_ticket_category_sub in '..\u_class_rest_ticket_category_sub.pas',
  u_class_rest_did in '..\u_class_rest_did.pas',
  u_class_rest_provider in '..\u_class_rest_provider.pas',
  u_class_rest_client_did in '..\u_class_rest_client_did.pas',
  ufrm_ticket_category_sub in '..\ufrm_ticket_category_sub.pas' {frm_ticket_category_sub};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_ds, frm_dm_ds);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
