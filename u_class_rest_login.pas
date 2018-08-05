unit u_class_rest_login;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  ufrm_dm,

  u_class_rest_method,
  u_class_connection;

type
  Trest_login = class(Trest_methods)
  private

  protected

  public
    class function contract_user_signin(mem: TFDMemTable): Boolean;

  published

  end;

implementation

{ Trest_login }

class function Trest_login.contract_user_signin(mem: TFDMemTable): Boolean;
begin
  try
    try
      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('valid_user').AsLargeInt  := frm_dm.mem_rest.FieldByName('valid_user').AsLargeInt;
            mem.FieldByName('ctr_usr_cod').AsString   := frm_dm.mem_rest.FieldByName('ctr_usr_cod').AsString;
            mem.Post;

            frm_dm.mem_rest.Next;
          end;

          Tconnection.ctr_usr_cod := mem.FieldByName('ctr_usr_cod').AsString;
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
