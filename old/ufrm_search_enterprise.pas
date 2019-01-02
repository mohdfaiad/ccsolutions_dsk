unit ufrm_search_enterprise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_search, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, dxBar, cxClasses, dxStatusBar, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.Menus,
  cxImageList;

type
  Tfrm_search_enterprise = class(Tfrm_search)
    qryent_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryent_type: TStringField;
    qryent_first_name: TStringField;
    qryent_last_name: TStringField;
    qryent_email: TStringField;
    qryent_cnpj: TStringField;
    qryent_ie: TStringField;
    qryent_im: TStringField;
    qryent_suframa: TStringField;
    qryent_add_bus_zipcode: TStringField;
    qryent_add_bus_address: TStringField;
    qryent_add_bus_number: TStringField;
    qryent_add_bus_street: TStringField;
    qryent_add_bus_complement: TStringField;
    qryent_add_bus_city: TStringField;
    qryent_add_bus_state: TStringField;
    qryent_add_bus_country: TStringField;
    qryent_phone1: TStringField;
    qryent_phone2: TStringField;
    qryent_phone3: TStringField;
    qryent_phone4: TStringField;
    qryent_contact: TStringField;
    qryent_dt_open: TDateField;
    qryent_image: TBlobField;
    qryent_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_type: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn;
    procedure cxGrid_1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Empresa:string;

  end;

var
  frm_search_enterprise: Tfrm_search_enterprise;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_main_default;

procedure Tfrm_search_enterprise.cxGrid_1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
//   frm_dm.qry_enterprise.Locate('ent_id',frm_dm.qry_enterpriseent_id.AsInteger,[loCaseInsensitive, loPartialKey]);
//   empresa := IntToStr(frm_dm.qry_enterpriseent_id.AsInteger)+ ' - '+frm_dm.qry_enterpriseent_last_name.AsString;
//   close;
end;

end.
