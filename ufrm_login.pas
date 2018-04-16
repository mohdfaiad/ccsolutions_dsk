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
  Vcl.Buttons, FireDAC.Comp.Client,  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTPBase;

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
    IdSMTP1: TIdSMTP;
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

uses ufrm_dm;

procedure Tfrm_login.Action_accessExecute(Sender: TObject);
begin
  frm_dm.qry_signin.Close;
  frm_dm.qry_signin.Params.ClearValues();
  frm_dm.qry_signin.Params[0].AsInteger := StrToInt(edt_contract.Text);
  frm_dm.qry_signin.Params[1].AsString := edt_username.Text;
  frm_dm.qry_signin.Params[2].AsString := edt_password.Text;
  frm_dm.qry_signin.Open();

  if frm_dm.qry_signin.RecordCount = 1 then
  begin
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
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
begin
   // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

   try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
//    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satNone;
    IdSMTP.Port := 587;
    IdSMTP.Host := 'mail.ccsbrasil.com';
    IdSMTP.Username := 'elizeu.souza@ccsbrasil.com';
    IdSMTP.Password := 'admin0910@@';

         // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := 'elizeusouza2008@gmail.com';
    IdMessage.From.Name := 'Sistema CCS';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := 'elizeusouza@hotmail.com';
//    IdMessage.Recipients.Add.Text := 'destinatario2@email.com'; // opcional
//    IdMessage.Recipients.Add.Text := 'destinatario3@email.com'; // opcional
    IdMessage.Subject := 'Recuperar de Senha';
    IdMessage.Encoding := meMIME;

      // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('Corpo do e-mail');
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

        // Opcional - Anexo da mensagem (TIdAttachmentFile)
//    sAnexo := 'C:\Anexo.pdf';
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;

       // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão ou autenticação: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

        // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Erro ao enviar a mensagem: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
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
