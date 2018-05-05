program protheuscli;

uses
  Vcl.Forms,
  ufrm_protheuscli in 'ufrm_protheuscli.pas' {frm_protheuscli},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_main_default_2 in '..\models\ufrm_main_default_2.pas' {frm_main_default_2},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  uthred_logged in '..\uthred_logged.pas',
  ufrm_search_enterprise in '..\ufrm_search_enterprise.pas' {frm_search_enterprise};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_dm_ds, frm_dm_ds);
  Application.CreateForm(Tfrm_dm_report, frm_dm_report);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_search_enterprise, frm_search_enterprise);
  Application.Run;
end.
