unit ufrm_dm_report;

interface

uses
  System.SysUtils,
  System.Classes,

  frxClass,
  frxDesgn,
  frxDBSet,
  frxFDComponents,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Data.DB;

type
  Tfrm_dm_report = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dm_report: Tfrm_dm_report;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  ufrm_dm_ds;

{$R *.dfm}

end.
