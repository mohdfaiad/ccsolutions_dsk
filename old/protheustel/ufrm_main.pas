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

  Vcl.ImgList,
  Vcl.ActnList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Menus,
  Vcl.StdCtrls,

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
  dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm,
  cxContainer,
  cxEdit,
  dxSkinscxPCPainter,
  dxSkinsdxBarPainter,
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
  dxBevel,
  dxGDIPlusClasses,
  cxLocalization,
  cxImageList,

  ACBrBase,

  ufrm_main_default,

  ufrm_login,
  ufrm_client,
  ufrm_contract,
  ufrm_contract_user,
  ufrm_enterprise,
  ufrm_phonebook,
  ufrm_report,
  ufrm_supplier,
  ufrm_voip_server,
  ufrm_import_astpp,
  ufrm_print_astpp,
  ufrm_import_sippulse,
  ufrm_did,
  ufrm_provider, dxSkinTheBezier;

type
  Tfrm_main = class(Tfrm_main_default)
    Action_contract: TAction;
    Action_contract_user: TAction;
    Action_enterprise: TAction;
    Action_client: TAction;
    Action_supplier: TAction;
    Action_phonebook: TAction;
    Action_report: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager_1Bar2: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarManager_1Bar4: TdxBar;
    rbpopmenu_1: TdxRibbonPopupMenu;
    dxBarButton1: TdxBarButton;
    Action_voip_server: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButtonContaTelefonica: TdxBarLargeButton;
    Action_import_astpp: TAction;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    Action_import_sippulse: TAction;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarManager_1Bar5: TdxBar;
    Action_invoice_unified: TAction;
    Action_invoice_astpp: TAction;
    Action_invoice_sippulse: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    Action_provider: TAction;
    Action_did: TAction;
    dxBarButton9: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_contractExecute(Sender: TObject);
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_clientExecute(Sender: TObject);
    procedure Action_supplierExecute(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_voip_serverExecute(Sender: TObject);
    procedure Action_import_astppExecute(Sender: TObject);
    procedure Action_invoice_astppExecute(Sender: TObject);
    procedure Action_import_sippulseExecute(Sender: TObject);
    procedure Action_providerExecute(Sender: TObject);
    procedure Action_didExecute(Sender: TObject);
  private

  public

  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

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

procedure Tfrm_main.Action_providerExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_provider) then begin
    frm_provider := Tfrm_provider.Create(Self);
    frm_provider.Height := Bevel_1.Height;
    frm_provider.Width := Bevel_1.Width;
    frm_provider.Show;
  end else begin
    frm_provider.WindowState := wsNormal;
    frm_provider.Show;
  end;
end;

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

procedure Tfrm_main.Action_didExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_did) then begin
    frm_did := Tfrm_did.Create(Self);
    frm_did.Height := Bevel_1.Height;
    frm_did.Width := Bevel_1.Width;
    frm_did.Show;
  end else begin
    frm_did.WindowState := wsNormal;
    frm_did.Show;
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

procedure Tfrm_main.Action_import_astppExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_import_astpp) then begin
    frm_import_astpp := Tfrm_import_astpp.Create(Self);
    frm_import_astpp.Height := Bevel_1.Height;
    frm_import_astpp.Width := Bevel_1.Width;
    frm_import_astpp.Show;
  end else begin
    frm_import_astpp.WindowState := wsNormal;
    frm_import_astpp.Show;
  end;
end;

procedure Tfrm_main.Action_import_sippulseExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_import_sippulse) then begin
    frm_import_sippulse := Tfrm_import_sippulse.Create(Self);
    frm_import_sippulse.Height := Bevel_1.Height;
    frm_import_sippulse.Width := Bevel_1.Width;
    frm_import_sippulse.Show;
  end else begin
    frm_import_sippulse.WindowState := wsNormal;
    frm_import_sippulse.Show;
  end;
end;

procedure Tfrm_main.Action_invoice_astppExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_print_astpp) then begin
    frm_print_astpp := Tfrm_print_astpp.Create(Self);
    frm_print_astpp.Height := Bevel_1.Height;
    frm_print_astpp.Width := Bevel_1.Width;
    frm_print_astpp.Show;
  end else begin
    frm_print_astpp.WindowState := wsNormal;
    frm_print_astpp.Show;
  end;
end;

procedure Tfrm_main.Action_supplierExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_supplier) then begin
    frm_supplier := Tfrm_supplier.Create(Self);
    frm_supplier.Height := Bevel_1.Height;
    frm_supplier.Width := Bevel_1.Width;
    frm_supplier.Show;
  end else begin
    frm_supplier.WindowState := wsNormal;
    frm_supplier.Show;
  end;
end;

procedure Tfrm_main.Action_voip_serverExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_voip_server) then begin
    frm_voip_server := Tfrm_voip_server.Create(Self);
    frm_voip_server.Height := Bevel_1.Height;
    frm_voip_server.Width := Bevel_1.Width;
    frm_voip_server.Show;
  end else begin
    frm_voip_server.WindowState := wsNormal;
    frm_voip_server.Show;
  end;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  inherited;
  modulo:='TELEFONIA';
  frm_login := Tfrm_login.Create(Self);
  frm_login.ShowModal;

  if frm_login.ModalResult <> mrOk then begin
    MessageDlg('Você não se autenticou. A aplicação será encerrada!', mtWarning, [mbOK], 0);
    Application.Terminate;
  end;
end;

end.
