unit ufrm_login;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.ActnList,
  Vcl.ImgList,

  ACBrBase,
  ACBrEnterTab,

  dxGDIPlusClasses;

type
  Tfrm_login = class(TForm)
    acbr_enter: TACBrEnterTab;
    StatusBar1: TStatusBar;
    PageControl_1: TPageControl;
    TabSheet_login: TTabSheet;
    TabSheet_alterarsenha: TTabSheet;
    TabSheet_recuperarsenha: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    Image_1: TImage;
    Label_usuario: TLabel;
    Label_senha: TLabel;
    Label_recuperarsenha: TLabel;
    ImageList_1: TImageList;
    ActionList_1: TActionList;
    Action_acessar: TAction;
    Action_cancelar: TAction;
    edt_contrato: TEdit;
    Label_contrato: TLabel;
    procedure Action_cancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_acessarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

procedure Tfrm_login.Action_acessarExecute(Sender: TObject);
begin
//
end;

procedure Tfrm_login.Action_cancelarExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
  if Self.Tag = 99 then begin
    PageControl_1.Show;
    edt_contrato.Clear;
    edt_usuario.Clear;
    edt_senha.Clear;

    PageControl_1.Pages[0].TabVisible := True;
    PageControl_1.Pages[1].TabVisible := False;
    PageControl_1.Pages[2].TabVisible := False;
    PageControl_1.Show;
    edt_contrato.SetFocus;
  end;

  if Self.Tag = 98 then begin
    TabSheet_alterarsenha.Show;;
//    edt_passwordNew.Clear;
//    edt_passwordConfirm.Clear;

    PageControl_1.Pages[0].TabVisible := False;
    PageControl_1.Pages[1].TabVisible := True;
    PageControl_1.Pages[2].TabVisible := False;
    TabSheet_alterarsenha.Show;
//    edt_passwordNew.SetFocus;
  end;
end;

end.
