unit ufrm_receipt;

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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxCurrencyEdit,
  cxShellComboBox, QImport3Wizard, QExport4Dialog, cxBarEditItem, ACBrSocket,
  ACBrCEP, frxClass, frxDBSet, ACBrExtenso, Vcl.Grids, Vcl.DBGrids,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  dxSkinTheBezier, frxChart, frxDesgn;

type
  Tfrm_receipt = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem6: TdxLayoutItem;
    qry_enterprise: TFDQuery;
    ds_enterprise: TDataSource;
    ds_client: TDataSource;
    qry_client: TFDQuery;
    qryrec_description: TStringField;
    qryrec_dt_emission: TDateField;
    qryrec_dt_registration: TDateTimeField;
    qryrec_title: TStringField;
    cxGrid_1DBTableView1rec_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_title: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_value: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_registration: TcxGridDBColumn;
    frx_db_recibo: TfrxDBDataset;
    frx_db_recibo_cliente: TfrxDBDataset;
    ACBrExtenso1: TACBrExtenso;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    qryrec_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryenterprise_ent_cod: TBytesField;
    qryclient_cli_cod: TBytesField;
    qryrec_deleted_at: TDateTimeField;
    qryrec_id: TLongWordField;
    qryrec_value: TBCDField;
    cxLookupComboBoxClient: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    qry_clientcli_id: TLongWordField;
    qry_clientcli_cod: TBytesField;
    qry_clientcli_first_name: TStringField;
    qry_clientcli_last_name: TStringField;
    qry_clientcliCod: TStringField;
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientcontract_ctr_cod: TBytesField;
    qry_clientidade: TLargeintField;
    cxLookupComboBoxEnterprise: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    qry_enterpriseent_cod: TBytesField;
    qry_enterpriseent_id: TLongWordField;
    qry_enterpriseent_last_name: TStringField;
    qry_enterprisecontract_ctr_cod: TBytesField;
    qry_enterpriseentCod: TStringField;
    frx_db_recibo_empresa: TfrxDBDataset;
    qry_enterpriseent_first_name: TStringField;
    qry_enterpriseent_cnpj: TStringField;
    qry_enterpriseent_add_bus_zipcode: TStringField;
    qry_enterpriseent_add_bus_address: TStringField;
    qry_enterpriseent_add_bus_number: TStringField;
    qry_enterpriseent_add_bus_street: TStringField;
    qry_enterpriseent_add_bus_complement: TStringField;
    qry_enterpriseent_add_bus_city: TStringField;
    qry_enterpriseent_add_bus_state: TStringField;
    qry_enterpriseent_add_bus_country: TStringField;
    dxBarSubItem1: TdxBarSubItem;
    qryclientCod: TStringField;
    qryenterpriseCod: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
  private

  public

  end;

var
  frm_receipt: Tfrm_receipt;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_receipt.cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
begin
  inherited;
 qryenterprise_ent_cod.Value:=qry_enterpriseent_cod.Value;
end;

procedure Tfrm_receipt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_receipt.Destroy;
  frm_receipt := Nil;
end;

end.
