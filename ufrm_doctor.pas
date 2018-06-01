unit ufrm_doctor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_default, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxShellComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.ImageList, Vcl.ImgList, QExport4Dialog, QImport3Wizard, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, ACBrBase, ACBrEnterTab, Vcl.Menus, dxBar, cxBarEditItem, cxClasses, System.Actions,
  Vcl.ActnList, dxStatusBar, cxTextEdit, cxLabel, cxGroupBox, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, Vcl.StdCtrls, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, frxExportDOCX, frxClass, frxExportBaseDialog, frxExportPDF, cxCheckBox,
  ACBrSocket, ACBrCEP, cxDBEdit;

type
  Tfrm_doctor = class(Tfrm_default)
    qry_doctor: TFDQuery;
    ds_Doctor: TDataSource;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qry_role_employee: TFDQuery;
    ds_role_employee: TDataSource;
    cxGrid1DBTableView1roe_cod: TcxGridDBColumn;
    cxGrid1DBTableView1contract_ctr_cod: TcxGridDBColumn;
    cxGrid1DBTableView1employee_emp_cod: TcxGridDBColumn;
    cxGrid1DBTableView1role_rol_cod: TcxGridDBColumn;
    cxGrid1DBTableView1roe_id: TcxGridDBColumn;
    cxGrid1DBTableView1roe_deleted_at: TcxGridDBColumn;
    cxGrid1DBTableView1roe_dt_registration: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    dxBarButton1: TdxBarButton;
    cxGridDBTableView1doc_id: TcxGridDBColumn;
    cxGridDBTableView1doc_status: TcxGridDBColumn;
    cxGridDBTableView1emp_type: TcxGridDBColumn;
    cxGridDBTableView1emp_status: TcxGridDBColumn;
    cxGridDBTableView1doc_dt_registration: TcxGridDBColumn;
    cxGridDBTableView1rec_name: TcxGridDBColumn;
    cxGridDBTableView1rec_nickname: TcxGridDBColumn;
    cxGridDBTableView1rec_sex: TcxGridDBColumn;
    qry_doctorrec_name: TStringField;
    qry_doctorrec_cod: TBytesField;
    qry_doctorcontract_ctr_cod: TBytesField;
    cxLookupComboBoxProfissional: TcxLookupComboBox;
    qry_doctoremp_cod: TBytesField;
    qry_doctorempCod: TStringField;
    qrydoc_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qrydoc_id: TLongWordField;
    qrydoc_status: TStringField;
    qrydoc_deleted_at: TDateTimeField;
    qrydoc_dt_registration: TDateTimeField;
    cxComboBoxStatus: TcxComboBox;
    qry_role_employeeroe_cod: TBytesField;
    qry_role_employeecontract_ctr_cod: TBytesField;
    qry_role_employeeemployee_emp_cod: TBytesField;
    qry_role_employeerole_rol_cod: TBytesField;
    qry_role_employeeroe_id: TLongWordField;
    qry_role_employeeroe_deleted_at: TDateTimeField;
    qry_role_employeeroe_dt_registration: TDateTimeField;
    qry_role: TFDQuery;
    qry_rolerol_cod: TBytesField;
    qry_rolerol_name: TStringField;
    qry_rolerolCod: TStringField;
    ds_qry_role: TDataSource;
    qry_role_employeerolCod: TStringField;
    qry_rolecontract_ctr_cod: TBytesField;
    qryconcat0xhexemployee_emp_cod: TStringField;
    qry_role_employeeroeCod: TStringField;
    qry_role_employeerol_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tbsht_2Show(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_sql(sql:string);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure cxGrid1DBTableView1role_rol_codPropertiesCloseUp(Sender: TObject);
    procedure qry_role_employeeAfterInsert(DataSet: TDataSet);
    procedure Action_editExecute(Sender: TObject);
  private
    { Private declarations }
    doc_cod,roe_cod,emp_cod:string;
  public
    { Public declarations }
    procedure ExibirRegistros;
  end;

var
  frm_doctor: Tfrm_doctor;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_doctor.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qrydoc_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from doctor ' +
         ' where doc_cod = ' + doc_cod;
  Prepare;
  ExecSQL;

  qry_sql('todos');
 end;
end;

procedure Tfrm_doctor.Action_deleteExecute(Sender: TObject);
begin
  inherited;
   if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrydoc_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     qry_sql('todos');
    end;
end;

procedure Tfrm_doctor.Action_editExecute(Sender: TObject);
begin
  inherited;
 emp_cod:=qryconcat0xhexemployee_emp_cod.AsString;
end;

procedure Tfrm_doctor.Action_insertExecute(Sender: TObject);
begin
  inherited;
  qry.Insert;
end;

procedure Tfrm_doctor.Action_saveExecute(Sender: TObject);
begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(doc_id) is null then 1 ' +
          '      else (max(doc_id) + 1) end as maxID from doctor '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrydoc_id.AsInteger = 0 then
    qrydoc_id.AsInteger:=Fields[0].AsInteger;
    qryemployee_emp_cod.Value:=qry_doctoremp_cod.Value;
    qrydoc_status.AsString:=Copy(cxComboBoxStatus.Text,1,1);
    qry.Post;
    qry.ApplyUpdates(0);


  end;

  inherited;
    qry_sql('todos');
end;

procedure Tfrm_doctor.cxGrid1DBTableView1role_rol_codPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
if not (qry_role_employee.State in [dsEdit]) then
 qry_role_employee.Edit;
 qry_role_employeerole_rol_cod.Value:=qry_rolerol_cod.Value;
 qry_role_employee.Post;

 qry_role_employee.Close;
 qry_role_employee.Prepare;
 qry_role_employee.open;

end;

procedure Tfrm_doctor.ExibirRegistros;
begin
   qry.Close;
   qry.Open;
end;

procedure Tfrm_doctor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frm_doctor);
end;

