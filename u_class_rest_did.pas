unit u_class_rest_did;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_did = class(Trest_methods)
  private

  protected

  public
    class function GetDID(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_did }

class function Trest_did.GetDID(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/DID/DIDs';
      v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('did_cod').AsString             := frm_dm.mem_rest.FieldByName('did_cod').AsString;
            mem.FieldByName('did_id').AsInteger             := frm_dm.mem_rest.FieldByName('did_id').AsInteger;
            mem.FieldByName('did_number').AsString          := frm_dm.mem_rest.FieldByName('did_number').AsString;
            mem.FieldByName('did_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('did_deleted_at').AsString;
            mem.FieldByName('did_dt_registration').AsString := frm_dm.mem_rest.FieldByName('did_dt_registration').AsString;
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
