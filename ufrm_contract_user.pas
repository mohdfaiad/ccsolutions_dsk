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
  cxCheckBox, Vcl.StdCtrls, frxExportDOCX, frxClass, frxExportBaseDialog, frxExportPDF,
  Contract_User.Model, Contract_User.Dao;

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
    cxGridDBTable_ctr_usr_id: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_first_name: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_last_name: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_username: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_email: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_admin: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_status: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_logged: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_dt_registration: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_dt_birth: TcxGridDBColumn;
    qryctr_usr_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryctr_usr_id: TLongWordField;
    qryctr_usr_first_name: TStringField;
    qryctr_usr_last_name: TStringField;
    qryctr_usr_username: TStringField;
    qryctr_usr_password: TBytesField;
    qryctr_usr_email: TStringField;
    qryctr_usr_dt_birth: TDateField;
    qryctr_usr_logged: TStringField;
    qryctr_usr_admin: TStringField;
    qryctr_usr_status: TStringField;
    qryctr_usr_deleted_at: TDateTimeField;
    qryctr_usr_dt_registration: TDateTimeField;
    memTablectr_usr_cod: TBytesField;
    memTablecontract_ctr_cod: TBytesField;
    memTablectr_usr_id: TLongWordField;
    memTablectr_usr_first_name: TStringField;
    memTablectr_usr_last_name: TStringField;
    memTablectr_usr_username: TStringField;
    memTablectr_usr_password: TBytesField;
    memTablectr_usr_email: TStringField;
    memTablectr_usr_dt_birth: TDateField;
    memTablectr_usr_logged: TStringField;
    memTablectr_usr_admin: TStringField;
    memTablectr_usr_status: TStringField;
    memTablectr_usr_deleted_at: TDateTimeField;
    memTablectr_usr_dt_registration: TDateTimeField;
    edtSenha: TcxTextEdit;
    edtConf_Senha: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbsht_2Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    ExibirGrid;
end;

procedure Tfrm_contract_user.Action_editExecute(Sender: TObject);
begin
  inherited;
  //Se tag = a 2 é para alterar
   Self.Tag := 2;
   PreecherCampos;
end;

procedure Tfrm_contract_user.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //Se tag = a 1 é para inserir
    Self.Tag := 1;
    LimpaCampos;
end;

procedure Tfrm_contract_user.Action_saveExecute(Sender: TObject);
 var
  Contract_User: TContract_user_Model;
  Dao          : TContract_User_Dao;
begin

     Contract_User:= TContract_user_Model.Create;
     Dao          := TContract_User_Dao.Create;

     try  //Tag = 1 para Inserir
      if (Trim(edtSenha.Text)= Trim(edtConf_Senha.Text)) then
       begin

        if Self.Tag = 1 then
         begin                         //#Falta pegar ID do Contrato
           Contract_User.ctr_id             := 1;
           Contract_User.ctr_usr_first_name := edtNome.Text;
           Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
           Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
           Contract_User.ctr_usr_username   := edtUsuario.Text;
           Contract_User.ctr_usr_email      := edtEmail.Text;
           Contract_User.ctr_usr_password   := edtSenha.Text;
           if CheckBoxAdm.Checked then
           Contract_User.ctr_usr_admin      := 'S'
           else Contract_User.ctr_usr_admin := 'N';

           Dao.Contract_User_Create(Contract_User);
         end       //Tag = 2 para Alterar
         else if Self.Tag = 2 then
         begin
           Contract_User.ctr_usr_id         := memTablectr_usr_id.AsInteger;
           Contract_User.ctr_usr_first_name := edtNome.Text;
           Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
           Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
           Contract_User.ctr_usr_username   := edtUsuario.Text;
           Contract_User.ctr_usr_password   := edtSenha.Text;
           Contract_User.ctr_usr_email      := edtEmail.Text;
           if CheckBoxAdm.Checked then
           Contract_User.ctr_usr_admin      := 'S'
           else Contract_User.ctr_usr_admin := 'N';

           Dao.Contract_User_Update(Contract_User);
         end;
       end else begin
         Application.MessageBox('Senha de usuário não conferem, por favor confirmar senha ! ','AVISO DO SISTEMA',MB_OK+MB_ICONERROR);
         Abort
       end;

     finally
       LimpaCampos;
       Contract_User.Free;
       Dao.Free;
       ExibirGrid;
     end;

   inherited;
end;

procedure Tfrm_contract_user.ExibirGrid;
var
  Dao : TContract_User_Dao;
begin
   memTable.Close;
   Dao :=TContract_User_Dao.Create;
   try
     memTable.Data := Dao.QryRead;
   finally
     Dao.Free;
   end;

end;

procedure Tfrm_contract_user.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   FreeAndNil(frm_contract_user);
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

   edt_codid.Text           := IntToStr(memTablectr_usr_id.AsInteger);
   edt_dt_registration.Text := DateToStr(memTablectr_usr_dt_registration.AsDateTime);
   edtNome.Text             := memTablectr_usr_first_name.AsString;
   edtSobrenome.Text        := memTablectr_usr_last_name.AsString;
   edtDtNasc.Date           := memTablectr_usr_dt_birth.AsDateTime;
   edtUsuario.Text          := memTablectr_usr_username.AsString;
   edtEmail.Text            := memTablectr_usr_email.AsString;

    if memTablectr_usr_admin.AsString = 'S' then
       CheckBoxAdm.Checked   := True
    else CheckBoxAdm.Checked := False;

   edtNome.SetFocus;

end;

procedure Tfrm_contract_user.tbsht_2Show(Sender: TObject);
begin
  inherited;
  PreecherCampos;
end;

end.
