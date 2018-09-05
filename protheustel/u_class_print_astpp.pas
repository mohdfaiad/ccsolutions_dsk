unit u_class_print_astpp;

interface

uses
  System.SysUtils,

  FireDAC.Comp.Client,

  u_class_rest_method,
  u_class_connection;

type
  Trest_print_astpp = class(Trest_methods)
  private

  protected

  public
    class function GetClient(mem: TFDMemTable): Boolean;
    class function GetImportCallLogASTPP(mem: TFDMemTable; AClient, ADateStart, ADateEnd: string): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_print_astpp }

class function Trest_print_astpp.GetClient(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/clients/Client';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('cli_cod').AsString         := frm_dm.mem_rest.FieldByName('cli_cod').AsString;
            mem.FieldByName('cli_id').AsInteger         := frm_dm.mem_rest.FieldByName('cli_id').AsInteger;
            mem.FieldByName('cli_first_name').AsString  := frm_dm.mem_rest.FieldByName('cli_first_name').AsString;
            mem.FieldByName('cli_last_name').AsString   := frm_dm.mem_rest.FieldByName('cli_last_name').AsString;
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

class function Trest_print_astpp.GetImportCallLogASTPP(mem: TFDMemTable; AClient, ADateStart, ADateEnd: string): Boolean;
begin
  try
    try
      v_method        := '/api/rest/print_astpps/PrintASTPP';
      v_parameter     := Tconnection.ctr_token +'/'+ AClient+'/'+ ADateStart+' 00:00:00/'+ ADateEnd +' 23:59:59';

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('cli_account_code_astpp').AsString  := frm_dm.mem_rest.FieldByName('cli_account_code_astpp').AsString;
            mem.FieldByName('imp_from').AsString                := frm_dm.mem_rest.FieldByName('imp_from').AsString;
            mem.FieldByName('imp_to').AsString                  := frm_dm.mem_rest.FieldByName('imp_to').AsString;
            mem.FieldByName('imp_duration').AsString            := frm_dm.mem_rest.FieldByName('imp_duration').AsString;
            mem.FieldByName('imp_date').AsString                := frm_dm.mem_rest.FieldByName('imp_date').AsString;
            mem.FieldByName('imp_type').AsString                := frm_dm.mem_rest.FieldByName('imp_type').AsString;
            mem.FieldByName('imp_rate').AsString                := frm_dm.mem_rest.FieldByName('imp_rate').AsString;
            mem.FieldByName('imp_total').AsString               := frm_dm.mem_rest.FieldByName('imp_total').AsString;
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
