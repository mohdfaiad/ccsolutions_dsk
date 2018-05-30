unit ufrm_consult_cnpj;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Vcl.ExtCtrls,
  ACBrBase, ACBrSocket, ACBrConsultaCPF, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, dxLayoutContainer, cxClasses,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxImage, cxMemo,
  ACBrConsultaCNPJ, dxSkinsdxBarPainter, cxShellComboBox, cxBarEditItem, dxBar,
  dxBarExtItems, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList;

type
  Tfrm_consult_cnpj = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Timer1: TTimer;
    dxLayoutControl_1: TdxLayoutControl;
    dxLayoutControl_1Group_Root: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    EditCaptcha: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    EditCNPJ: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    ButAtualizarCaptcha: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    ButBuscar: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    EditTipo: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    EditFantasia: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    EditComplemento: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    EditEmail: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    EditUF: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    EditSituacao: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    EditCNAE1: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    EditCidade: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    EditBairro: TcxTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    EditNumero: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    EditEndereco: TcxTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    EditTelefone: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    EditCEP: TcxTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    EditRazaoSocial: TcxTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    EditAbertura: TcxTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    ListCNAE2: TcxMemo;
    dxLayoutItem21: TdxLayoutItem;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    Image1: TImage;
    dxLayoutItem1: TdxLayoutItem;
    dxBarDockControl_1: TdxBarDockControl;
    dxBarManager_1: TdxBarManager;
    cxImageList_1: TcxImageList;
    ActionList_1: TActionList;
    Action_close: TAction;
    Action_export: TAction;
    Action_consult_cnpj: TAction;
    dxBarManager_1Bar1: TdxBar;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Action_captcha: TAction;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_captchaExecute(Sender: TObject);
    procedure Action_consult_cnpjExecute(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_consult_cnpj: Tfrm_consult_cnpj;

implementation

uses
  JPEG
{$IFDEF SUPPORT_PNG}
    , pngimage
{$ENDIF}
    ;

{$R *.dfm}

procedure Tfrm_consult_cnpj.Action_captchaExecute(Sender: TObject);
var
  Stream: TMemoryStream;
  // Jpg: TJPEGImage;
{$IFDEF DELPHI2009_UP}
  png: TPngImage;
{$ELSE}
  ImgArq: String;
{$ENDIF}
begin
//{$IFNDEF SUPPORT_PNG}
//  ShowMessage
//    ('Atenção: Seu Delphi não dá suporte nativo a imagens PNG. Queira verificar o código fonte deste exemplo para saber como proceder.');
//  Exit;
//{$ENDIF}
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
{$IFDEF DELPHI2009_UP}
    png := TPngImage.Create;
    try
      png.LoadFromStream(Stream);
      Image1.Picture.Assign(png);
    finally
      png.Free;
    end;
{$ELSE}
    ImgArq := ExtractFilePath(ParamStr(0)) + PathDelim + 'captch.png';
    Stream.SaveToFile(ImgArq);
    Image1.Picture.LoadFromFile(ImgArq);
{$ENDIF}
    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure Tfrm_consult_cnpj.Action_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_consult_cnpj.Action_consult_cnpjExecute(Sender: TObject);
var
  I: Integer;
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(EditCNPJ.Text, EditCaptcha.Text) then
    begin
      EditTipo.Text := ACBrConsultaCNPJ1.EmpresaTipo;
      EditRazaoSocial.Text := ACBrConsultaCNPJ1.RazaoSocial;
      EditAbertura.Text := DateToStr(ACBrConsultaCNPJ1.Abertura);
      EditFantasia.Text := ACBrConsultaCNPJ1.Fantasia;
      EditEndereco.Text := ACBrConsultaCNPJ1.Endereco;
      EditNumero.Text := ACBrConsultaCNPJ1.Numero;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditBairro.Text := ACBrConsultaCNPJ1.Bairro;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditCidade.Text := ACBrConsultaCNPJ1.Cidade;
      EditUF.Text := ACBrConsultaCNPJ1.UF;
      EditCEP.Text := ACBrConsultaCNPJ1.CEP;
      EditSituacao.Text := ACBrConsultaCNPJ1.Situacao;
      EditCNAE1.Text := ACBrConsultaCNPJ1.CNAE1;
      EditEmail.Text := ACBrConsultaCNPJ1.EndEletronico;
      EditTelefone.Text := ACBrConsultaCNPJ1.Telefone;

      ListCNAE2.Clear;
      for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
        ListCNAE2.Lines.Add(ACBrConsultaCNPJ1.CNAE2[I]);
    end;
  end;
end;

procedure Tfrm_consult_cnpj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_consult_cnpj.Destroy;
  frm_consult_cnpj := Nil;
end;

procedure Tfrm_consult_cnpj.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure Tfrm_consult_cnpj.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Action_captchaExecute(Self);
  // LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCNPJ.SetFocus;
end;

end.
