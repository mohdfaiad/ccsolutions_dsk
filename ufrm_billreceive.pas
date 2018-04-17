unit ufrm_billreceive;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxShellComboBox, cxBarEditItem, dxBarExtItems, QExport4Dialog, frxDesgn,
  QImport3Wizard, ACBrSocket, ACBrCEP, frxClass;

type
  Tfrm_billreceive = class(Tfrm_form_default)
    qrybrc_id: TFDAutoIncField;
    qryclient_cli_id: TIntegerField;
    qrycontract_ctr_id: TIntegerField;
    qryseller_sel_id: TIntegerField;
    qrybrc_value: TBCDField;
    qrybrc_reference: TStringField;
    qrybrc_discount: TBCDField;
    qrybrc_addition: TBCDField;
    qrybrc_ammount_receive: TBCDField;
    qrybrc_document: TStringField;
    qrybrc_dt_emission: TDateField;
    qrybrc_dt_maturity: TDateField;
    qrybrc_dt_registration: TDateTimeField;
    qry_client: TFDQuery;
    ds_client: TDataSource;
    qry_seller: TFDQuery;
    ds_seller: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qrybrc_status: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1brc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1seller_sel_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_status: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_value: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_addition: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_ammount_receive: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_document: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_billreceive: Tfrm_billreceive;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_billreceive.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Comando para atualizar combobox
  qry_client.Refresh;
end;

procedure Tfrm_billreceive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_billreceive.Destroy;
  frm_billreceive := Nil;
end;

procedure Tfrm_billreceive.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrybrc_dt_registration.Value := Date + Time;
end;

end.
