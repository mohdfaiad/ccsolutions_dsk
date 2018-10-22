unit u_class_rest_phonebook;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_phonebook = class(Trest_methods)
  private

  protected

  public
    class function GetPhonebook(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_phonebook }

class function Trest_phonebook.GetPhonebook(mem: TFDMemTable): Boolean;
begin
  try
    try
      Trest_phonebook.v_method        := '/api/rest/Phonebook/Phonebooks';
      Trest_phonebook.v_parameter     := Tconnection.ctr_token;

      begin
        if get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('pho_cod').AsString             := frm_dm.mem_rest.FieldByName('pho_cod').AsString;
            mem.FieldByName('pho_id').AsInteger             := frm_dm.mem_rest.FieldByName('pho_id').AsInteger;
            mem.FieldByName('pho_name').AsString            := frm_dm.mem_rest.FieldByName('pho_name').AsString;
            mem.FieldByName('pho_phone1').AsString          := frm_dm.mem_rest.FieldByName('pho_phone1').AsString;
            mem.FieldByName('pho_phone2').AsString          := frm_dm.mem_rest.FieldByName('pho_phone2').AsString;
            mem.FieldByName('pho_phone3').AsString          := frm_dm.mem_rest.FieldByName('pho_phone3').AsString;
            mem.FieldByName('pho_phone4').AsString          := frm_dm.mem_rest.FieldByName('pho_phone4').AsString;
            mem.FieldByName('pho_contact').AsString         := frm_dm.mem_rest.FieldByName('pho_contact').AsString;
            mem.FieldByName('pho_deleted_at').AsString      := frm_dm.mem_rest.FieldByName('pho_deleted_at').AsString;
            mem.FieldByName('pho_dt_registration').AsString := frm_dm.mem_rest.FieldByName('pho_dt_registration').AsString;
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
