program protheusest;

uses
  Vcl.Forms,
  ufrm_protheusest in 'ufrm_protheusest.pas' {frm_protheusest},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_brand in '..\ufrm_brand.pas' {frm_brand},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_consult_cnpj in '..\ufrm_consult_cnpj.pas' {frm_consult_cnpj},
  ufrm_consult_cpf in '..\ufrm_consult_cpf.pas' {frm_consult_cpf},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_userOld in '..\ufrm_contract_userOld.pas' {frm_contract_userOld},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_product in '..\ufrm_product.pas' {frm_product},
  ufrm_supplier in '..\ufrm_supplier.pas' {frm_supplier},
  ufrm_report in '..\ufrm_report.pas' {frm_report},
  ufrm_ncm in '..\ufrm_ncm.pas' {frm_ncm},
  ufrm_product_unit in '..\ufrm_product_unit.pas' {frm_product_unit},
  ufrm_manufacturer in '..\ufrm_manufacturer.pas' {frm_manufacturer},
  ufrm_product_class in '..\ufrm_product_class.pas' {frm_product_class},
  ufrm_product_department in '..\ufrm_product_department.pas' {frm_product_department},
  ufrm_stock in '..\ufrm_stock.pas' {frm_stock},
  uclass_compression_image in '..\uclass_compression_image.pas',
  uclass_frm_open in '..\uclass_frm_open.pas',
  uclass_zipcode in '..\uclass_zipcode.pas',
  uclass_frm_close in '..\uclass_frm_close.pas',
  ufrm_stock_entry in '..\ufrm_stock_entry.pas' {frm_stock_entry},
  ufrm_stock_iten in '..\ufrm_stock_iten.pas' {frm_stock_iten},
  ufrm_stock_transfer in '..\ufrm_stock_transfer.pas' {frm_stock_transfer},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_purchase_order in '..\ufrm_purchase_order.pas' {frm_purchase_order},
  ufrm_request in '..\ufrm_request.pas' {frm_request},
  ufrm_stock_out in '..\ufrm_stock_out.pas' {frm_stock_out},
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise},
  uThred_logged in '..\uThred_logged.pas',
  Class_Report in '..\Class_Report.pas',
  class_required_field in '..\class_required_field.pas',
  ufrm_default in '..\models\ufrm_default.pas' {frm_default},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  Contract_User.Dao in '..\Dao\Contract_User.Dao.pas',
  Contract_user.Model in '..\Model\Contract_user.Model.pas',
  Conexao in '..\Dao\Conexao.pas',
  Contract_User_Enterprise.Model in '..\Model\Contract_User_Enterprise.Model.pas',
  Contract_User_Enterprise.Dao in '..\Dao\Contract_User_Enterprise.Dao.pas',
  Employee.Model in '..\Model\Employee.Model.pas',
  Employee.Dao in '..\Dao\Employee.Dao.pas',
  Contract_User_Action.Dao in '..\Dao\Contract_User_Action.Dao.pas';

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
