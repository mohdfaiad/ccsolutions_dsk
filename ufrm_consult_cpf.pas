unit ufrm_consult_cpf;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, ACBrBase,
  ACBrSocket, ACBrConsultaCNPJ, Vcl.ExtCtrls, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, dxLayoutContainer, cxClasses,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl,
  dxSkinsdxBarPainter, dxBar, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  ACBrConsultaCPF, cxImage;

type
  Tfrm_consult_cpf = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Timer1: TTimer;
    dxLayoutControl_1: TdxLayoutControl;
    dxLayoutControl_1Group_Root: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    ActionList_1: TActionList;
    Action_close: TAction;
    Action_export: TAction;
    Action_consult_cpf: TAction;
    Action_captcha: TAction;
    cxImageList_1: TcxImageList;
    dxBarManager_1: TdxBarManager;
    dxBarManager_1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl_1: TdxBarDockControl;
    EditCNPJ: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    EditCaptcha: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    EditRazaoSocial: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    EdtDigitoVerificador: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    EdtIncricao: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    EdtCodCtrlControle: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    EdtEmissao: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    EditDtNasc: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    cxImage1: TcxImage;
    dxLayoutItem13: TdxLayoutItem;
    EditSituacao: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure Action_closeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Action_captchaExecute(Sender: TObject);
    procedure Action_consult_cpfExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_consult_cpf: Tfrm_consult_cpf;

implementation

{$R *.dfm}

procedure Tfrm_consult_cpf.Action_captchaExecute(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0)) + PathDelim + 'captch.png';
    Stream.SaveToFile(ImgArq);
    cxImage1.Picture.LoadFromFile(ImgArq);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure Tfrm_consult_cpf.Action_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_consult_cpf.Action_consult_cpfExecute(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text,
      EditCaptcha.Text) then
    begin
      EditRazaoSocial.Text := ACBrConsultaCPF1.Nome;
      EditSituacao.Text := ACBrConsultaCPF1.Situacao;
      EdtEmissao.Text := ACBrConsultaCPF1.Emissao;
      EdtCodCtrlControle.Text := ACBrConsultaCPF1.CodCtrlControle;
      EdtDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
      EdtIncricao.Text := ACBrConsultaCPF1.DataInscricao;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure Tfrm_consult_cpf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_consult_cpf.Destroy;
  frm_consult_cpf := Nil;
end;

procedure Tfrm_consult_cpf.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  EditCNPJ.SetFocus;
end;

procedure Tfrm_consult_cpf.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Action_captchaExecute(Self);
  EditCaptcha.SetFocus;
end;

end.
