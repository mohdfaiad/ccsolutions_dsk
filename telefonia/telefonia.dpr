program telefonia;

uses
  Vcl.Forms,
  ufrm_main_telefonia in 'ufrm_main_telefonia.pas' {frm_main_telefonia},
  ufrm_form_default in '..\modelos\ufrm_form_default.pas' {frm_form_default},
  ufrm_main_default in '..\modelos\ufrm_main_default.pas' {frm_main_default},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_cliente in '..\ufrm_cliente.pas' {frm_cliente},
  ufrm_contrato in '..\ufrm_contrato.pas' {frm_contrato},
  ufrm_provedor in '..\ufrm_provedor.pas' {frm_provedor},
  ufrm_revenda in '..\ufrm_revenda.pas' {frm_revenda},
  ufrm_usuario in '..\ufrm_usuario.pas' {frm_usuario},
  ufrm_numero in '..\ufrm_numero.pas' {frm_numero},
  ufrm_produto in '..\ufrm_produto.pas' {frm_produto},
  ufrm_fornecedor in '..\ufrm_fornecedor.pas' {frm_fornecedor},
  ufrm_ticket in '..\ufrm_ticket.pas' {frm_ticket},
  ufrm_numero_cliente in '..\ufrm_numero_cliente.pas' {frm_numero_cliente},
  ufrm_servidor in '..\ufrm_servidor.pas' {frm_servidor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.