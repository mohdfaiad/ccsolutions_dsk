unit u_class_rest_insurance;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_insurance = class(Trest_methods)
  private

  protected

  public
    class function GetInsurance(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_enterprise }

class function Trest_insurance.GetInsurance(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/Insurance/Insurances';
      v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('ins_cod').AsString                   := frm_dm.mem_rest.FieldByName('ins_cod').AsString;
            mem.FieldByName('ins_id').AsInteger                   := frm_dm.mem_rest.FieldByName('ins_id').AsInteger;
            mem.FieldByName('ins_first_name').AsString            := frm_dm.mem_rest.FieldByName('ins_first_name').AsString;
            mem.FieldByName('ins_last_name').AsString             := frm_dm.mem_rest.FieldByName('ins_last_name').AsString;
            mem.FieldByName('ins_nickname').AsString              := frm_dm.mem_rest.FieldByName('ins_nickname').AsString;
            mem.FieldByName('ins_email').AsString                 := frm_dm.mem_rest.FieldByName('ins_email').AsString;
            mem.FieldByName('ins_cnpj').AsString                  := frm_dm.mem_rest.FieldByName('ins_cnpj').AsString;
            mem.FieldByName('ins_im').AsString                    := frm_dm.mem_rest.FieldByName('ins_im').AsString;
            mem.FieldByName('ins_add_bus_zipcode').AsString       := frm_dm.mem_rest.FieldByName('ins_add_bus_zipcode').AsString;
            mem.FieldByName('ins_add_bus_address').AsString       := frm_dm.mem_rest.FieldByName('ins_add_bus_address').AsString;
            mem.FieldByName('ins_add_bus_number').AsString        := frm_dm.mem_rest.FieldByName('ins_add_bus_number').AsString;
            mem.FieldByName('ins_add_bus_street').AsString        := frm_dm.mem_rest.FieldByName('ins_add_bus_street').AsString;
            mem.FieldByName('ins_add_bus_complement').AsString    := frm_dm.mem_rest.FieldByName('ins_add_bus_complement').AsString;
            mem.FieldByName('ins_add_bus_city').AsString          := frm_dm.mem_rest.FieldByName('ins_add_bus_city').AsString;
            mem.FieldByName('ins_add_bus_state').AsString         := frm_dm.mem_rest.FieldByName('ins_add_bus_state').AsString;
            mem.FieldByName('ins_add_bus_country').AsString       := frm_dm.mem_rest.FieldByName('ins_add_bus_country').AsString;
            mem.FieldByName('ins_phone1').AsString                := frm_dm.mem_rest.FieldByName('ins_phone1').AsString;
            mem.FieldByName('ins_phone2').AsString                := frm_dm.mem_rest.FieldByName('ins_phone2').AsString;
            mem.FieldByName('ins_phone3').AsString                := frm_dm.mem_rest.FieldByName('ins_phone3').AsString;
            mem.FieldByName('ins_phone4').AsString                := frm_dm.mem_rest.FieldByName('ins_phone4').AsString;
            mem.FieldByName('ins_contact').AsString               := frm_dm.mem_rest.FieldByName('ins_contact').AsString;
            mem.FieldByName('ins_dt_maturity_contract').AsString  := frm_dm.mem_rest.FieldByName('ins_dt_maturity_contract').AsString;
            mem.FieldByName('ins_day_maturity').AsString          := frm_dm.mem_rest.FieldByName('ins_day_maturity').AsString;
            mem.FieldByName('ins_dt_open').AsString               := frm_dm.mem_rest.FieldByName('ins_dt_open').AsString;
            mem.FieldByName('ins_status').AsString                := frm_dm.mem_rest.FieldByName('ins_status').AsString;
            mem.FieldByName('ins_deleted_at').AsString            := frm_dm.mem_rest.FieldByName('ins_deleted_at').AsString;
            mem.FieldByName('ins_dt_registration').AsString       := frm_dm.mem_rest.FieldByName('ins_dt_registration').AsString;
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
