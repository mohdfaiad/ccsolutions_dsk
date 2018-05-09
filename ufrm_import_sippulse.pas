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
  Vcl.DBGrids, frxClass, frxDBSet, frxDCtrl, frxChart, dxBarExtItems,DateUtils;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure QImport3Wizard_1AfterImport(Sender: TObject);
    procedure Action_printExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);

  private
    { Private declarations }
    codigoCliente:Integer;

  public
    { Public declarations }
  end;

var
  frm_import_sippulse: Tfrm_import_sippulse;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_import_sippulse.Action_importExecute(Sender: TObject);
begin
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

procedure Tfrm_import_sippulse.QImport3Wizard_1AfterImport(Sender: TObject);

begin
  inherited;
  (*
qry.First;
 with frm_dm.qry,sql do
  begin
   close;
   text:=' select cli_id from client ' +
         ' where cli_account_code_sippulse = :cliente';
   ParamByName('cliente').AsString:=qrycli_account_code_sippulse.AsString;
   prepare;
   open;
   codigoCliente:=FieldByName('cli_id').AsInteger;
  end;


   qry.First;
   qry.Tag:=1;
   while not qry.Eof do
    begin
     qry.Edit;
     qryclient_cli_id.AsInteger:=codigoCliente;
     qry.Post;
     qry.Next;
    end;
  *)
end;


procedure Tfrm_import_sippulse.qryBeforePost(DataSet: TDataSet);
Var
  intSegundos:Integer;
  wdHoras, wdMinutos, wdSegundos: Word;
begin
 if qry.Tag = 1 then
  exit;



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
