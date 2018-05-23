unit ufrm_scheduling;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_default, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDBData, cxContainer, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  frxExportDOCX, frxClass, frxExportBaseDialog, frxExportPDF, System.ImageList,
  Vcl.ImgList, QExport4Dialog, QImport3Wizard, ACBrBase, ACBrEnterTab,
  Vcl.Menus, dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  cxCheckBox, dxStatusBar, cxTextEdit, cxLabel, cxGroupBox, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, ufrm_dm, cxMemo, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, Vcl.ExtCtrls, PlannerCal, vCal, Planner,
  PlannerMonthView, DBPlannerMonthView, DBPlanner, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerAgendaView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSchedulerRecurrence, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, dxSkinscxSchedulerPainter,
  cxSchedulerDBStorage, cxSpinEdit, cxTimeEdit;

type
  Tfrm_scheduling = class(Tfrm_default)
    labelFuncionario: TLabel;
    cxLCFuncionario: TcxLookupComboBox;
    labelDescricao: TLabel;
    cxMemoDescricao: TcxMemo;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    labelDataAgendamento: TLabel;
    cxDate: TcxDateEdit;
    qrysch_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qrysch_id: TLongWordField;
    qrysch_datetime: TDateTimeField;
    qrysch_description: TStringField;
    qrysch_dt_registration: TDateTimeField;
    cxGridDBTableView1sch_cod: TcxGridDBColumn;
    cxGridDBTableView1contract_ctr_cod: TcxGridDBColumn;
    cxGridDBTableView1employee_emp_cod: TcxGridDBColumn;
    cxGridDBTableView1sch_id: TcxGridDBColumn;
    cxGridDBTableView1sch_datetime: TcxGridDBColumn;
    cxGridDBTableView1sch_description: TcxGridDBColumn;
    cxGridDBTableView1sch_dt_registration: TcxGridDBColumn;
    labelListaAgenda: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qry_scheduling: TFDQuery;
    ds_qry_scheduling: TDataSource;
    cxGrid1DBTableView1sch_id: TcxGridDBColumn;
    cxGrid1DBTableView1sch_datetime: TcxGridDBColumn;
    cxGrid1DBTableView1sch_description: TcxGridDBColumn;
    cxGrid1DBTableView1sch_dt_registration: TcxGridDBColumn;
    labelHora: TLabel;
    cxTime: TcxTimeEdit;
    qry_schedulingsch_cod: TBytesField;
    qry_schedulingcontract_ctr_cod: TBytesField;
    qry_schedulingemployee_emp_cod: TBytesField;
    qry_schedulingsch_id: TLongWordField;
    qry_schedulingsch_datetime: TDateTimeField;
    qry_schedulingsch_description: TStringField;
    qry_schedulingsch_dt_registration: TDateTimeField;
    procedure tbsht_5Show(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxTimePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  procedure limpaCache(Sender:TObject);
  procedure limpaEdits;
  public
    { Public declarations }
  end;

var
  frm_scheduling: Tfrm_scheduling;

implementation

{$R *.dfm}

procedure Tfrm_scheduling.cxTimePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
 qry_scheduling.Close;
 qry_scheduling.ParamByName('dateTime').AsDateTime:=cxDate.Date  + cxTime.Time;
 qry_scheduling.Prepare;
 qry_scheduling.Open;
end;

procedure Tfrm_scheduling.dxBarButton1Click(Sender: TObject);
begin
  inherited;
if not qry_scheduling.IsEmpty then
 begin
   Application.MessageBox('Existe um compromiso agendado para essa data e hoja, '+
      'favor ajustar sua agenda!', 'AVISO',MB_OK + MB_ICONWARNING);
   cxDate.SetFocus;
   Exit;
 end;

if Trim(cxMemoDescricao.Text) = '' then
 begin
   Application.MessageBox('Para agendamento � necessario informar uma descri��o!','AVISO',MB_OK + MB_ICONWARNING);
   cxMemoDescricao.SetFocus;
   Exit;
 end;


qrysch_description.AsString:=cxMemoDescricao.Text;
qrysch_datetime.AsDateTime:=cxDate.Date + cxTime.Time;

qry.Post;
schadp.ApplyUpdates(0);

ShowMessage('Dados salvo com sucesso!');

pgctrl_1.ActivePage:=tbsht_1;
qry.Close;
qry.open;
qry.Refresh;
limpaEdits;
end;

procedure Tfrm_scheduling.dxBarButton2Click(Sender: TObject);
begin
  inherited;
qry.Insert;
pgctrl_1.ActivePage:=tbsht_2;
end;

procedure Tfrm_scheduling.FormCreate(Sender: TObject);
begin
  inherited;
schadp.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_scheduling.limpaCache(Sender: TObject);
begin
qry.ApplyUpdates(0);
qry_scheduling.ApplyUpdates(0);

end;

procedure Tfrm_scheduling.limpaEdits;
var
i:Integer;
begin
for i := 0 to Self.ComponentCount -1 do
 begin
   if Self.Components[i] is TcxTextEdit then
    TcxTextEdit(Self.Components[i]).Clear;

   if Self.Components[i] is TcxMemo then
    TcxMemo(Self.Components[i]).Clear;

   if Self.Components[i] is TcxLookupComboBox then
    TcxLookupComboBox(Self.Components[i]).Clear;

 end;
end;

procedure Tfrm_scheduling.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into scheduling (sch_cod,sch_id,contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,(select ctr_cod from contract ' +
         ' where ctr_id = :contrato)';
   ParamByName('contrato').AsInteger:=frm_dm.qry_signinctr_id.AsInteger;
   Prepare;
   ExecSQL;
  end;
   qry.Close;
   qry.sql.text:= ' select * from scheduling ' +
                  ' where sch_id = 0 ';
   qry.Prepare;
   qry.open;

  qry.Edit;
  qrysch_dt_registration.AsDateTime:=Now;
end;

procedure Tfrm_scheduling.tbsht_5Show(Sender: TObject);
begin
  inherited;
  edt_codid.Text:=qrysch_id.AsString;
  edt_dt_registration.Text:=FormatDateTime('dd/mm/yyyy',qrysch_dt_registration.AsDateTime);
  cxMemoDescricao.Text:=qrysch_description.AsString;
  cxDate.Date:=Date;
  cxTime.Time:=Time;
end;

end.
