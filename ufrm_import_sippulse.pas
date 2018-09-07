unit ufrm_import_sippulse;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,
  System.IniFiles,

  Vcl.ActnList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ImgList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

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
  cxPC,
  dxRibbon,
  cxImageList,
  cxClasses,

  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, dxBar,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,

  QImport3Wizard,

  ufrm_import_default,

  u_class_connection;

type
  Tfrm_import_sippulse = class(Tfrm_import_default)
    OpenDialog: TOpenDialog;
    memimp_from: TStringField;
    memimp_to: TStringField;
    memimp_duration: TStringField;
    memimp_date: TStringField;
    memimp_type: TStringField;
    memimp_rate: TStringField;
    memimp_total: TStringField;
    memcli_account_code_sippulse: TStringField;
    Action_import: TAction;
    dxBarButton1: TdxBarButton;
    procedure QImport3Wizard_1AfterImport(Sender: TObject);
    procedure QImport3Wizard_1BeforeImport(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure CreateClientSIPPulse;

  public

  end;

var
  frm_import_sippulse: Tfrm_import_sippulse;

implementation

uses
  ufrm_dm;

{$R *.dfm}

{ Tfrm_import_sippulse }

procedure Tfrm_import_sippulse.Action_importExecute(Sender: TObject);
var
  pathFile, pathImport, pathError : string;
  imp                             : TIniFile;
begin
  inherited;
  pathImport  := ExtractFileDir(GetCurrentDir) + '\import\import_sippulse.imp';
  pathError   := ExtractFileDir(GetCurrentDir) + '\logs\error_import_sippulse.txt';

  try
    try
      imp := TIniFile.Create(pathImport);

      if OpenDialog.Execute then begin
        pathFile                    := OpenDialog.FileName;

        imp.WriteString('FIRST_STEP', 'FileName', pathFile);
        imp.Free;

        QImport3Wizard_1.FileName             := pathFile;
        QImport3Wizard_1.TemplateFileName     := pathImport;
        QImport3Wizard_1.ErrorLog             := True;
        QImport3Wizard_1.ErrorLogFileName     := pathError;
        QImport3Wizard_1.RewriteErrorLogFile  := True;
        QImport3Wizard_1.ShowErrorLog         := True;
        QImport3Wizard_1.CloseAfterImport     := True;
        QImport3Wizard_1.Execute;
      end;
    except on E: Exception do
      ShowMessage('Error: ' + E.Message);
    end;
  finally
  end;
end;

procedure Tfrm_import_sippulse.CreateClientSIPPulse;
var
  strproc_create : TFDStoredProc;
begin
  mem.First;

  while not (mem.Eof) do begin
    try
      try
        strproc_create := TFDStoredProc.Create(Self);
        strproc_create.Connection := frm_dm.connCCS;
        strproc_create.StoredProcName := 'proc_import_call_log_sippulse';
        strproc_create.Prepare;

        strproc_create.ParamByName('p_ctr_token').AsString                  := Tconnection.ctr_token;
        strproc_create.ParamByName('p_cli_account_code_sippulse').AsString  := memcli_account_code_sippulse.AsString;
        strproc_create.ParamByName('p_imp_from').AsString                   := memimp_from.AsString;
        strproc_create.ParamByName('p_imp_to').AsString                     := memimp_to.AsString;
        strproc_create.ParamByName('p_imp_duration').AsString               := memimp_duration.AsString;
        strproc_create.ParamByName('p_imp_date').AsString                   := memimp_date.AsString;
        strproc_create.ParamByName('p_imp_type').AsString                   := memimp_type.AsString;
        strproc_create.ParamByName('p_imp_rate').AsString                   := memimp_rate.AsString;
        strproc_create.ParamByName('p_imp_total').AsString                  := memimp_total.AsString;
        strproc_create.ExecProc;

        mem.Next;
      except on E: Exception do
        ShowMessage('Erro: ' + E.Message);
      end;
    finally
    end;
  end;
end;

procedure Tfrm_import_sippulse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_import_sippulse.Destroy;
  frm_import_sippulse := Nil;
end;

procedure Tfrm_import_sippulse.QImport3Wizard_1AfterImport(Sender: TObject);
begin
  inherited;
  CreateClientSIPPulse;
end;

procedure Tfrm_import_sippulse.QImport3Wizard_1BeforeImport(Sender: TObject);
begin
  inherited;
  mem.Close;
  mem.Open;
end;

end.
