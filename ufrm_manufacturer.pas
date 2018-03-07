unit ufrm_manufacturer;

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
  cxButtonEdit;

type
  Tfrm_manufacturer = class(Tfrm_form_default)
    qryman_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryman_first_name: TStringField;
    qryman_last_name: TStringField;
    qryman_email: TStringField;
    qryman_cnpj: TStringField;
    qryman_ie: TStringField;
    qryman_im: TStringField;
    qryman_suframa: TStringField;
    qryman_dt_open: TDateField;
    qryman_add_bus_zipcode: TStringField;
    qryman_add_bus_address: TStringField;
    qryman_add_bus_number: TStringField;
    qryman_add_bus_street: TStringField;
    qryman_add_bus_complement: TStringField;
    qryman_add_bus_city: TStringField;
    qryman_add_bus_state: TStringField;
    qryman_add_bus_country: TStringField;
    qryman_phone1: TStringField;
    qryman_phone2: TStringField;
    qryman_phone3: TStringField;
    qryman_phone4: TStringField;
    qryman_contact: TStringField;
    qryman_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1man_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1man_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1man_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1man_email: TcxGridDBColumn;
    cxGrid_1DBTableView1man_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1man_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1man_im: TcxGridDBColumn;
    cxGrid_1DBTableView1man_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1man_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1man_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1man_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1man_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1man_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1man_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1man_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1man_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_manufacturer: Tfrm_manufacturer;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_manufacturer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_manufacturer.Destroy;
  frm_manufacturer := Nil;
end;

procedure Tfrm_manufacturer.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryman_dt_registration.Value := Date + Time;
end;

end.
