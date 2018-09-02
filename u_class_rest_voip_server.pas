unit u_class_rest_voip_server;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_voip_server = class(Trest_methods)
  private

  protected

  public
    class function GetVoipServer(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_voip_server }

class function Trest_voip_server.GetVoipServer(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/voip_servers/VoipServer';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('vps_cod').AsString             := frm_dm.mem_rest.FieldByName('vps_cod').AsString;
            mem.FieldByName('vps_id').AsString              := frm_dm.mem_rest.FieldByName('vps_id').AsString;
            mem.FieldByName('vps_type').AsString            := frm_dm.mem_rest.FieldByName('vps_type').AsString;
            mem.FieldByName('vps_name').AsString            := frm_dm.mem_rest.FieldByName('vps_name').AsString;
            mem.FieldByName('vps_address').AsString         := frm_dm.mem_rest.FieldByName('vps_address').AsString;
            mem.FieldByName('vps_port').AsString            := frm_dm.mem_rest.FieldByName('vps_port').AsString;
            mem.FieldByName('vps_username').AsString        := frm_dm.mem_rest.FieldByName('vps_username').AsString;
            mem.FieldByName('vps_password').AsString        := frm_dm.mem_rest.FieldByName('vps_password').AsString;
            mem.FieldByName('vps_api_address').AsString     := frm_dm.mem_rest.FieldByName('vps_api_address').AsString;
            mem.FieldByName('vps_api_port').AsString        := frm_dm.mem_rest.FieldByName('vps_api_port').AsString;
            mem.FieldByName('vps_api_webservice').AsString  := frm_dm.mem_rest.FieldByName('vps_api_webservice').AsString;
            mem.FieldByName('vps_api_username').AsString    := frm_dm.mem_rest.FieldByName('vps_api_username').AsString;
            mem.FieldByName('vps_api_password').AsString    := frm_dm.mem_rest.FieldByName('vps_api_password').AsString;
            mem.FieldByName('vps_api_key').AsString         := frm_dm.mem_rest.FieldByName('vps_api_key').AsString;
            mem.FieldByName('vps_status').AsString          := frm_dm.mem_rest.FieldByName('vps_status').AsString;
            mem.FieldByName('vps_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('vps_deleted_at').AsString;
            mem.FieldByName('vps_dt_registration').AsString := frm_dm.mem_rest.FieldByName('vps_dt_registration').AsString;
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
