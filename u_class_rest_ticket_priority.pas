unit u_class_rest_ticket_priority;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_ticket_priority = class(Trest_methods)
  private

  protected

  public
    class function GetTicketPriority(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_ticket_priority }

class function Trest_ticket_priority.GetTicketPriority(mem: TFDMemTable): Boolean;
begin
  try
    try
      Trest_ticket_priority.v_method        := '/api/rest/ticket_prioritys/TicketPriority';
      Trest_ticket_priority.v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('tkp_cod').AsString             := frm_dm.mem_rest.FieldByName('tkp_cod').AsString;
            mem.FieldByName('tkp_id').AsInteger             := frm_dm.mem_rest.FieldByName('tkp_id').AsInteger;
            mem.FieldByName('tkp_name').AsString            := frm_dm.mem_rest.FieldByName('tkp_name').AsString;
            mem.FieldByName('tkp_status').AsString          := frm_dm.mem_rest.FieldByName('tkp_status').AsString;
            mem.FieldByName('tkp_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('tkp_deleted_at').AsString;
            mem.FieldByName('tkp_dt_registration').AsString := frm_dm.mem_rest.FieldByName('tkp_dt_registration').AsString;
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
