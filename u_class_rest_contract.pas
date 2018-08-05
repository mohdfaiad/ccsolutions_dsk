unit u_class_rest_contract;

interface

uses
  u_class_connection;

type
  Trest_contract = class(Tconnection)
  private

  protected

  public
    contract_ctr_cod, address_wbs: string;
  published

  end;

implementation

end.
