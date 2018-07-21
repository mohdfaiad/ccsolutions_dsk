program protheussup;

uses
  Vcl.Forms,
  ufrm_protheussup in 'ufrm_protheussup.pas' {frm_protheussup},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_main_default_2 in '..\models\ufrm_main_default_2.pas' {frm_main_default_2},
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
  uclass_thread_ticket_interation in '..\uclass_thread_ticket_interation.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_ds, frm_dm_ds);
  Application.CreateForm(Tfrm_dm_report, frm_dm_report);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
