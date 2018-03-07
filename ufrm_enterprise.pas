unit ufrm_enterprise;

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
  cxButtonEdit, cxShellComboBox, QExport4Dialog, cxBarEditItem, dxBarExtItems,
  QImport3Wizard;

type
  Tfrm_enterprise = class(Tfrm_form_default)
    qryent_id: TFDAutoIncField;
    qryent_type: TStringField;
    qryent_first_name: TStringField;
    qryent_last_name: TStringField;
    qryent_email: TStringField;
    qryent_phone1: TStringField;
    qryent_phone2: TStringField;
    qryent_phone3: TStringField;
    qryent_phone4: TStringField;
    qryent_contact: TStringField;
    qryent_dt_open: TDateField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem13: TdxLayoutItem;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl_address: TdxLayoutControl;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutControl_addressGroup_Root: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    cxTabSheet_contact: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qryent_ie: TStringField;
    qryent_im: TStringField;
    qryent_suframa: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    qrycontract_ctr_id: TIntegerField;
    qryent_cnpj: TStringField;
    qryent_dt_registration: TDateTimeField;
    qryent_add_bus_zipcode: TStringField;
    qryent_add_bus_address: TStringField;
    qryent_add_bus_number: TStringField;
    qryent_add_bus_street: TStringField;
    qryent_add_bus_complement: TStringField;
    qryent_add_bus_city: TStringField;
    qryent_add_bus_state: TStringField;
    qryent_add_bus_country: TStringField;
    cxGrid_1DBTableView1ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_type: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_im: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_dt_registration: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_enterprise: Tfrm_enterprise;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_enterprise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_enterprise.Destroy;
  frm_enterprise := Nil;
end;

procedure Tfrm_enterprise.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryent_dt_registration.Value := Date + Time;
end;

end.
