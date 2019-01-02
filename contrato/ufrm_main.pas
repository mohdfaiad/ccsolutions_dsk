unit ufrm_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_main_default, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.ToolWin,
  Vcl.ComCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, ufrm_cliente, ufrm_login;

type
  Tfrm_main = class(Tfrm_main_default)
    Action_cliente: TAction;
    Clientes1: TMenuItem;
    procedure Action_clienteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
//    frm_cliente.Height := Bevel_1.Height;
//    frm_cliente.Width := Bevel_1.Width;
    frm_cliente.Show;
  end else begin
    frm_cliente.WindowState := wsNormal;
    frm_cliente.Show;
  end;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  inherited;
  frm_login := Tfrm_login.Create(Self);
  frm_login.ShowModal;

  if frm_login.ModalResult <> mrOk then begin
    MessageDlg('Voc� n�o se autenticou. A aplica��o ser� encerrada!', mtWarning, [mbOK], 0);
    Application.Terminate;
  end;
end;

end.
