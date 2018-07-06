unit ufrm_dm_report;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDesgn, frxDBSet, frxFDComponents,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_dm_report = class(TDataModule)
    frxds_client: TfrxDBDataset;
    frxds_enterprise: TfrxDBDataset;
    frxds_import_call_log: TfrxDBDataset;
    frxfdcomp_1: TfrxFDComponents;
    qry_report: TFDQuery;
    qry_reportrep_cod: TBytesField;
    qry_reportcontract_ctr_cod: TBytesField;
    qry_reportrep_id: TLongWordField;
    qry_reportrep_name: TStringField;
    qry_reportrep_report: TMemoField;
    qry_reportrep_edit: TStringField;
    qry_reportrep_status: TStringField;
    qry_reportrep_deleted_at: TDateTimeField;
    qry_reportrep_dt_registration: TDateTimeField;
    qry_reportCodReport: TStringField;
    ds_report: TDataSource;
    procedure qry_reportAfterPost(DataSet: TDataSet);
    procedure qry_reportAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dm_report: Tfrm_dm_report;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ufrm_dm_ds, ufrm_dm;

{$R *.dfm}

procedure Tfrm_dm_report.qry_reportAfterDelete(DataSet: TDataSet);
begin
  qry_report.ApplyUpdates(0);
end;

procedure Tfrm_dm_report.qry_reportAfterPost(DataSet: TDataSet);
begin

 qry_report.ApplyUpdates(0);

end;

end.
