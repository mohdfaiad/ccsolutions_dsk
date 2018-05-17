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
  cxCheckBox;

type
  Tfrm_contract_user = class(Tfrm_default)
    qryctr_usr_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryctr_usr_id: TLongWordField;
    qryctr_usr_first_name: TStringField;
    qryctr_usr_last_name: TStringField;
    qryctr_usr_username: TStringField;
    qryctr_usr_password: TStringField;
    qryctr_usr_email: TStringField;
    qryctr_usr_dt_birth: TDateField;
    qryctr_usr_logged: TStringField;
    qryctr_usr_admin: TStringField;
    qryctr_usr_status: TStringField;
    qryctr_deleted_at: TDateTimeField;
    qryctr_usr_dt_registration: TDateTimeField;
    edtNome: TcxTextEdit;
    edtSobrenome: TcxTextEdit;
    edtUsuario: TcxTextEdit;
    edtEmail: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxGridDBTableView1ctr_usr_cod: TcxGridDBColumn;
    cxGridDBTableView1contract_ctr_cod: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_id: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_first_name: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_last_name: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_username: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_password: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_email: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_dt_birth: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_logged: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_admin: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_status: TcxGridDBColumn;
    cxGridDBTableView1ctr_deleted_at: TcxGridDBColumn;
    cxGridDBTableView1ctr_usr_dt_registration: TcxGridDBColumn;
    edtDtNasc: TcxDateEdit;
    CheckBoxAdm: TcxCheckBox;
    procedure Action_saveExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure LimaCampos;

  end;

var
  frm_contract_user: Tfrm_contract_user;

implementation

{$R *.dfm}

uses class_contract_user;

{ Tfrm_contract_user }

procedure Tfrm_contract_user.Action_saveExecute(Sender: TObject);
 var
  Contract_User: TContract_user;
begin
  inherited;

  if not Assigned(Contract_User) then
   begin
     Contract_User:= TContract_user.Create;
     try
       Contract_User.ctr_id             := frm_dm.qry_signinctr_id.AsInteger;
       Contract_User.ctr_usr_first_name := edtNome.Text;
       Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
       Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
       Contract_User.ctr_usr_username   := edtUsuario.Text;
       Contract_User.ctr_usr_email      := edtEmail.Text;
       if CheckBoxAdm.Checked then
       Contract_User.ctr_usr_admin      := 'S'
       else Contract_User.ctr_usr_admin := 'N';

       Contract_User.CreateContract_User22(Contract_User);
       ShowMessage('Salvo com Sucesso !');
       LimaCampos;
       qry.Close;
       qry.Open;
     finally
       Contract_User.Free;
     end;
   end;

end;

procedure Tfrm_contract_user.FormShow(Sender: TObject);
begin
  inherited;
  qry.Close;
  qry.Open;
end;

procedure Tfrm_contract_user.LimaCampos;
 var
  i: Integer;
begin

   for i := 0 to ComponentCount -1 do
    if Components[i] is TcxTextEdit then
     begin
      TcxTextEdit(Components[i]).Text := '';
    end;
end;

end.
