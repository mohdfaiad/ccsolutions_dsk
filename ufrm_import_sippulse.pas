unit ufrm_import_sippulse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_import_default, Data.DB,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  QImport3Wizard, ACBrBase, ACBrEnterTab, System.ImageList, Vcl.ImgList,
  cxGraphics, System.Actions, Vcl.ActnList, dxBar, cxClasses, Vcl.Grids,
  Vcl.DBGrids, frxClass, frxDBSet, frxDCtrl, frxChart, dxBarExtItems,DateUtils,
  Vcl.ComCtrls;

type
  Tfrm_import_sippulse = class(Tfrm_import_default)
    qryimp_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryimp_from: TStringField;
    qryimp_to: TStringField;
    qryimp_duration: TTimeField;
    qryimp_type: TStringField;
    qryimp_rate: TFMTBCDField;
    qryimp_total: TFMTBCDField;
    dxBarButton1: TdxBarButton;
    qrycli_account_code_sippulse: TStringField;
    frxDbLigacoes: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDialogControls1: TfrxDialogControls;
    qry_client: TFDQuery;
    qry_clientcli_id: TFDAutoIncField;
    qry_clientcontract_ctr_id: TIntegerField;
    qry_clientcli_type: TStringField;
    qry_clientcli_first_name: TStringField;
    qry_clientcli_last_name: TStringField;
    qry_clientcli_email: TStringField;
    qry_clientcli_phone1: TStringField;
    qry_clientcli_phone2: TStringField;
    qry_clientcli_phone3: TStringField;
    qry_clientcli_phone4: TStringField;
    qry_clientcli_contact: TStringField;
    qry_clientcli_cpfcnpj: TStringField;
    qry_clientcli_rgie: TStringField;
    qry_clientcli_im: TStringField;
    qry_clientcli_suframa: TStringField;
    qry_clientcli_add_bus_zipcode: TStringField;
    qry_clientcli_add_bus_address: TStringField;
    qry_clientcli_add_bus_number: TStringField;
    qry_clientcli_add_bus_street: TStringField;
    qry_clientcli_add_bus_complement: TStringField;
    qry_clientcli_add_bus_city: TStringField;
    qry_clientcli_add_bus_state: TStringField;
    qry_clientcli_add_bus_country: TStringField;
    qry_clientcli_add_bil_zipcode: TStringField;
    qry_clientcli_add_bil_address: TStringField;
    qry_clientcli_add_bil_number: TStringField;
    qry_clientcli_add_bil_street: TStringField;
    qry_clientcli_add_bil_complement: TStringField;
    qry_clientcli_add_bil_city: TStringField;
    qry_clientcli_add_bil_state: TStringField;
    qry_clientcli_add_bil_country: TStringField;
    qry_clientcli_add_del_zipcode: TStringField;
    qry_clientcli_add_del_address: TStringField;
    qry_clientcli_add_del_number: TStringField;
    qry_clientcli_add_del_street: TStringField;
    qry_clientcli_add_del_complement: TStringField;
    qry_clientcli_add_del_city: TStringField;
    qry_clientcli_add_del_state: TStringField;
    qry_clientcli_add_del_country: TStringField;
    qry_clientcli_image: TBlobField;
    qry_clientcli_day_maturity: TIntegerField;
    qry_clientcli_status: TStringField;
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientcli_account_code_sippulse: TStringField;
    qry_clientcli_dt_registration: TDateTimeField;
    frx_dataset_qry_client: TfrxDBDataset;
    qryclient_cli_id: TIntegerField;
    qryimp_date: TDateTimeField;
    qry_duracao: TLargeintField;
    dxBarButton3: TdxBarButton;
    Action_print: TAction;
    qryConsultla: TFDQuery;
    qryConsultlaimp_id: TFDAutoIncField;
    qryConsultlacontract_ctr_id: TIntegerField;
    qryConsultlaclient_cli_id: TIntegerField;
    qryConsultlaimp_from: TStringField;
    qryConsultlaimp_to: TStringField;
    qryConsultlaimp_duration: TTimeField;
    qryConsultlaimp_date: TDateTimeField;
    qryConsultlaimp_type: TStringField;
    qryConsultlaimp_rate: TFMTBCDField;
    qryConsultlaimp_total: TFMTBCDField;
    qryConsultlaimp_file_name: TStringField;
    qryConsultlacli_account_code_sippulse: TStringField;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure Action_printExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);


  private
    { Private declarations }
    codigoCliente:Integer;
    dtInicial,dtFinal:TDateTime;
    procedure pegarIntervaloDaDataDoArquivo(PathArquivo:string);

  public
    { Public declarations }
  end;

var
  frm_import_sippulse: Tfrm_import_sippulse;

implementation

{$R *.dfm}

uses ufrm_dm;

function StringToDateTime(const Value: String): TDateTime;
var
  FormatSettings: TFormatSettings;
begin
  GetLocaleFormatSettings(LOCALE_USER_DEFAULT, FormatSettings);
  FormatSettings.DateSeparator := '-';
  FormatSettings.ShortDateFormat := 'yyyy/MM/dd';
  Result := StrToDateTime(Value, FormatSettings);
end;


