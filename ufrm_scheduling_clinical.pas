unit ufrm_scheduling_clinical;

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
  FireDAC.Stan.Async, FireDAC.DApt, ACBrSocket, ACBrCEP, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, frxExportDOCX, frxClass, frxExportBaseDialog,
  frxExportPDF, System.ImageList, Vcl.ImgList, QExport4Dialog, QImport3Wizard,
  ACBrBase, ACBrEnterTab, Vcl.Menus, dxBar, cxBarEditItem, cxClasses,
  System.Actions, Vcl.ActnList, cxCheckBox, dxStatusBar, cxTextEdit, cxLabel,
  cxGroupBox, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ufrm_dm, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxDateTimeWheelPicker, cxCalendar, ufrm_main, ufrm_scheduling;

type
  Tfrm_scheduling_clinical = class(Tfrm_default)
    cxGridDBTableView1scc_cod: TcxGridDBColumn;
    cxGridDBTableView1contract_ctr_cod: TcxGridDBColumn;
    cxGridDBTableView1client_cli_cod: TcxGridDBColumn;
    cxGridDBTableView1doctor_doc_cod: TcxGridDBColumn;
    cxGridDBTableView1role_rol_cod: TcxGridDBColumn;
    cxGridDBTableView1scc_id: TcxGridDBColumn;
    cxGridDBTableView1scc_status: TcxGridDBColumn;
    cxGridDBTableView1scc_dt_registration: TcxGridDBColumn;
    qry_client: TFDQuery;
    qry_clientcli_cod: TBytesField;
    qry_clientcontract_ctr_cod: TBytesField;
    qry_clientcli_first_name: TStringField;
    qry_clientcliCod: TStringField;
    ds_qry_client: TDataSource;
    qry_doctor: TFDQuery;
    ds_qry_doctor: TDataSource;
    qry_scheduling: TFDQuery;
    qry_schedulingsch_cod: TBytesField;
    qry_schedulingcontract_ctr_cod: TBytesField;
    qry_schedulingemployee_emp_cod: TBytesField;
    qry_schedulingsch_id: TLongWordField;
    qry_schedulingsch_datetime: TDateTimeField;
    qry_schedulingsch_description: TStringField;
    qry_schedulingsch_dt_registration: TDateTimeField;
    qryreq_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryclient_cli_cod: TBytesField;
    qryenterprise_ent_cod: TBytesField;
    qryrequisition_type_ret_cod: TBytesField;
    qryinsurance_ins_cod: TBytesField;
    qryrole_rol_cod: TBytesField;
    qrydoctor_doc_cod: TBytesField;
    qryreq_id: TLongWordField;
    qryreq_status: TStringField;
    qryreq_deleted_at: TDateTimeField;
    qryreq_dt_registration: TDateTimeField;
    qry_requisition_sheduling: TFDQuery;
    ds_requisition_sheduling: TDataSource;
    qryhexreq_cod: TStringField;
    qry_role: TFDQuery;
    qry_rolerol_name: TStringField;
    qry_rolerol_cod: TBytesField;
    ds_qry_role: TDataSource;
    qry_requisition_shedulingrsh_cod: TBytesField;
    qry_requisition_shedulingcontract_ctr_cod: TBytesField;
    qry_requisition_shedulingrequisition_req_cod: TBytesField;
    qry_requisition_shedulingscheduling_sch_cod: TBytesField;
    qry_requisition_shedulingrole_rol_cod: TBytesField;
    qry_requisition_shedulingdoctor_doc_cod: TBytesField;
    qry_requisition_shedulingrsh_id: TLongWordField;
    qry_requisition_shedulingrsh_status: TStringField;
    qry_requisition_shedulingrsh_deleted_at: TDateTimeField;
    qry_requisition_shedulingrsh_dt_registration: TDateTimeField;
    qry_requisition_shedulingrshCod: TStringField;
    qry_requisition_shedulingrol_name: TStringField;
    qry_requisition_shedulingrolCod: TStringField;
    qry_rolerolCod: TStringField;
    qry_doctorrec_name: TStringField;
    qry_doctorrol_name: TStringField;
    qry_doctorrolCod: TStringField;
    qry_requisition_shedulingrec_name: TStringField;
    qry_doctorcontract_ctr_cod: TBytesField;
    cxLabelClient: TcxLabel;
    cxLookupComboBoxCliente: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1rolte_rol_cod: TcxGridDBColumn;
    cxGrid1DBTableView1rsh_id: TcxGridDBColumn;
    cxGrid1DBTableView1rsh_status: TcxGridDBColumn;
    cxGrid1DBTableView1rsh_deleted_at: TcxGridDBColumn;
    cxGrid1DBTableView1rsh_dt_registration: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    grid_1DBTableView1req_cod: TcxGridDBColumn;
    grid_1DBTableView1contract_ctr_cod: TcxGridDBColumn;
    grid_1DBTableView1client_cli_cod: TcxGridDBColumn;
    grid_1DBTableView1enterprise_ent_cod: TcxGridDBColumn;
    grid_1DBTableView1requisition_type_ret_cod: TcxGridDBColumn;
    grid_1DBTableView1insurance_ins_cod: TcxGridDBColumn;
    grid_1DBTableView1role_rol_cod: TcxGridDBColumn;
    grid_1DBTableView1doctor_doc_cod: TcxGridDBColumn;
    grid_1DBTableView1req_id: TcxGridDBColumn;
    grid_1DBTableView1req_status: TcxGridDBColumn;
    grid_1DBTableView1req_deleted_at: TcxGridDBColumn;
    grid_1DBTableView1req_dt_registration: TcxGridDBColumn;
    grid_1DBTableView1hexreq_cod: TcxGridDBColumn;
    qry_doctordoc_cod: TBytesField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    qry_requisition_shedulingschCod: TStringField;
    qry_doctordoc_id: TLongWordField;
    qry_doctordocCod: TStringField;
    procedure Action_cancelExecute(Sender: TObject);
    procedure qry_sql(sql:string);
    procedure Action_saveExecute(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_insertExecute(Sender: TObject);
    procedure qry_schedulingAfterInsert(DataSet: TDataSet);
    procedure qry_requisition_shedulingAfterInsert(DataSet: TDataSet);
    procedure Action_editExecute(Sender: TObject);
    procedure cxGrid1DBTableView1rolte_rol_codPropertiesCloseUp(
      Sender: TObject);
    procedure qry_requisition_shedulingBeforePost(DataSet: TDataSet);
    procedure qry_requisition_shedulingAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    req_cod,sch_cod,rsh_cod:string;
  public
    { Public declarations }
  end;

var
  frm_scheduling_clinical: Tfrm_scheduling_clinical;

implementation

{$R *.dfm}

uses ufrm_scheduling_clinical2;

procedure Tfrm_scheduling_clinical.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qryreq_id.AsInteger = 0) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from requisition ' +
         ' where req_cod = ' + req_cod;
  Prepare;
  ExecSQL;

  qry_sql('todos');
 end;
