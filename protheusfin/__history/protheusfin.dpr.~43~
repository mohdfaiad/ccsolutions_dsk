program protheusfin;

uses
  Vcl.Forms,
  ufrm_protheusfin in 'ufrm_protheusfin.pas' {frm_protheusfin},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_bank in '..\ufrm_bank.pas' {frm_bank},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_receipt in '..\ufrm_receipt.pas' {frm_receipt},
  ufrm_supplier in '..\ufrm_supplier.pas' {frm_supplier},
  ufrm_billpay in '..\ufrm_billpay.pas' {frm_billpay},
  ufrm_billreceive in '..\ufrm_billreceive.pas' {frm_billreceive},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_seller in '..\ufrm_seller.pas' {frm_seller},
  ufrm_employee in '..\ufrm_employee.pas' {frm_employee},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_account_type in '..\ufrm_account_type.pas' {frm_account_type},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_account_synthetic in '..\ufrm_account_synthetic.pas' {frm_account_synthetic},
  ufrm_account_analitic in '..\ufrm_account_analitic.pas' {frm_account_analitic},
  ufrm_cost_center in '..\ufrm_cost_center.pas' {frm_cost_center},
  ufrm_cost_center_detail in '..\ufrm_cost_center_detail.pas' {frm_cost_center_detail},
  uclass_openform in '..\uclass_openform.pas';

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
