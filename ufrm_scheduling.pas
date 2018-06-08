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
  cxSchedulerDBStorage, cxSpinEdit, cxTimeEdit, ACBrSocket, ACBrCEP;

type
  Tfrm_scheduling = class(Tfrm_default)
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGridDBTableView1sch_id: TcxGridDBColumn;
    cxGridDBTableView1sch_datetime: TcxGridDBColumn;
    cxGridDBTableView1sch_description: TcxGridDBColumn;
    cxGridDBTableView1sch_dt_registration: TcxGridDBColumn;
    qry_scheduling: TFDQuery;
    ds_qry_scheduling: TDataSource;
    qry_schedulingsch_cod: TBytesField;
    qry_schedulingcontract_ctr_cod: TBytesField;
    qry_schedulingemployee_emp_cod: TBytesField;
    qry_schedulingsch_id: TLongWordField;
    qry_schedulingsch_datetime: TDateTimeField;
    qry_schedulingsch_description: TStringField;
    qry_schedulingsch_dt_registration: TDateTimeField;
    cxGridDBTableView1rec_name: TcxGridDBColumn;
    labelFuncionario: TLabel;
    comboboxEmployee: TcxComboBox;
    cxDate: TcxDateEdit;
    labelDataAgendamento: TLabel;
    labelHora: TLabel;
    cxTime: TcxTimeEdit;
    labelListaAgenda: TLabel;
    labelDescricao: TLabel;
    cxMemoDescricao: TcxMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1sch_id: TcxGridDBColumn;
    cxGrid1DBTableView1sch_datetime: TcxGridDBColumn;
    cxGrid1DBTableView1sch_description: TcxGridDBColumn;
    cxGrid1DBTableView1sch_dt_registration: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    looComboxProficional: TcxLookupComboBox;
    qry_proficional: TFDQuery;
    qry_proficionaldoc_cod: TBytesField;
    qry_proficionalcontract_ctr_cod: TBytesField;
    qry_proficionalemployee_emp_cod: TBytesField;
    qry_proficionaldoc_id: TLongWordField;
    qry_proficionaldoc_status: TStringField;
    qry_proficionaldoc_deleted_at: TDateTimeField;
    qry_proficionaldoc_dt_registration: TDateTimeField;
    qry_proficionalrec_name: TStringField;
    qry_proficionalcodDoctor: TStringField;
    qry_proficionalcodEmployee: TStringField;
    ds_proficional: TDataSource;
    qrysch_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qrysch_id: TLongWordField;
    qrysch_datetime: TDateTimeField;
    qrysch_description: TStringField;
    qrysch_dt_registration: TDateTimeField;
    grid_1DBTableView1sch_cod: TcxGridDBColumn;
    grid_1DBTableView1sch_id: TcxGridDBColumn;
    grid_1DBTableView1sch_datetime: TcxGridDBColumn;
    grid_1DBTableView1sch_description: TcxGridDBColumn;
    grid_1DBTableView1sch_dt_registration: TcxGridDBColumn;
    qryproficional: TStringField;
    grid_1DBTableView1proficional: TcxGridDBColumn;
    qrycodScheduling: TStringField;
    procedure dxBarButton2Click(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxTimePropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure tbsht_5Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure cxDatePropertiesCloseUp(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
  private
    { Private declarations }
     sch_cod:string;

//    //  listaCodFunc:TStrings;
//      sch_cod:string;
      procedure limpaCache(Sender:TObject);
      procedure fillFields;
      procedure ExibirAgendamento;


  public
    { Public declarations }
    doctor_name:string;
  end;

var
  frm_scheduling: Tfrm_scheduling;

implementation

{$R *.dfm}

uses ufrm_scheduling_clinical;

procedure Tfrm_scheduling.cxDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  //Para Exibir os agendamentos do dia
  ExibirAgendamento;
end;

procedure Tfrm_scheduling.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  fillFields;

end;

procedure Tfrm_scheduling.cxTimePropertiesEditValueChanged(Sender: TObject);
begin
   inherited;
   //Para Exibir os agendamentos do dia
   ExibirAgendamento;
end;

procedure Tfrm_scheduling.dxBarButton2Click(Sender: TObject);
begin
  inherited;
qry.Insert;
pgctrl_1.ActivePage:=tbsht_2;
end;

procedure Tfrm_scheduling.ExibirAgendamento;
begin
     qry_scheduling.Close;
     qry_scheduling.ParamByName('DATAINCIO').AsDateTime:= StrToDateTime(DateToStr(cxDate.Date) + ' 00:00:00');
     qry_scheduling.ParamByName('DATAFIM').AsDateTime:= StrToDateTime(DateToStr(cxDate.Date) + ' 23:59:59');
     qry_scheduling.Prepare;
     qry_scheduling.Open;
end;

procedure Tfrm_scheduling.fillFields;
begin
//  edt_codid.Text:=qrysch_id.AsString;
//  edt_dt_registration.Text:=qrysch_dt_registration.AsString;
//  cxMemoDescricao.Text:=qrysch_description.AsString;
//  cxDate.Date:=qrysch_datetime.AsDateTime;
//  cxDate.Properties.ShowTime:=false;
//  cxTime.Time:=StrToTime(FormatDateTime('h:mm:ss', qrysch_datetime.AsDateTime));
//  comboboxEmployee.SetFocus;
//  with frm_dm.qry,sql do
//  begin
//   Close;
//   text:= ' select concat(''0x'', hex(sch_cod)),concat(''0x'', hex(employee_emp_cod)) from scheduling ' +
//          ' where sch_id = ' + qrysch_id.AsString;
//   Prepare;
//   open;
//   sch_cod:=Fields[0].AsString;
//   comboboxEmployee.ItemIndex:=listaCodFunc.IndexOf(Fields[1].AsString);
//  end;
//

end;

procedure Tfrm_scheduling.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_scheduling.Destroy;
  frm_scheduling := Nil;
end;

procedure Tfrm_scheduling.FormCreate(Sender: TObject);
begin
  inherited;
    schadp.AfterApplyUpdate:=limpaCache;
   // listaCodFunc:=TStringList.Create;
end;

procedure Tfrm_scheduling.FormShow(Sender: TObject);
begin
  inherited;
  qry.Close;
  qry.Open;
end;

procedure Tfrm_scheduling.limpaCache(Sender: TObject);
begin
qry.ApplyUpdates(0);
qry_scheduling.ApplyUpdates(0);

end;


procedure Tfrm_scheduling.Action_cancelExecute(Sender: TObject);
begin
  inherited;
    if (qrysch_id.AsInteger = 0) then
     begin
       with frm_dm.qry,sql do
       begin
        Close;
        Text:= ' delete from scheduling ' +
               ' where sch_cod = ' + sch_cod +
               ' and sch_id = 0';
        Prepare;
        ExecSQL;
       end;
     end;

   qry.Close;
   qry.sql.Text:= ' select scheduling.*, hex(sch_cod)as codScheduling from scheduling  ';
   qry.prepare;
   qry.open;

end;

procedure Tfrm_scheduling.Action_deleteExecute(Sender: TObject);
begin
 // inherited;

   sch_cod := qrycodScheduling.AsString;
   if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
      with frm_dm.qry2,sql do
       begin
        Close;
        Text:= ' delete from scheduling ' +
               ' where sch_cod = ' + sch_cod;
        Prepare;
        ExecSQL;
        end;

       qry.Close;
       qry.Open;
    end;

end;

procedure Tfrm_scheduling.Action_editExecute(Sender: TObject);
begin
    inherited;
    //Se tag = 2 é para alterar
     Self.Tag := 2;
     qry.Edit;

     ExibirAgendamento;

     qry_proficional.Close;
     qry_proficional.Open;

     looComboxProficional.Text := qryproficional.AsString;
    //--------------------------
     sch_cod := qrycodScheduling.AsString;

    edt_codid.Text                    := IntToStr(qrysch_id.AsInteger);
    edt_dt_registration.Text          := DateToStr(qrysch_dt_registration.AsDateTime);
    cxDate.Date := qrysch_datetime.AsDateTime;
    cxTime.Time := qrysch_datetime.AsDateTime;
    cxMemoDescricao.Text := qrysch_description.AsString;
end;

procedure Tfrm_scheduling.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //Se tag = 1 é para inserir
    Self.Tag := 1;

    cxDate.Date:=Date;
    cxTime.Time:=Time;
    looComboxProficional.ItemIndex := -1;
    cxMemoDescricao.Clear;
    qry.Insert;
    pgctrl_1.ActivePage:=tbsht_2;

end;

procedure Tfrm_scheduling.Action_saveExecute(Sender: TObject);
begin
 if (Self.Tag = 1) then
  begin

    with frm_dm.qry,sql do
     begin
      close;
      text:='select sch_datetime from scheduling ' +
            'where sch_datetime between :ini and :fin';
      ParamByName('ini').AsDateTime:=StrToDateTime(DateToStr(cxDate.Date) + '00:00:00');
      ParamByName('fin').AsDateTime:=StrToDateTime(DateToStr(cxDate.Date) + FormatDateTime('hh',cxTime.Time));
      Prepare;
      open;

      if not IsEmpty then
       begin
        if Application.MessageBox('Existe um compromisso para a hora selecionada, deseja reamente agendar esse compromisso? ',
                                  'Agendamento',MB_YESNO + MB_ICONQUESTION) = mrNo  then
           Exit;
       end;


      if Trim(cxMemoDescricao.Text) = '' then
       begin
        Application.MessageBox('Para agendamento é necessario informar uma descrição!','AVISO',MB_OK + MB_ICONWARNING);
        cxMemoDescricao.SetFocus;
        Exit;
       end;

        //  if (not qry_scheduling.IsEmpty) and (Self.Tag = 1) then  //Tag 1 quando for inserir
        qry_scheduling.First;
        while not qry_scheduling.Eof do
         begin
           if cxTime.Time = StrToDateTime(FormatDateTime('hh:mm:ss',qry_schedulingsch_datetime.AsDateTime))then
            begin
              ShowMessage('Achou');
            end;

        //  if (not qry_scheduling.IsEmpty) and (Self.Tag = 1) then  //Tag 1 quando for inserir

         if (qry_scheduling.RecordCount >0 ) and (Self.Tag = 1) then  //Tag 1 quando for inserir
           begin
             Application.MessageBox('Existe um compromiso agendado para essa data e hoja, '+
                'favor ajustar sua agenda!', 'AVISO',MB_OK + MB_ICONWARNING);
             cxDate.SetFocus;
             Exit;
           end;

        if Trim(cxMemoDescricao.Text) = '' then
         begin
           Application.MessageBox('Para agendamento é necessario informar uma descrição!','AVISO',MB_OK + MB_ICONWARNING);
           cxMemoDescricao.SetFocus;
           Exit;
         end;

           qry_scheduling.Next;
         end;

        with frm_dm.qry,sql do
         begin
           close;
           Text:= ' select case when max(sch_id) is null then 1 ' +
                  '      else (max(sch_id) + 1) end as maxID from scheduling '+
                  ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
           Prepare;
           Open;
           if not (qry.State in [dsInsert,dsEdit])  then
            qry.Edit;

           if qrysch_id.AsInteger = 0 then
            begin
              qrysch_id.AsInteger        := Fields[0].AsInteger;
              qryemployee_emp_cod.Value  := qry_proficionalemployee_emp_cod.Value;
              qrysch_datetime.AsDateTime := cxDate.Date + cxTime.Time;
              qrysch_description.AsString := cxMemoDescricao.Text;
              qry.Post;
              qry.ApplyUpdates(0);

              qry.Close;
              qry.sql.Text:= ' select scheduling.*, hex(sch_cod)as codScheduling from scheduling  ';
              qry.prepare;
              qry.open;
            end;
         end;
     end;
  end else if (Self.Tag = 2) then
  begin
      qry.Edit;
      qrysch_datetime.AsDateTime  := cxDate.Date + cxTime.Time;
      qrysch_description.AsString := cxMemoDescricao.Text;
      qry.Post;
      qry.ApplyUpdates(0);
  end;

   inherited;

end;


procedure Tfrm_scheduling.qryAfterInsert(DataSet: TDataSet);
begin
inherited;
  //inicializar as variaveis vazias
  sch_cod := '';
  //------------------------------
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   sch_cod:=Fields[0].AsString;

   Close;
   Text:='insert into scheduling (sch_id,sch_cod,contract_ctr_cod,sch_dt_registration) ' +
         ' select 0,'+ sch_cod + ',' +  frm_dm.v_contract_ctr_cod + ',Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;
   qry.sql.Text:= ' select scheduling.*, hex(sch_cod)as codScheduling from scheduling  ' +
                  ' where sch_cod = '+ sch_cod ;
   qry.prepare;
   qry.open;


   edt_codid.Text:=qrysch_id.AsString;
   edt_dt_registration.Text:=qrysch_dt_registration.AsString;


// With frm_dm.qry,sql do
//  begin
//   Close;
//   Text:='insert into scheduling (sch_cod,sch_id,contract_ctr_cod) ' +
//         ' select unhex(replace(uuid(),''-'','''')),0,'+ frm_dm.v_contract_ctr_cod;
//   Prepare;
//   ExecSQL;
//
//   Close;
//   text:= ' select concat(''0x'', hex(sch_cod)) from scheduling ' +
//          ' where sch_id = 0 ';
//   Prepare;
//   open;
//   sch_cod:=Fields[0].AsString;
//  end;
//
//   qry.Unprepare;
//   qry.Close;
//   qry.sql.text:= ' select scheduling.*,rec_name from scheduling '+
//                  ' left join employee  on emp_cod = employee_emp_cod ' +
//                  ' left join record  on rec_cod =  record_rec_cod ' +
//                  ' where sch_cod = ' + sch_cod ;
//   qry.Prepare;
//   qry.open;
//
//   qry.Edit;
//   qrysch_dt_registration.AsDateTime:=Now;
//   if Self.Tag = 1 then //chamado pelo agendamento da clinica
//    begin
//
//    end;

end;

procedure Tfrm_scheduling.tbsht_5Show(Sender: TObject);
begin
  inherited;
// if Self.Tag <> 1 then
//  begin
//  with frm_dm.qry,sql do
//   begin
//    clear;
//    text:=' select emp_id,concat(''0x'', hex(emp_cod)) as emp_cod,rec_name from employee ' +
//          ' inner join record on rec_cod = record_rec_cod ' +
//          ' where emp_status <> ''D'' ' +
//          ' and employee.contract_ctr_cod = '+ frm_dm.v_contract_ctr_cod;
//    prepare;
//    open;
//    first;
//    comboboxEmployee.Clear;
//    listaCodFunc.Clear;
//    while not Eof do
//     begin
//      comboboxEmployee.Properties.Items.Add(
//      FormatFloat('000000',FieldByName('emp_id').AsInteger) + ' - ' +  FieldByName('rec_name').AsString);
//      listaCodFunc.Add(FieldByName('emp_cod').AsString);
//      Next;
//     end;
//   end;
//  end;
//
//
//
//    comboboxEmployee.Clear;
//    listaCodFunc.Clear;
//  with frm_scheduling_clinical.qry_doctor do
//   begin
//    while not frm_scheduling_clinical.qry_doctor.Eof do
//     begin
//      comboboxEmployee.Properties.Items.Add(
//      FormatFloat('000000',  FieldByName('doc_id').AsInteger) + ' - ' +  FieldByName('rec_name').AsString);
//      listaCodFunc.Add(FieldByName('docCod').AsString);
//      Next;
//     end;
//   end;
//end;

//   if Self.Tag = 1 then //chamado pelo agendamento da clinica
//    begin
//     comboboxEmployee.ItemIndex:=comboboxEmployee.Properties.Items.IndexOf(doctor_name);
//     comboboxEmployee.Enabled:=False;

  end;

end.
