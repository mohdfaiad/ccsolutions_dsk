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
  System.UItypes,

  Vcl.ExtCtrls,
  Vcl.ImgList,
  Vcl.ActnList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

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

  ufrm_login,
  ufrm_contract,
  ufrm_contract_user,
  ufrm_enterprise,
  ufrm_client,
  ufrm_supplier,
  ufrm_phonebook,
  ufrm_report,
  ufrm_ticket_category,
  ufrm_ticket_type,
  ufrm_ticket,
  ufrm_reseller,
  ufrm_ticket_priority,
  ufrm_ticket_interaction,
  ufrm_main_default;

type
  Tfrm_main = class(Tfrm_main_default)
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    Action_contract: TAction;
    Action_contract_user: TAction;
    Action_enterprise: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    Action_client: TAction;
    Action_supplier: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager_1Bar2: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    Action_phonebook: TAction;
    dxBarManager_1Bar3: TdxBar;
    dxBarManager_1Bar4: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    Action_report: TAction;
    Action_ticket_type: TAction;
    Action_ticket_category: TAction;
    Action_ticket: TAction;
    dxBarManager_1Bar5: TdxBar;
    Action_reseller: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    Action_ticket_priority: TAction;
    Action_ticket_interaction: TAction;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_contractExecute(Sender: TObject);
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_clientExecute(Sender: TObject);
    procedure Action_supplierExecute(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_ticket_typeExecute(Sender: TObject);
    procedure Action_ticket_categoryExecute(Sender: TObject);
    procedure Action_ticketExecute(Sender: TObject);
    procedure Action_resellerExecute(Sender: TObject);
    procedure Action_ticket_priorityExecute(Sender: TObject);
    procedure Action_ticket_interactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

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

procedure Tfrm_main.Action_ticketExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_ticket) then begin
    frm_ticket := Tfrm_ticket.Create(Self);
    frm_ticket.Height := Bevel_1.Height;
    frm_ticket.Width := Bevel_1.Width;
    frm_ticket.Show;
  end else begin
    frm_ticket.WindowState := wsNormal;
    frm_ticket.Show;
  end;
end;

procedure Tfrm_main.Action_ticket_categoryExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_ticket_category) then begin
    frm_ticket_category := Tfrm_ticket_category.Create(Self);
    frm_ticket_category.Height := Bevel_1.Height;
    frm_ticket_category.Width := Bevel_1.Width;
    frm_ticket_category.Show;
  end else begin
    frm_ticket_category.WindowState := wsNormal;
    frm_ticket_category.Show;
  end;
end;

procedure Tfrm_main.Action_ticket_interactionExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_ticket_interaction) then begin
    frm_ticket_interaction := Tfrm_ticket_interaction.Create(Self);
    frm_ticket_interaction.Height := Bevel_1.Height;
    frm_ticket_interaction.Width := Bevel_1.Width;
    frm_ticket_interaction.Show;
  end else begin
    frm_ticket_interaction.WindowState := wsNormal;
    frm_ticket_interaction.Show;
  end;
end;

procedure Tfrm_main.Action_ticket_priorityExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_ticket_priority) then begin
    frm_ticket_priority := Tfrm_ticket_priority.Create(Self);
    frm_ticket_priority.Height := Bevel_1.Height;
    frm_ticket_priority.Width := Bevel_1.Width;
    frm_ticket_priority.Show;
  end else begin
    frm_ticket_priority.WindowState := wsNormal;
    frm_ticket_priority.Show;
  end;
end;

procedure Tfrm_main.Action_ticket_typeExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_ticket_type) then begin
    frm_ticket_type := Tfrm_ticket_type.Create(Self);
    frm_ticket_type.Height := Bevel_1.Height;
    frm_ticket_type.Width := Bevel_1.Width;
    frm_ticket_type.Show;
  end else begin
    frm_ticket_type.WindowState := wsNormal;
    frm_ticket_type.Show;
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
