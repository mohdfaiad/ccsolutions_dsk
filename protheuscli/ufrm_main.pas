unit ufrm_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  cxContainer, cxEdit, dxSkinscxPCPainter, dxSkinsdxBarPainter, Vcl.ExtCtrls,
  cxLocalization, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  dxSkinsForm, dxBar, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, cxClasses,
  dxRibbon, dxGDIPlusClasses, ufrm_login, ufrm_client, ufrm_contract, ufrm_contract_user,
   ufrm_enterprise, ufrm_phonebook, ufrm_report, ufrm_insurance,
  ufrm_exam, ufrm_material, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_main = class(Tfrm_main_default)
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    Action_contract: TAction;
    Action_contract_user: TAction;
    Action_enterprise: TAction;
    Action_client: TAction;
    Action_contract_user_password: TAction;
    rbpopmenu1: TdxRibbonPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarManager_1Bar2: TdxBar;
    dxBarLargeButton5: TdxBarLargeButton;
    Action_phonebook: TAction;
    dxBarManager_1Bar3: TdxBar;
    Action_report: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarManager_1Bar4: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    Action_insurance: TAction;
    dxBarManager_1Bar5: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    rbpopmenu2: TdxRibbonPopupMenu;
    Action_exam: TAction;
    Action_material: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    action_doctor: TAction;
    Action_employee: TAction;
    dxBarButton6: TdxBarButton;
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_contractExecute(Sender: TObject);
    procedure Action_clientExecute(Sender: TObject);
    procedure Action_contract_user_passwordExecute(Sender: TObject);
    procedure action_doctorExecute(Sender: TObject);
    procedure Action_employeeExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_examExecute(Sender: TObject);
    procedure Action_insuranceExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

 uses  ufrm_doctor, ufrm_employeee, ufrm_scheduling;

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
    frm_contract_user.Show;
  end else begin
    frm_contract_user.WindowState := wsNormal;
    frm_contract_user.Show;
  end;
end;

procedure Tfrm_main.Action_contract_user_passwordExecute(Sender: TObject);
begin
  inherited;
  frm_login.Tag := 99;
  frm_login.Show;
  frm_login.cxPageControl1.Pages[0].TabVisible := False;
  frm_login.cxPageControl1.Pages[2].TabVisible := False;
  frm_login.cxPageControl1.Pages[1].TabVisible := True;
  frm_login.cxTabSheet1.Show;
  frm_login.edt_passwordCurrent.SetFocus;
end;

procedure Tfrm_main.action_doctorExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_doctor) then begin
    frm_doctor := Tfrm_doctor.Create(Self);
    frm_doctor.Show;
  end else begin
    frm_doctor.WindowState := wsNormal;
    frm_doctor.Show;
  end;

end;

procedure Tfrm_main.Action_employeeExecute(Sender: TObject);
begin
  inherited;
   if not Assigned(frm_employee_) then begin
     frm_employee_ := Tfrm_employee_.Create(Self);
     frm_employee_.Show;
  end else begin
    frm_employee_.WindowState := wsNormal;
    frm_employee_.Show;
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

procedure Tfrm_main.Action_examExecute(Sender: TObject);
begin
  inherited;
   if not Assigned(frm_exam) then begin
    frm_exam := Tfrm_exam.Create(Self);
    frm_exam.Height := Bevel_1.Height;
    frm_exam.Width := Bevel_1.Width;
    frm_exam.Show;
  end else begin
    frm_exam.WindowState := wsNormal;
    frm_exam.Show;
  end;
end;

procedure Tfrm_main.Action_insuranceExecute(Sender: TObject);
begin
  inherited;
   if not Assigned(frm_insurance) then begin
    frm_insurance := Tfrm_insurance.Create(Self);
    frm_insurance.Height := Bevel_1.Height;
    frm_insurance.Width := Bevel_1.Width;
    frm_insurance.Show;
  end else begin
    frm_insurance.WindowState := wsNormal;
    frm_insurance.Show;
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
