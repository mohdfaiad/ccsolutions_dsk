unit u_class_rest_material;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_material = class(Trest_methods)
  private

  protected

  public
    class function GetMaterial(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_ticket_type }

class function Trest_material.GetMaterial(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/Material/Materials';
      v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('mat_cod').AsString             := frm_dm.mem_rest.FieldByName('mat_cod').AsString;
            mem.FieldByName('mat_id').AsInteger             := frm_dm.mem_rest.FieldByName('mat_id').AsInteger;
            mem.FieldByName('mat_name').AsString            := frm_dm.mem_rest.FieldByName('mat_name').AsString;
            mem.FieldByName('mat_status').AsString          := frm_dm.mem_rest.FieldByName('mat_status').AsString;
            mem.FieldByName('mat_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('mat_deleted_at').AsString;
            mem.FieldByName('mat_dt_registration').AsString := frm_dm.mem_rest.FieldByName('mat_dt_registration').AsString;
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
