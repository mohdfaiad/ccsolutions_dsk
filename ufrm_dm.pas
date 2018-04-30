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
    qry_signin: TFDQuery;
    ds_signin: TDataSource;
    qry_signinctr_id: TFDAutoIncField;
    qry_signinctr_usr_first_name: TStringField;
    qry_signinctr_usr_username: TStringField;
    qry_signinctr_usr_password: TStringField;
    mysql_driver: TFDPhysMySQLDriverLink;
    qry_enterprise: TFDQuery;
    qry_enterpriseent_id: TFDAutoIncField;
    qry_enterprisecontract_ctr_id: TIntegerField;
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
    qry_enterpriseent_image: TBlobField;
    qry_enterpriseent_dt_registration: TDateTimeField;
    ds_enterprise: TDataSource;
    frx_db_enterprise: TfrxDBDataset;
    connCDL: TFDConnection;
    mssql_driver: TFDPhysMSSQLDriverLink;
    qry_signinctr_usr_id: TIntegerField;
    qry_signinctr_usr_logged: TStringField;
    qry_logged: TFDQuery;
    qry_loggedctr_usr_logged: TStringField;
    qry_signinctr_usr_admin: TStringField;
    qry_signinctr_usr_dt_birth: TDateField;
    qry_signinctr_usr_email: TStringField;
    qry_action: TFDQuery;
    qry_actionsys_act_subtitle: TStringField;
    qry_actionsys_Act_name: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    qry,qry2,qry3:TFDQuery;
    Acao: Integer;

  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tfrm_dm.DataModuleCreate(Sender: TObject);
begin
  qry:=TFDQuery.Create(Self);
  qry.Connection:=connCCS;

  qry2:=TFDQuery.Create(Self);
  qry2.Connection:=connCCS;

  qry3:=TFDQuery.Create(Self);
  qry3.Connection:=connCCS;


end;

end.
