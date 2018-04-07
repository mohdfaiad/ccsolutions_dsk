program protheuscom;

uses
  Vcl.Forms,
  ufrm_protheuscom in 'ufrm_protheuscom.pas' {frm_protheuscom},
  ufrm_form_default in '..\models\ufrm_form_default.pas' {frm_form_default},
  ufrm_import_default in '..\models\ufrm_import_default.pas' {frm_import_default},
  ufrm_main_default in '..\models\ufrm_main_default.pas' {frm_main_default},
  ufrm_search in '..\models\ufrm_search.pas' {frm_search},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_dm_ds in '..\ufrm_dm_ds.pas' {frm_dm_ds: TDataModule},
  ufrm_dm_report in '..\ufrm_dm_report.pas' {frm_dm_report: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.Run;
end.
