unit class_table_price;

interface

uses FireDAC.Comp.Client;

type TTable_price = class
 private
  FTbp_id              : Integer;
  FContract_ctr_id     : Integer;
  FTbp_name            :string;
  FTbp_dt_registration :TDateTime;
 public
  property Tbp_id:Integer read FTbp_id write FTbp_id;
  property Contract_ctr_id:Integer read FContract_ctr_id write FContract_ctr_id;
  property Tbp_name:string read FTbp_name write FTbp_name;
  property Tbp_dt_registration:TDateTime read FTbp_dt_registration write FTbp_dt_registration;

end;
 TDAO = class
 private

 public
  class procedure insert_table_price(pConexao:TFDConnection;pQry:TFDQuery);
 end;

implementation


{ TDAO }

class procedure TDAO.insert_table_price(pConexao: TFDConnection;
  pQry: TFDQuery);
const
_sql = 'insert into table_price(contract_ctr_id,tbp_id,tbp_name,tbp_status, '+
       ' tbp_dt_registration) ' +
       ' values(:contract_ctr_id,:tbp_id,:tbp_name,:tbp_status, '+
       ' :tbp_dt_registration)';
begin
(*with pQry,sql do
 begin
  Close;
  Text := _SQL;
  ParamByName('contract_ctr_id').AsInteger :=  UndProd.contract_ctr_id;
  ParamByName('pru_name').AsString := UndProd.pru_name;
  ParamByName('pru_initials').AsString := UndProd.pru_initials;
  ParamByName('pru_dt_registration').AsDateTime := UndProd.pru_dt_registration;
  prep
  ExecSQL;
    end;
 end;
 *)
end;

end.
