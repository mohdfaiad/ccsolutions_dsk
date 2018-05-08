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
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, cxDBLookupComboBox,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxRadioGroup;

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
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    cxRadioDesconto: TcxRadioButton;
    cxEditPercentual: TcxTextEdit;
    cxRadioAcrescimo: TcxRadioButton;
    cxEditValor: TcxTextEdit;
    cxButton1: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem11: TdxLayoutItem;
    qry_table_price_productvlrAntigo: TBCDField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    cxGrid2DBTableView1tpp_id: TcxGridDBColumn;
    cxGrid2DBTableView1table_price_tbp_id: TcxGridDBColumn;
    cxGrid2DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid2DBTableView1tpp_value: TcxGridDBColumn;
    cxGrid2DBTableView1tpp_dt_registration: TcxGridDBColumn;
    cxGrid2DBTableView1vlrAntigo: TcxGridDBColumn;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qry_table_price_productAfterInsert(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
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

procedure Tfrm_table_price.cxButton1Click(Sender: TObject);
begin
qry.First;
while not qry.Eof do
 begin
  qry.Edit;
  qrytpp_value.AsFloat:=qryvlrAntigo.AsFloat * (1-(StrToFloat(cxEditPercentual.Text) / 100));
  qry.Post;
  qry.Next;
 end;
end;

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
