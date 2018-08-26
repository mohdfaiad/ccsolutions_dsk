unit u_class_rest_reseller;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_reseller = class(Trest_methods)
  private

  protected

  public
    class function GetReseller(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_reseller }

class function Trest_reseller.GetReseller(mem: TFDMemTable): Boolean;
begin
  try
    try
      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('res_cod').AsString                 := frm_dm.mem_rest.FieldByName('res_cod').AsString;
            mem.FieldByName('res_id').AsInteger                 := frm_dm.mem_rest.FieldByName('res_id').AsInteger;
            mem.FieldByName('res_type').AsString                := frm_dm.mem_rest.FieldByName('res_type').AsString;
            mem.FieldByName('res_first_name').AsString          := frm_dm.mem_rest.FieldByName('res_first_name').AsString;
            mem.FieldByName('res_last_name').AsString           := frm_dm.mem_rest.FieldByName('res_last_name').AsString;
            mem.FieldByName('res_email').AsString               := frm_dm.mem_rest.FieldByName('res_email').AsString;
            mem.FieldByName('res_cpfcnpj').AsString             := frm_dm.mem_rest.FieldByName('res_cpfcnpj').AsString;
            mem.FieldByName('res_rgie').AsString                := frm_dm.mem_rest.FieldByName('res_rgie').AsString;
            mem.FieldByName('res_im').AsString                  := frm_dm.mem_rest.FieldByName('res_im').AsString;
            mem.FieldByName('res_suframa').AsString             := frm_dm.mem_rest.FieldByName('res_suframa').AsString;
            mem.FieldByName('res_add_bus_zipcode').AsString     := frm_dm.mem_rest.FieldByName('res_add_bus_zipcode').AsString;
            mem.FieldByName('res_add_bus_address').AsString     := frm_dm.mem_rest.FieldByName('res_add_bus_address').AsString;
            mem.FieldByName('res_add_bus_number').AsString      := frm_dm.mem_rest.FieldByName('res_add_bus_number').AsString;
            mem.FieldByName('res_add_bus_street').AsString      := frm_dm.mem_rest.FieldByName('res_add_bus_street').AsString;
            mem.FieldByName('res_add_bus_complement').AsString  := frm_dm.mem_rest.FieldByName('res_add_bus_complement').AsString;
            mem.FieldByName('res_add_bus_city').AsString        := frm_dm.mem_rest.FieldByName('res_add_bus_city').AsString;
            mem.FieldByName('res_add_bus_state').AsString       := frm_dm.mem_rest.FieldByName('res_add_bus_state').AsString;
            mem.FieldByName('res_add_bus_country').AsString     := frm_dm.mem_rest.FieldByName('res_add_bus_country').AsString;
            mem.FieldByName('res_phone1').AsString              := frm_dm.mem_rest.FieldByName('res_phone1').AsString;
            mem.FieldByName('res_phone2').AsString              := frm_dm.mem_rest.FieldByName('res_phone2').AsString;
            mem.FieldByName('res_phone3').AsString              := frm_dm.mem_rest.FieldByName('res_phone3').AsString;
            mem.FieldByName('res_phone4').AsString              := frm_dm.mem_rest.FieldByName('res_phone4').AsString;
            mem.FieldByName('res_contact').AsString             := frm_dm.mem_rest.FieldByName('res_contact').AsString;
            mem.FieldByName('res_dt_birthopen').AsString        := frm_dm.mem_rest.FieldByName('res_dt_birthopen').AsString;
            mem.FieldByName('res_status').AsString              := frm_dm.mem_rest.FieldByName('res_status').AsString;
            mem.FieldByName('res_deleted_at').AsString          := frm_dm.mem_rest.FieldByName('res_deleted_at').AsString;
            mem.FieldByName('res_dt_registration').AsString     := frm_dm.mem_rest.FieldByName('res_dt_registration').AsString;
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
