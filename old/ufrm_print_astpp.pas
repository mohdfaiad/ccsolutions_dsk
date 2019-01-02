unit ufrm_print_astpp;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.ImgList,
  Vcl.ActnList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.Menus,
  Vcl.StdCtrls,

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
  dxSkinGlassOceans,
  dxSkinHighContrast,
  dxSkiniMaginary,
  dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis,
  dxSkinMetropolisDark,
  dxSkinMoneyTwins,
  dxSkinOffice2007Black,
  dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin,
  dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp,
  dxSkinSharpPlus,
  dxSkinSilver,
  dxSkinSpringTime,
  dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue,
  dxBarBuiltInMenu,
  cxClasses,
  cxCustomData,
  cxStyles,
  cxEdit,
  dxBar,
  dxRibbon,
  cxImageList,
  cxCustomPivotGrid,
  cxDBPivotGrid,
  cxPC,
  dxBevel,
  cxContainer,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxLabel,
  dxCore,
  cxDateUtils,
  cxCalendar,
  cxButtons,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridCustomView,
  cxGrid,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,

  QExport4Dialog,

  Data.DB,

  ACBrBase,
  ACBrEnterTab,

  frxClass,
  frxDesgn,
  frxDBSet,

  ufrm_print_default,

  u_class_rest_print_astpp, frxChart;

type
  Tfrm_print_astpp = class(Tfrm_print_default)
    cxLabel1: TcxLabel;
    dblkupcmbbox_client: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    memClient: TFDMemTable;
    dsClient: TDataSource;
    frxReport_astpp: TfrxReport;
    memcli_account_code_astpp: TStringField;
    memimp_from: TStringField;
    memimp_to: TStringField;
    memimp_duration: TTimeField;
    memimp_date: TDateTimeField;
    memimp_type: TStringField;
    memimp_rate: TBCDField;
    memimp_total: TBCDField;
    cxButton1: TcxButton;
    Action_filter: TAction;
    cxGrid_1DBTableView1cli_account_code_astpp: TcxGridDBColumn;
    cxGrid_1DBTableView1imp_from: TcxGridDBColumn;
    cxGrid_1DBTableView1imp_to: TcxGridDBColumn;
    cxGrid_1DBTableView1imp_duration: TcxGridDBColumn;
    cxGrid_1DBTableView1imp_date: TcxGridDBColumn;
    cxGrid_1DBTableView1imp_type: TcxGridDBColumn;
    cxGrid_1DBTableView1imp_rate: TcxGridDBColumn;
    cxGrid_1DBTableView1imp_total: TcxGridDBColumn;
    dt_start: TcxDateEdit;
    dt_end: TcxDateEdit;
    dbdsCall: TfrxDBDataset;
    dbdsClient: TfrxDBDataset;
    cxButton2: TcxButton;
    Action_print: TAction;
    memClientcli_cod: TStringField;
    memClientcli_id: TLongWordField;
    memClientcli_type: TStringField;
    memClientcli_first_name: TStringField;
    memClientcli_last_name: TStringField;
    memClientcli_email: TStringField;
    memClientcli_cpfcnpj: TStringField;
    memClientcli_rgie: TStringField;
    memClientcli_im: TStringField;
    memClientcli_suframa: TStringField;
    memClientcli_add_bus_zipcode: TStringField;
    memClientcli_add_bus_address: TStringField;
    memClientcli_add_bus_number: TStringField;
    memClientcli_add_bus_street: TStringField;
    memClientcli_add_bus_complement: TStringField;
    memClientcli_add_bus_city: TStringField;
    memClientcli_add_bus_state: TStringField;
    memClientcli_add_bus_country: TStringField;
    memClientcli_phone1: TStringField;
    memClientcli_phone2: TStringField;
    memClientcli_phone3: TStringField;
    memClientcli_phone4: TStringField;
    memClientcli_contact: TStringField;
    memClientcli_day_maturity: TIntegerField;
    memClientcli_dt_birthopen: TDateField;
    memClientcli_status: TShortintField;
    memClientcli_image1: TBlobField;
    memClientcli_dt_registration: TDateTimeField;
    memEnterprise: TFDMemTable;
    dsEnterprise: TDataSource;
    memEnterpriseent_cod: TStringField;
    memEnterpriseent_id: TLongWordField;
    memEnterpriseent_type: TStringField;
    memEnterpriseent_first_name: TStringField;
    memEnterpriseent_last_name: TStringField;
    memEnterpriseent_nickname: TStringField;
    memEnterpriseent_email: TStringField;
    memEnterpriseent_cnpj: TStringField;
    memEnterpriseent_ie: TStringField;
    memEnterpriseent_im: TStringField;
    memEnterpriseent_suframa: TStringField;
    memEnterpriseent_add_bus_zipcode: TStringField;
    memEnterpriseent_add_bus_address: TStringField;
    memEnterpriseent_add_bus_number: TStringField;
    memEnterpriseent_add_bus_street: TStringField;
    memEnterpriseent_add_bus_complement: TStringField;
    memEnterpriseent_add_bus_city: TStringField;
    memEnterpriseent_add_bus_state: TStringField;
    memEnterpriseent_add_bus_country: TStringField;
    memEnterpriseent_phone1: TStringField;
    memEnterpriseent_phone2: TStringField;
    memEnterpriseent_phone3: TStringField;
    memEnterpriseent_phone4: TStringField;
    memEnterpriseent_contact: TStringField;
    memEnterpriseent_dt_open: TDateField;
    memEnterpriseent_status: TShortintField;
    memEnterpriseent_image1: TBlobField;
    memEnterpriseent_deleted_at: TDateTimeField;
    memEnterpriseent_dt_registration: TDateTimeField;
    dbdsEnterprise: TfrxDBDataset;
    frxChartObject1: TfrxChartObject;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_filterExecute(Sender: TObject);
    procedure Action_printExecute(Sender: TObject);
  private

  public

  end;

var
  frm_print_astpp: Tfrm_print_astpp;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_print_astpp.Action_filterExecute(Sender: TObject);
begin
  inherited;
  Trest_print_astpp.GetImportCallLogASTPP(mem, memClientcli_cod.AsString, StringReplace(FormatDateTime('yyyy/mm/dd', dt_start.Date), '/', '-', [rfReplaceAll]), StringReplace(FormatDateTime('yyyy/mm/dd', dt_end.Date), '/', '-', [rfReplaceAll]));
end;

procedure Tfrm_print_astpp.Action_printExecute(Sender: TObject);
var
  path: string;
begin
  inherited;
  path := ExtractFileDir(GetCurrentDir) + '\reports\telefonia\report_print_astpp.fr3';
  frxReport_astpp.LoadFromFile(path);
  frxReport_astpp.ShowReport();
end;

procedure Tfrm_print_astpp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_print_astpp.Destroy;
  frm_print_astpp := Nil;
end;

procedure Tfrm_print_astpp.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_print_astpp.GetClient(memClient);
  Trest_print_astpp.GetEnterprise(memEnterprise)
end;

end.
