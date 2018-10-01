unit u_class_rest_product;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, u_class_rest_method, u_class_connection;

type
  Trest_product = class(Trest_methods)
  private

  protected

  public
    class function GetProduct(mem: TFDMemTable): Boolean;

  published

  end;

implementation

uses
  ufrm_dm;

{ Trest_product }

class function Trest_product.GetProduct(mem: TFDMemTable): Boolean;
begin
  try
    try
      v_method        := '/api/rest/Product/Products';
      v_parameter     := Tconnection.ctr_token;

      begin
        if Get(Trest_methods.v_method, Trest_methods.v_parameter) then begin
          frm_dm.rest_response.RootElement := Trest_methods.v_root_element;

          mem.Active := False;
          mem.Active := True;
          frm_dm.mem_rest.First;

          while not (frm_dm.mem_rest.Eof) do begin
            mem.Append;
            mem.FieldByName('pro_cod').AsString                   := frm_dm.mem_rest.FieldByName('pro_cod').AsString;
            mem.FieldByName('material_mat_cod').AsString          := frm_dm.mem_rest.FieldByName('material_mat_cod').AsString;
            mem.FieldByName('supplier_sup_cod').AsString          := frm_dm.mem_rest.FieldByName('supplier_sup_cod').AsString;
            mem.FieldByName('product_class_prc_cod').AsString     := frm_dm.mem_rest.FieldByName('product_class_prc_cod').AsString;
            mem.FieldByName('product_class_sub_prs_cod').AsString := frm_dm.mem_rest.FieldByName('product_class_sub_prs_cod').AsString;
            mem.FieldByName('manufacturer_man_cod').AsString      := frm_dm.mem_rest.FieldByName('manufacturer_man_cod').AsString;
            mem.FieldByName('brand_bra_cod').AsString             := frm_dm.mem_rest.FieldByName('brand_bra_cod').AsString;
            mem.FieldByName('ncm_ncm_cod').AsString               := frm_dm.mem_rest.FieldByName('ncm_ncm_cod').AsString;
            mem.FieldByName('product_unit_pru_cod').AsString      := frm_dm.mem_rest.FieldByName('product_unit_pru_cod').AsString;
            mem.FieldByName('pro_id').AsInteger                   := frm_dm.mem_rest.FieldByName('pro_id').AsInteger;
            mem.FieldByName('pro_type').AsString                  := frm_dm.mem_rest.FieldByName('pro_type').AsString;
            mem.FieldByName('pro_name').AsString                  := frm_dm.mem_rest.FieldByName('pro_name').AsString;
            mem.FieldByName('pro_initials').AsString              := frm_dm.mem_rest.FieldByName('pro_initials').AsString;
            mem.FieldByName('pro_tag').AsString                   := frm_dm.mem_rest.FieldByName('pro_tag').AsString;
            mem.FieldByName('pro_description').AsString           := frm_dm.mem_rest.FieldByName('pro_description').AsString;
            mem.FieldByName('pro_gender').AsString                := frm_dm.mem_rest.FieldByName('pro_gender').AsString;
            mem.FieldByName('pro_annotation').AsString            := frm_dm.mem_rest.FieldByName('pro_annotation').AsString;
            mem.FieldByName('pro_barcod').AsString                := frm_dm.mem_rest.FieldByName('pro_barcod').AsString;
            mem.FieldByName('pro_barcod_manufacturer').AsString   := frm_dm.mem_rest.FieldByName('pro_barcod_manufacturer').AsString;
            mem.FieldByName('pro_height').AsString                := frm_dm.mem_rest.FieldByName('pro_height').AsString;
            mem.FieldByName('pro_width').AsString                 := frm_dm.mem_rest.FieldByName('pro_width').AsString;
            mem.FieldByName('pro_length').AsString                := frm_dm.mem_rest.FieldByName('pro_length').AsString;
            mem.FieldByName('pro_weight').AsString                := frm_dm.mem_rest.FieldByName('pro_weight').AsString;
            mem.FieldByName('pro_liter').AsString                 := frm_dm.mem_rest.FieldByName('pro_liter').AsString;
            mem.FieldByName('pro_delivery_term').AsString         := frm_dm.mem_rest.FieldByName('pro_delivery_term').AsString;
            mem.FieldByName('pro_status').AsString                := frm_dm.mem_rest.FieldByName('pro_status').AsString;
            mem.FieldByName('pro_deleted_at').AsString            := frm_dm.mem_rest.FieldByName('pro_deleted_at').AsString;
            mem.FieldByName('pro_dt_registration').AsString       := frm_dm.mem_rest.FieldByName('pro_dt_registration').AsString;
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
