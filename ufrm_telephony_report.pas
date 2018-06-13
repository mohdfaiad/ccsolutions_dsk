unit ufrm_telephony_report;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_search, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxStatusBar, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  dxBevel, ufrm_dm, Vcl.StdCtrls, cxButtons, Vcl.CheckLst, Vcl.ExtCtrls,
  AdvPanel, cxCheckListBox, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF, cxCheckBox, cxProgressBar;

type
  Tfrm_telephony_report = class(Tfrm_search)
    dxBevel1: TdxBevel;
    cxLabelDataInicial: TcxLabel;
    cxLabelDataFinal: TcxLabel;
    cxDateEditDataInicial: TcxDateEdit;
    cxDateEditDataFinal: TcxDateEdit;
    cxButtonConsultar: TcxButton;
    qrycli_first_name: TStringField;
    qrycli_cod: TBytesField;
    qrycli_id: TLongWordField;
    cxGrid_1DBTableView1cli_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_cod: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_id: TcxGridDBColumn;
    cxCheckListBoxClientSelecionado: TcxCheckListBox;
    cxButtonPrint: TcxButton;
    frxReportConta: TfrxReport;
    qry_import_call_log: TFDQuery;
    frxDBDataset_import_call_log: TfrxDBDataset;
    qry_import_call_logent_first_name: TStringField;
    qry_import_call_logent_cnpj: TStringField;
    qry_import_call_logimp_cod: TBytesField;
    qry_import_call_logcontract_ctr_cod: TBytesField;
    qry_import_call_logclient_cli_cod: TBytesField;
    qry_import_call_logcli_account_code_sippulse: TStringField;
    qry_import_call_logcli_account_code_astpp: TStringField;
    qry_import_call_logimp_id: TLongWordField;
    qry_import_call_logimp_from: TStringField;
    qry_import_call_logimp_to: TStringField;
    qry_import_call_logimp_duration: TTimeField;
    qry_import_call_logimp_date: TDateTimeField;
    qry_import_call_logimp_type: TStringField;
    qry_import_call_logimp_rate: TBCDField;
    qry_import_call_logimp_total: TBCDField;
    qry_import_call_logimp_file_name: TStringField;
    qry_import_call_logimp_comp: TStringField;
    qry_import_call_logimp_tariff: TStringField;
    qry_import_call_logimp_deleted_at: TDateTimeField;
    qry_import_call_logcli_id: TLongWordField;
    qry_import_call_logcli_first_name: TStringField;
    qry_import_call_logcli_cpfcnpj: TStringField;
    qry_import_call_logcli_add_bus_zipcode: TStringField;
    qry_import_call_logcli_add_bus_address: TStringField;
    qry_import_call_logcli_add_bus_number: TStringField;
    qry_import_call_logcli_add_bus_complement: TStringField;
    qry_import_call_logcli_add_bus_city: TStringField;
    qry_import_call_logcli_add_bus_state: TStringField;
    qry_import_call_logcli_add_bus_street: TStringField;
    qry_grafico: TFDQuery;
    qry_graficoimp_type: TStringField;
    qry_graficocount: TLargeintField;
    qry_graficosumimp_total: TFMTBCDField;
    qry_graficoformatsumimp_duration1000: TStringField;
    qry_graficopercentual: TFMTBCDField;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    qry_grafico2: TFDQuery;
    qry_grafico2dayimp_date: TIntegerField;
    qry_grafico2sumimp_durationdiv100: TLargeintField;
    frxDBDataset2: TfrxDBDataset;
    qry_grafico_total: TFDQuery;
    qry_grafico_totalcount: TLargeintField;
    qry_grafico_totalsumimp_total: TFMTBCDField;
    qry_grafico_totalsumimp_durationdiv100: TLargeintField;
    frxDBDataset3: TfrxDBDataset;
    cxCheckBoxAll: TcxCheckBox;
    cxProgressBar: TcxProgressBar;
    qrycli_add_bus_street: TStringField;
    procedure cxButtonConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBoxAllClick(Sender: TObject);
    procedure cxCheckListBoxClientSelecionadoClickCheck(Sender: TObject;
      AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
  private
    { Private declarations }
    listaCliId:TStringList;
  public
    { Public declarations }
  end;

var
  frm_telephony_report: Tfrm_telephony_report;

implementation

{$R *.dfm}

procedure Tfrm_telephony_report.cxButtonConsultarClick(Sender: TObject);
begin
  inherited;
qry.Close;
qry.ParamByName('ini').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataInicial.Date) + ' 00:00:00');
qry.ParamByName('fin').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataFinal.Date) + ' 23:59:59');
qry.Prepare;
qry.Open;

cxCheckBoxAll.Enabled:=qry.RecordCount > 0;
cxCheckBoxAll.Checked:=False;
cxCheckBoxAll.Caption:='Marcar Todos';
cxProgressBar.Position:=0;

qry.First;
cxCheckListBoxClientSelecionado.Items.Clear;
listaCliId.Clear;
while not qry.Eof do
begin
  cxCheckListBoxClientSelecionado.AddItem(qrycli_first_name.AsString + ' - ' + qrycli_add_bus_street.AsString);
  listaCliId.Add(qrycli_id.AsString);
  qry.Next;
end;

end;

procedure Tfrm_telephony_report.cxButtonPrintClick(Sender: TObject);
var
i,quant:Integer;
selecionado:Boolean;
pathPDF:string;
begin
quant:=0;
for I := 0 to cxCheckListBoxClientSelecionado.Items.Count - 1 do
  begin
    if cxCheckListBoxClientSelecionado.Items.Items[i].Checked then
     begin
     quant:=quant + 1;
     end;
  end;
  if quant < 0  then
   begin
     Application.MessageBox('Não existe nenhum cliente selecionado para gerar o relatório!','Imprimir Telefonia' ,MB_OK + MB_ICONEXCLAMATION);
     exit;
   end;


