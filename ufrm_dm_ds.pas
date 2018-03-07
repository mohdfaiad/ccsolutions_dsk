unit ufrm_dm_ds;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_dm_ds = class(TDataModule)
    qry_client: TFDQuery;
    qry_enterprise: TFDQuery;
    qry_import_call_log: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dm_ds: Tfrm_dm_ds;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ufrm_dm;

{$R *.dfm}

end.
