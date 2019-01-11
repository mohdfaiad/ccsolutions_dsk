unit ufrm_main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ImgList,
  Vcl.ActnList,
  Vcl.Menus,
  Vcl.ToolWin,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,

  dxGDIPlusClasses,

  ufrm_main_default,
  ufrm_login,
  ufrm_cliente,
  ufrm_contrato,
  ufrm_provedor,
  ufrm_revenda,
  ufrm_usuario;

type
  Tfrm_main = class(Tfrm_main_default)
    Action_usuario: TAction;
    Action_cliente: TAction;
    Action_revenda: TAction;
    Action_contrato: TAction;
    Action_provedor: TAction;
    DadosdoUsurio1: TMenuItem;
    N1: TMenuItem;
    Clientes1: TMenuItem;
    Revendas1: TMenuItem;
    Provedores1: TMenuItem;
    Contratos1: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Action_usuarioExecute(Sender: TObject);
    procedure Action_clienteExecute(Sender: TObject);
    procedure Action_revendaExecute(Sender: TObject);
    procedure Action_contratoExecute(Sender: TObject);
    procedure Action_provedorExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

procedure Tfrm_main.Action_clienteExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_cliente) then begin
    frm_cliente := Tfrm_cliente.Create(Self);
    frm_cliente.Show;
  end else begin
    frm_cliente.WindowState := wsNormal;
    frm_cliente.Show;
  end;
end;

procedure Tfrm_main.Action_contratoExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_contrato) then begin
    frm_contrato := Tfrm_contrato.Create(Self);
    frm_contrato.Show;
  end else begin
    frm_contrato.WindowState := wsNormal;
    frm_contrato.Show;
  end;
end;

procedure Tfrm_main.Action_provedorExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_provedor) then begin
    frm_provedor := Tfrm_provedor.Create(Self);
    frm_provedor.Show;
  end else begin
    frm_provedor.WindowState := wsNormal;
    frm_provedor.Show;
  end;
end;

procedure Tfrm_main.Action_revendaExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_revenda) then begin
    frm_revenda := Tfrm_revenda.Create(Self);
    frm_revenda.Show;
  end else begin
    frm_revenda.WindowState := wsNormal;
    frm_revenda.Show;
  end;
end;

procedure Tfrm_main.Action_usuarioExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_usuario) then begin
    frm_usuario := Tfrm_usuario.Create(Self);
    frm_usuario.Show;
  end else begin
    frm_usuario.WindowState := wsNormal;
    frm_usuario.Show;
  end;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  inherited;
  frm_login := Tfrm_login.Create(Self);
  frm_login.ShowModal;

  if frm_login.ModalResult <> mrOk then begin
    MessageDlg('Você não se autenticou. A aplicação será encerrada!', mtWarning, [mbOK], 0);
    Application.Terminate;
  end;
end;

end.
