unit ufrm_form_payment;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_form_default, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDBData, cxContainer, dxLayoutcxEditAdapters, dxSkinsdxBarPainter,
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrSocket, ACBrCEP, frxClass,
  FireDAC.Comp.Client, QImport3Wizard, QExport4Dialog, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList,
  Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions,
  Vcl.ActnList, dxBar, cxBarEditItem, cxClasses, dxLayoutContainer, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxSpinEdit, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrm_form_payment = class(Tfrm_form_default)
    qryfrp_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrybank_bnk_id: TIntegerField;
    qryfrp_name: TStringField;
    qryfrp_slip: TStringField;
    qryfrp_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1frp_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bank_bnk_id: TcxGridDBColumn;
    cxGrid_1DBTableView1frp_name: TcxGridDBColumn;
    cxGrid_1DBTableView1frp_slip: TcxGridDBColumn;
    cxGrid_1DBTableView1frp_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    qry_bank: TFDQuery;
    qry_bankbnk_id: TFDAutoIncField;
    qry_bankcontract_ctr_id: TIntegerField;
    qry_bankbnk_name: TStringField;
    qry_bankbnk_code: TStringField;
    qry_bankbnk_agency_number: TStringField;
    qry_bankbnk_agency_digit: TStringField;
    qry_bankbnk_account_number: TStringField;
    qry_bankbnk_account_digit: TStringField;
    qry_bankbnk_swift_code: TStringField;
    qry_bankbnk_iban_code: TStringField;
    qry_bankbnk_add_bus_zipcode: TStringField;
    qry_bankbnk_add_bus_address: TStringField;
    qry_bankbnk_add_bus_number: TStringField;
    qry_bankbnk_add_bus_street: TStringField;
    qry_bankbnk_add_bus_complement: TStringField;
    qry_bankbnk_add_bus_city: TStringField;
    qry_bankbnk_add_bus_state: TStringField;
    qry_bankbnk_add_bus_country: TStringField;
    qry_bankbnk_phone1: TStringField;
    qry_bankbnk_phone2: TStringField;
    qry_bankbnk_phone3: TStringField;
    qry_bankbnk_phone4: TStringField;
    qry_bankbnk_contact: TStringField;
    qry_bankbnk_code_transferor: TStringField;
    qry_bankbnk_code_agreement: TStringField;
    qry_bankbnk_dt_registration: TDateTimeField;
    ds_Bank: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
  end;

var
  frm_form_payment: Tfrm_form_payment;

implementation

{$R *.dfm}

uses ufrm_dm, Casse.Field_Requested;

procedure Tfrm_form_payment.Action_saveExecute(Sender: TObject);
begin
//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
   TCampoRequerido.TratarRequerido(qry);

   inherited;

end;

procedure Tfrm_form_payment.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Comando para atualização do combobox
   Qry_bank.Refresh;
end;

procedure Tfrm_form_payment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    frm_form_payment.Destroy;
    frm_form_payment := Nil;
end;

procedure Tfrm_form_payment.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_form_payment.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
end;

procedure Tfrm_form_payment.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryfrp_dt_registration.Value := now;
end;

end.