cxProgressBar.Properties.Max:=quant;
cxProgressBar.Position:=0;

 for I := 0 to cxCheckListBoxClientSelecionado.Items.Count - 1 do
  begin
    if cxCheckListBoxClientSelecionado.Items.Items[i].Checked then
     begin

      qry_import_call_log.Close;
      qry_import_call_log.ParamByName('codEmpresa').AsInteger:=1;
      qry_import_call_log.ParamByName('dt_ini').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataInicial.Date) + ' 00:00:00');
      qry_import_call_log.ParamByName('dt_fin').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataFinal.Date) + ' 23:59:59');
      qry_import_call_log.ParamByName('cli').AsInteger:=StrToInt(listaCliId[i]);
      qry_import_call_log.Prepare;
      qry_import_call_log.Open;

      qry_grafico.Close;
      qry_grafico.ParamByName('dt_ini').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataInicial.Date) + ' 00:00:00');
      qry_grafico.ParamByName('dt_fin').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataFinal.Date) + ' 23:59:59');
      qry_grafico.ParamByName('cli').AsInteger:=StrToInt(listaCliId[i]);
      qry_grafico.Prepare;
      qry_grafico.Open;

      qry_grafico2.Close;
      qry_grafico2.ParamByName('dt_ini').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataInicial.Date) + ' 00:00:00');
      qry_grafico2.ParamByName('dt_fin').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataFinal.Date) + ' 23:59:59');
      qry_grafico2.ParamByName('cli').AsInteger:=StrToInt(listaCliId[i]);
      qry_grafico2.Prepare;
      qry_grafico2.Open;

      qry_grafico_total.Close;
      qry_grafico_total.ParamByName('dt_ini').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataInicial.Date) + ' 00:00:00');
      qry_grafico_total.ParamByName('dt_fin').AsDateTime:=StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEditDataFinal.Date) + ' 23:59:59');
      qry_grafico_total.ParamByName('cli').AsInteger:=StrToInt(listaCliId[i]);
      qry_grafico_total.Prepare;
      qry_grafico_total.Open;


      qry_import_call_log.First;
      pathPDF:='C:\ccsolutions_dsk\export\telefonia\' +
             FormatDateTime('yyyy',qry_import_call_logimp_date.AsDateTime) + '\' +
             FormatDateTime('mm',qry_import_call_logimp_date.AsDateTime);

      if not DirectoryExists(pathPDF) then
       CreateDir(pathPDF);

      frxReportConta.LoadFromFile('C:\ccsolutions_dsk\reports\rep_relatorio_ligacoes_v2.fr3' ) ;
      frxReportConta.Variables['dataIni'] := QuotedStr(DateToStr(cxDateEditDataInicial.Date));
      frxReportConta.Variables['dataFin'] := QuotedStr(DateToStr(cxDateEditDataFinal.Date));
      frxPDFExport1.FileName := cxCheckListBoxClientSelecionado.Items.Items[i].Text +  '.pdf';
      frxPDFExport1.DefaultPath := pathPDF + '\';
      frxPDFExport1.ShowDialog := False;
      frxPDFExport1.ShowProgress := False;
      frxPDFExport1.OverwritePrompt := False;
      frxReportConta.PrepareReport();
      frxReportConta.Export(frxPDFExport1);
      cxProgressBar.Position:=i +1;
      cxProgressBar.Repaint;
     end;
   end;
      Application.MessageBox('Relatório da conta telefonica gerado com sucesso!','Telefonia',MB_OK + MB_ICONINFORMATION);
      cxProgressBar.Position:=0;
  inherited;

end;

procedure Tfrm_telephony_report.cxCheckBoxAllClick(Sender: TObject);
var
i:Integer;
begin
if cxCheckBoxAll.Tag = 1 then
 exit;

 for i := 0 to cxCheckListBoxClientSelecionado.Items.Count -1 do
  cxCheckListBoxClientSelecionado.Items.Items[i].Checked:=cxCheckBoxAll.Checked;

  if not cxCheckBoxAll.Checked then
   cxCheckBoxAll.Caption:='Marcar Todos'
   else
   cxCheckBoxAll.Caption:='Desmarcar Todos';

  inherited;

end;

procedure Tfrm_telephony_report.cxCheckListBoxClientSelecionadoClickCheck(
  Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
i:Integer;
selecionadoAll:Boolean;
begin
  inherited;
selecionadoAll:=true;
for i := 0 to cxCheckListBoxClientSelecionado.Items.Count - 1 do
 if not cxCheckListBoxClientSelecionado.Items.Items[i].Checked then
  begin
   selecionadoAll:=False;
   Break;
  end;
 cxCheckBoxAll.Tag:=1;
 cxCheckBoxAll.Checked:=selecionadoAll;
 if not cxCheckBoxAll.Checked then
  cxCheckBoxAll.Caption:='Marcar Todos'
  else
   cxCheckBoxAll.Caption:='Desmarcar Todos';

 cxCheckBoxAll.Tag:=0;

end;

procedure Tfrm_telephony_report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_telephony_report.Destroy;
  frm_telephony_report := Nil;
end;

procedure Tfrm_telephony_report.FormCreate(Sender: TObject);
begin
  inherited;
cxCheckListBoxClientSelecionado.Clear;
listaCliId:=TStringList.Create;
cxDateEditDataInicial.Date:=Date - 30;
cxDateEditDataFinal.Date:=date;
cxCheckBoxAll.Checked:=false;
cxCheckBoxAll.Enabled:=false;

end;

end.
