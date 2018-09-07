unit u_class_rest_enterprise;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_enterprise = class(Trest_methods)
  private

  protected

  public
    class function GetEnterprise(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_enterprise }

class function Trest_enterprise.GetEnterprise(mem: TFDMemTable): Boolean;
begin
  try
    try
      Trest_enterprise.v_method        := '/api/rest/enterprises/Enterprise';
      Trest_enterprise.v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('ent_cod').AsString                 := frm_dm.mem_rest.FieldByName('ent_cod').AsString;
            mem.FieldByName('ent_id').AsInteger                 := frm_dm.mem_rest.FieldByName('ent_id').AsInteger;
            mem.FieldByName('ent_type').AsString                := frm_dm.mem_rest.FieldByName('ent_type').AsString;
            mem.FieldByName('ent_first_name').AsString          := frm_dm.mem_rest.FieldByName('ent_first_name').AsString;
            mem.FieldByName('ent_last_name').AsString           := frm_dm.mem_rest.FieldByName('ent_last_name').AsString;
            mem.FieldByName('ent_nickname').AsString            := frm_dm.mem_rest.FieldByName('ent_nickname').AsString;
            mem.FieldByName('ent_email').AsString               := frm_dm.mem_rest.FieldByName('ent_email').AsString;
            mem.FieldByName('ent_cnpj').AsString                := frm_dm.mem_rest.FieldByName('ent_cnpj').AsString;
            mem.FieldByName('ent_ie').AsString                  := frm_dm.mem_rest.FieldByName('ent_ie').AsString;
            mem.FieldByName('ent_im').AsString                  := frm_dm.mem_rest.FieldByName('ent_im').AsString;
            mem.FieldByName('ent_suframa').AsString             := frm_dm.mem_rest.FieldByName('ent_suframa').AsString;
            mem.FieldByName('ent_add_bus_zipcode').AsString     := frm_dm.mem_rest.FieldByName('ent_add_bus_zipcode').AsString;
            mem.FieldByName('ent_add_bus_address').AsString     := frm_dm.mem_rest.FieldByName('ent_add_bus_address').AsString;
            mem.FieldByName('ent_add_bus_number').AsString      := frm_dm.mem_rest.FieldByName('ent_add_bus_number').AsString;
            mem.FieldByName('ent_add_bus_street').AsString      := frm_dm.mem_rest.FieldByName('ent_add_bus_street').AsString;
            mem.FieldByName('ent_add_bus_complement').AsString  := frm_dm.mem_rest.FieldByName('ent_add_bus_complement').AsString;
            mem.FieldByName('ent_add_bus_city').AsString        := frm_dm.mem_rest.FieldByName('ent_add_bus_city').AsString;
            mem.FieldByName('ent_add_bus_state').AsString       := frm_dm.mem_rest.FieldByName('ent_add_bus_state').AsString;
            mem.FieldByName('ent_add_bus_country').AsString     := frm_dm.mem_rest.FieldByName('ent_add_bus_country').AsString;
            mem.FieldByName('ent_phone1').AsString              := frm_dm.mem_rest.FieldByName('ent_phone1').AsString;
            mem.FieldByName('ent_phone2').AsString              := frm_dm.mem_rest.FieldByName('ent_phone2').AsString;
            mem.FieldByName('ent_phone3').AsString              := frm_dm.mem_rest.FieldByName('ent_phone3').AsString;
            mem.FieldByName('ent_phone4').AsString              := frm_dm.mem_rest.FieldByName('ent_phone4').AsString;
            mem.FieldByName('ent_contact').AsString             := frm_dm.mem_rest.FieldByName('ent_contact').AsString;
            mem.FieldByName('ent_dt_open').AsString             := frm_dm.mem_rest.FieldByName('ent_dt_open').AsString;
            mem.FieldByName('ent_status').AsString              := frm_dm.mem_rest.FieldByName('ent_status').AsString;
            mem.FieldByName('ent_deleted_at').AsString          := frm_dm.mem_rest.FieldByName('ent_deleted_at').AsString;
            mem.FieldByName('ent_dt_registration').AsString     := frm_dm.mem_rest.FieldByName('ent_dt_registration').AsString;
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