end;

procedure Tfrm_scheduling_clinical.Action_editExecute(Sender: TObject);
begin
  inherited;
 req_cod:=qryhexreq_cod.AsString;
end;

procedure Tfrm_scheduling_clinical.Action_insertExecute(Sender: TObject);
begin
  inherited;
qry.Insert;
end;

procedure Tfrm_scheduling_clinical.Action_saveExecute(Sender: TObject);
begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(req_id) is null then 1 ' +
          '      else (max(req_id) + 1) end as maxID from requisition '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qryreq_id.AsInteger = 0 then
    qryreq_id.AsInteger:=Fields[0].AsInteger;

    qryclient_cli_cod.Value:=qry_clientcli_cod.Value;
  //  qrydoctor_doc_cod.Value:=qry_doctordoc_cod.Value;
    qry.Post;

    qry_scheduling.Insert;

    close;
    Text:= ' select case when max(sch_id) is null then 1 ' +
           '      else (max(sch_id) + 1) end as maxID from scheduling '+
           ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
    Prepare;
    Open;
    qry_schedulingsch_id.AsInteger:=Fields[0].AsInteger;
  //  qry_schedulingemployee_emp_cod.Value:=qry_doctoremp_cod.Value;
    qry_schedulingsch_datetime.AsDateTime:=Now;
    qry_schedulingsch_description.AsString:= 'AGENDAMENTO DO PACIENTE ' + cxLookupComboBoxCliente.Text;
    qry_scheduling.Post;
 end;

 qry_requisition_sheduling.First;
 while not qry_requisition_sheduling.Eof do
  begin
   if Length(qry_requisition_shedulingschCod.AsString) = 0  then
    begin
      Application.MessageBox('Existe agendamento sem horário marcado, favor confirmar um horário livre!', 'AGENDAMENTO', MB_OK + MB_ICONEXCLAMATION);
      Exit;;
    end;
   qry_requisition_sheduling.Next;
  end;


 inherited;
  qry_sql('todos');

end;

procedure Tfrm_scheduling_clinical.cxGrid1DBTableView1rolte_rol_codPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if not (qry_requisition_sheduling.State in[dsEdit]) then
   qry_requisition_sheduling.Edit;
   qry_requisition_shedulingrole_rol_cod.Value:=qry_rolerol_cod.Value;
   qry_requisition_sheduling.Post;

   qry_requisition_sheduling.Refresh;

   qry_doctor.Filter:='rolCod = ' + QuotedStr(qry_requisition_shedulingrolCod.AsString);
   qry_doctor.Filtered:=True;


