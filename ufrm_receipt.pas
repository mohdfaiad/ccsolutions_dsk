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
  ACBrCEP, frxClass, frxDBSet,unit_function, ACBrExtenso;

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
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qry_enterprise: TFDQuery;
    ds_enterprise: TDataSource;
    ds_client: TDataSource;
    qry_client: TFDQuery;
    qryrec_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    qryclient_cli_id: TIntegerField;
    qryrec_value: TBCDField;
    qryrec_description: TStringField;
    qryrec_dt_emission: TDateField;
    qryrec_dt_registration: TDateTimeField;
    qryrec_title: TStringField;
    cxGrid_1DBTableView1rec_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_title: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_value: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_description: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_registration: TcxGridDBColumn;
    frx_db_recibo: TfrxDBDataset;
    frx_db_recibo_cliente: TfrxDBDataset;
    ACBrExtenso1: TACBrExtenso;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_printExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_receipt: Tfrm_receipt;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_receipt.Action_printExecute(Sender: TObject);
begin
  inherited;
 frxReport_1.LoadFromFile('c:\ccsolutions_dsk\reports\financial\rep_relatorio_recibo.fr3');
 frxReport_1.variables['extenso'] := QuotedStr(valorPorExtenso(qryrec_value.AsFloat));
 frxReport_1.ShowReport;
end;

procedure Tfrm_receipt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_receipt.Destroy;
  frm_receipt := Nil;
end;

procedure Tfrm_receipt.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryrec_dt_registration.Value := Date + Time;
end;

end.
