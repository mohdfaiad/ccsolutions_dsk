unit u_class_rest_client;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_client = class(Trest_methods)
  private

  protected

  public
    class function GetClient(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_client }

class function Trest_client.GetClient(mem: TFDMemTable): Boolean;
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
            mem.FieldByName('cli_cod').AsString                 := frm_dm.mem_rest.FieldByName('cli_cod').AsString;
            mem.FieldByName('table_price_tbp_cod').AsString     := frm_dm.mem_rest.FieldByName('table_price_tbp_cod').AsString;
            mem.FieldByName('cli_id').AsInteger                 := frm_dm.mem_rest.FieldByName('cli_id').AsInteger;
            mem.FieldByName('cli_type').AsString                := frm_dm.mem_rest.FieldByName('cli_type').AsString;
            mem.FieldByName('cli_first_name').AsString          := frm_dm.mem_rest.FieldByName('cli_first_name').AsString;
            mem.FieldByName('cli_last_name').AsString           := frm_dm.mem_rest.FieldByName('cli_last_name').AsString;
            mem.FieldByName('cli_email').AsString               := frm_dm.mem_rest.FieldByName('cli_email').AsString;
            mem.FieldByName('cli_cpfcnpj').AsString             := frm_dm.mem_rest.FieldByName('cli_cpfcnpj').AsString;
            mem.FieldByName('cli_rgie').AsString                := frm_dm.mem_rest.FieldByName('cli_rgie').AsString;
            mem.FieldByName('cli_im').AsString                  := frm_dm.mem_rest.FieldByName('cli_im').AsString;
            mem.FieldByName('cli_suframa').AsString             := frm_dm.mem_rest.FieldByName('cli_suframa').AsString;
            mem.FieldByName('cli_add_bus_zipcode').AsString     := frm_dm.mem_rest.FieldByName('cli_add_bus_zipcode').AsString;
            mem.FieldByName('cli_add_bus_address').AsString     := frm_dm.mem_rest.FieldByName('cli_add_bus_address').AsString;
            mem.FieldByName('cli_add_bus_number').AsString      := frm_dm.mem_rest.FieldByName('cli_add_bus_number').AsString;
            mem.FieldByName('cli_add_bus_street').AsString      := frm_dm.mem_rest.FieldByName('cli_add_bus_street').AsString;
            mem.FieldByName('cli_add_bus_complement').AsString  := frm_dm.mem_rest.FieldByName('cli_add_bus_complement').AsString;
            mem.FieldByName('cli_add_bus_city').AsString        := frm_dm.mem_rest.FieldByName('cli_add_bus_city').AsString;
            mem.FieldByName('cli_add_bus_state').AsString       := frm_dm.mem_rest.FieldByName('cli_add_bus_state').AsString;
            mem.FieldByName('cli_add_bus_country').AsString     := frm_dm.mem_rest.FieldByName('cli_add_bus_country').AsString;
            mem.FieldByName('cli_add_bil_zipcode').AsString     := frm_dm.mem_rest.FieldByName('cli_add_bil_zipcode').AsString;
            mem.FieldByName('cli_add_bil_address').AsString     := frm_dm.mem_rest.FieldByName('cli_add_bil_address').AsString;
            mem.FieldByName('cli_add_bil_number').AsString      := frm_dm.mem_rest.FieldByName('cli_add_bil_number').AsString;
            mem.FieldByName('cli_add_bil_street').AsString      := frm_dm.mem_rest.FieldByName('cli_add_bil_street').AsString;
            mem.FieldByName('cli_add_bil_complement').AsString  := frm_dm.mem_rest.FieldByName('cli_add_bil_complement').AsString;
            mem.FieldByName('cli_add_bil_city').AsString        := frm_dm.mem_rest.FieldByName('cli_add_bil_city').AsString;
            mem.FieldByName('cli_add_bil_state').AsString       := frm_dm.mem_rest.FieldByName('cli_add_bil_state').AsString;
            mem.FieldByName('cli_add_bil_country').AsString     := frm_dm.mem_rest.FieldByName('cli_add_bus_country').AsString;
            mem.FieldByName('cli_add_del_zipcode').AsString     := frm_dm.mem_rest.FieldByName('cli_add_del_zipcode').AsString;
            mem.FieldByName('cli_add_del_address').AsString     := frm_dm.mem_rest.FieldByName('cli_add_del_address').AsString;
            mem.FieldByName('cli_add_del_number').AsString      := frm_dm.mem_rest.FieldByName('cli_add_del_number').AsString;
            mem.FieldByName('cli_add_del_street').AsString      := frm_dm.mem_rest.FieldByName('cli_add_del_street').AsString;
            mem.FieldByName('cli_add_del_complement').AsString  := frm_dm.mem_rest.FieldByName('cli_add_del_complement').AsString;
            mem.FieldByName('cli_add_del_city').AsString        := frm_dm.mem_rest.FieldByName('cli_add_del_city').AsString;
            mem.FieldByName('cli_add_del_state').AsString       := frm_dm.mem_rest.FieldByName('cli_add_del_state').AsString;
            mem.FieldByName('cli_add_del_country').AsString     := frm_dm.mem_rest.FieldByName('cli_add_del_country').AsString;
            mem.FieldByName('cli_phone1').AsString              := frm_dm.mem_rest.FieldByName('cli_phone1').AsString;
            mem.FieldByName('cli_phone2').AsString              := frm_dm.mem_rest.FieldByName('cli_phone2').AsString;
            mem.FieldByName('cli_phone3').AsString              := frm_dm.mem_rest.FieldByName('cli_phone3').AsString;
            mem.FieldByName('cli_phone4').AsString              := frm_dm.mem_rest.FieldByName('cli_phone4').AsString;
            mem.FieldByName('cli_contact').AsString             := frm_dm.mem_rest.FieldByName('cli_contact').AsString;
            mem.FieldByName('cli_day_maturity').AsString        := frm_dm.mem_rest.FieldByName('cli_day_maturity').AsString;
            mem.FieldByName('cli_dt_birthopen').AsString        := frm_dm.mem_rest.FieldByName('cli_dt_birthopen').AsString;
            mem.FieldByName('cli_weight').AsString              := frm_dm.mem_rest.FieldByName('cli_weight').AsString;
            mem.FieldByName('cli_height').AsString              := frm_dm.mem_rest.FieldByName('cli_height').AsString;
            mem.FieldByName('cli_blood_type').AsString          := frm_dm.mem_rest.FieldByName('cli_blood_type').AsString;
            mem.FieldByName('cli_rh_factor').AsString          := frm_dm.mem_rest.FieldByName('cli_rh_factor').AsString;
            mem.FieldByName('cli_du_factor').AsString           := frm_dm.mem_rest.FieldByName('cli_du_factor').AsString;
            mem.FieldByName('cli_cns').AsString                 := frm_dm.mem_rest.FieldByName('cli_cns').AsString;
            mem.FieldByName('cli_gender').AsString              := frm_dm.mem_rest.FieldByName('cli_gender').AsString;
            mem.FieldByName('cli_skin_color').AsString          := frm_dm.mem_rest.FieldByName('cli_skin_color').AsString;
            mem.FieldByName('cli_status').AsString              := frm_dm.mem_rest.FieldByName('cli_status').AsString;
            mem.FieldByName('cli_image1').AsString              := frm_dm.mem_rest.FieldByName('cli_image1').AsString;
            mem.FieldByName('cli_deleted_at').AsString          := frm_dm.mem_rest.FieldByName('cli_deleted_at').AsString;
            mem.FieldByName('cli_dt_registration').AsString     := frm_dm.mem_rest.FieldByName('cli_dt_registration').AsString;
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
