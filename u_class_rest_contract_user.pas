unit u_class_rest_contract_user;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_contract_user = class(Trest_methods)
  private

  protected

  public
    class function GetContractUser(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_contract_user }

class function Trest_contract_user.GetContractUser(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/ContractUser/ContractUsers';
      v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('ctr_usr_cod').AsString             := frm_dm.mem_rest.FieldByName('ctr_usr_cod').AsString;
            mem.FieldByName('ctr_usr_id').AsInteger             := frm_dm.mem_rest.FieldByName('ctr_usr_id').AsInteger;
            mem.FieldByName('ctr_usr_first_name').AsString      := frm_dm.mem_rest.FieldByName('ctr_usr_first_name').AsString;
            mem.FieldByName('ctr_usr_last_name').AsString       := frm_dm.mem_rest.FieldByName('ctr_usr_last_name').AsString;
            mem.FieldByName('ctr_usr_username').AsString        := frm_dm.mem_rest.FieldByName('ctr_usr_username').AsString;
            mem.FieldByName('ctr_usr_email').AsString           := frm_dm.mem_rest.FieldByName('ctr_usr_email').AsString;
            mem.FieldByName('ctr_usr_dt_birth').AsString        := frm_dm.mem_rest.FieldByName('ctr_usr_dt_birth').AsString;
            mem.FieldByName('ctr_usr_status').AsInteger         := frm_dm.mem_rest.FieldByName('ctr_usr_status').AsInteger;
            mem.FieldByName('ctr_usr_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('ctr_usr_deleted_at').AsString;
            mem.FieldByName('ctr_usr_dt_registration').AsString := frm_dm.mem_rest.FieldByName('ctr_usr_dt_registration').AsString;
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
