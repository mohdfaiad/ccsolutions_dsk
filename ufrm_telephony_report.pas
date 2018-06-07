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
  AdvPanel, cxCheckListBox, frxClass, frxDBSet;

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
    procedure cxButtonConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonPrintClick(Sender: TObject);
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

qry.First;
cxCheckListBoxClientSelecionado.Items.Clear;
listaCliId.Clear;
while not qry.Eof do
begin
  cxCheckListBoxClientSelecionado.AddItem(qrycli_first_name.AsString);
  listaCliId.Add(qrycli_id.AsString);
  qry.Next;
end;

end;

procedure Tfrm_telephony_report.cxButtonPrintClick(Sender: TObject);
var
i:Integer;
selecionado:Boolean;
begin
selecionado:=False;
for I := 0 to cxCheckListBoxClientSelecionado.Items.Count - 1 do
  begin
    if cxCheckListBoxClientSelecionado.Items.Items[i].Checked then
     begin
     selecionado:=True;
     Break;
     end;
  end;
  if not selecionado then
   begin
     Application.MessageBox('Não existe nenhum cliente selecionado para gerar o relatório!','Imprimir Telefonia' ,MB_OK + MB_ICONEXCLAMATION);
     exit;
   end;

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

      frxReportConta.LoadFromFile('C:\ccsolutions_dsk\reports\rep_relatorio_ligacoes_v2.fr3' ) ;
      frxReportConta.PrepareReport(True);
      frxReportConta.ShowReport;
     end;
     end;
  inherited;

end;

procedure Tfrm_telephony_report.FormCreate(Sender: TObject);
begin
  inherited;
cxCheckListBoxClientSelecionado.Items.Clear;
listaCliId:=TStringList.Create;
cxDateEditDataInicial.Date:=Date - 30;
cxDateEditDataFinal.Date:=date;
end;

end.
