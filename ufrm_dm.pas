unit ufrm_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, frxClass, frxDBSet;

type
  Tfrm_dm = class(TDataModule)
    connCCS: TFDConnection;
    wait_cursor: TFDGUIxWaitCursor;
    manCCS: TFDManager;
    mysql_driver: TFDPhysMySQLDriverLink;
    qry_enterprise: TFDQuery;
    ds_enterprise: TDataSource;
    frx_db_enterprise: TfrxDBDataset;
    connCDL: TFDConnection;
    mssql_driver: TFDPhysMSSQLDriverLink;
    qry_logged: TFDQuery;
    qry_loggedctr_usr_logged: TStringField;
    qry_action: TFDQuery;
    qry_actionsys_act_subtitle: TStringField;
    qry_actionsys_Act_name: TStringField;
    qry_signin: TFDQuery;
    qry_contract: TFDQuery;
    qry_contractctr_cod: TBytesField;
    ds_contract: TDataSource;
    qry_contractctr_id: TLargeintField;
    qry_enterpriseent_cod: TBytesField;
    qry_enterprisecontract_ctr_cod: TBytesField;
    qry_enterpriseent_id: TLongWordField;
    qry_enterpriseent_type: TStringField;
    qry_enterpriseent_first_name: TStringField;
    qry_enterpriseent_last_name: TStringField;
    qry_enterpriseent_email: TStringField;
    qry_enterpriseent_cnpj: TStringField;
    qry_enterpriseent_ie: TStringField;
    qry_enterpriseent_im: TStringField;
    qry_enterpriseent_suframa: TStringField;
    qry_enterpriseent_add_bus_zipcode: TStringField;
    qry_enterpriseent_add_bus_address: TStringField;
    qry_enterpriseent_add_bus_number: TStringField;
    qry_enterpriseent_add_bus_street: TStringField;
    qry_enterpriseent_add_bus_complement: TStringField;
    qry_enterpriseent_add_bus_city: TStringField;
    qry_enterpriseent_add_bus_state: TStringField;
    qry_enterpriseent_add_bus_country: TStringField;
    qry_enterpriseent_phone1: TStringField;
    qry_enterpriseent_phone2: TStringField;
    qry_enterpriseent_phone3: TStringField;
    qry_enterpriseent_phone4: TStringField;
    qry_enterpriseent_contact: TStringField;
    qry_enterpriseent_dt_open: TDateField;
    qry_enterpriseent_deleted_at: TDateTimeField;
    qry_enterpriseent_dt_registration: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    qry, qry2, qry3: TFDQuery;
    Acao: Integer;
    v_contract_ctr_cod, v_ctr_usr_cod, v_nome_usuario,
    v_ctr_usr_admin: string;
    function dataAtual:TDate;

  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function Tfrm_dm.dataAtual:Tdate;
begin
 qry.Close;
 qry.SQL.Text:='select current_date()';
 qry.Prepare;
 qry.open;
 Result:=qry.Fields[0].AsDateTime;
end;

procedure Tfrm_dm.DataModuleCreate(Sender: TObject);
begin
  qry := TFDQuery.Create(Self);
  qry.Connection := connCCS;

  qry2 := TFDQuery.Create(Self);
  qry2.Connection := connCCS;

  qry3 := TFDQuery.Create(Self);
  qry3.Connection := connCCS;
end;

procedure Tfrm_dm.DataModuleDestroy(Sender: TObject);
begin
  Self.Free;
end;

end.
