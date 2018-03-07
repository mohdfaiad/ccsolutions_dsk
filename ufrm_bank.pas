unit ufrm_bank;

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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxButtonEdit, Vcl.StdCtrls, cxShellComboBox, QImport3Wizard, QExport4Dialog,
  cxBarEditItem;

type
  Tfrm_bank = class(Tfrm_form_default)
    qrybnk_id: TFDAutoIncField;
    cxTabSheet_contact: TcxTabSheet;
    cxTabSheet_address: TcxTabSheet;
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
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
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
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    Label1: TLabel;
    qrycontract_ctr_id: TIntegerField;
    qrybnk_name: TStringField;
    qrybnk_code: TStringField;
    qrybnk_agency_number: TStringField;
    qrybnk_agency_digit: TStringField;
    qrybnk_account_number: TStringField;
    qrybnk_account_digit: TStringField;
    qrybnk_swift_code: TStringField;
    qrybnk_iban_code: TStringField;
    qrybnk_add_bus_address: TStringField;
    qrybnk_add_bus_number: TStringField;
    qrybnk_add_bus_street: TStringField;
    qrybnk_add_bus_complement: TStringField;
    qrybnk_add_bus_city: TStringField;
    qrybnk_add_bus_state: TStringField;
    qrybnk_add_bus_country: TStringField;
    qrybnk_phone1: TStringField;
    qrybnk_phone2: TStringField;
    qrybnk_phone3: TStringField;
    qrybnk_phone4: TStringField;
    qrybnk_contact: TStringField;
    qrybnk_dt_registration: TDateTimeField;
    qrybnk_add_bus_zipcode: TStringField;
    cxGrid_1DBTableView1bnk_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_name: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_code: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_swift_code: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_iban_code: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bank: Tfrm_bank;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_bank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_bank.Destroy;
  frm_bank := Nil;
end;

procedure Tfrm_bank.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrybnk_dt_registration.Value:= Date + Time;
end;

end.
