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

  frxClass,

  ufrm_print_default,

  u_class_print_astpp, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  Tfrm_print_astpp = class(Tfrm_print_default)
    cxLabel1: TcxLabel;
    dblkupcmbbox_client: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    dt_start: TcxDateEdit;
    dt_end: TcxDateEdit;
    cxLabel3: TcxLabel;
    memClient: TFDMemTable;
    dsClient: TDataSource;
    frxReport: TfrxReport;
    memClientcli_cod: TStringField;
    memClientcli_first_name: TStringField;
    memClientcli_last_name: TStringField;
    memcli_account_code_astpp: TStringField;
    memimp_from: TStringField;
    memimp_to: TStringField;
    memimp_duration: TTimeField;
    memimp_date: TDateTimeField;
    memimp_type: TStringField;
    memimp_rate: TBCDField;
    memimp_total: TBCDField;
    memClientcli_id: TLongWordField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_filterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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
end;

end.
