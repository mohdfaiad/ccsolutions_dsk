unit ufrm_main_default;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImage, dxGDIPlusClasses, Vcl.ExtCtrls,
  dxSkinscxPCPainter, dxBevel, ACBrBase, ACBrDownload, cxLocalization,
  Vcl.StdCtrls, Vcl.Buttons,uThred_logged;

type
  Tfrm_main_default = class(TdxRibbonForm)
    dxBarManager_1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab_1: TdxRibbonTab;
    dxRibbonBackstageView1: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbonBackstageViewGalleryControl1: TdxRibbonBackstageViewGalleryControl;
    cxLabel1: TcxLabel;
    dxSkinController_1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    dxRibbon1Tab_2: TdxRibbonTab;
    dxRibbon1Tab_3: TdxRibbonTab;
    dxRibbon1Tab_4: TdxRibbonTab;
    dxRibbon1Tab_5: TdxRibbonTab;
    ActionList_1: TActionList;
    cxImageList_1: TcxImageList;
    Image_1: TImage;
    dxBarManager_1Bar1: TdxBar;
    dxRibbonBackstageViewTabSheet2: TdxRibbonBackstageViewTabSheet;
    Bevel_1: TBevel;
    cxLocalizer_1: TcxLocalizer;
    Timer_1: TTimer;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxRibbonStatusBar1Panels3Click(Sender: TObject);
    procedure Timer_1Timer(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  procedure controleAcesso(form:TForm; ctr_usr_id:Integer;ctr_usr_adm:String);
  procedure insertControle(form:TForm;module:string);
  end;

var
  frm_main_default: Tfrm_main_default;
  logado,bloqueado,ativa:Boolean;


implementation

{$R *.dfm}

uses ufrm_dm,ufrm_search_enterprise;

{ TForm1 }

procedure Tfrm_main_default.controleAcesso(form:TForm; ctr_usr_id: Integer;
  ctr_usr_adm: String);
var
i:integer;
begin
 with frm_dm.qry,sql do
  begin

  if ctr_usr_adm <> 'S' then
   begin
    for I := 0 to form.ComponentCount - 1 do
     begin
      if form.Components[i] is TAction then
       if TAction(form.Components[i]).Tag <> 1 then
        TAction(form.Components[i]).Enabled:=false;
     end;
   end;
  end;
end;

procedure Tfrm_main_default.dxRibbonStatusBar1Panels3Click(Sender: TObject);
begin
 Application.CreateForm(Tfrm_search_enterprise,frm_search_enterprise);
 frm_search_enterprise.empresa:=dxRibbonStatusBar1.Panels[3].Text;
 frm_search_enterprise.ShowModal;
 dxRibbonStatusBar1.Panels[3].Text:=frm_search_enterprise.empresa;
 frm_search_enterprise.Destroy;

end;

procedure Tfrm_main_default.FormCreate(Sender: TObject);

begin
  DisableAero := True;
  logado:=true;
  bloqueado:=false;
  Timer_1.Enabled:=false;

  // VERIFICA SE EXISTE O ARQUIVO DENTRO DA PASTA
  if FileExists('c:\development\Tradu��oDev.ini') then
  begin
    cxLocalizer_1.LoadFromFile('c:\development\Tradu��oDev.ini');
    cxLocalizer_1.LanguageIndex := 1; // MUDA DE LINGUAGEM
    cxLocalizer_1.Active := TRUE;     // ATIVA O COMPONENTE
  end;

 end;
procedure Tfrm_main_default.FormDeactivate(Sender: TObject);
begin
//Timer_1.Enabled:=false;
end;

procedure Tfrm_main_default.FormShow(Sender: TObject);
begin
    dxRibbonStatusBar1.Panels[1].Text :=FormatFloat('0000',frm_dm.qry_signinctr_id.AsInteger);
    dxRibbonStatusBar1.Panels[3].Text := IntToStr(frm_dm.qry_enterpriseent_id.AsInteger)+' - '+frm_dm.qry_enterpriseent_last_name.AsString;
    dxRibbonStatusBar1.Panels[5].Text :=frm_dm.qry_signinctr_usr_username.AsString;
    dxRibbonStatusBar1.Panels[7].Text :=FormatDateTime('dd/MM/yyyy',date);
    Timer_1.Enabled:=True;
end;

procedure Tfrm_main_default.insertControle(form:TForm;module:string);
var
  i: Integer;
begin
(*
with frm_dm.qry,sql do
 begin
  Close;
  SQL.text := 'delete from system_action';
  Prepare;
  ExecSQL;

  Close;
  SQL.text := 'insert into system_action(sys_act_name,sys_act_subtitle,sys_act_class) ' +
              ' values (:sys_act_name,:sys_act_subtitle,:sys_act_class)';
  i := 0;
  for I := 0 to frmPrincipal.ComponentCount -1 do
   begin
    if Self.Components[i] is TAction then
     begin
      if (TAction(self.Components[i]).tag = 0) and (TAction(self.Components[i]).Caption <> '-') then
       begin
        Params[0].Value := TAction(Self.Components[i]).name;
        Params[1].Value := TAction(Self.Components[i]).Hint;
        Params[2].Value := TAction(self.Components[i]).Category;
        Params[3].Value := 'A';
        Prepare;
        ExecSQL;
       end;
     end;

    if Self.Components[i] is TMenuItem then
     begin
      if (TMenuItem(Self.Components[i]).tag=0) and (TMenuItem(Self.Components[i]).caption<>'-') then
       begin
        Params[0].Value := lowercase(TMenuItem(Self.Components[i]).name);
        Params[1].Value := TMenuItem(Self.Components[i]).Hint;
        Params[2].Value := TMenuItem(Self.Components[i]).Caption;
        Params[3].Value := 'B';
        Prepared;
        ExecSQL;
       end;
     end;
  end;
 end;
  *)
end;


procedure Tfrm_main_default.Timer_1Timer(Sender: TObject);
var
 ThreadLogado:TLogado;
begin
if not frm_dm.qry_signin.Active then
exit;

  ThreadLogado:=TLogado.Create(True);
  ThreadLogado.FreeOnTerminate:=True;
  ThreadLogado.Resume;



if not logado then
 begin
  Timer_1.Enabled:=false;
  Application.MessageBox('Usu�rio foi desconectado pelo administrador do sistema!','AVISO', MB_OK + MB_ICONWARNING);
  Application.Terminate;
 end;

if  bloqueado then
 begin
  Timer_1.Enabled:=false;
  Application.MessageBox('Usu�rio foi bloaqueado pelo administrador do sistema!','AVISO', MB_OK + MB_ICONWARNING);
  Application.Terminate;
 end;

end;

end.

                 `
