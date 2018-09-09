unit u_class_rest_supplier;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_supplier = class(Trest_methods)
  private

  protected

  public
    class function GetSupplier(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_enterprise }

class function Trest_supplier.GetSupplier(mem: TFDMemTable): Boolean;
begin
  try
    try
      Trest_supplier.v_method        := '/api/rest/suppliers/Supplier';
      Trest_supplier.v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('sup_cod').AsString                 := frm_dm.mem_rest.FieldByName('sup_cod').AsString;
            mem.FieldByName('sup_id').AsInteger                 := frm_dm.mem_rest.FieldByName('sup_id').AsInteger;
            mem.FieldByName('sup_first_name').AsString          := frm_dm.mem_rest.FieldByName('sup_first_name').AsString;
            mem.FieldByName('sup_last_name').AsString           := frm_dm.mem_rest.FieldByName('sup_last_name').AsString;
            mem.FieldByName('sup_email').AsString               := frm_dm.mem_rest.FieldByName('sup_email').AsString;
            mem.FieldByName('sup_cnpj').AsString                := frm_dm.mem_rest.FieldByName('sup_cnpj').AsString;
            mem.FieldByName('sup_ie').AsString                  := frm_dm.mem_rest.FieldByName('sup_ie').AsString;
            mem.FieldByName('sup_im').AsString                  := frm_dm.mem_rest.FieldByName('sup_im').AsString;
            mem.FieldByName('sup_suframa').AsString             := frm_dm.mem_rest.FieldByName('sup_suframa').AsString;
            mem.FieldByName('sup_add_bus_zipcode').AsString     := frm_dm.mem_rest.FieldByName('sup_add_bus_zipcode').AsString;
            mem.FieldByName('sup_add_bus_address').AsString     := frm_dm.mem_rest.FieldByName('sup_add_bus_address').AsString;
            mem.FieldByName('sup_add_bus_number').AsString      := frm_dm.mem_rest.FieldByName('sup_add_bus_number').AsString;
            mem.FieldByName('sup_add_bus_street').AsString      := frm_dm.mem_rest.FieldByName('sup_add_bus_street').AsString;
            mem.FieldByName('sup_add_bus_complement').AsString  := frm_dm.mem_rest.FieldByName('sup_add_bus_complement').AsString;
            mem.FieldByName('sup_add_bus_city').AsString        := frm_dm.mem_rest.FieldByName('sup_add_bus_city').AsString;
            mem.FieldByName('sup_add_bus_state').AsString       := frm_dm.mem_rest.FieldByName('sup_add_bus_state').AsString;
            mem.FieldByName('sup_add_bus_country').AsString     := frm_dm.mem_rest.FieldByName('sup_add_bus_country').AsString;
            mem.FieldByName('sup_phone1').AsString              := frm_dm.mem_rest.FieldByName('sup_phone1').AsString;
            mem.FieldByName('sup_phone2').AsString              := frm_dm.mem_rest.FieldByName('sup_phone2').AsString;
            mem.FieldByName('sup_phone3').AsString              := frm_dm.mem_rest.FieldByName('sup_phone3').AsString;
            mem.FieldByName('sup_phone4').AsString              := frm_dm.mem_rest.FieldByName('sup_phone4').AsString;
            mem.FieldByName('sup_contact').AsString             := frm_dm.mem_rest.FieldByName('sup_contact').AsString;
            mem.FieldByName('sup_dt_open').AsString             := frm_dm.mem_rest.FieldByName('sup_dt_open').AsString;
            mem.FieldByName('sup_status').AsString              := frm_dm.mem_rest.FieldByName('sup_status').AsString;
            mem.FieldByName('sup_deleted_at').AsString          := frm_dm.mem_rest.FieldByName('sup_deleted_at').AsString;
            mem.FieldByName('sup_dt_registration').AsString     := frm_dm.mem_rest.FieldByName('sup_dt_registration').AsString;
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
