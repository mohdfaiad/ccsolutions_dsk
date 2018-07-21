unit ufrm_changePassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxPC, System.ImageList, Vcl.ImgList, ACBrBase, ACBrEnterTab,
  Vcl.Samples.Gauges,IdHashMessageDigest;

type
  Tfrm_changePassword = class(TForm)
    cxImageList_1: TcxImageList;
    cxPageControl1: TcxPageControl;
    cxTabSheet_1: TcxTabSheet;
    Image1: TImage;
    edt_contract: TcxTextEdit;
    edt_username: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    edt_passwordCurrent: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel4: TcxLabel;
    edt_passwordNew: TcxTextEdit;
    cxLabel5: TcxLabel;
    edt_passwordConfirm: TcxTextEdit;
    ACBrEnterTab_1: TACBrEnterTab;
    cxLabel6: TcxLabel;
    gaugePassword: TGauge;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_passwordNewPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    forcaSenha:Integer;

  public
    { Public declarations }
  end;

var
  frm_changePassword: Tfrm_changePassword;

implementation

{$R *.dfm}

uses ufrm_dm;


procedure Tfrm_changePassword.cxButton1Click(Sender: TObject);
var
md5 : TIdHashMessageDigest;
begin
if edt_passwordConfirm.Text <> edt_passwordNew.Text then
 begin
  Application.MessageBox('A nova senha e a confirmação não coincidem!', 'SENHA',MB_OK + MB_ICONERROR);
  edt_passwordNew.SetFocus;
  exit;
 end;

if Length(edt_passwordNew.Text) < 5 then
 begin
  Application.MessageBox('Senha deve ter no mínimo 5 caracteres!', 'SENHA',MB_OK + MB_ICONERROR);
  edt_passwordNew.SetFocus;
  exit;
 end;


if Application.MessageBox('Desja confirmar a alteração em sua senha?', 'SENHA',MB_YESNO + MB_ICONQUESTION) = mrYes then
 begin
 with frm_dm.qry,sql do
  begin
   close;
   text:= 'select ctr_usr_password from contract_user ' +
          'where contract_ctr_id = :contrato ' +
          'and ctr_usr_username = :nome '+
          'and (ctr_usr_password = :senha or ctr_usr_password is null)';
   ParamByName('contrato').AsString:= edt_contract.Text;
   ParamByName('nome').AsString:=edt_username.Text;
   ParamByName('senha').AsString:=edt_passwordCurrent.Text;
   prepare;
   open;

   if IsEmpty then
    begin
     Application.MessageBox('A senha informada não confere para o usuário selecionado!', 'SENHA',MB_OK + MB_ICONERROR);
     Exit
    end;

   md5:=TIdHashMessageDigest5.Create;
   close;
   text:= ' update contract_user ' +
          ' set  ctr_usr_password = :senhaAtual '+
          'where contract_ctr_id = :contrato ' +
          'and ctr_usr_username = :nome '+
          'and (ctr_usr_password = :senha or ctr_usr_password is null)';
   ParamByName('contrato').AsString:= edt_contract.Text;
   ParamByName('nome').AsString:=edt_username.Text;
   ParamByName('senha').AsString:=edt_passwordCurrent.Text;
   ParamByName('contrato').AsString:= edt_contract.Text;
   ParamByName('senhaAtual').AsString:=md5.HashStringAsHex(edt_passwordNew.Text);
   prepare;
   ExecSQL;

   Application.MessageBox('Senha alterada com sucesso!', 'SENHA',MB_OK + MB_ICONINFORMATION);
   Application.Terminate;
  end;
 end;

end;

procedure Tfrm_changePassword.cxButton2Click(Sender: TObject);
begin
if Application.MessageBox('Desja sair do sistema sem Cadastrar/Alterar sua senha?', 'SENHA',MB_YESNO + MB_ICONQUESTION) = mrYes then
Application.Terminate;
end;

procedure Tfrm_changePassword.edt_passwordNewPropertiesChange(Sender: TObject);
const
 n :Array [1..10]  of char  = ('0','1','2','3','4','5','6','7','8','9');
 l :Array [1..26]  of char  = ('a','b','c','d','e','f','g','h','i','j','l','m',
 'n','o','p','q','r','s','t','u','v','x','z','w','k','y');

 le :Array [1..26]  of char  = ('A','B','C','D','E','F','G','H','I','J','L','M',
 'N','O','P','Q','R','S','T','U','V','X','Z','W','K','Y');

 s :Array [1..15]  of char  = ('!','@','#','$','%','&','*','(',')','-','+','=','?','<','>');

var
i:Integer;
begin
 gaugePassword.Progress:=0;
 gaugePassword.ForeColor:=clWhite;
 forcaSenha:=0;

begin
 for i:=1 to length(n) do
  if pos(n[i],edt_passwordNew.Text)>0 then
   begin
    forcaSenha:=forcaSenha + 25;
    Break;
   end;


 for i:=1 to length(l) do
  if pos(l[i],edt_passwordNew.Text)>0 then
   begin
    forcaSenha:=forcaSenha + 25;
    Break;
   end;

 for i:=1 to length(le) do
  if pos(le[i],edt_passwordNew.Text)>0 then
   begin
    forcaSenha:=forcaSenha + 25;
    Break
   end;

 for i:=1 to length(s) do
  if pos(s[i],edt_passwordNew.Text)>0 then
   begin
    forcaSenha:=forcaSenha + 25;
    Break
   end;


if forcaSenha <= 25 then
 begin
    gaugePassword.ForeColor:=clRed;
 end;

 if (forcaSenha >= 25) and (forcaSenha  <= 50) then
 begin
    gaugePassword.ForeColor:=$000080FF;
 end;

  if forcaSenha  >50 then
 begin
    gaugePassword.ForeColor:=clGreen;
 end;

 gaugePassword.Progress:=forcaSenha;

end;
end;

procedure Tfrm_changePassword.FormShow(Sender: TObject);
begin
gaugePassword.Progress:=0;
forcaSenha:=0;
end;

end.

