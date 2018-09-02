unit u_class_rest_client_astpp;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_client_astpp = class(Trest_methods)
  private

  protected

  public
    class function GetClientATPP(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_client_astpp }

class function Trest_client_astpp.GetClientATPP(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/client_astpps/ClientASTPP';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('cla_cod').AsString             := frm_dm.mem_rest.FieldByName('cla_cod').AsString;
            mem.FieldByName('client_cli_cod').AsString      := frm_dm.mem_rest.FieldByName('client_cli_cod').AsString;
            mem.FieldByName('cla_account_astpp').AsString   := frm_dm.mem_rest.FieldByName('cla_account_astpp').AsString;
            mem.FieldByName('cla_dt_registration').AsString := frm_dm.mem_rest.FieldByName('cla_dt_registration').AsString;
            mem.Post;

            frm_dm.mem_rest.Next;
          end;
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
