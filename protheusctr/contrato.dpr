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
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  u_class_rest_contract in '..\u_class_rest_contract.pas',
  u_class_rest_method in '..\u_class_rest_method.pas',
  u_class_connection in '..\u_class_connection.pas',
  u_class_rest_login in '..\u_class_rest_login.pas',
  u_class_rest_enterprise in '..\u_class_rest_enterprise.pas',
  u_class_rest_client in '..\u_class_rest_client.pas',
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  u_class_rest_contract_user in '..\u_class_rest_contract_user.pas',
  ufrm_reseller in '..\ufrm_reseller.pas' {frm_reseller},
  u_class_rest_reseller in '..\u_class_rest_reseller.pas',
  ufrm_product in '..\ufrm_product.pas' {frm_product},
  u_class_rest_product in '..\u_class_rest_product.pas',
  ufrm_client_contract in '..\ufrm_client_contract.pas' {frm_client_contract},
  u_class_rest_client_contract in '..\u_class_rest_client_contract.pas',
  u_class_rest_client_contract_iten in '..\u_class_rest_client_contract_iten.pas',
  u_class_rest_client_astpp in '..\u_class_rest_client_astpp.pas',
  u_class_rest_client_sippulse in '..\u_class_rest_client_sippulse.pas',
  u_class_rest_phonebook in '..\u_class_rest_phonebook.pas',
  u_class_rest_did in '..\u_class_rest_did.pas',
  u_class_rest_provider in '..\u_class_rest_provider.pas',
  u_class_rest_client_did in '..\u_class_rest_client_did.pas',
  ufrm_proposal_contract in '..\ufrm_proposal_contract.pas' {frm_proposal_contract},
  u_class_rest_proposal_contract in '..\u_class_rest_proposal_contract.pas',
  u_class_rest_proposal_contract_iten in '..\u_class_rest_proposal_contract_iten.pas',
  ufrm_dm_shared in '..\ufrm_dm_shared.pas' {frm_dm_shared: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_shared, frm_dm_shared);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
