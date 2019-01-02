unit u_class_rest_proposal_contract;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_proposal_contract = class(Trest_methods)
  private

  protected

  public
    class function GetProposalContract(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_proposal_contract }

class function Trest_proposal_contract.GetProposalContract(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/ProposalContract/ProposalContracts';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('req_cod').AsString             := frm_dm.mem_rest.FieldByName('req_cod').AsString;
            mem.FieldByName('client_cli_cod').AsString      := frm_dm.mem_rest.FieldByName('client_cli_cod').AsString;
            mem.FieldByName('req_id').AsString              := frm_dm.mem_rest.FieldByName('req_id').AsString;
            mem.FieldByName('req_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('req_deleted_at').AsString;
            mem.FieldByName('req_dt_registration').AsString := frm_dm.mem_rest.FieldByName('req_dt_registration').AsString;
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
