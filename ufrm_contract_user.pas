unit ufrm_contract_user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_default, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.ImageList, Vcl.ImgList,
  QExport4Dialog, QImport3Wizard, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  ACBrBase, ACBrEnterTab, Vcl.Menus, dxBar, cxBarEditItem, cxClasses,
  System.Actions, Vcl.ActnList, dxStatusBar, cxTextEdit, cxLabel, cxGroupBox,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCheckBox, class_contract_user, Vcl.StdCtrls;

type
  Tfrm_contract_user = class(Tfrm_default)
    edtNome: TcxTextEdit;
    edtSobrenome: TcxTextEdit;
    edtUsuario: TcxTextEdit;
    edtEmail: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edtDtNasc: TcxDateEdit;
    CheckBoxAdm: TcxCheckBox;
    Button1: TButton;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure LimpaCampos;
    procedure PreecherCampos;
    procedure ExibirGrid;

  end;

var
  frm_contract_user: Tfrm_contract_user;

implementation

{$R *.dfm}


{ Tfrm_contract_user }

procedure Tfrm_contract_user.Action_cancelExecute(Sender: TObject);
begin
  inherited;
    tbsht_1.Show;
    ExibirGrid;
end;

procedure Tfrm_contract_user.Action_editExecute(Sender: TObject);
begin
  inherited;
  //Se tag = a 2 é para alterar
   Self.Tag := 2;
   tbsht_2.Show;
   PreecherCampos;
end;

procedure Tfrm_contract_user.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //Se tag = a 1 é para inserir
    Self.Tag := 1;
    tbsht_2.Show;
    LimpaCampos;
end;

procedure Tfrm_contract_user.Action_saveExecute(Sender: TObject);
 var
  Contract_User: TContract_user;
begin
  inherited;

     Contract_User:= TContract_user.Create;

     try
      if Self.Tag = 1 then
       begin
         Contract_User.ctr_id             := frm_dm.qry_signinctr_id.AsInteger;
         Contract_User.ctr_usr_first_name := edtNome.Text;
         Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
         Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
         Contract_User.ctr_usr_username   := edtUsuario.Text;
         Contract_User.ctr_usr_email      := edtEmail.Text;
         if CheckBoxAdm.Checked then
         Contract_User.ctr_usr_admin      := 'S'
         else Contract_User.ctr_usr_admin := 'N';

         Contract_User.Contract_User_Create(Contract_User);
       end
       else if Self.Tag = 2 then
       begin
//         Contract_User.ctr_usr_id         := FDMemTablectr_usr_id.AsInteger;
         Contract_User.ctr_usr_first_name := edtNome.Text;
         Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
         Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
         Contract_User.ctr_usr_username   := edtUsuario.Text;
         Contract_User.ctr_usr_email      := edtEmail.Text;
         if CheckBoxAdm.Checked then
         Contract_User.ctr_usr_admin      := 'S'
         else Contract_User.ctr_usr_admin := 'N';

         Contract_User.Contract_User_Update(Contract_User);
       end;
       
     finally
       LimpaCampos;
       Contract_User.Free;
       tbsht_1.Show;
       ExibirGrid;
     end;
end;

procedure Tfrm_contract_user.Button1Click(Sender: TObject);
var
  conn : TContract_user;

begin
  inherited;
  conn := TContract_user.Create;
  ds.DataSet := conn.QryRead;

end;

procedure Tfrm_contract_user.ExibirGrid;
var
  VQry:          TFDQuery;
  ContractUser : TContract_user;
begin
   ContractUser := TContract_user.Create;
//   FDMemTable.Close;
   VQry := ContractUser.Consultar;
   try
    VQry.FetchAll;
//     FDMemTable.Data := VQry.Data;
   finally
    VQry.Close;
    VQry.Free;
   end;


end;

procedure Tfrm_contract_user.FormShow(Sender: TObject);
begin
  inherited;
  ExibirGrid;
end;

procedure Tfrm_contract_user.LimpaCampos;
 var
  i: Integer;
begin

   for i := 0 to ComponentCount -1 do
    begin
    if Components[i] is TcxTextEdit then
      TcxTextEdit(Components[i]).Clear;

    if Components[i] is TcxDateEdit then
      TcxTextEdit(Components[i]).Clear;
    end;

   edtNome.SetFocus;

end;

procedure Tfrm_contract_user.PreecherCampos;
begin
//   edtNome.Text       := qryctr_usr_first_name.AsString;
//   edtSobrenome.Text  := qryctr_usr_last_name.AsString;
//   edtDtNasc.Date     := qryctr_usr_dt_birth.AsDateTime;
//   edtUsuario.Text    := qryctr_usr_username.AsString;
//   edtEmail.Text      := qryctr_usr_email.AsString;
//   if qryctr_usr_admin.AsString = 'S' then
//      CheckBoxAdm.Checked   := True
//   else CheckBoxAdm.Checked := False;

//    edt_codid.Text    := IntToStr(FDMemTablectr_usr_id.AsInteger);
//    edt_dt_registration.Text := DateToStr(FDMemTablectr_usr_dt_registration.AsDateTime);
//    edtNome.Text      := FDMemTablectr_usr_first_name.AsString;
//   edtSobrenome.Text  := FDMemTablectr_usr_last_name.AsString;
//   edtDtNasc.Date     := FDMemTablectr_usr_dt_birth.AsDateTime;
//   edtUsuario.Text    := FDMemTablectr_usr_username.AsString;
//   edtEmail.Text      := FDMemTablectr_usr_email.AsString;
//   if FDMemTablectr_usr_admin.AsString = 'S' then
//      CheckBoxAdm.Checked   := True
//   else CheckBoxAdm.Checked := False;
//
//   edtNome.SetFocus;

end;

end.
