unit ufrm_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_main_default, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, System.UITypes,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  cxContainer, cxEdit, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, dxSkinsForm,
  dxBar, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, cxClasses,
  dxRibbon, dxGDIPlusClasses, Vcl.ExtCtrls, dxBevel, ACBrBase, ACBrDownload,
  cxLocalization;

type
  Tfrm_main = class(Tfrm_main_default)
    dxBarLargeButton1: TdxBarLargeButton;
    Action_contract: TAction;
    Action_contract_user: TAction;
    Action_enterprise: TAction;
    Action_client: TAction;
    Action_supplier: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager_1Bar2: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    Action_bank: TAction;
    Action_receipt: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarManager_1Bar3: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    Action_phonebook: TAction;
    dxBarManager_1Bar4: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    Action_bill_pay: TAction;
    Action_bill_receive: TAction;
    dxBarManager_1Bar5: TdxBar;
    Action_report: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    Action_account_type: TAction;
    Action_account_plan_synthetic: TAction;
    Action_cost_center_group: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    rbpopmenu_1: TdxRibbonPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton14: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_contractExecute(Sender: TObject);
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_clientExecute(Sender: TObject);
    procedure Action_supplierExecute(Sender: TObject);
    procedure Action_bankExecute(Sender: TObject);
    procedure Action_receiptExecute(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure Action_bill_payExecute(Sender: TObject);
    procedure Action_bill_receiveExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_account_typeExecute(Sender: TObject);
    procedure Action_account_plan_syntheticExecute(Sender: TObject);
    procedure Action_cost_center_groupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses ufrm_login, ufrm_bank, ufrm_client, ufrm_contract, ufrm_contract_user,
  ufrm_enterprise, ufrm_phonebook, ufrm_receipt, ufrm_supplier, ufrm_billpay,
  ufrm_billreceive, ufrm_report, ufrm_account_type, ufrm_account_synthetic,
  ufrm_cost_center;

procedure Tfrm_main.Action_account_plan_syntheticExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_account_synthetic) then
  begin
    frm_account_synthetic := Tfrm_account_synthetic.Create(Self);
    frm_account_synthetic.Height := Bevel_1.Height;
    frm_account_synthetic.Width := Bevel_1.Width;
    frm_account_synthetic.Show;
  end
  else
  begin
    frm_account_synthetic.WindowState := wsNormal;
    frm_account_synthetic.Show;
  end;
end;

procedure Tfrm_main.Action_account_typeExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_account_type) then
  begin
    frm_account_type := Tfrm_account_type.Create(Self);
    frm_account_type.Height := Bevel_1.Height;
    frm_account_type.Width := Bevel_1.Width;
    frm_account_type.Show;
  end
  else
  begin
    frm_account_type.WindowState := wsNormal;
    frm_account_type.Show;
  end;
end;

procedure Tfrm_main.Action_bankExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_bank) then
  begin
    frm_bank := Tfrm_bank.Create(Self);
    frm_bank.Height := Bevel_1.Height;
    frm_bank.Width := Bevel_1.Width;
    frm_bank.Show;
  end
  else
  begin
    frm_bank.WindowState := wsNormal;
    frm_bank.Show;
  end;
end;

procedure Tfrm_main.Action_bill_payExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_billpay) then
  begin
    frm_billpay := Tfrm_billpay.Create(Self);
    frm_billpay.Height := Bevel_1.Height;
    frm_billpay.Width := Bevel_1.Width;
    frm_billpay.Show;
  end
  else
  begin
    frm_billpay.WindowState := wsNormal;
    frm_billpay.Show;
  end;
end;

procedure Tfrm_main.Action_bill_receiveExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_billreceive) then
  begin
    frm_billreceive := Tfrm_billreceive.Create(Self);
    frm_billreceive.Height := Bevel_1.Height;
    frm_billreceive.Width := Bevel_1.Width;
    frm_billreceive.Show;
  end
  else
  begin
    frm_billreceive.WindowState := wsNormal;
    frm_billreceive.Show;
  end;
