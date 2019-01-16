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
  ufrm_usuario,
  ufrm_numero,
  ufrm_produto,
  ufrm_fornecedor,
  ufrm_ticket,
  ufrm_numero_cliente,
  ufrm_servidor;

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
    Action_numero: TAction;
    NmerosDIDs1: TMenuItem;
    Action_produto: TAction;
    ProdutoseServios1: TMenuItem;
    Action_fornecedor: TAction;
    Fornecedores1: TMenuItem;
    Action_logoff: TAction;
    DadosdoUsurio2: TMenuItem;
    N3: TMenuItem;
    ickets1: TMenuItem;
    Action_ticket: TAction;
    ickets2: TMenuItem;
    NmerosDIDs2: TMenuItem;
    Action_numero_cliente: TAction;
    AtrelarNmero1: TMenuItem;
    Action_servidor: TAction;
    Servidores1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Action_usuarioExecute(Sender: TObject);
    procedure Action_clienteExecute(Sender: TObject);
    procedure Action_revendaExecute(Sender: TObject);
    procedure Action_contratoExecute(Sender: TObject);
    procedure Action_provedorExecute(Sender: TObject);
    procedure Action_numeroExecute(Sender: TObject);
    procedure Action_produtoExecute(Sender: TObject);
    procedure Action_fornecedorExecute(Sender: TObject);
    procedure Action_ticketExecute(Sender: TObject);
    procedure Action_numero_clienteExecute(Sender: TObject);
    procedure Action_servidorExecute(Sender: TObject);
  private

  public

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

procedure Tfrm_main.Action_fornecedorExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_fornecedor) then begin
    frm_fornecedor := Tfrm_fornecedor.Create(Self);
    frm_fornecedor.Show;
  end else begin
    frm_fornecedor.WindowState := wsNormal;
    frm_fornecedor.Show;
  end;
end;

procedure Tfrm_main.Action_numeroExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_numero) then begin
    frm_numero := Tfrm_numero.Create(Self);
    frm_numero.Show;
  end else begin
    frm_numero.WindowState := wsNormal;
    frm_numero.Show;
  end;
end;

procedure Tfrm_main.Action_numero_clienteExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_numero_cliente) then begin
    frm_numero_cliente := Tfrm_numero_cliente.Create(Self);
    frm_numero_cliente.Show;
  end else begin
    frm_numero_cliente.WindowState := wsNormal;
    frm_numero_cliente.Show;
  end;
end;

procedure Tfrm_main.Action_produtoExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_produto) then begin
    frm_produto := Tfrm_produto.Create(Self);
    frm_produto.Show;
  end else begin
    frm_produto.WindowState := wsNormal;
    frm_produto.Show;
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

procedure Tfrm_main.Action_servidorExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_servidor) then begin
    frm_servidor := Tfrm_servidor.Create(Self);
    frm_servidor.Show;
  end else begin
    frm_servidor.WindowState := wsNormal;
    frm_servidor.Show;
  end;
end;

procedure Tfrm_main.Action_ticketExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_ticket) then begin
    frm_ticket := Tfrm_ticket.Create(Self);
    frm_ticket.Show;
  end else begin
    frm_ticket.WindowState := wsNormal;
    frm_ticket.Show;
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
