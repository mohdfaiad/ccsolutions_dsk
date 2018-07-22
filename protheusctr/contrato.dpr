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
  class_report in '..\class_report.pas',
  class_required_field in '..\class_required_field.pas',
  ufrm_phonebook in '..\ufrm_phonebook.pas' {frm_phonebook},
  ufrm_contract in '..\ufrm_contract.pas' {frm_contract},
  ufrm_client in '..\ufrm_client.pas' {frm_client};

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
