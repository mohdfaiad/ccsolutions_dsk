program protheustel;

uses
  System.SysUtils,
  Vcl.Forms,
  ufrm_protheustel in 'ufrm_protheustel.pas' {frm_protheustel},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_supplier in '..\ufrm_supplier.pas' {frm_supplier},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_import_sippulse in '..\ufrm_import_sippulse.pas' {frm_import_sippulse},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  ufrm_voip_server in '..\ufrm_voip_server.pas' {frm_voip_server},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  uThred_logged in '..\uThred_logged.pas',
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas',
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_default in '..\models\ufrm_default.pas' {frm_default},
  class_contract_user in '..\class_contract_user.pas',
  class_Conexao in '..\class_Conexao.pas',
  Client.Dao in '..\Dao\Client.Dao.pas',
  Conexao in '..\Dao\Conexao.pas',
  Contract_User.Dao in '..\Dao\Contract_User.Dao.pas',
  Contract_User_Enterprise.Dao in '..\Dao\Contract_User_Enterprise.Dao.pas',
  Employee.Dao in '..\Dao\Employee.Dao.pas',
  Contract_user.Model in '..\Model\Contract_user.Model.pas',
  Contract_User_Enterprise.Model in '..\Model\Contract_User_Enterprise.Model.pas',
  Employee.Model in '..\Model\Employee.Model.pas',
  Employee_Model in '..\Model\Employee_Model.pas';

{$R *.res}


begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_ds, frm_dm_ds);
  Application.CreateForm(Tfrm_dm_report, frm_dm_report);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_search, frm_search);
  Application.Run;
end.
