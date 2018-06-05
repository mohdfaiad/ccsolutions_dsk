unit ufrm_import_astpp;

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
  Vcl.ComCtrls, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, dxLayoutLookAndFeels, dxLayoutControl, Vcl.ExtCtrls;

type
  Tfrm_import_astpp = class(Tfrm_import_default)
    dxBarButton1: TdxBarButton;
    frxDbLigacoes: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDialogControls1: TfrxDialogControls;
    qry_client: TFDQuery;
    frx_dataset_qry_client: TfrxDBDataset;
    dxBarButton3: TdxBarButton;
    Action_print: TAction;
    qryConsultla: TFDQuery;
    OpenDialog1: TOpenDialog;
    dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    qry_clientcli_cod: TBytesField;
    qry_clientcontract_ctr_cod: TBytesField;
    qry_clienttable_price_tbp_cod: TBytesField;
    qry_clientcli_id: TLongWordField;
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
    qry_clientcli_day_maturity: TIntegerField;
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientcli_account_code_sippulse: TStringField;
    qry_clientcli_status: TStringField;
    qry_clientcli_deleted_at: TDateTimeField;
    qry_clientcli_dt_registration: TDateTimeField;
    qryConsultlaimp_cod: TBytesField;
    qryConsultlacontract_ctr_cod: TBytesField;
    qryConsultlaclient_cli_cod: TBytesField;
    qryConsultlaimp_id: TLongWordField;
    qryConsultlaimp_from: TStringField;
    qryConsultlaimp_to: TStringField;
    qryConsultlaimp_duration: TTimeField;
    qryConsultlaimp_date: TDateTimeField;
    qryConsultlaimp_type: TStringField;
    qryConsultlaimp_rate: TBCDField;
    qryConsultlaimp_total: TBCDField;
    qryConsultlaimp_file_name: TStringField;
    qryConsultlacli_account_code_sippulse: TStringField;
    qryConsultlaimport_call_logcol: TStringField;
    qryConsultlaimp_comp: TStringField;
    qryConsultlaimp_deleted_at: TDateTimeField;
    procTeste: TFDStoredProc;
    qryimp_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryclient_cli_cod: TBytesField;
    qryimp_id: TLongWordField;
    qryimp_from: TStringField;
    qryimp_to: TStringField;
    qryimp_duration: TTimeField;
    qryimp_date: TDateTimeField;
    qryimp_type: TStringField;
    qryimp_rate: TBCDField;
    qryimp_total: TBCDField;
    qryimp_file_name: TStringField;
    qrycli_account_code_sippulse: TStringField;
    qrycli_account_code_astpp: TStringField;
    qryimp_comp: TStringField;
    qryimp_tariff: TStringField;
    qryimp_deleted_at: TDateTimeField;
    qry_duracao: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure Action_printExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);


  private
    { Private declarations }
    codigoCliente:string;
    competencia,clienteSippulse:string;
    dtInicial,dtFinal:TDateTime;

    procedure pegarCompetencia(PathArquivo:string);

  public
    { Public declarations }
  end;

var
  frm_import_astpp: Tfrm_import_astpp;

implementation

{$R *.dfm}

uses ufrm_dm;

function StringToDateTime(const Value: String): TDateTime;
var
  FormatSettings: TFormatSettings;

begin
  GetLocaleFormatSettings(LOCALE_USER_DEFAULT, FormatSettings);
  FormatSettings.DateSeparator := '-';
  FormatSettings.ShortDateFormat := 'yyyy/mm/dd hh:nn';
  Result := StrToDateTime(Value, FormatSettings);

end;


procedure Tfrm_import_astpp.Action_importExecute(Sender: TObject);
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

 //pegarCompetencia(OpenDialog1.FileName);


 With frm_dm.qry,sql do
  begin
    close;
    Text:='delete from import_call_log '+
           ' where imp_comp =:comp ' +
           ' and contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod +
           ' and cli_account_code_sippulse =:cli_account_code_sippulse';
    ParamByName('comp').AsString:= competencia;
    ParamByName('cli_account_code_sippulse').AsString:= clienteSippulse;

    Prepare;
    ExecSQL;
   end;


 qry.Close;
 qry.ParamByName('comp').AsString:= competencia;
 qry.ParamByName('ctr_cod').Value:= frm_dm.qry_signincontractCod.Value;
 //qry.ParamByName('cient').AsString:= clienteSippulse;
 qry.Prepare;
 qry.Open;

 codigoCliente:='-1';
 inherited;

