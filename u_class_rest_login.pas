unit u_class_rest_login;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_login = class(Trest_methods)
  private

  protected

  public
    class function Logins(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_login }

class function Trest_login.Logins(mem: TFDMemTable): Boolean;
begin
  try
    try
      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('valid_user').AsLargeInt  := frm_dm.mem_rest.FieldByName('valid_user').AsLargeInt;
            mem.FieldByName('ctr_usr_cod').AsString   := frm_dm.mem_rest.FieldByName('ctr_usr_cod').AsString;
            mem.FieldByName('ctr_token').AsString     := frm_dm.mem_rest.FieldByName('ctr_token').AsString;
            mem.FieldByName('ctr_cod').AsString       := frm_dm.mem_rest.FieldByName('ctr_cod').AsString;
            mem.Post;

            frm_dm.mem_rest.Next;
          end;

          Tconnection.ctr_usr_cod := mem.FieldByName('ctr_usr_cod').AsString;
          Tconnection.ctr_token   := mem.FieldByName('ctr_token').AsString;
          Tconnection.ctr_cod     := mem.FieldByName('ctr_cod').AsString;
        end else begin
          Result := False;
        end;
      end;
    except on E: Exception do begin
      Result := False;
    end;
    end;
  finally
  end;
end;

end.
