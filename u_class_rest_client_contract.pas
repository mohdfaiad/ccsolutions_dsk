unit u_class_rest_client_contract;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_client_contract = class(Trest_methods)
  private

  protected

  public
    class function GetClientContract(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_client_contract }

class function Trest_client_contract.GetClientContract(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/ClientContract/ClientContracts';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('cli_ctr_cod').AsString             := frm_dm.mem_rest.FieldByName('cli_ctr_cod').AsString;
            mem.FieldByName('client_cli_cod').AsString          := frm_dm.mem_rest.FieldByName('client_cli_cod').AsString;
            mem.FieldByName('reseller_res_cod').AsString        := frm_dm.mem_rest.FieldByName('reseller_res_cod').AsString;
            mem.FieldByName('requisition_req_cod').AsString     := frm_dm.mem_rest.FieldByName('requisition_req_cod').AsString;
            mem.FieldByName('cli_ctr_id').AsInteger             := frm_dm.mem_rest.FieldByName('cli_ctr_id').AsInteger;
            mem.FieldByName('cli_ctr_status').AsString          := frm_dm.mem_rest.FieldByName('cli_ctr_status').AsString;
            mem.FieldByName('cli_ctr_value_reseller').AsString  := frm_dm.mem_rest.FieldByName('cli_ctr_value_reseller').AsString;
            mem.FieldByName('cli_ctr_date_signature').AsString  := frm_dm.mem_rest.FieldByName('cli_ctr_date_signature').AsString;
            mem.FieldByName('cli_ctr_annotation').AsString      := frm_dm.mem_rest.FieldByName('cli_ctr_annotation').AsString;
            mem.FieldByName('cli_ctr_dt_registration').AsString := frm_dm.mem_rest.FieldByName('cli_ctr_dt_registration').AsString;
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