procedure Tfrm_doctor.FormShow(Sender: TObject);
begin
  inherited;
  ExibirRegistros;
end;

procedure Tfrm_doctor.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   doc_cod:=Fields[0].AsString;

   Close;
   Text:='insert into doctor (doc_id,doc_cod,contract_ctr_cod) ' +
         ' select 0,'+ doc_cod + ',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry_sql('insert');
   qry.Edit;
   qrydoc_dt_registration.AsDateTime:=Now;
   edt_codid.Text:=qrydoc_id.AsString;
   edt_dt_registration.Text:=qrydoc_dt_registration.AsString;

end;

procedure Tfrm_doctor.qry_role_employeeAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   roe_cod:=Fields[0].AsString;

   Close;
   Text:='insert into role_employee (roe_id,roe_cod,employee_emp_cod,contract_ctr_cod) ' +
         ' select 0,'+ roe_cod + ',' + emp_cod + ',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry_role_employee.close;
   qry_role_employee.SQL.Text:=' select role_employee.*,concat(''0x'',hex(role_rol_cod)) as rolCod, ' +
                ' concat(''0x'',hex(roe_cod)) as roeCod,rol_name from role_employee ' +
                ' left join role on rol_cod = role_rol_cod ';
   qry_role_employee.Prepare;
   qry_role_employee.open;

   qry_role_employee.Locate('roeCod',roe_cod,[]);

   qry_role_employee.Edit;
   qry_role_employeeroe_dt_registration.AsDateTime:=Now;
end;

procedure Tfrm_doctor.qry_sql(sql: string);
begin
  qry.Close;
  if sql = 'todos' then
   qry.sql.text:= ' select * from doctor ' +
           ' where doc_deleted_at is null';

  if sql = 'insert' then
   qry.sql.text:= ' select * from doctor ' +
                  ' where doc_cod = ' + doc_cod +
                  ' and doc_deleted_at is null';
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_doctor.tbsht_2Show(Sender: TObject);
begin
  inherited;
  qry_doctor.Close;
  qry_doctor.Open;
end;

end.
