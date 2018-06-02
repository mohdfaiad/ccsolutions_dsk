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
  Vcl.Buttons, FireDAC.Comp.Client, ACBrMail,IdHashMessageDigest,
  Vcl.Samples.Gauges, ACBrValidador, cxMaskEdit, cxButtonEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDropDownEdit, cxCalendar;

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
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Action_access: TAction;
    Action_cancel: TAction;
    ACBrEnterTab_1: TACBrEnterTab;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ACBrMail_1: TACBrMail;
    cxTabSheet1: TcxTabSheet;
    Image2: TImage;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    edt_password: TcxButtonEdit;
    edt_passwordCurrent: TcxButtonEdit;
    edt_passwordNew: TcxButtonEdit;
    edt_passwordConfirm: TcxButtonEdit;
    cxTabSheet2: TcxTabSheet;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxemail: TcxTextEdit;
    Image3: TImage;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxDateNasc: TcxDateEdit;
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_accessExecute(Sender: TObject);
    procedure edt_contractKeyPress(Sender: TObject; var Key: Char);
    procedure cxLabel4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure edt_passwordNewPropertiesChange(Sender: TObject);
    procedure edt_passwordPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton5Click(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);

  private
    { Private declarations }
  forcaSenha:Integer;
  public
    { Public declarations }
    Acao:Integer;
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_main_default;

procedure Tfrm_login.Action_accessExecute(Sender: TObject);
var
SQL:string;
begin
  // Select para listar as unidades de estoque que esse usuário tem acesso
   frm_dm.qry_enterprise.Close;
   frm_dm.qry_enterprise.ParamByName('CTR_USR_ID').Value:=frm_dm.qry_signinuserCod.Value;
   frm_dm.qry_enterprise.Prepare;
   frm_dm.qry_enterprise.Open;

 if frm_dm.qry_loggedctr_usr_logged.AsString = 'B' then
  begin
  Application.MessageBox('Usuário foi bloaqueado pelo administrador do sistema!','AVISO', MB_OK + MB_ICONWARNING);
   Application.Terminate
  end;
