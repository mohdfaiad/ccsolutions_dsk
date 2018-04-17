unit ufrm_stock;

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
  cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frxClass,
  ACBrSocket, ACBrCEP, frxDBSet;

type
  Tfrm_stock = class(Tfrm_form_default)
    qrysto_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    qrysto_type: TStringField;
    qrysto_status: TStringField;
    qrysto_dt_registration: TDateTimeField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxGrid_1DBTableView1sto_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_type: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_status: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_dt_registration: TcxGridDBColumn;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    qry_enterprise: TFDQuery;
    ds_enterprise: TDataSource;
    qrysto_name: TStringField;
    cxGrid_1DBTableView1sto_name: TcxGridDBColumn;
    frxDBD_Estoque: TfrxDBDataset;
    qryEmpresa: TStringField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_stock: Tfrm_stock;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock.Action_saveExecute(Sender: TObject);
begin
   inherited;
   cxTabSheet_1.Show;
end;

procedure Tfrm_stock.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Atualização do combobox
   qry_enterprise.Refresh;
end;

procedure Tfrm_stock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_stock.Destroy;
  frm_stock := Nil;
end;

procedure Tfrm_stock.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrysto_dt_registration.Value := Now;
end;

end.
