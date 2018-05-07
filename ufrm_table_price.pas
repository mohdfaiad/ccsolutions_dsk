unit ufrm_table_price;

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
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, cxDBLookupComboBox;

type
  Tfrm_table_price = class(Tfrm_form_default)
    qrytbp_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrytbp_name: TStringField;
    qrytbp_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1tbp_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tbp_name: TcxGridDBColumn;
    cxGrid_1DBTableView1tbp_dt_registration: TcxGridDBColumn;
    dbedit_nome: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    qry_table_price_product: TFDQuery;
    ds_table_price_product: TDataSource;
    qry_table_price_producttpp_id: TFDAutoIncField;
    qry_table_price_producttable_price_tbp_id: TIntegerField;
    qry_table_price_productproduct_pro_id: TIntegerField;
    qry_table_price_producttpp_value: TBCDField;
    qry_table_price_producttpp_dt_registration: TDateTimeField;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    qry_productpro_id: TFDAutoIncField;
    qry_productpro_name: TStringField;
    cxGrid1DBTableView1tpp_id: TcxGridDBColumn;
    cxGrid1DBTableView1table_price_tbp_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid1DBTableView1tpp_value: TcxGridDBColumn;
    cxGrid1DBTableView1tpp_dt_registration: TcxGridDBColumn;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qry_table_price_productAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  procedure limpaCache(Sender:TObject);
  public
    { Public declarations }
  end;

var
  frm_table_price: Tfrm_table_price;

implementation

{$R *.dfm}

procedure Tfrm_table_price.FormCreate(Sender: TObject);
begin
  inherited;
FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_table_price.limpaCache(Sender: TObject);
begin
qry.CommitUpdates();
qry_table_price_product.CommitUpdates();
end;

procedure Tfrm_table_price.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
qrytbp_dt_registration.AsDateTime:=Date;
qry.Post;
qry.Edit;

end;

procedure Tfrm_table_price.qry_table_price_productAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
qry_table_price_producttpp_dt_registration.AsDateTime:=Now;
end;

end.
