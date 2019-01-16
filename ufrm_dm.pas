unit ufrm_dm;

interface

uses
  System.SysUtils,
  System.Classes,
  System.IniFiles,

  Vcl.Dialogs,

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
    procedure DataModuleCreate(Sender: TObject);
  private
    arqIni: TIniFile;

    arqIniClienteWBS: TIniFile;
    dir: String;

    CONST
      pasta           = 'config\';
      fileClienteWBS = 'cwebservice.ini';

  public
    usuario_usr_token, usuario_usr_codigo: string;

  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tfrm_dm.DataModuleCreate(Sender: TObject);
var
  dir: String;
begin
  dir := ExtractFilePath(ExtractFileDir(GetCurrentDir)) + pasta + fileClienteWBS;

  try
    try
      arqIniClienteWBS := TIniFile.Create(dir);

      database.PoolerService := arqIniClienteWBS.ReadString('CWBS', 'SERVIDOR_ENDERECO', '127.0.0.1');
      database.PoolerPort := arqIniClienteWBS.ReadInteger('CWBS', 'SERVIDOR_PORTA', 80);
      database.Login := arqIniClienteWBS.ReadString('CWBS', 'SERVIDOR_USUARIO', 'root');
      database.Password := arqIniClienteWBS.ReadString('CWBS', 'SERVIDOR_SENHA', 'root');
      database.ParamCreate := arqIniClienteWBS.ReadBool('CWBS', 'SERVIDOR_AUTENTICACAO', True);

    except on E: Exception do
      ShowMessage('Error: ' + E.Message);
    end;
  finally
    arqIniClienteWBS.Free;
  end;
end;

end.
