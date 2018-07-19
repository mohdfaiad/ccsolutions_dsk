unit ufrm_contract;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ufrm_form_default,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinBlack,
  dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinFoggy,
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
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar,
  cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ACBrBase, ACBrEnterTab, cxShellComboBox, QExport4Dialog, cxBarEditItem,
  dxBarExtItems, QImport3Wizard, ACBrSocket, ACBrCEP, frxClass, Vcl.StdCtrls, frxDBSet, cxDBLookupComboBox;

type
  Tfrm_contract = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    qryctr_first_name: TStringField;
    qryctr_last_name: TStringField;
    qryctr_email: TStringField;
    qryctr_phone1: TStringField;
    qryctr_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_dt_birth_open: TcxGridDBColumn;
    qryctr_cod: TBytesField;
    qryctr_dt_birth: TDateField;
    qryctr_user_license: TWordField;
    qryctr_status: TStringField;
    qryctr_deleted_at: TDateTimeField;
    qryctr_id: TLargeintField;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    frx_db_contrato: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_contract: Tfrm_contract;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_contract.Action_cancelExecute(Sender: TObject);
begin
  inherited;
   ds.DataSet.Cancel;
end;

procedure Tfrm_contract.Action_editExecute(Sender: TObject);
begin
  if qry.IsEmpty then
   exit;

  inherited;

end;

procedure Tfrm_contract.Button1Click(Sender: TObject);
begin
  inherited;
   ShowMessage(IntToStr(dxBarManager_1Bar3.DockedLeft));
end;

procedure Tfrm_contract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_contract.Destroy;
  frm_contract := Nil;
end;

procedure Tfrm_contract.FormShow(Sender: TObject);
begin
  inherited;
  dxBarManager_1Bar3.DockedLeft := 122;
end;

end.
