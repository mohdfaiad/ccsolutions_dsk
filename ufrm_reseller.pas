unit ufrm_reseller;

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
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, cxButtonEdit;

type
  Tfrm_reseller = class(Tfrm_form_default)
    qryres_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryres_first_name: TStringField;
    qryres_last_name: TStringField;
    qryres_email: TStringField;
    qryres_cnpj: TStringField;
    qryres_im: TStringField;
    qryres_ie: TStringField;
    qryres_suframa: TStringField;
    qryres_add_bus_zipcode: TStringField;
    qryres_add_bus_address: TStringField;
    qryres_add_bus_number: TStringField;
    qryres_add_bus_street: TStringField;
    qryres_add_bus_complement: TStringField;
    qryres_add_bus_city: TStringField;
    qryres_add_bus_state: TStringField;
    qryres_add_bus_country: TStringField;
    qryres_phone1: TStringField;
    qryres_phone2: TStringField;
    qryres_phone3: TStringField;
    qryres_phone4: TStringField;
    qryres_contact: TStringField;
    qryres_dt_open: TDateField;
    qryres_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1res_id: TcxGridDBColumn;
    cxGrid_1DBTableView1res_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1res_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1res_email: TcxGridDBColumn;
    cxGrid_1DBTableView1res_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1res_im: TcxGridDBColumn;
    cxGrid_1DBTableView1res_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1res_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1res_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1res_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1res_dt_registration: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
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
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_reseller: Tfrm_reseller;

implementation

{$R *.dfm}

procedure Tfrm_reseller.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_reseller.Destroy;
  frm_reseller := Nil;
end;

procedure Tfrm_reseller.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryres_dt_registration.Value := Date + Time;
end;

end.