end;

procedure Tfrm_import_astpp.Action_printExecute(Sender: TObject);
begin
  inherited;
if Application.MessageBox('Deseja visualizar o relat�rio da conta de consumo?', 'CONSUMO',
                          MB_YESNO + MB_ICONQUESTION) = mrYes then
 begin
   frxDbLigacoes.Clear;
   frxDbLigacoes.LoadFromFile('c:\ccsolutions_dsk\reports\rep_relatorio_ligacoes.fr3');
   frxDbLigacoes.ShowReport;
 end;
end;

procedure Tfrm_import_astpp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_import_astpp.Destroy;
  frm_import_astpp := Nil;
end;

procedure Tfrm_import_astpp.FormCreate(Sender: TObject);
var
x:TFormatSettings;
begin
  inherited;
x.ShortDateFormat := 'dd/mm/yyyy';
qry.Close;
qry.ParamByName('comp').AsString:= competencia;
qry.ParamByName('ctr_cod').Value:= frm_dm.qry_signincontractCod.Value;
//qry.ParamByName('cient').AsString:= clienteSippulse;
qry.Prepare;
qry.Open;
end;

procedure Tfrm_import_astpp.pegarCompetencia(PathArquivo:string);
var
arquivo: TStrings;
i,ini,fin,coluna:Integer;
data,ano,mes,dia:string;
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

data :=Copy(arquivo[0],ini + 1,(fin - ini-1));
if Copy(data,5,1) = '-' then
 begin
    ano:=Copy(data,1,4);
    mes:= Copy(data,6,2);
    dia:= Copy(data,9,2);
 end;
dtInicial:=StrToDate(mes+'/'+ dia+'/'+ano);
competencia:=mes + '/' + ano;

i:=Length(arquivo[0]);
coluna:=0;
ini:=0;
fin:=0;

for I := 0 to Length(arquivo[0]) do
begin
 if copy(arquivo[0],i,1) = ';' then
  coluna:=coluna + 1;

 if coluna = 10 then
  begin
   ini:= i;
   coluna:=11;
  end;


 if coluna = 12 then
  begin
   fin:= i;
   Break;
  end;
end;

 clienteSippulse:= Copy(arquivo[0],ini + 1,(fin - ini-1));

end;

procedure Tfrm_import_astpp.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
ShowMessage('TESTE');
end;

procedure Tfrm_import_astpp.qryBeforePost(DataSet: TDataSet);
Var
  intSegundos:Integer;
  wdHoras, wdMinutos, wdSegundos: Word;
begin
procTeste.Prepare;
procTeste.ParamByName('p_ctr_id').AsLargeInt:=1;//frm_dm.qry_contractctr_id.AsLargeInt;
procTeste.ParamByName('p_cli_account_code_astpp').AsString:='Alexandre  (1864734903)';//qrycli_account_code_sippulse.AsString;
(**
procTeste.ParamByName('p_imp_from').AsString:=qryimp_from.AsString;
procTeste.ParamByName('p_imp_to').AsString:=qryimp_to.AsString;
procTeste.ParamByName('p_imp_duration').AsInteger:=qry_duracao.AsInteger;
procTeste.ParamByName('p_imp_date').AsDateTime:=qryimp_date.AsDateTime;
procTeste.ParamByName('p_imp_type').AsString:=qryimp_type.AsString;
procTeste.ParamByName('p_imp_rate').AsBCD:=qryimp_rate.AsFloat;
procTeste.ParamByName('p_imp_total').AsBCD:=qryimp_total.AsFloat;
procTeste.ParamByName('p_imp_comp').AsString:=competencia;
*)
procTeste.ExecProc;

end;

end.