unit u_class_rest_category_sub;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_ticket_category_sub = class(Trest_methods)
  private

  protected

  public
    class function GetTicketCategorySub(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_ticket_category_sub }

class function Trest_ticket_category_sub.GetTicketCategorySub(mem: TFDMemTable): Boolean;
begin
  try
    try
      Trest_ticket_category_sub.v_method        := '/api/rest/ticket_category_subs/TicketCategorySub';
      Trest_ticket_category_sub.v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('tks_cod').AsString                 := frm_dm.mem_rest.FieldByName('tks_cod').AsString;
            mem.FieldByName('ticket_category_tkc_cod').AsString := frm_dm.mem_rest.FieldByName('ticket_category_tkc_cod').AsString;
            mem.FieldByName('tks_name').AsString                := frm_dm.mem_rest.FieldByName('tks_name').AsString;
            mem.FieldByName('tks_status').AsString              := frm_dm.mem_rest.FieldByName('tks_status').AsString;
            mem.FieldByName('tks_deleted_at').AsString          := frm_dm.mem_rest.FieldByName('tks_deleted_at').AsString;
            mem.FieldByName('tks_dt_registration').AsString     := frm_dm.mem_rest.FieldByName('tks_dt_registration').AsString;
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
