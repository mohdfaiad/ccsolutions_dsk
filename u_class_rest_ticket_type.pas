unit u_class_rest_ticket_type;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_ticket_type = class(Trest_methods)
  private

  protected

  public
    class function GetTicketType(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_ticket_type }

class function Trest_ticket_type.GetTicketType(mem: TFDMemTable): Boolean;
begin
  try
    try
      Trest_ticket_type.v_method        := '/api/rest/ticket_types/TicketType';
      Trest_ticket_type.v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('tky_cod').AsString             := frm_dm.mem_rest.FieldByName('tky_cod').AsString;
            mem.FieldByName('tky_id').AsInteger             := frm_dm.mem_rest.FieldByName('tky_id').AsInteger;
            mem.FieldByName('tky_name').AsString            := frm_dm.mem_rest.FieldByName('tky_name').AsString;
            mem.FieldByName('tky_status').AsString          := frm_dm.mem_rest.FieldByName('tky_status').AsString;
            mem.FieldByName('tky_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('tky_deleted_at').AsString;
            mem.FieldByName('tky_dt_registration').AsString := frm_dm.mem_rest.FieldByName('tky_dt_registration').AsString;
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
