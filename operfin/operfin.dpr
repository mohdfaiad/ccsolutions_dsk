program operfin;

uses
  Vcl.Forms,
  ufrm_operfin in 'ufrm_operfin.pas' {frm_operfin},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_login_default in '..\models\ufrm_login_default.pas' {frm_login_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_login in 'ufrm_login.pas' {frm_login},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_contract_user in '..\ufrm_contract_user.pas' {frm_contract_user},
  ufrm_client in '..\ufrm_client.pas' {frm_client},
  ufrm_enterprise in '..\ufrm_enterprise.pas' {frm_enterprise},
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_supplier in '..\ufrm_supplier.pas' {frm_supplier},
  ufrm_employee in '..\ufrm_employee.pas' {frm_employee},
  ufrm_role in '..\ufrm_role.pas' {frm_role},
  ufrm_bank in '..\ufrm_bank.pas' {frm_bank},
  ufrm_receipt in '..\ufrm_receipt.pas' {frm_receipt};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
