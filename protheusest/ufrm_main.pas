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
  cxContainer, cxEdit, dxSkinscxPCPainter, dxSkinsdxBarPainter, ACBrBase,
  ACBrDownload, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  dxSkinsForm, dxBar, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, cxClasses,
  dxRibbon, dxBevel, dxGDIPlusClasses, Vcl.ExtCtrls, cxLocalization;

type
  Tfrm_main = class(Tfrm_main_default)
    Action_contrat: TAction;
    Action_contract_user: TAction;
    Action_enterprise: TAction;
    Action_client: TAction;
    Action_supplier: TAction;
    Action_product: TAction;
    Action_phonebook: TAction;
    Action_report: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager_1Bar2: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarManager_1Bar4: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    Action_brand: TAction;
    Action_ncm: TAction;
    Action_manufacturer: TAction;
    Action_product_unit: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    rbpopmenu_1: TdxRibbonPopupMenu;
    Action_product_class: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    Action_product_department: TAction;
    Action_purchase_order: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    Action_stock: TAction;
    dxBarLargeButton13: TdxBarLargeButton;
    rbpopmenu_2: TdxRibbonPopupMenu;
    Action_product_entry: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    Action_stock_iten: TAction;
    Action_stock_transfer: TAction;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    Action_request: TAction;
    Action_stock_out: TAction;
    dxBarButton4: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_contratExecute(Sender: TObject);
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_clientExecute(Sender: TObject);
    procedure Action_supplierExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure Action_productExecute(Sender: TObject);
    procedure Action_brandExecute(Sender: TObject);
    procedure Action_ncmExecute(Sender: TObject);
    procedure Action_manufacturerExecute(Sender: TObject);
    procedure Action_product_unitExecute(Sender: TObject);
    procedure Action_product_classExecute(Sender: TObject);
    procedure Action_product_departmentExecute(Sender: TObject);
    procedure Action_purchase_orderExecute(Sender: TObject);
    procedure Action_stockExecute(Sender: TObject);
    procedure Action_product_entryExecute(Sender: TObject);
    procedure Action_stock_itenExecute(Sender: TObject);
    procedure Action_stock_transferExecute(Sender: TObject);
    procedure Action_requestExecute(Sender: TObject);
    procedure Action_stock_outExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses ufrm_login, ufrm_brand, ufrm_client, ufrm_contract, ufrm_contract_user,
  ufrm_enterprise, ufrm_phonebook, ufrm_product, ufrm_supplier, ufrm_report,
  ufrm_ncm, ufrm_manufacturer, ufrm_product_unit, ufrm_product_class,
  ufrm_product_department, ufrm_purchase_order, ufrm_stock, uclass_frm_open,
  ufrm_stock_entry, ufrm_stock_iten, ufrm_stock_transfer, ufrm_request,
  ufrm_stock_out;

procedure Tfrm_main.Action_brandExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_brand) then
  begin
    frm_brand := Tfrm_brand.Create(Self);
    frm_brand.Height := Bevel_1.Height;
    frm_brand.Width := Bevel_1.Width;
    frm_brand.Show
  end
  else
  begin
    frm_brand.WindowState := wsNormal;
    frm_brand.Show;
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
    frm_client.Show
  end
  else
  begin
    frm_client.WindowState := wsNormal;
    frm_client.Show;
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
    frm_contract_user.Show
  end
  else
  begin
    frm_contract_user.WindowState := wsNormal;
    frm_contract_user.Show;
  end;
end;

procedure Tfrm_main.Action_contratExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_contract) then
  begin
    frm_contract := Tfrm_contract.Create(Self);
    frm_contract.Height := Bevel_1.Height;
    frm_contract.Width := Bevel_1.Width;
    frm_contract.Show
  end
  else
  begin
    frm_contract.WindowState := wsNormal;
    frm_contract.Show;
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
    frm_enterprise.Show
  end
  else
  begin
    frm_enterprise.WindowState := wsNormal;
    frm_enterprise.Show;
  end;
end;

procedure Tfrm_main.Action_manufacturerExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_manufacturer) then
  begin
    frm_manufacturer := Tfrm_manufacturer.Create(Self);
    frm_manufacturer.Height := Bevel_1.Height;
    frm_manufacturer.Width := Bevel_1.Width;
    frm_manufacturer.Show
  end
  else
  begin
    frm_manufacturer.WindowState := wsNormal;
    frm_manufacturer.Show;
  end;
end;

procedure Tfrm_main.Action_ncmExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_ncm) then
  begin
    frm_ncm := Tfrm_ncm.Create(Self);
    frm_ncm.Height := Bevel_1.Height;
    frm_ncm.Width := Bevel_1.Width;
    frm_ncm.Show
  end
  else
  begin
    frm_ncm.WindowState := wsNormal;
    frm_ncm.Show;
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
    frm_phonebook.Show
  end
  else
  begin
    frm_phonebook.WindowState := wsNormal;
    frm_phonebook.Show;
  end;