//
//
//  if frm_dm.qry_signin.RecordCount = 1 then
//  begin
//   if Length(frm_dm.qry_signinctr_usr_password.AsString) = 0  then
//    begin
//     Application.MessageBox('Usuário sem senha definida favor informar sua senha!', 'LOGIN',MB_OK + MB_ICONINFORMATION);
//     cxPageControl1.Pages[1].TabVisible:=True;
//     cxPageControl1.ActivePageIndex:=1;
//     cxPageControl1.Pages[0].TabVisible:=False;
//     cxPageControl1.Pages[2].TabVisible:=False;
//     edt_passwordCurrent.SetFocus;
//     exit;
//    end;
//  if frm_dm.qry_signinctr_usr_logged.AsString <> 'B' then
//   with frm_dm.qry,sql do
//    begin
//      close;
//      Text:='update contract_user ' +
//            ' set ctr_usr_logged = ''S'' '+
//            ' where contract_ctr_cod = (select ctr_cod from contract ' +
//                      ' where ctr_id = ' + QuotedStr(edt_contract.Text) + ')' +
//            ' and ctr_usr_password = '+ QuotedStr(md5.HashStringAsHex(edt_password.Text)) +
//            ' and ctr_usr_username = ' + QuotedStr(edt_username.Text);
//      Prepare;
//      ExecSQL;
//    end;
//     frm_dm.qry_logged.Close;
//     frm_dm.qry_logged.Params.ClearValues();
//     frm_dm.qry_logged.Params[0].AsInteger := StrToInt(edt_contract.Text);
//     frm_dm.qry_logged.Params[1].AsString := edt_username.Text;
//     frm_dm.qry_logged.Params[2].AsString :=md5.HashStringAsHex(edt_password.Text);
//     frm_dm.qry_logged.Prepare;
//     frm_dm.qry_logged.Open;

     SQL := 'set @po_valid_user = 0;' +
         'set @po_contract_ctr_cod = 0;' +
         'call proc_access_signin('+ edt_contract.Text +', '+
         QuotedStr(edt_username.Text) +', '+
         QuotedStr(edt_password.Text) +
         ', @po_valid_user, @po_contract_ctr_cod,@po_ctr_usr_cod);' +
         'select @po_valid_user, hex(@po_contract_ctr_cod),hex(@po_ctr_usr_cod) ;';
     frm_dm.qry_signinNew.Close;
     frm_dm.qry_signinNew.SQL.Clear;
     frm_dm.qry_signinNew.SQL.Text:=SQL;
     frm_dm.qry_signinNew.Open;


     frm_dm.v_contract_ctr_cod := '0x' +  frm_dm.qry_signinNew.FieldByName('hex(@po_contract_ctr_cod)').Value;
     frm_dm.v_ctr_usr_cod := '0x' +  frm_dm.qry_signinNew.FieldByName('hex(@po_ctr_usr_cod)').Value;
     //Sem contact

     frm_dm.p_contract_ctr_cod := frm_dm.qry_signinNew.FieldByName('hex(@po_contract_ctr_cod)').Value;
     frm_dm.p_ctr_usr_cod      := frm_dm.qry_signinNew.FieldByName('hex(@po_ctr_usr_cod)').Value;

  frm_dm.qry_contract.Close;
  frm_dm.qry_contract.sql.Text:='select ctr_cod,ctr_id from contract '+
     ' where ctr_cod = ' + frm_dm.v_contract_ctr_cod;
  frm_dm.qry_contract.Prepare;
  frm_dm.qry_contract.Open;


  if frm_dm.qry_signinNew.Fields[0].AsInteger = 1 then
   begin
     if Tag = 99 then
      begin
       ModalResult :=mrYes;
       Self.Close;
      end
      else
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
  if frm_login.Tag = 99  then  //Tag 99 quando for para alterar senha não finalizar a apliacação
    Self.Close
  else
   begin
     if MessageDlg('Você não se autenticou. A aplicação será encerrada!' + #13 +
        'Deseja continuar?', mtConfirmation, mbYesNo, 0) = mrYes then
        begin
         Application.Terminate;
       end;
   end;
end;

procedure Tfrm_login.cxButton3Click(Sender: TObject);
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
   md5:=TIdHashMessageDigest5.Create;

   with frm_dm.qry,sql do
    begin
     close;
     text:= 'select ctr_usr_password from contract_user ' +
            'where contract_ctr_cod = (select ctr_cod from contract where ctr_id = :contrato) ' +
            'and ctr_usr_username = :nome '+
            'and (ctr_usr_password = :senha or ctr_usr_password is null)';
     ParamByName('contrato').AsString:= edt_contract.Text;
     ParamByName('nome').AsString:=edt_username.Text;
     ParamByName('senha').AsString:=md5.HashStringAsHex(edt_passwordCurrent.Text);
     prepare;
     open;

     if IsEmpty then
      begin
       Application.MessageBox('A senha informada não confere para o usuário selecionado!', 'SENHA',MB_OK + MB_ICONERROR);
       Exit
      end;

     close;
     text:= ' update contract_user ' +
            ' set  ctr_usr_password = :senhaAtual '+
            'where contract_ctr_cod= (select ctr_cod from contract where ctr_id = :contrato) ' +
            'and ctr_usr_username = :nome '+
            'and (ctr_usr_password = :senha or ctr_usr_password is null)';
     ParamByName('contrato').AsString:= edt_contract.Text;
     ParamByName('nome').AsString:=edt_username.Text;
     ParamByName('senha').AsString:=md5.HashStringAsHex(edt_passwordCurrent.Text);
     ParamByName('contrato').AsString:= edt_contract.Text;
     ParamByName('senhaAtual').AsString:=md5.HashStringAsHex(edt_passwordNew.Text);
     prepare;
     ExecSQL;

     Application.MessageBox('Senha alterada com sucesso!', 'SENHA',MB_OK + MB_ICONINFORMATION);
     if frm_login.Tag = 99  then //Tag 99 quando for para alterar senha não finalizar a apliacação
       begin
        Self.Close;
        exit;
       end;

     cxPageControl1.Pages[1].TabVisible:=False;
     cxPageControl1.Pages[0].TabVisible:=True;
     cxTabSheet_1.Show;
     edt_password.SetFocus;
    end;
   end;

