unit ufrm_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  Tfrm_dm = class(TDataModule)
    connCCS: TFDConnection;
    wait_cursor: TFDGUIxWaitCursor;
    manCCS: TFDManager;
    qry_signin: TFDQuery;
    ds_signin: TDataSource;
    qry_signinctr_id: TFDAutoIncField;
    qry_signinctr_usr_first_name: TStringField;
    qry_signinctr_usr_username: TStringField;
    qry_signinctr_usr_password: TStringField;
    mysql_driver: TFDPhysMySQLDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
