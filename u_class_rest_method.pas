unit u_class_rest_method;

interface

uses
  System.SysUtils,
  System.JSON,

  ufrm_dm;

type
  Trest_methods = class(Tfrm_dm)
  public
    class var
      v_root_element, v_method, v_parameter: string;

    class function base_url(const Amethod, Aparameter: string): string;
    class function get(const Amethod, Aparameter: string): Boolean;
    class function post(const Amethod, Aparameter: string): Boolean;
    class function put(const Amethod, Aparameter: string): Boolean;
    class function delete(const Amethod, Aparameter: string): Boolean;
  end;

implementation

{ TRest }

class function Trest_methods.base_url(const Amethod, Aparameter: string): string;
const
  rest_server = 'http://localhost';
begin
  Result := rest_server +'/api/rest/methods/'+ Amethod +'/'+ Aparameter;
end;

class function Trest_methods.delete(const Amethod, Aparameter: string): Boolean;
begin
  //
end;

class function Trest_methods.get(const Amethod, Aparameter: string): Boolean;
var
  lSuccess: string;
begin
  try
    try
      frm_dm.mem_rest.Active := False;

      frm_dm.rest_response.RootElement := EmptyStr;
      frm_dm.rest_client.BaseURL := base_url(Amethod, Aparameter);
      frm_dm.rest_request.Execute;

      lSuccess := (frm_dm.rest_response.JSONValue as TJSONObject).Values['result'].Value;

      Result := lSuccess.Equals('success');
    except on E: Exception do
      Result := False;
    end;
  finally
  end;
end;

class function Trest_methods.post(const Amethod, Aparameter: string): Boolean;
begin
  //
end;

class function Trest_methods.put(const Amethod, Aparameter: string): Boolean;
begin
  //
end;

end.
