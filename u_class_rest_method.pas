unit u_class_rest_method;

interface

uses
  System.SysUtils,
  System.JSON,

  ufrm_dm,

  u_class_connection;

type
  Trest_methods = class(Tfrm_dm)
  private

  public
    class var v_root_element, v_method, v_parameter: string;

    class function Base_URL(const Amethod, Aparameter: string): string;

    class function Get(const Amethod, Aparameter: string): Boolean;
    class function Post(const Amethod, Aparameter: string): Boolean;
    class function Put(const Amethod, Aparameter: string): Boolean;
    class function Delete(const Amethod, Aparameter: string): Boolean;

    procedure ClearToDefault;
  end;

implementation

{ TRest }

class function Trest_methods.Base_URL(const Amethod, Aparameter: string): string;
var
  rest_server, path: string;
begin
  path := ExtractFileDir(GetCurrentDir) + '\data\connection.ini';
  Tconnection.read_ini(path);

  rest_server := Tconnection.rest_server;

  Result := rest_server + Amethod + '/' + Aparameter;
end;

procedure Trest_methods.ClearToDefault;
begin
  frm_dm.rest_request.ResetToDefaults;
  frm_dm.rest_client.ResetToDefaults;
  frm_dm.rest_response.ResetToDefaults;
end;

class function Trest_methods.Delete(const Amethod, Aparameter: string): Boolean;
begin
  //
end;

class function Trest_methods.Get(const Amethod, Aparameter: string): Boolean;
var
  lSuccess: string;
begin

  try
    try
      frm_dm.mem_rest.Active := False;

      frm_dm.rest_response.RootElement  := EmptyStr;
      frm_dm.rest_client.BaseURL        := Base_URL(Amethod, Aparameter);
      frm_dm.rest_request.Execute;

      Result := True;

    except on E: Exception do
      Result := False;
    end;
  finally
  end;
end;

class function Trest_methods.Post(const Amethod, Aparameter: string): Boolean;
begin
  //
end;

class function Trest_methods.Put(const Amethod, Aparameter: string): Boolean;
begin
  //
end;

end.