end;

procedure Tfrm_main.Action_productExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_product) then
  begin
    frm_product := Tfrm_product.Create(Self);
    frm_product.Height := Bevel_1.Height;
    frm_product.Width := Bevel_1.Width;
    frm_product.Show
  end
  else
  begin
    frm_product.WindowState := wsNormal;
    frm_product.Show;
  end;
end;

procedure Tfrm_main.Action_product_classExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_product_class) then
  begin
    frm_product_class := Tfrm_product_class.Create(Self);
    frm_product_class.Height := Bevel_1.Height;
    frm_product_class.Width := Bevel_1.Width;
    frm_product_class.Show
  end
  else
  begin
    frm_product_class.WindowState := wsNormal;
    frm_product_class.Show;
  end;
end;

procedure Tfrm_main.Action_product_departmentExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_product_department) then
  begin
    frm_product_department := Tfrm_product_department.Create(Self);
    frm_product_department.Height := Bevel_1.Height;
    frm_product_department.Width := Bevel_1.Width;
    frm_product_department.Show
  end
  else
  begin
    frm_product_department.WindowState := wsNormal;
    frm_product_department.Show;
  end;
end;

procedure Tfrm_main.Action_product_entryExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_stock_entry) then
  begin
    frm_stock_entry := Tfrm_stock_entry.Create(Self);
    frm_stock_entry.Height := Bevel_1.Height;
    frm_stock_entry.Width := Bevel_1.Width;
    frm_stock_entry.Show
  end
  else
  begin
    frm_stock_entry.WindowState := wsNormal;
    frm_stock_entry.Show;
  end;
end;

procedure Tfrm_main.Action_product_unitExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_product_unit) then
  begin
    frm_product_unit := Tfrm_product_unit.Create(Self);
    frm_product_unit.Height := Bevel_1.Height;
    frm_product_unit.Width := Bevel_1.Width;
    frm_product_unit.Show
  end
  else
  begin
    frm_product_unit.WindowState := wsNormal;
    frm_product_unit.Show;
  end;
end;

procedure Tfrm_main.Action_purchase_orderExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_purchase_order) then
  begin
    frm_purchase_order := Tfrm_purchase_order.Create(Self);
    frm_purchase_order.Height := Bevel_1.Height;
    frm_purchase_order.Width := Bevel_1.Width;
    frm_purchase_order.Show
  end
  else
  begin
    frm_purchase_order.WindowState := wsNormal;
    frm_purchase_order.Show;
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
    frm_report.Show
  end
  else
  begin
    frm_report.WindowState := wsNormal;
    frm_report.Show;
  end;
end;

procedure Tfrm_main.Action_requestExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_request) then
  begin
    frm_request := Tfrm_request.Create(Self);
    frm_request.Height := Bevel_1.Height;
    frm_request.Width := Bevel_1.Width;
    frm_request.Show
  end
  else
  begin
    frm_request.WindowState := wsNormal;
    frm_request.Show;
  end;
end;

procedure Tfrm_main.Action_stockExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_stock) then
  begin
    frm_stock := Tfrm_stock.Create(Self);
    frm_stock.Height := Bevel_1.Height;
    frm_stock.Width := Bevel_1.Width;
    frm_stock.Show
  end
  else
  begin
    frm_stock.WindowState := wsNormal;
    frm_stock.Show;
  end;
end;

procedure Tfrm_main.Action_stock_itenExecute(Sender: TObject);
begin
  inherited;
  inherited;
  if not Assigned(frm_stock_iten) then
  begin
    frm_stock_iten := Tfrm_stock_iten.Create(Self);
    frm_stock_iten.Height := Bevel_1.Height;
    frm_stock_iten.Width := Bevel_1.Width;
    frm_stock_iten.Show
  end
  else
  begin
    frm_stock_iten.WindowState := wsNormal;
    frm_stock_iten.Show;
  end;
end;

procedure Tfrm_main.Action_stock_outExecute(Sender: TObject);
begin
  inherited;
   if not Assigned(frm_stock_out) then
    begin
      frm_stock_out := Tfrm_stock_out.Create(Self);
      frm_stock_out.Height := Bevel_1.Height;
      frm_stock_out.Width := Bevel_1.Width;
      frm_stock_out.Show
    end
    else
    begin
      frm_stock_out.WindowState := wsNormal;
      frm_stock_out.Show;

    end;
end;

procedure Tfrm_main.Action_stock_transferExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_stock_transfer) then
  begin
    frm_stock_transfer := Tfrm_stock_transfer.Create(Self);
    frm_stock_transfer.Height := Bevel_1.Height;
    frm_stock_transfer.Width := Bevel_1.Width;
    frm_stock_transfer.Show
  end
  else
  begin
    frm_stock_transfer.WindowState := wsNormal;
    frm_stock_transfer.Show;
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
    frm_supplier.Show
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
