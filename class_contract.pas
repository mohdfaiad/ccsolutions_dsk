unit class_contract;

interface
 uses
    class_Conexao, FireDAC.Comp.Client, System.SysUtils, Data.DB,
    Vcl.Forms, Winapi.Windows,Vcl.Dialogs;

    type
    TContract = class

    private
     FConexao: TConexao;

    private
    Fctr_first_name: string;
    Fctr_last_name: string;
    Fctr_email: string;
    Fctr_phone1: string;
    Fctr_dt_birth_open: TDateTime;

    public

     constructor Create;
     destructor Destroy; override;

    property ctr_first_name: string read Fctr_first_name write Fctr_first_name;
    property ctr_last_name: string read Fctr_last_name write Fctr_last_name;
    property ctr_email: string read Fctr_email write Fctr_email;
    property ctr_phone1: string read Fctr_phone1 write Fctr_phone1;
    property ctr_dt_birth_open: TDateTime read Fctr_dt_birth_open write Fctr_dt_birth_open;

    procedure Contract_Create(Contract: TContract);

    end;

implementation

{ TContract }

procedure TContract.Contract_Create(Contract: TContract);
var
  FDStoredProc : TFDStoredProc;
begin
 if not Assigned(FDStoredProc) then
  begin
   FDStoredProc := FConexao.CriarStoredProc();
   try

    try
    with FDStoredProc do
     begin
      StoredProcName := 'contract_create';

      Prepare;
      ParamByName('p_ctr_first_name').AsString := Contract.ctr_first_name;
      ParamByName('p_ctr_last_name').AsString  := Contract.ctr_last_name;
      ParamByName('p_ctr_email').AsString      := Contract.ctr_email;
      ParamByName('p_ctr_phone1').AsString     := Contract.ctr_phone1;
      ParamByName('p_ctr_dt_birth_open').Value := Contract.ctr_dt_birth_open;
      ExecProc;
      Application.MessageBox('Registros inseridos com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
     end;

    finally
     FDStoredProc.Free;
    end;
   except on E: Exception do
     ShowMessage('Erro ao inserir os registros   :  '+E.Message);
   end;

  end;
end;

constructor TContract.Create;
begin

end;

destructor TContract.Destroy;
begin

  inherited;
end;

end.
