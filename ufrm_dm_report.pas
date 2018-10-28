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
    strpContract: TFDStoredProc;
    fdsContract: TfrxDBDataset;
    strpEnterprise: TFDStoredProc;
    fdsEnterprise: TfrxDBDataset;
    FDStoredProc2: TFDStoredProc;
    frxDBDataset2: TfrxDBDataset;
    strpClient: TFDStoredProc;
    fdsClient: TfrxDBDataset;
    strpClientContract: TFDStoredProc;
    fdsClientContract: TfrxDBDataset;
    strpClientContractIten: TFDStoredProc;
    fdsClientContractIten: TfrxDBDataset;
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
  ufrm_dm;

{$R *.dfm}

end.
