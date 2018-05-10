unit class_check_enterprise;

interface
 uses
  System.SysUtils, Vcl.Dialogs, ufrm_dm, Vcl.Forms, Winapi.Windows;

 type
   TCheck_Enterprise = Class

 private

 public
  class procedure ValidaEmpresa;

 end;

implementation

{ TCheck_Enterprise }

class procedure TCheck_Enterprise.ValidaEmpresa;
begin
   if frm_dm.qry_enterprise.IsEmpty then
    begin
      Application.MessageBox('Usuário sem acesso aos dados da Empresa ( Por favor solicitar permissionamento ao Administrador do Sistema) !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);
      Abort
    end;

end;

end.
