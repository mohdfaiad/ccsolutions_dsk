unit u_class_rest_category;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_ticket_category = class(Trest_methods)
  private

  protected

  public
    class function GetTicketCategory(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_ticket_priority }

class function Trest_ticket_category.GetTicketCategory(mem: TFDMemTable): Boolean;
begin
  try
    try
      Trest_ticket_category.v_method        := '/api/rest/TicketCategory/TicketCategorys';
      Trest_ticket_category.v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('tkc_cod').AsString             := frm_dm.mem_rest.FieldByName('tkc_cod').AsString;
            mem.FieldByName('tkc_id').AsInteger             := frm_dm.mem_rest.FieldByName('tkc_id').AsInteger;
            mem.FieldByName('tkc_name').AsString            := frm_dm.mem_rest.FieldByName('tkc_name').AsString;
            mem.FieldByName('tkc_status').AsString          := frm_dm.mem_rest.FieldByName('tkc_status').AsString;
            mem.FieldByName('tkc_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('tkc_deleted_at').AsString;
            mem.FieldByName('tkc_dt_registration').AsString := frm_dm.mem_rest.FieldByName('tkc_dt_registration').AsString;
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
