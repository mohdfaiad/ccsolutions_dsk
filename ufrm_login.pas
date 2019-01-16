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
  System.IniFiles,

  IdTCPClient,

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

  dxGDIPlusClasses,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Data.DB,

  uDWConstsData,
  uRESTDWPoolerDB,

  ufrm_dm;

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
    clientSQL: TRESTDWClientSQL;
    Timer_1: TTimer;
    procedure Action_cancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_acessarExecute(Sender: TObject);
    procedure Timer_1Timer(Sender: TObject);
  private
    arqIni: TIniFile;

    function StatusServidor(Endereco: String; Porta: Integer): boolean;
    procedure lerIniFile;
    procedure escreverIniFile;

  public

  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

procedure Tfrm_login.Action_acessarExecute(Sender: TObject);
var
  SQL: String;
begin
  SQL :=  'set @po_usuario_usr_token = 0;'   +
          'set @po_usuario_usr_codigo = 0;'  +
          'set @po_usuario_autenticado = 0;' +
          'call proc_usr_ctr_acesso('+ QuotedStr(edt_contrato.Text) +', '+ QuotedStr(edt_usuario.Text) +', '+ QuotedStr(edt_senha.Text) +', @po_usuario_usr_token, @po_usuario_usr_codigo, @po_usuario_autenticado);'  +
          'select @po_usuario_usr_token as usuario_usr_token, @po_usuario_usr_codigo as usuario_usr_codigo, @po_usuario_autenticado as usuario_autenticado;';

  clientSQL := TRESTDWClientSQL.Create(Self);

  clientSQL.Active    := False;
  clientSQL.DataBase  := frm_dm.database;
  clientSQL.SQL.Clear;
  clientSQL.SQL.Text  := SQL;
  clientSQL.Active    := True;

  if clientSQL.FieldByName('usuario_autenticado').AsInteger = 1 then begin
    frm_dm.usuario_usr_token  := clientSQL.FieldByName('usuario_usr_token').AsString;
    frm_dm.usuario_usr_codigo := clientSQL.FieldByName('usuario_usr_codigo').AsString;

    escreverIniFile;

    ModalResult := mrOk;
  end else begin
    ShowMessage('Usu�rio ou Senha inv�lida!');
    edt_contrato.SetFocus;
  end;
end;

procedure Tfrm_login.Action_cancelarExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_login.escreverIniFile;
begin
  try
    try
      arqIni := TIniFile.Create('C:\ccsolutions\config\acesso.ini');
      arqIni.WriteString('ACESSO', 'CONTRATO', edt_contrato.Text);
      arqIni.WriteString('ACESSO', 'USUARIO', edt_usuario.Text);
    except on E: Exception do
      ShowMessage('Error: ' + E.Message);
    end;
  finally
    FreeAndNil(arqIni);
  end;
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

    lerIniFile;
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

procedure Tfrm_login.lerIniFile;
begin
  try
    try
      arqIni := TIniFile.Create('C:\ccsolutions\config\acesso.ini');
      edt_contrato.Text := arqIni.ReadString('ACESSO', 'CONTRATO', 'teste');
      edt_usuario.Text  := arqIni.ReadString('ACESSO', 'USUARIO', 'teste');
    except on E: Exception do
      ShowMessage('Error: ' + E.Message);
    end;
  finally
    FreeAndNil(arqIni);
  end;
end;

function Tfrm_login.StatusServidor(Endereco: String; Porta: Integer): boolean;
var
  verificar: TIdTCPClient;
begin
  Result := False;

  verificar := TIdTCPClient.Create(Nil);
  try
    try
      verificar.Host := Endereco;
      verificar.Port := Porta;
      verificar.ConnectTimeout := 1000;
      verificar.Connect;

      Result := verificar.Connected;
    except on E: Exception do
      ShowMessage('Error: ' + E.Message);
    end;
  finally
    FreeAndNil(verificar);
  end;
end;

procedure Tfrm_login.Timer_1Timer(Sender: TObject);
begin
//  if StatusServidor('127.0.0.1', 80) then begin
//    StatusBar1.Panels[1].Text := 'Online';
//  end else begin
//    StatusBar1.Panels[1].Text := 'Offline'
//  end;
end;

end.
