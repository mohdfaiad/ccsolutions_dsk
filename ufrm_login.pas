unit ufrm_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.ExtCtrls, cxLabel, cxTextEdit,
  Data.DB, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  dxStatusBar, dxRibbonStatusBar, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, ACBrBase, ACBrEnterTab,
  Vcl.Buttons, FireDAC.Comp.Client, ACBrMail,IdHashMessageDigest;

type
  Tfrm_login = class(TForm)
    ActionList_1: TActionList;
    cxImageList_1: TcxImageList;
    cxPageControl1: TcxPageControl;
    cxLabel1: TcxLabel;
    edt_contract: TcxTextEdit;
    cxLabel2: TcxLabel;
    edt_username: TcxTextEdit;
    Image1: TImage;
    cxTabSheet_1: TcxTabSheet;
    edt_password: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Action_access: TAction;
    Action_cancel: TAction;
    ACBrEnterTab_1: TACBrEnterTab;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ACBrMail1: TACBrMail;
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_accessExecute(Sender: TObject);
    procedure edt_contractKeyPress(Sender: TObject; var Key: Char);
    procedure cxLabel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_changePassword;

procedure Tfrm_login.Action_accessExecute(Sender: TObject);
var
md5 : TIdHashMessageDigest;
begin
  md5:=TIdHashMessageDige1st5.Create;

  frm_dm.qry_signin.Close;
  frm_dm.qry_signin.Params.ClearValues();
  frm_dm.qry_signin.Params[0].AsInteger := StrToInt(edt_contract.Text);
  frm_dm.qry_signin.Params[1].AsString := edt_username.Text;
  frm_dm.qry_signin.Params[2].AsString :=md5.HashStringAsHex(edt_password.Text);
  frm_dm.qry_signin.Open();


  if frm_dm.qry_signin.RecordCount = 1 then
  begin
   if Length(frm_dm.qry_signinctr_usr_password.AsString) = 0  then
    begin
     Application.MessageBox('Usuário sem senha definida favor informar sua senha!', 'LOGIN',MB_OK + MB_ICONINFORMATION);
     Application.CreateForm(Tfrm_changePassword,frm_changePassword);
     frm_changePassword.edt_contract.Text:=frm_dm.qry_signinctr_id.AsString;
     frm_changePassword.edt_username.Text:=frm_dm.qry_signinctr_usr_username.AsString;
     frm_changePassword.ShowModal;
    end;

    ModalResult := mrOk;
  end
  else
  begin
    MessageDlg('Usuário ou Senha inválida!', mtInformation, [mbOK], 0);
    edt_contract.SetFocus;
  end;
end;

procedure Tfrm_login.Action_cancelExecute(Sender: TObject);
begin
  if MessageDlg('Você não se autenticou. A aplicação será encerrada!' + #13 +
    'Deseja continuar?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Application.Terminate;
  end;
end;

procedure Tfrm_login.cxLabel4Click(Sender: TObject);
var
msn:TMemo;
begin
 msn:=TMemo.Create(Self);
 msn.Visible:=False;
 msn.Parent:=Self;
 msn.Lines.Add('<html><head><meta http-equiv="content-type" content="text/html; charset=UTF-8"></head>');
 msn.Lines.Add('<body text="#000000" bgcolor="#FFFFFF">');
 msn.Lines.Add('<b>Olá,</b>  ELIZEU  SOUZA<br>');
 msn.Lines.Add('<br>');
 msn.Lines.Add('Conforme solicitado, segue sua senha abaixo:<br>');
 msn.Lines.Add('<br>');
 msn.Lines.Add('<b>Senha:</b> skGuDm9c<br>');
 msn.Lines.Add('<br>');
 msn.Lines.Add('Atenção: para efetuar seu login corretamente, verifique as letras maiúsculas e minúsculas. Lembre-se que sua senha é pessoal e intransferível.<br>');
 msn.Lines.Add('</body></html>');
 ACBrMail1.AddAddress('elizeusouza2008@gmail.com');
 ACBrMail1.Body.Assign(msn.Lines);

 ACBrMail1.Send(false);
 msn.Destroy;
end;

procedure Tfrm_login.edt_contractKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#08]) then
 begin
  key:=#0;
  Application.MessageBox('Somente é permetido números!','LOGIN', MB_OK + MB_ICONEXCLAMATION);
 end;

If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
  edt_contract.SetFocus;
end;

end.
