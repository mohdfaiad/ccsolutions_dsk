unit u_class_rest_client_contract_iten;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_client_contract_iten = class(Trest_methods)
  private

  protected

  public
    class function GetClientContractIten(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_client_contract_iten }

class function Trest_client_contract_iten.GetClientContractIten(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/ClientContractIten/ClientContractItens';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('cci_cod').AsString                     := frm_dm.mem_rest.FieldByName('cci_cod').AsString;
            mem.FieldByName('client_contract_cli_ctr_cod').AsString := frm_dm.mem_rest.FieldByName('client_contract_cli_ctr_cod').AsString;
            mem.FieldByName('product_pro_cod').AsString             := frm_dm.mem_rest.FieldByName('product_pro_cod').AsString;
            mem.FieldByName('cci_value').AsString                   := frm_dm.mem_rest.FieldByName('cci_value').AsString;
            mem.FieldByName('cci_quant').AsString                   := frm_dm.mem_rest.FieldByName('cci_quant').AsString;
            mem.FieldByName('cci_value_discount').AsString          := frm_dm.mem_rest.FieldByName('cci_value_discount').AsString;
            mem.FieldByName('cci_value_total').AsString             := frm_dm.mem_rest.FieldByName('cci_value_total').AsString;
            mem.FieldByName('cci_value_reseller').AsString          := frm_dm.mem_rest.FieldByName('cci_value_reseller').AsString;
            mem.FieldByName('cci_dt_registration').AsString         := frm_dm.mem_rest.FieldByName('cci_dt_registration').AsString;
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
