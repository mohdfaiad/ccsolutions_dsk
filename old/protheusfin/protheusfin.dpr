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
  ufrm_cost_center in '..\ufrm_cost_center.pas' {frm_cost_center},
  ufrm_duplicAccount in '..\ufrm_duplicAccount.pas' {frm_duplicAccount},
  ufrm_changePassword in '..\ufrm_changePassword.pas' {frm_changePassword},
  uThred_logged in '..\uThred_logged.pas',
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_billreceive_ticket in '..\ufrm_billreceive_ticket.pas' {frm_billreceive_ticket},
  ufrm_parameter_slip in '..\ufrm_parameter_slip.pas' {frm_parameter_slip},
  ufrm_form_payment in '..\ufrm_form_payment.pas' {frm_form_payment},
  ufrm_billreceive_slip in '..\ufrm_billreceive_slip.pas' {frm_billreceive_slip},
  ufrm_shipping_file in '..\ufrm_shipping_file.pas' {frm_shipping_file},
  Client.Dao in '..\Dao\Client.Dao.pas',
  Conexao in '..\Dao\Conexao.pas',
  Contract_User.Dao in '..\Dao\Contract_User.Dao.pas',
  Contract_User_Action.Dao in '..\Dao\Contract_User_Action.Dao.pas',
  Contract_User_Enterprise.Dao in '..\Dao\Contract_User_Enterprise.Dao.pas',
  Employee.Dao in '..\Dao\Employee.Dao.pas',
  Contract_user.Model in '..\Model\Contract_user.Model.pas',
  Contract_User_Enterprise.Model in '..\Model\Contract_User_Enterprise.Model.pas',
  Employee.Model in '..\Model\Employee.Model.pas',
  Employee_Model in '..\Model\Employee_Model.pas',
  ufrm_contract_user in '..\ufrm_contract_user.pas',
  ufrm_default in '..\models\ufrm_default.pas' {frm_default},
  class_required_field in '..\class_required_field.pas',
  ufrm_contract_userOld in '..\ufrm_contract_userOld.pas' {frm_contract_userOld};

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
