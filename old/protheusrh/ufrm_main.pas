unit ufrm_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_main_default, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, System.UITypes,
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
  cxContainer, cxEdit, dxSkinscxPCPainter, dxSkinsdxBarPainter, ACBrBase,
  ACBrDownload, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  dxSkinsForm, dxBar, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, cxClasses,
  dxRibbon, dxBevel, dxGDIPlusClasses, Vcl.ExtCtrls,
  cxLocalization;

type
  Tfrm_main = class(Tfrm_main_default)
    Action_contract: TAction;
    Action_contract_user: TAction;
    Action_employee: TAction;
    Action_enterprise: TAction;
    Action_phonebook: TAction;
    Action_role: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarManager_1Bar2: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarManager_1Bar4: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    Action_report: TAction;
    Action_replace_user: TAction;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_contractExecute(Sender: TObject);
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure Action_employeeExecute(Sender: TObject);
    procedure Action_roleExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_replace_userExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses ufrm_login, ufrm_contract, ufrm_enterprise, ufrm_contract_user,
  ufrm_phonebook, ufrm_employee, ufrm_role, ufrm_report;

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

procedure Tfrm_main.Action_employeeExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_employee) then
  begin
    frm_employee := Tfrm_employee.Create(Self);
    frm_employee.Height := Bevel_1.Height;
    frm_employee.Width := Bevel_1.Width;
    frm_employee.Show;
  end
  else
  begin
    frm_employee.WindowState := wsNormal;
    frm_employee.Show;
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

procedure Tfrm_main.Action_replace_userExecute(Sender: TObject);
begin
   inherited;
   frm_login.Tag :=99;
   frm_login.ShowModal;
   Self.OnShow(self);

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

procedure Tfrm_main.Action_roleExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_role) then
  begin
    frm_role := Tfrm_role.Create(Self);
    frm_role.Height := Bevel_1.Height;
    frm_role.Width := Bevel_1.Width;
    frm_role.Show
  end
  else
   begin
    frm_role.WindowState := wsNormal;
    frm_role.Show;
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
