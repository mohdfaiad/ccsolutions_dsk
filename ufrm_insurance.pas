unit ufrm_insurance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  FireDAC.Stan.Async, FireDAC.DApt, QImport3Wizard, QExport4Dialog, ACBrBase,
  ACBrEnterTab, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxBarEditItem,
  cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxButtonEdit, cxSpinEdit, ACBrSocket, ACBrCEP, frxClass, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrm_insurance = class(Tfrm_form_default)
    qryins_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryins_first_name: TStringField;
    qryins_last_name: TStringField;
    qryins_email: TStringField;
    qryins_cnpj: TStringField;
    qryins_im: TStringField;
    qryins_add_bus_zipcode: TStringField;
    qryins_add_bus_address: TStringField;
    qryins_add_bus_number: TStringField;
    qryins_add_bus_street: TStringField;
    qryins_add_bus_complement: TStringField;
    qryins_add_bus_city: TStringField;
    qryins_add_bus_state: TStringField;
    qryins_add_bus_country: TStringField;
    qryins_phone1: TStringField;
    qryins_phone2: TStringField;
    qryins_phone3: TStringField;
    qryins_phone4: TStringField;
    qryins_contact: TStringField;
    qryins_dt_maturity_contract: TDateField;
    qryins_dt_day_maturity: TIntegerField;
    qryins_dt_open: TDateField;
    qryins_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ins_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_im: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_maturity_contract: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_day_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem24: TdxLayoutItem;
    qryins_status: TStringField;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1ins_status: TcxGridDBColumn;
    qrytable_price_tbp_id: TIntegerField;
    qry_table_price: TFDQuery;
    ds_table_price: TDataSource;
    qry_table_pricetbp_id: TFDAutoIncField;
    qry_table_pricetbp_name: TStringField;
    qry_table_pricecontract_ctr_id: TIntegerField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem23: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_insurance: Tfrm_insurance;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_insurance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_insurance.Destroy;
  frm_insurance := Nil;
end;

procedure Tfrm_insurance.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryins_dt_registration.Value := Date + Time;
end;

end.
