unit ufrm_login;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,
  System.UITypes,
  System.JSON,
  System.JSON.Readers,
  System.JSON.Types,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ImgList,
  Vcl.ActnList,
  Vcl.Menus,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ComCtrls,
  Vcl.Samples.Gauges,

  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinBlack,
  dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinFoggy,
  dxSkinGlassOceans,
  dxSkinHighContrast,
  dxSkiniMaginary,
  dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis,
  dxSkinMetropolisDark,
  dxSkinMoneyTwins,
  dxSkinOffice2007Black,
  dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin,
  dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp,
  dxSkinSharpPlus,
  dxSkinSilver,
  dxSkinSpringTime,
  dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue,
  cxContainer,
  cxEdit,
  cxLabel,
  cxTextEdit,
  dxStatusBar,
  dxRibbonStatusBar,
  dxSkinscxPCPainter,
  dxBarBuiltInMenu,
  cxPC,
  cxButtons,
  dxGDIPlusClasses,
  cxMaskEdit,
  cxButtonEdit,
  dxCore,
  cxDateUtils,
  cxDropDownEdit,
  cxCalendar,
  cxImageList,

  Data.DB,

  ACBrBase,
  ACBrEnterTab,
  ACBrMail,
  ACBrValidador,

  IdHashMessageDigest,

  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,

  ufrm_dm,
  ufrm_main_default,

  u_class_connection,
  u_class_rest_login;

type
  Tfrm_login = class(TForm)
    ActionList_1: TActionList;
    cxImageList_1: TcxImageList;
    pgctrl_login: TcxPageControl;
    cxLabel1: TcxLabel;
    edt_contract: TcxTextEdit;
    cxLabel2: TcxLabel;
    edt_username: TcxTextEdit;
    Image1: TImage;
    tbsht_login: TcxTabSheet;
    cxLabel3: TcxLabel;
    lbl_recovery_password: TcxLabel;
    Action_access: TAction;
    Action_cancel: TAction;
    ACBrEnterTab_1: TACBrEnterTab;
    btn_signin: TcxButton;
    btn_cancel: TcxButton;
    ACBrMail_1: TACBrMail;
    tbsht_alter_password: TcxTabSheet;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    btnAlterPassword: TcxButton;
    btnAlterPasswordCancel: TcxButton;
    edt_password: TcxButtonEdit;
    edt_passwordNew: TcxButtonEdit;
    edt_passwordConfirm: TcxButtonEdit;
    tbsht_recovery_password: TcxTabSheet;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxemail: TcxTextEdit;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxDateNasc: TcxDateEdit;
    mem: TFDMemTable;
    memvalid_user: TLargeintField;
    memctr_usr_cod: TStringField;
    memctr_token: TStringField;
    memctr_cod: TStringField;
    Image2: TImage;
    Image3: TImage;
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_accessExecute(Sender: TObject);
    procedure btnAlterPasswordClick(Sender: TObject);
    procedure btnAlterPasswordCancelClick(Sender: TObject);

  private

  public
    password, ctr_usr_cod: string;

  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

procedure Tfrm_login.Action_accessExecute(Sender: TObject);
begin
  Trest_login.v_method        := '/api/rest/Login/Logins';
  Trest_login.v_parameter     := edt_contract.Text +'/'+ edt_username.Text +'/'+ edt_password.Text;

  Trest_login.Logins(mem);

  if mem.FieldByName('valid_user').AsLargeInt = 1 then begin
    ModalResult := mrOk;
  end else begin
    ShowMessage('Usuário ou Senha inválida!');
    edt_contract.SetFocus;
  end;
end;

procedure Tfrm_login.Action_cancelExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_login.btnAlterPasswordCancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_login.btnAlterPasswordClick(Sender: TObject);
var
  strproc : TFDStoredProc;
begin
  try
    try
      if edt_passwordConfirm.Text = edt_passwordNew.Text then begin
        password := edt_passwordConfirm.Text;

        strproc := TFDStoredProc.Create(Self);
        strproc.Connection := frm_dm.connCCS;
        strproc.StoredProcName := 'proc_contract_user_alter_password';
        strproc.Prepare;

        strproc.ParamByName('p_ctr_token').AsString         := Tconnection.ctr_token;
        strproc.ParamByName('p_ctr_usr_cod').AsString       := ctr_usr_cod;
        strproc.ParamByName('p_ctr_usr_password').AsString  := password;
        strproc.ExecProc;

        ShowMessage('Senha Alterada com Sucesso!');
        Close;
      end else begin
        ShowMessage('Erro ao Confirmar Senhas! Digite novamente.');
      end;
    except on E: Exception do
    end;
  finally
  end;
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
  if Self.Tag = 99 then begin
    tbsht_login.Show;
    edt_contract.Clear;
    edt_username.Clear;
    edt_password.Clear;

    pgctrl_login.Pages[0].TabVisible := True;
    pgctrl_login.Pages[1].TabVisible := False;
    pgctrl_login.Pages[2].TabVisible := False;
    tbsht_login.Show;
    edt_contract.SetFocus;
  end;

  if Self.Tag = 98 then begin
    tbsht_alter_password.Show;;
    edt_passwordNew.Clear;
    edt_passwordConfirm.Clear;

    pgctrl_login.Pages[0].TabVisible := False;
    pgctrl_login.Pages[1].TabVisible := True;
    pgctrl_login.Pages[2].TabVisible := False;
    tbsht_alter_password.Show;
    edt_passwordNew.SetFocus;
  end;
end;

end.
