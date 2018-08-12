program contrato;

uses
  Vcl.Forms,
  ufrm_protheusctr in 'ufrm_protheusctr.pas' {frm_protheusctr},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  uthred_logged in '..\uthred_logged.pas',
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_default in '..\models\ufrm_default.pas' {frm_default},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  u_class_report in '..\u_class_report.pas',
  class_required_field in '..\class_required_field.pas',
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  u_clientclasses in '..\u_clientclasses.pas',
  ufrm_cm in '..\ufrm_cm.pas' {frm_cm: TDataModule},
  u_class_rest_contract in '..\u_class_rest_contract.pas',
  u_class_rest_method in '..\u_class_rest_method.pas',
  u_class_connection in '..\u_class_connection.pas',
  u_class_rest_login in '..\u_class_rest_login.pas',
  u_class_phonebook in '..\u_class_phonebook.pas',
  u_class_rest_enterprise in '..\u_class_rest_enterprise.pas',
  u_class_rest_client in '..\u_class_rest_client.pas',
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  u_class_rest_contract_user in '..\u_class_rest_contract_user.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_cm, frm_cm);
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_ds, frm_dm_ds);
  Application.CreateForm(Tfrm_dm_report, frm_dm_report);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
