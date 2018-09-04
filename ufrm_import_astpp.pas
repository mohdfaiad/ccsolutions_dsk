unit ufrm_import_astpp;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,

  Vcl.ImgList,
  Vcl.ActnList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids,
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
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBar,
  dxRibbon,
  cxImageList,
  cxClasses,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxPC,

  Data.DB, cxDBData,

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

  QImport3Wizard,

  ufrm_import_default,

  u_class_connection;

type
  Tfrm_import_astpp = class(Tfrm_import_default)
    Action_import: TAction;
    dxBarButton1: TdxBarButton;
    memcli_account_code_astpp: TStringField;
    memimp_from: TStringField;
    memimp_to: TStringField;
    memimp_type: TStringField;
    memimp_date: TStringField;
    memimp_rate: TStringField;
    memimp_total: TStringField;
    memimp_duration: TStringField;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_importExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure CreateClientASTPP;
  public

  end;

var
  frm_import_astpp: Tfrm_import_astpp;

implementation

{$R *.dfm}

uses
  ufrm_dm;

procedure Tfrm_import_astpp.Action_importExecute(Sender: TObject);
begin
  inherited;
  QImport3Wizard_1.Execute;
end;

procedure Tfrm_import_astpp.Button1Click(Sender: TObject);
begin
  inherited;
  CreateClientASTPP;
end;

procedure Tfrm_import_astpp.CreateClientASTPP;
var
  strproc_create : TFDStoredProc;
begin
  mem.First;

  while not (mem.Eof) do begin
    try
      try
        strproc_create := TFDStoredProc.Create(Self);
        strproc_create.Connection := frm_dm.connCCS;
        strproc_create.StoredProcName := 'proc_import_call_log_astpp';
        strproc_create.Prepare;

        strproc_create.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
        strproc_create.ParamByName('p_cli_account_code_astpp').AsString := memcli_account_code_astpp.AsString;
        strproc_create.ParamByName('p_imp_from').AsString               := memimp_from.AsString;
        strproc_create.ParamByName('p_imp_to').AsString                 := memimp_to.AsString;
        strproc_create.ParamByName('p_imp_duration').AsString           := memimp_duration.AsString;
        strproc_create.ParamByName('p_imp_date').AsString               := memimp_date.AsString;
        strproc_create.ParamByName('p_imp_type').AsString               := memimp_type.AsString;
        strproc_create.ParamByName('p_imp_rate').AsString               := memimp_rate.AsString;
        strproc_create.ParamByName('p_imp_total').AsString              := memimp_total.AsString;
        strproc_create.ExecProc;

        mem.Next;
      except on E: Exception do
        ShowMessage('Erro: ' + E.Message);
      end;
    finally
    end;
  end;
end;

procedure Tfrm_import_astpp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_import_astpp.Destroy;
  frm_import_astpp := Nil;
end;

end.
