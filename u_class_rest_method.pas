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
    class function Get(const Amethod, Aparameter: string): Boolean;
    class function Post(const Amethod, Aparameter: string): Boolean;
    class function Put(const Amethod, Aparameter: string): Boolean;
    class function Delete(const Amethod, Aparameter: string): Boolean;
  end;

implementation

{ TRest }

class function Trest_methods.base_url(const Amethod, Aparameter: string): string;
const
  rest_server = 'http://localhost';
begin
  Result := rest_server +'/api//restmethods/'+ Amethod +'/'+ Aparameter;
end;

class function Trest_methods.Delete(const Amethod, Aparameter: string): Boolean;
begin
  //
end;

class function Trest_methods.Get(const Amethod, Aparameter: string): Boolean;
var
  v_success: string;
begin
  try
    try
      frm_dm.mem_rest.Close;

      frm_dm.rest_client.BaseURL := base_url(Amethod, Aparameter);
      frm_dm.rest_response.RootElement := v_root_element;
      frm_dm.rest_request.Execute;

      v_success := (frm_dm.rest_response.JSONValue as TJSONObject).Values['result'].Value;

      Result := v_success.Equals('success');
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
