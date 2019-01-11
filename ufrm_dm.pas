unit ufrm_dm;

interface

uses
  System.SysUtils,
  System.Classes,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.ConsoleUI.Wait,
  FireDAC.Comp.Client,
  FireDAC.Comp.UI,

  Data.DB,

  uDWAbout,
  uRESTDWPoolerDB;

type
  Tfrm_dm = class(TDataModule)
    database: TRESTDWDataBase;
    connDB: TFDConnection;
    waitCursor: TFDGUIxWaitCursor;
    driverLink: TFDPhysMySQLDriverLink;
    mamDB: TFDManager;
  private

  public
    usuario_usr_token, usuario_usr_codigo: string;

  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