//   Application.CreateForm(Tfrm_scheduling_clinical2,frm_scheduling_clinical2);
//   frm_scheduling_clinical2.cxTextEditDoctor.Text:=FormatFloat('00000', qry_doctordoc_id.AsInteger) + ' - ' +  qry_requisition_shedulingrec_name.AsString;
//   frm_scheduling_clinical2.qry.Insert;
//   frm_scheduling_clinical2.ShowModal;
   if not Assigned(frm_scheduling) then begin
    frm_scheduling := Tfrm_scheduling.Create(Self);
    frm_scheduling.Height :=frm_main.Bevel_1.Height;
    frm_scheduling.Width := frm_main.Bevel_1.Width;
    frm_scheduling.Tag:=1;
    frm_scheduling.doctor_name:=qry_requisition_shedulingrec_name.AsString;
    frm_scheduling.Action_insertExecute(sender);
    frm_scheduling.qry.Insert;
    frm_scheduling.cxMemoDescricao.Text:= 'AGENDAMENTO DO PASCIENTE ' + cxLookupComboBoxCliente.Text + ' - ' +
         ' EXAME ' + qry_requisition_shedulingrol_name.AsString;
    frm_scheduling.cxMemoDescricao.Enabled:=False;
    frm_scheduling.Show;
  end else begin
    frm_scheduling.WindowState := wsNormal;
    frm_scheduling.Show;
  end;


end;

procedure Tfrm_scheduling_clinical.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   req_cod:=Fields[0].AsString;

   Close;
   Text:='insert into requisition (req_id,req_cod,contract_ctr_cod) ' +
         ' select 0,unhex('+ QuotedStr(req_cod) + '),' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry_sql('insert');
   qry.Edit;
   qryreq_dt_registration.AsDateTime:=Now;
   edt_codid.Text:=qryreq_id.AsString;
   edt_dt_registration.Text:=qryreq_dt_registration.AsString;
end;

procedure Tfrm_scheduling_clinical.qry_requisition_shedulingAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   rsh_cod:=Fields[0].AsString;

   Close;
   Text:='insert into requisition_sheduling (rsh_id,rsh_cod,requisition_req_cod,contract_ctr_cod) ' +
         ' select 0, unhex('+ QuotedStr(rsh_cod) + '),unhex('  + QuotedStr(req_cod) + '),' +   frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry_requisition_sheduling.close;
   qry_requisition_sheduling.SQL.Text:=' select requisition_sheduling.*,hex(rsh_cod) as rshCod,rol_name,rec_name, ' +
              ' hex(requisition_sheduling.role_rol_cod) as rolCod,hex(sch_cod) as schCod from requisition_sheduling '+
              ' left join role on rol_cod = role_rol_cod ' +
              ' left join scheduling on sch_cod = scheduling_sch_cod ' +
              ' left join record on  rec_cod in (select record_rec_cod from employee ' +
                             ' where emp_cod in (select employee_emp_cod from role_employee ' +
                             ' where role_rol_cod = rol_cod) and emp_cod in (select employee_emp_cod from doctor)) ';
   qry_requisition_sheduling.Prepare;
   qry_requisition_sheduling.open;

   qry_requisition_sheduling.Locate('rshCod',rsh_cod,[]);

   qry_requisition_sheduling.Edit;
   qry_requisition_shedulingrsh_dt_registration.AsDateTime:=Now;
end;

procedure Tfrm_scheduling_clinical.qry_requisition_shedulingAfterPost(
  DataSet: TDataSet);
begin
  inherited;
qry_requisition_sheduling.Locate('rolCod',qry_rolerolCod.AsString,[]);
end;

procedure Tfrm_scheduling_clinical.qry_requisition_shedulingBeforePost(
  DataSet: TDataSet);
begin
  inherited;
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(rsh_id) is null then 1 ' +
          '      else (max(rsh_id) + 1) end as maxID from requisition_sheduling '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry_requisition_sheduling.State in [dsInsert,dsEdit])  then
    qry_requisition_sheduling.Edit;

   if qry_requisition_shedulingrsh_id.AsInteger = 0 then
    qry_requisition_shedulingrsh_id.AsInteger:=Fields[0].AsInteger;

end;
end;

procedure Tfrm_scheduling_clinical.qry_schedulingAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into scheduling (sch_cod,sch_id,contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,'+ frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;

   Close;
   text:= ' select concat(''0x'', hex(sch_cod)) from scheduling ' +
          ' where sch_id = 0 ';
   Prepare;
   open;
   sch_cod:=Fields[0].AsString;
  end;

   qry_scheduling.Unprepare;
   qry_scheduling.Close;
   qry_scheduling.sql.text:= 'select * from scheduling ' +
                  ' where sch_cod = ' + sch_cod ;
   qry_scheduling.Prepare;
   qry_scheduling.open;

   qry_scheduling.Edit;
   qry_schedulingsch_dt_registration. AsDateTime:=Now;
end;

procedure Tfrm_scheduling_clinical.qry_sql(sql: string);
begin
  qry.Close;
  if sql = 'todos' then
   qry.sql.text:= ' select requisition.*,hex(req_cod) from requisition';

  if sql = 'insert' then
   qry.sql.text:= ' select requisition.*,hex(req_cod) from requisition ' +
                  ' where req_cod = unhex(' + QuotedStr(req_cod) + ')';
   qry.Prepare;
   qry.open;
end;

end.
