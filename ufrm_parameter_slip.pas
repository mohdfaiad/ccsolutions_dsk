unit ufrm_parameter_slip;

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
  cxGridDBTableView, cxGrid, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxSpinEdit;

type
  Tfrm_parameter_slip = class(Tfrm_form_default)
    qryprs_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrybank_bnk_id: TIntegerField;
    qryprs_species_document: TStringField;
    qryprs_species_coin: TStringField;
    qryprs_acceptance: TStringField;
    qryprs_wallet: TStringField;
    qryprs_our_number: TIntegerField;
    qryprs_value_fine: TBCDField;
    qryprs_value_interest: TBCDField;
    qryprs_day_interest: TDateField;
    qryprs_day_discount: TIntegerField;
    qryprs_dt_discount: TDateField;
    qryprs_value_rebate: TBCDField;
    qryprs_day_rebate: TIntegerField;
    qryprs_percentage_fine: TBCDField;
    qryprs_day_protest: TIntegerField;
    qryprs_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1prs_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bank_bnk_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_document: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_coin: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_acceptance: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_wallet: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_our_number: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_fine: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_interest: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_day_interest: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_day_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_dt_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_rebate: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_day_rebate: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_percentage_fine: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_day_protest: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_dt_registration: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    qry_bank: TFDQuery;
    ds_bank: TDataSource;
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
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBComboBox3: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
  end;

var
  frm_parameter_slip: Tfrm_parameter_slip;

implementation

{$R *.dfm}

uses ufrm_dm, Casse.Field_Requested;

procedure Tfrm_parameter_slip.Action_saveExecute(Sender: TObject);
begin
  //--Comando para tirar o focus de todos os componentes da tela-----
  ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
   TCampoRequerido.TratarRequerido(qry);

  inherited;

end;

procedure Tfrm_parameter_slip.cxDBLookupComboBox1PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //Comando para atualização do combobox
   qry_bank.Refresh;
end;

procedure Tfrm_parameter_slip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   frm_parameter_slip.Destroy;
   frm_parameter_slip := Nil;
end;

procedure Tfrm_parameter_slip.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_parameter_slip.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
end;

procedure Tfrm_parameter_slip.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryprs_dt_registration.Value := now;
end;

end.
