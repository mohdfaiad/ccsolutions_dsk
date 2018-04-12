unit ufrm_supplier;

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
  QImport3Wizard, ACBrSocket, ACBrCEP, frxClass;

type
  Tfrm_supplier = class(Tfrm_form_default)
    qrysup_id: TFDAutoIncField;
    qrysup_first_name: TStringField;
    qrysup_last_name: TStringField;
    qrysup_email: TStringField;
    qrysup_phone1: TStringField;
    qrysup_phone2: TStringField;
    qrysup_phone3: TStringField;
    qrysup_phone4: TStringField;
    qrysup_contact: TStringField;
    qrysup_dt_open: TDateField;
    qrysup_ie: TStringField;
    qrysup_im: TStringField;
    qrysup_suframa: TStringField;
    cxTabSheet_address: TcxTabSheet;
    cxTabSheet_contact: TcxTabSheet;
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
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    qrycontract_ctr_id: TIntegerField;
    qrysup_cnpj: TStringField;
    qrysup_dt_registration: TDateTimeField;
    qrysup_add_bus_zipcode: TStringField;
    qrysup_add_bus_address: TStringField;
    qrysup_add_bus_number: TStringField;
    qrysup_add_bus_street: TStringField;
    qrysup_add_bus_complement: TStringField;
    qrysup_add_bus_city: TStringField;
    qrysup_add_bus_state: TStringField;
    qrysup_add_bus_country: TStringField;
    cxGrid_1DBTableView1sup_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_email: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_im: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_dt_registration: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_supplier: Tfrm_supplier;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_supplier.ACBrCEP_1BuscaEfetuada(Sender: TObject);
 var
i:Integer;
begin
  inherited;
  for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     qrysup_add_bus_address.AsString    := ACBrCEP_1.Enderecos[i].Logradouro;
     qrysup_add_bus_street.AsString     := ACBrCEP_1.Enderecos[i].Bairro;
     qrysup_add_bus_complement.AsString     := ACBrCEP_1.Enderecos[i].Complemento;
     qrysup_add_bus_city.AsString     	 := ACBrCEP_1.Enderecos[i].Municipio;
     qrysup_add_bus_state.AsString     := ACBrCEP_1.Enderecos[i].UF;
     qrysup_add_bus_country.AsString     := 'BRASIL';
     cxDBTextEdit22.SetFocus;
    end;
end;

procedure Tfrm_supplier.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 ACBrCEP_1.BuscarPorCEP(cxDBButtonEdit2.Text);
end;

procedure Tfrm_supplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_supplier.Destroy;
  frm_supplier := Nil;
end;

procedure Tfrm_supplier.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrysup_dt_registration.Value := Date + Time;
end;

end.
