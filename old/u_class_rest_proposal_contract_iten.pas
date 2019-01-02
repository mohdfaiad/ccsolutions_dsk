unit u_class_rest_proposal_contract_iten;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_proposal_contract_iten = class(Trest_methods)
  private

  protected

  public
    class function GetProposalContractIten(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_proposal_contract_iten }

class function Trest_proposal_contract_iten.GetProposalContractIten(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/ProposalContractIten/ProposalContractItens';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('rei_cod').AsString               := frm_dm.mem_rest.FieldByName('rei_cod').AsString;
            mem.FieldByName('requisition_req_cod').AsString   := frm_dm.mem_rest.FieldByName('requisition_req_cod').AsString;
            mem.FieldByName('product_pro_cod').AsString       := frm_dm.mem_rest.FieldByName('product_pro_cod').AsString;
            mem.FieldByName('rei_value').AsBCD                := frm_dm.mem_rest.FieldByName('rei_value').AsBCD;
            mem.FieldByName('rei_quant').AsBCD                := frm_dm.mem_rest.FieldByName('rei_quant').AsBCD;
            mem.FieldByName('rei_discount').AsBCD             := frm_dm.mem_rest.FieldByName('rei_discount').AsBCD;
            mem.FieldByName('rei_value_total').AsBCD          := frm_dm.mem_rest.FieldByName('rei_value_total').AsBCD;
            mem.FieldByName('rei_deleted_at').AsString        := frm_dm.mem_rest.FieldByName('rei_deleted_at').AsString;
            mem.FieldByName('rei_dt_registration').AsString   := frm_dm.mem_rest.FieldByName('rei_dt_registration').AsString;
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
