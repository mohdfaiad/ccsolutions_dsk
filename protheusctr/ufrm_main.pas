unit ufrm_main;

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

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ImgList,
  Vcl.ActnList,

  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxRibbonSkins,
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
  dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm,
  cxContainer,
  cxEdit,
  dxSkinscxPCPainter,
  dxSkinsdxBarPainter,
  cxLocalization,
  dxSkinsForm,
  dxBar,
  dxStatusBar,
  dxRibbonStatusBar,
  cxLabel,
  dxGalleryControl,
  dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView,
  cxClasses,
  dxRibbon,
  dxGDIPlusClasses,
  cxImageList,

  ufrm_main_default,
  ufrm_client,
  ufrm_login,
  ufrm_phonebook,
  ufrm_contract,
  ufrm_enterprise,
  ufrm_contract_user,
  ufrm_reseller,
  ufrm_product,
  ufrm_client_contract,
  ufrm_report,
  ufrm_proposal_contract, dxSkinTheBezier;

type
  Tfrm_main = class(Tfrm_main_default)
    dxBarManager_1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    Action_phonebook: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    Action_contract: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    Action_enterprise: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    Action_client: TAction;
    Action_contract_user: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    Action_reseller: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    Action_product: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarManager_1Bar3: TdxBar;
    Action_client_contract: TAction;
    dxBarManager_1Bar4: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    Action_report: TAction;
    Action_proposal_contract: TAction;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure Action_contractExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_clientExecute(Sender: TObject);
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_resellerExecute(Sender: TObject);
    procedure Action_productExecute(Sender: TObject);
    procedure Action_client_contractExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_proposal_contractExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

procedure Tfrm_main.Action_reportExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_report) then begin
    frm_report := Tfrm_report.Create(Self);
    frm_report.Height := Bevel_1.Height;
    frm_report.Width := Bevel_1.Width;
    frm_report.Show;
  end else begin
    frm_report.WindowState := wsNormal;
    frm_report.Show;
  end;
end;

procedure Tfrm_main.Action_resellerExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_reseller) then begin
    frm_reseller := Tfrm_reseller.Create(Self);
    frm_reseller.Height := Bevel_1.Height;
    frm_reseller.Width := Bevel_1.Width;
    frm_reseller.Show;
  end else begin
    frm_reseller.WindowState := wsNormal;
    frm_reseller.Show;
  end;
end;

procedure Tfrm_main.Action_clientExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_client) then begin
    frm_client := Tfrm_client.Create(Self);
    frm_client.Height := Bevel_1.Height;
    frm_client.Width := Bevel_1.Width;
    frm_client.Show;
  end else begin
    frm_client.WindowState := wsNormal;
    frm_client.Show;
  end;
end;

procedure Tfrm_main.Action_client_contractExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_client_contract) then begin
    frm_client_contract := Tfrm_client_contract.Create(Self);
    frm_client_contract.Height := Bevel_1.Height;
    frm_client_contract.Width := Bevel_1.Width;
    frm_client_contract.Show;
  end else begin
    frm_client_contract.WindowState := wsNormal;
    frm_client_contract.Show;
  end;
end;

procedure Tfrm_main.Action_contractExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_contract) then begin
    frm_contract := Tfrm_contract.Create(Self);
    frm_contract.Height := Bevel_1.Height;
    frm_contract.Width := Bevel_1.Width;
    frm_contract.Show;
  end else begin
    frm_contract.WindowState := wsNormal;
    frm_contract.Show;
  end;
end;

procedure Tfrm_main.Action_contract_userExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_contract_user) then begin
    frm_contract_user := Tfrm_contract_user.Create(Self);
    frm_contract_user.Height := Bevel_1.Height;
    frm_contract_user.Width := Bevel_1.Width;
    frm_contract_user.Show;
  end else begin
    frm_contract_user.WindowState := wsNormal;
    frm_contract_user.Show;
  end;
end;

procedure Tfrm_main.Action_enterpriseExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_enterprise) then begin
    frm_enterprise := Tfrm_enterprise.Create(Self);
    frm_enterprise.Height := Bevel_1.Height;
    frm_enterprise.Width := Bevel_1.Width;
    frm_enterprise.Show;
  end else begin
    frm_enterprise.WindowState := wsNormal;
    frm_enterprise.Show;
  end;
end;

procedure Tfrm_main.Action_phonebookExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_phonebook) then begin
    frm_phonebook := Tfrm_phonebook.Create(Self);
    frm_phonebook.Height := Bevel_1.Height;
    frm_phonebook.Width := Bevel_1.Width;
    frm_phonebook.Show;
  end else begin
    frm_phonebook.WindowState := wsNormal;
    frm_phonebook.Show;
  end;
end;

procedure Tfrm_main.Action_productExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_product) then begin
    frm_product := Tfrm_product.Create(Self);
    frm_product.Height := Bevel_1.Height;
    frm_product.Width := Bevel_1.Width;
    frm_product.Show;
  end else begin
    frm_product.WindowState := wsNormal;
    frm_product.Show;
  end;
end;

procedure Tfrm_main.Action_proposal_contractExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_proposal_contract) then begin
    frm_proposal_contract := Tfrm_proposal_contract.Create(Self);
    frm_proposal_contract.Height := Bevel_1.Height;
    frm_proposal_contract.Width := Bevel_1.Width;
    frm_proposal_contract.Show;
  end else begin
    frm_proposal_contract.WindowState := wsNormal;
    frm_proposal_contract.Show;
  end;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  inherited;
  frm_login := Tfrm_login.Create(Self);
  frm_login.ShowModal;

  if frm_login.ModalResult <> mrOk then begin
    MessageDlg('Você não se autenticou. A aplicação será encerrada!', mtWarning, [mbOK], 0);
    Application.Terminate;
  end;
end;

end.