end;

procedure Tfrm_login.cxButton4Click(Sender: TObject);
begin

 if frm_login.Tag = 99  then  //Tag 99 quando for para alterar senha não finalizar a apliacação
    Self.Close
  else
   begin
     if Application.MessageBox('Desja sair do sistema sem Cadastrar/Alterar sua senha?', 'SENHA',MB_YESNO + MB_ICONQUESTION) = mrYes then
     Application.Terminate;
   end;

end;

procedure Tfrm_login.cxButton5Click(Sender: TObject);
var
msn:TMemo;
newPassword:string;
md5 : TIdHashMessageDigest;
begin
 with frm_dm.qry,sql do
  begin
   close;
   text:='select ctr_usr_dt_birth,ctr_usr_email,ctr_usr_first_name from contract_user ' +
         'where contract_ctr_id =:contrato ' +
         'and ctr_usr_username = :usuario';
   ParamByName('contrato').AsString:=edt_contract.Text;
   ParamByNAme('usuario').AsString:=edt_username.Text;
   Prepare;
   Open;


   if IsEmpty then
    begin
     Application.MessageBox('Usuário não encontrado para esse contrato!','RECUPERAR SENHA',MB_OK + MB_ICONINFORMATION);
     cxPageControl1.Pages[2].TabVisible:=False;
     cxPageControl1.Pages[1].TabVisible:=False;
     cxPageControl1.Pages[0].TabVisible:=True;
     cxTabSheet_1.Show;
     edt_username.SetFocus;
     Exit;
    end;

   if  cxDateNasc.Date <> FieldByName('ctr_usr_dt_birth').Value then
    begin
     Application.MessageBox('Data de nascimento informada é inválida!','RECUPERAR SENHA',MB_OK + MB_ICONINFORMATION);
     cxDateNasc.SetFocus;
     Exit;
    end;

   if Length(FieldByName('ctr_usr_email').AsString) = 0 then
    begin
     Application.MessageBox('email não encontrado para esse usuário!','RECUPERAR SENHA',MB_OK + MB_ICONINFORMATION);
     edt_username.SetFocus;
     Exit;
    end;

   if cxemail.Text <> FieldByName('ctr_usr_email').AsString then
    begin
     Application.MessageBox('email informado é inválido!','RECUPERAR SENHA',MB_OK + MB_ICONINFORMATION);
     cxemail.SetFocus;
     Exit;
    end;



   newPassword:='CCS' + copy(FormatDateTime('mmm',date),1,2) +   FormatFloat('00000',Random(99999));
   md5:=TIdHashMessageDigest5.Create;
   frm_dm.qry2.close;
   frm_dm.qry2.sql.Text:= 'update contract_user '+
          ' set  ctr_usr_password = '+ QuotedStr(md5.HashStringAsHex(newPassword)) +
          ' where contract_ctr_id =:contrato ' +
          ' and ctr_usr_username = :usuario';
   frm_dm.qry2.ParamByName('contrato').AsString:=edt_contract.Text;
   frm_dm.qry2.ParamByNAme('usuario').AsString:=edt_username.Text;
   frm_dm.qry2.Prepare;
   frm_dm.qry2.ExecSQL;

   msn:=TMemo.Create(Self);
   msn.Visible:=False;
   msn.Parent:=Self;
   msn.Lines.Add('<html><head><meta http-equiv="content-type" content="text/html; charset=UTF-8"></head>');
   msn.Lines.Add('<body text="#000000" bgcolor="#FFFFFF">');
   msn.Lines.Add('<b>Olá,</b> '  + FieldByName('ctr_usr_first_name').AsString + '<br>');
   msn.Lines.Add('<br>');
   msn.Lines.Add('Conforme solicitado, o sistema gerou uma nova senha, segue sua senha abaixo:<br>');
   msn.Lines.Add('<br>');
   msn.Lines.Add('<b>Senha:</b> ' + Trim(newPassword) + '<br>');
   msn.Lines.Add('<br>');
   msn.Lines.Add('Atenção: para efetuar seu login corretamente, verifique as letras maiúsculas e minúsculas. Lembre-se que sua senha é pessoal e intransferível.<br>');
   msn.Lines.Add('</body></html>');
   ACBrMail_1.AddAddress(FieldByName('ctr_usr_email').AsString);
   ACBrMail_1.Body.Assign(msn.Lines);
   ACBrMail_1.Send(false);
   msn.Destroy;

   Application.MessageBox('Uma nova senha foi gerado e enviada para o email cadastrado!','RECUPERAR SENHA',MB_OK + MB_ICONINFORMATION);

   cxPageControl1.Pages[1].TabVisible:=False;
   cxPageControl1.Pages[0].TabVisible:=True;
   cxTabSheet_1.Show;
   edt_contract.SetFocus;
  end;