procedure Tfrm_import_sippulse.Action_importExecute(Sender: TObject);
var
arq: TStringList;
begin
if OpenDialog1.Execute then
 begin
  arq:=TStringList.Create;
  arq.LoadFromFile(QImport3Wizard_1.TemplateFileName);
  arq[2]:='FileName=' + OpenDialog1.FileName;
  arq.SaveToFile(QImport3Wizard_1.TemplateFileName);
  arq.Destroy;
 end;

 pegarIntervaloDaDataDoArquivo(OpenDialog1.FileName);
 qry.Close;
 qry.ParamByName('ini').Value:= StrToDateTime(FormatDateTime('dd/MM/yyyy hh:mm:ss',dtInicial) + ' 00:00:00');
 qry.ParamByName('fin').Value:= StrToDateTime(FormatDateTime('dd/MM/yyyy hh:mm:ss',dtFinal) + ' 23:59:59');

 qry.Prepare;
 qry.Open;

 codigoCliente:=-1;

 inherited;

end;

procedure Tfrm_import_sippulse.Action_printExecute(Sender: TObject);
begin
  inherited;
if Application.MessageBox('Deseja visualizar o relatório da conta de consumo?', 'CONSUMO',
                          MB_YESNO + MB_ICONQUESTION) = mrYes then
 begin
   frxDbLigacoes.Clear;
   frxDbLigacoes.LoadFromFile('c:\ccsolutions_dsk\reports\rep_relatorio_ligacoes.fr3');
   frxDbLigacoes.ShowReport;
 end;

end;

procedure Tfrm_import_sippulse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_import_sippulse.Destroy;
  frm_import_sippulse := Nil;
end;

procedure Tfrm_import_sippulse.FormCreate(Sender: TObject);
begin
  inherited;
qry.Close;
qry.ParamByName('ini').AsDate:= StartOfTheMonth(now);
qry.ParamByName('fin').AsDate:= EndOfTheMonth(now);
qry.Prepare;
qry.Open;
end;



procedure Tfrm_import_sippulse.pegarIntervaloDaDataDoArquivo(PathArquivo:string);
var
arquivo: TStrings;
i,ini,fin,coluna:Integer;
begin
arquivo:=TStringList.Create;
arquivo.LoadFromFile(PathArquivo);

i:=Length(arquivo[0]);
coluna:=0;
ini:=0;
fin:=0;
for I := 0 to Length(arquivo[0]) do
begin
 if copy(arquivo[0],i,1) = ';' then
  coluna:=coluna + 1;

 if coluna = 3 then
  begin
   ini:= i;
   coluna:=4;
  end;


 if coluna = 5 then
  begin
  fin:= i;
  Break;
  end;
end;

dtInicial:=StringToDateTime(Copy(arquivo[0],ini + 1,(fin - ini-1)));


i:=Length(arquivo[arquivo.Count -1]);
coluna:=0;
ini:=0;
fin:=0;
for I := 0 to Length(arquivo[arquivo.Count -1]) do
begin
 if copy(arquivo[arquivo.Count -1],i,1) = ';' then
  coluna:=coluna + 1;

 if coluna = 3 then
  begin
   ini:= i;
   coluna:=4;
  end;


 if coluna = 5 then
  begin
  fin:= i;
  Break;
  end;
end;


dtFinal:=StringToDateTime(Copy(arquivo[arquivo.Count -1],ini + 1,(fin - ini-1)));
end;

procedure Tfrm_import_sippulse.qryBeforePost(DataSet: TDataSet);
Var
  intSegundos:Integer;
  wdHoras, wdMinutos, wdSegundos: Word;
begin

  wdHoras := 0;
  wdMinutos := 0;
  wdSegundos := 0;

  intSegundos := qry_duracao.AsInteger; // Informe aqui o número de segundos

  While intSegundos >= 3600 Do // Capturando as horas
  Begin
    wdHoras := wdHoras + 1;
    intSegundos := intSegundos - 3600;
  End;

  While (intSegundos >= 60) Do // Capturando os Minutos
  Begin
    wdMinutos := wdMinutos + 1;
    intSegundos := intSegundos - 60;
  End;

  wdSegundos := intSegundos; // Capturando os Segundos

  qryimp_duration.AsString := FormatDateTime('hh:mm:ss',
    StrToTime(IntToStr(wdHoras) + ':' + IntToStr(wdMinutos) + ':' +
    IntToStr(wdSegundos)));
  if qryimp_type.AsString = 'VC1' then
    qryimp_type.AsString := 'Movel Local';

  if qryimp_type.AsString = 'VC3' then
    qryimp_type.AsString := 'Movel DDD';

  if qryimp_type.AsString = 'FIXO_LOCAL' then
    qryimp_type.AsString := 'Fixo Local';

  if qryimp_type.AsString = 'FIXO_LDN' then
    qryimp_type.AsString := 'Fixo DDD';


  if codigoCliente = -1  then
   begin
    with frm_dm.qry,sql do
     begin
      close;
      text:=' select cli_id from client ' +
            ' where cli_account_code_sippulse = :cliente';
       ParamByName('cliente').AsString:=qrycli_account_code_sippulse.AsString;
       prepare;
       open;
       codigoCliente:=frm_dm.qry.FieldByName('cli_id').AsInteger;
     end;
   end;
 qryclient_cli_id.AsInteger:=codigoCliente;
end;


end.
