unit u_class_connection;

interface

uses
  IniFiles,
  ufrm_dm;

type
  Tconnection = class(Tfrm_dm)
    private

    protected

    public
      class var
        ctr_token, ctr_usr_cod                                       : string;
        db, db_server, db_username, db_password, db_port, db_driver  : string;
        rest_server, rest_username, rest_password                    : string;

      function read_ini(patch_ini: string): string;
    published

  end;

implementation

{ Tconnection }

function Tconnection.read_ini(patch_ini: string): string;
var
  ini : TIniFile;
begin
  ini := TIniFile.Create(patch_ini);

  db          := ini.ReadString('connection', 'Database', '');
  db_username := ini.ReadString('connection', 'User_name', '');
  db_password := ini.ReadString('connection', 'Password', '');
  db_server   := ini.ReadString('connection', 'Server', '');
  db_driver   := ini.ReadString('connection', 'DriverID', '');
  rest_server := ini.ReadString('webservice', 'Server', '');
end;

end.
