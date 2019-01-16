program contrato;

uses
  Vcl.Forms,
  ufrm_main_contrato in 'ufrm_main_contrato.pas' {frm_main_contrato},
  ufrm_main_default in '..\modelos\ufrm_main_default.pas' {frm_main_default},
  ufrm_form_default in '..\modelos\ufrm_form_default.pas' {frm_form_default},
  ufrm_main in 'ufrm_main.pas' {frm_main},
  ufrm_cliente in '..\ufrm_cliente.pas' {frm_cliente},
  Conexao.RDW in '..\Conexao.RDW.pas',
  ufrm_dm in '..\ufrm_dm.pas' {frm_dm: TDataModule},
  ufrm_login in '..\ufrm_login.pas' {frm_login},
  ufrm_usuario in '..\ufrm_usuario.pas' {frm_usuario},
  ufrm_contrato in '..\ufrm_contrato.pas' {frm_contrato},
  ufrm_revenda in '..\ufrm_revenda.pas' {frm_revenda},
  ufrm_produto in '..\ufrm_produto.pas' {frm_produto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_dm, frm_dm);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
