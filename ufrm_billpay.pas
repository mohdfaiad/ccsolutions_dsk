unit ufrm_billpay;

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
  QExport4Dialog, cxShellComboBox, cxBarEditItem, dxBarExtItems, frxDesgn,
  QImport3Wizard;

type
  Tfrm_billpay = class(Tfrm_form_default)
    qrybpy_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrybpy_value: TBCDField;
    qrybpy_discount: TBCDField;
    qrybpy_amount_pay: TBCDField;
    qrybpy_amount_paid: TBCDField;
    qrybpy_document: TStringField;
    qrybpy_dt_emission: TDateField;
    qrybpy_dt_maturity: TDateField;
    qrybpy_installment: TStringField;
    qrybpy_reference: TStringField;
    qrybpy_status: TStringField;
    qrybpy_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1bpy_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_value: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_amount_pay: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_amount_paid: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_document: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_installment: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_status: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_dt_registration: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    qry_supplier: TFDQuery;
    ds_supplier: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    qrysupplier_sup_id: TIntegerField;
    cxGrid_1DBTableView1supplier_sup_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bpy_addition: TcxGridDBColumn;
    qryenterprise_ent_id: TIntegerField;
    qrybpy_invoice: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem15: TdxLayoutItem;
    qry_enterprise: TFDQuery;
    ds_enterprise: TDataSource;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qry_cost_center: TFDQuery;
    ds_cost_center: TDataSource;
    qry_cost_center_detail: TFDQuery;
    ds_cost_center_detail: TDataSource;
    qry_account_plan: TFDQuery;
    ds_account_plan: TDataSource;
    qry_account_plan_detail: TFDQuery;
    ds_account_plan_detail: TDataSource;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    qryaccount_plan_acp_id: TIntegerField;
    qryaccount_plan_detail_acd_id: TIntegerField;
    qrycost_center_coc_id: TIntegerField;
    qrycost_center_detail_cod_id: TIntegerField;
    qrybpy_addition: TBCDField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_billpay: Tfrm_billpay;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_main;

procedure Tfrm_billpay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_billpay.Destroy;
  frm_billpay := Nil;
end;

procedure Tfrm_billpay.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrybpy_dt_registration.Value := Date + Time;
end;

end.
