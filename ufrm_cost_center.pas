unit ufrm_cost_center;

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
  ACBrSocket, ACBrCEP, frxClass;

type
  Tfrm_cost_center = class(Tfrm_form_default)
    qrycoc_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrycoc_name: TStringField;
    qrycoc_status: TStringField;
    qrycod_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1coc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1coc_name: TcxGridDBColumn;
    cxGrid_1DBTableView1coc_status: TcxGridDBColumn;
    cxGrid_1DBTableView1cod_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    qry_cost_center_detail: TFDQuery;
    ds_cost_center_detail: TDataSource;
    qry_cost_center_detailcod_id: TFDAutoIncField;
    qry_cost_center_detailcontract_ctr_id: TIntegerField;
    qry_cost_center_detailcost_center_coc_id: TIntegerField;
    qry_cost_center_detailcod_name: TStringField;
    qry_cost_center_detailcod_status: TStringField;
    qry_cost_center_detailcod_dt_registration: TDateTimeField;
    cxGrid1DBTableView1cod_id: TcxGridDBColumn;
    cxGrid1DBTableView1cod_name: TcxGridDBColumn;
    cxGrid1DBTableView1cod_status: TcxGridDBColumn;
    cxGrid1DBTableView1cod_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_cost_center_detailAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
  end;

var
  frm_cost_center: Tfrm_cost_center;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_cost_center.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_cost_center.Destroy;
  frm_cost_center := Nil;
end;

procedure Tfrm_cost_center.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_cost_center.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
end;

procedure Tfrm_cost_center.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrycod_dt_registration.Value := Date + Time;
end;

procedure Tfrm_cost_center.qry_cost_center_detailAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qry_cost_center_detailcod_dt_registration.Value := Now;
end;

end.
