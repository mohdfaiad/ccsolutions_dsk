unit ufrm_main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.UITypes,
  System.ImageList,
  System.Actions,

  Vcl.ImgList,
  Vcl.ActnList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
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
  dxSkinVS2010,
  dxSkinWhiteprint,
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
  dxGDIPlusClasses,
  dxBevel,
  cxLocalization,
  cxImageList,

  ufrm_main_default;

type
  Tfrm_main = class(Tfrm_main_default)
    Action_contract: TAction;
    Action_contract_user: TAction;
    Action_enterprise: TAction;
    Action_patient: TAction;
    Action_supplier: TAction;
    Action_phonebook: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager_1Bar2: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarManager_1Bar3: TdxBar;
    Action_exam: TAction;
    Action_material: TAction;
    dxBarManager_1Bar4: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    Action_report: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    rbpopmenu_1: TdxRibbonPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarManager_1Bar5: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    Action_insurance: TAction;
    Action_department: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    Action_medicine: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    Action_requisition_type: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    rbpopmenu_2: TdxRibbonPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    acTable: TAction;
    acAlterarPreco: TAction;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure Action_contractExecute(Sender: TObject);
    procedure Action_contract_userExecute(Sender: TObject);
    procedure Action_enterpriseExecute(Sender: TObject);
    procedure Action_supplierExecute(Sender: TObject);
    procedure Action_phonebookExecute(Sender: TObject);
    procedure Action_examExecute(Sender: TObject);
    procedure Action_materialExecute(Sender: TObject);
    procedure Action_reportExecute(Sender: TObject);
    procedure Action_insuranceExecute(Sender: TObject);
    procedure Action_departmentExecute(Sender: TObject);
    procedure Action_medicineExecute(Sender: TObject);
    procedure Action_requisition_typeExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure acTableExecute(Sender: TObject);
    procedure Action_patientExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses ufrm_login, ufrm_contract, ufrm_enterprise, ufrm_phonebook, ufrm_receipt,
  ufrm_exam, ufrm_material, ufrm_report, ufrm_insurance, ufrm_department,
  ufrm_medicine, ufrm_requisition_type, ufrm_requisition, ufrm_dm,
  ufrm_supplier, ufrm_client, ufrm_contract_user;

procedure Tfrm_main.acTableExecute(Sender: TObject);
begin
  inherited;
//  if not Assigned(frm_table_price) then
//  begin
//    frm_table_price := Tfrm_table_price.Create(Self);
//    frm_table_price.Height := Bevel_1.Height;
//    frm_table_price.Width := Bevel_1.Width;
//    frm_table_price.Show;
//  end
//  else
//  begin
//    frm_table_price.WindowState := wsNormal;
//    frm_table_price.Show;
//  end;
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

procedure Tfrm_main.Action_departmentExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_department) then begin
    frm_department := Tfrm_department.Create(Self);
    frm_department.Height := Bevel_1.Height;
    frm_department.Width := Bevel_1.Width;
    frm_department.Show;
  end else begin
    frm_department.WindowState := wsNormal;
    frm_department.Show;
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

procedure Tfrm_main.Action_materialExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_material) then begin
    frm_material := Tfrm_material.Create(Self);
    frm_material.Height := Bevel_1.Height;
    frm_material.Width := Bevel_1.Width;
    frm_material.Show;
  end else begin
    frm_exam.WindowState := wsNormal;
    frm_material.Show;
  end;
end;

procedure Tfrm_main.Action_medicineExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_medicine) then begin
    frm_medicine := Tfrm_medicine.Create(Self);
    frm_medicine.Height := Bevel_1.Height;
    frm_medicine.Width := Bevel_1.Width;
    frm_medicine.Show;
  end else begin
    frm_medicine.WindowState := wsNormal;
    frm_medicine.Show;
  end;
end;

procedure Tfrm_main.Action_patientExecute(Sender: TObject);
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

procedure Tfrm_main.Action_requisition_typeExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frm_requisition_type) then begin
    frm_requisition_type := Tfrm_requisition_type.Create(Self);
    frm_requisition_type.Height := Bevel_1.Height;
    frm_requisition_type.Width := Bevel_1.Width;
    frm_requisition_type.Show;
  end else begin
    frm_requisition_type.WindowState := wsNormal;
    frm_requisition_type.Show;
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

procedure Tfrm_main.Button1Click(Sender: TObject);
begin
  inherited;
// //--Função para verificar se o Usuário está com permicionamento para acessar os dados de alguma empresa--
//    TCheck_Enterprise.ValidaEmpresa;
//
//    if not Assigned(frm_supplier) then
//  begin
//    frm_requisition := Tfrm_requisition.Create(Self);
//    frm_requisition.Height := Bevel_1.Height;
//    frm_requisition.Width := Bevel_1.Width;
//    frm_requisition.Show;
//  end
//  else
//  begin
//    frm_requisition.WindowState := wsNormal;
//     frm_requisition.Show;
//  end;
end;

procedure Tfrm_main.dxBarLargeButton13Click(Sender: TObject);
begin
  inherited;
//  if not Assigned(frm_Requisition_Lab) then
//  begin
//    frm_Requisition_Lab := Tfrm_Requisition_Lab.Create(Self);
//    frm_Requisition_Lab.Height := Bevel_1.Height;
//    frm_Requisition_Lab.Width := Bevel_1.Width;
//    frm_Requisition_Lab.Show;
//  end
//  else
//  begin
//    frm_Requisition_Lab.WindowState := wsNormal;
//    frm_Requisition_Lab.Show;
//  end;
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