end;

procedure Tfrm_login.cxLabel4Click(Sender: TObject);
begin
if Length(edt_contract.Text) = 0  then
 begin
  Application.MessageBox('Contrato não informado!','RECUPERAR SENHA',MB_OK + MB_ICONINFORMATION);
  edt_contract.SetFocus;
  Exit;
 end;

if Length(edt_username.Text) = 0  then
 begin
  Application.MessageBox('Usuário não informado!','RECUPERAR SENHA',MB_OK + MB_ICONINFORMATION);
  edt_username.SetFocus;
  Exit;
 end;



    cxPageControl1.Pages[0].TabVisible:=False;
    cxPageControl1.Pages[1].TabVisible:=False;
    cxPageControl1.Pages[2].TabVisible:=True;
    cxPageControl1.ActivePageIndex:=2;
    cxDateNasc.SetFocus;

 end;

procedure Tfrm_login.cxTabSheet1Show(Sender: TObject);
begin
  edt_passwordNew.Clear;
  edt_passwordConfirm.Clear;
  edt_passwordCurrent.Clear;
  edt_passwordCurrent.SetFocus;

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

procedure Tfrm_login.edt_passwordNewPropertiesChange(Sender: TObject);
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
// gaugePassword.Progress:=0;
// gaugePassword.ForeColor:=clWhite;
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
//    gaugePassword.ForeColor:=clRed;
 end;

 if (forcaSenha >= 25) and (forcaSenha  <= 50) then
 begin
//    gaugePassword.ForeColor:=$000080FF;
 end;

  if forcaSenha  >50 then
 begin
//    gaugePassword.ForeColor:=clGreen;
 end;

// gaugePassword.Progress:=forcaSenha;

end;

end;

procedure Tfrm_login.edt_passwordPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if TcxButtonEdit(Sender).Properties.EchoMode <> eemPassword then
    TcxButtonEdit(Sender).Properties.EchoMode := eemPassword

  else
    TcxButtonEdit(Sender).Properties.EchoMode := eemNormal;
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
if self.Tag = 99 then
 begin
   frm_login.cxTabSheet_1.Show;
   frm_login.edt_contract.Clear;
   frm_login.edt_username.Clear;
   frm_login.edt_password.Clear;
   frm_login.edt_contract.SetFocus;
 end;

  cxPageControl1.Pages[1].TabVisible:=False;
  cxPageControl1.Pages[2].TabVisible:=False;
  cxPageControl1.Pages[0].TabVisible:=True;
  cxTabSheet_1.Show;
  edt_contract.SetFocus;
//  gaugePassword.Progress:=0;
  forcaSenha:=0;
end;

end.
