unit ufrm_dm;

interface

uses
  System.SysUtils,
  System.Classes,

  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSSQL,
  FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,

  frxClass,
  frxDBSet,

  IPPeerClient,

  REST.Response.Adapter,
  REST.Client,

  Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  Tfrm_dm = class(TDataModule)
    connCCS: TFDConnection;
    wait_cursor: TFDGUIxWaitCursor;
    manCCS: TFDManager;
    mysql_driver: TFDPhysMySQLDriverLink;
    rest_client: TRESTClient;
    rest_request: TRESTRequest;
    rest_response: TRESTResponse;
    rest_response_dsa: TRESTResponseDataSetAdapter;
    mem_rest: TFDMemTable;
  private

  public

  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