end;

procedure Tfrm_main.Action_clientExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_client) then
  begin
    frm_client := Tfrm_client.Create(Self);
    frm_client.Height := Bevel_1.Height;
    frm_client.Width := Bevel_1.Width;
    frm_client.Show;
  end
  else
  begin
    frm_client.WindowState := wsNormal;
    frm_client.Show;
  end;
end;

procedure Tfrm_main.Action_contractExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_contract) then
  begin
    frm_contract := Tfrm_contract.Create(Self);
    frm_contract.Height := Bevel_1.Height;
    frm_contract.Width := Bevel_1.Width;
    frm_contract.Show;
  end
  else
  begin
    frm_contract.WindowState := wsNormal;
    frm_contract.Show;
  end;
end;

procedure Tfrm_main.Action_contract_userExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_contract_user) then
  begin
    frm_contract_user := Tfrm_contract_user.Create(Self);
    frm_contract_user.Height := Bevel_1.Height;
    frm_contract_user.Width := Bevel_1.Width;
    frm_contract_user.Show;
  end
  else
  begin
    frm_contract_user.WindowState := wsNormal;
    frm_contract_user.Show;
  end;
end;

procedure Tfrm_main.Action_cost_center_groupExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_cost_center) then
  begin
    frm_cost_center := Tfrm_cost_center.Create(Self);
    frm_cost_center.Height := Bevel_1.Height;
    frm_cost_center.Width := Bevel_1.Width;
    frm_cost_center.Show;
  end
  else
  begin
    frm_cost_center.WindowState := wsNormal;
    frm_cost_center.Show;
  end;
end;

procedure Tfrm_main.Action_enterpriseExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_enterprise) then
  begin
    frm_enterprise := Tfrm_enterprise.Create(Self);
    frm_enterprise.Height := Bevel_1.Height;
    frm_enterprise.Width := Bevel_1.Width;
    frm_enterprise.Show;
  end
  else
  begin
    frm_enterprise.WindowState := wsNormal;
    frm_enterprise.Show;
  end;
end;

procedure Tfrm_main.Action_phonebookExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_phonebook) then
  begin
    frm_phonebook := Tfrm_phonebook.Create(Self);
    frm_phonebook.Height := Bevel_1.Height;
    frm_phonebook.Width := Bevel_1.Width;
    frm_phonebook.Show;
  end
  else
  begin
    frm_phonebook.WindowState := wsNormal;
    frm_phonebook.Show;
  end;
end;

procedure Tfrm_main.Action_receiptExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_receipt) then
  begin
    frm_receipt := Tfrm_receipt.Create(Self);
    frm_receipt.Height := Bevel_1.Height;
    frm_receipt.Width := Bevel_1.Width;
    frm_receipt.Show;
  end
  else
  begin
    frm_receipt.WindowState := wsNormal;
    frm_receipt.Show;
  end;
end;

procedure Tfrm_main.Action_reportExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_report) then
  begin
    frm_report := Tfrm_report.Create(Self);
    frm_report.Height := Bevel_1.Height;
    frm_report.Width := Bevel_1.Width;
    frm_report.Show;
  end
  else
  begin
    frm_report.WindowState := wsNormal;
    frm_report.Show;
  end;
end;

procedure Tfrm_main.Action_supplierExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_supplier) then
  begin
    frm_supplier := Tfrm_supplier.Create(Self);
    frm_supplier.Height := Bevel_1.Height;
    frm_supplier.Width := Bevel_1.Width;
    frm_supplier.Show;
  end
  else
  begin
    frm_supplier.WindowState := wsNormal;
    frm_supplier.Show;
  end;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  inherited;
  frm_login := Tfrm_login.Create(Self);
  frm_login.ShowModal;

  if frm_login.ModalResult <> mrOk then
  begin
    MessageDlg('Você não se autenticou. A aplicação será encerrada!', mtWarning,
      [mbOK], 0);
    Application.Terminate;
  end;
end;

end.
