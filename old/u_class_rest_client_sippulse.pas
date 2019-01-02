unit u_class_rest_client_sippulse;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_client_sippulse = class(Trest_methods)
  private

  protected

  public
    class function GetClientSIPPulse(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_client_sippulse }

class function Trest_client_sippulse.GetClientSIPPulse(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/client_sippulses/ClientSIPPulse';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('cls_cod').AsString               := frm_dm.mem_rest.FieldByName('cls_cod').AsString;
            mem.FieldByName('client_cli_cod').AsString        := frm_dm.mem_rest.FieldByName('client_cli_cod').AsString;
            mem.FieldByName('cls_account_sippulse').AsString  := frm_dm.mem_rest.FieldByName('cls_account_sippulse').AsString;
            mem.FieldByName('cls_dt_registration').AsString   := frm_dm.mem_rest.FieldByName('cls_dt_registration').AsString;
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
