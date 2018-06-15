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
    qry_role_employee: TFDQuery;
    ds_role_employee: TDataSource;
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
    qry_doctoremp_cod: TBytesField;
    qry_doctorempCod: TStringField;
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
    qry_role_employeeroeCod: TStringField;
    qry_role_employeerol_name: TStringField;
    cxLabel3: TcxLabel;
    cxLookupComboBoxProfissional: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxComboBoxStatus: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1role_rol_cod: TcxGridDBColumn;
    cxGrid1DBTableView1roe_id: TcxGridDBColumn;
    cxGrid1DBTableView1roe_dt_registration: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qrydoc_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qrydoc_id: TLongWordField;
    qrydoc_status: TStringField;
    qrydoc_deleted_at: TDateTimeField;
    qrydoc_dt_registration: TDateTimeField;
    qryrec_name: TStringField;
    qryempCod_Doctor: TStringField;
    qry_doctorCodEmployee: TStringField;
    qryemp_cod: TBytesField;
    grid_1DBTableView1doc_id: TcxGridDBColumn;
    grid_1DBTableView1doc_status: TcxGridDBColumn;
    grid_1DBTableView1doc_dt_registration: TcxGridDBColumn;
    grid_1DBTableView1rec_name: TcxGridDBColumn;
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
    procedure qry_role_employeeBeforePost(DataSet: TDataSet);
    procedure grid_1DBTableView1DblClick(Sender: TObject);
    procedure cxLookupComboBoxProfissionalPropertiesPopup(Sender: TObject);
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
 begin
  with frm_dm.qry,sql do
   begin
    Close;
    Text:= ' delete from doctor ' +
           ' where doc_cod = ' + doc_cod;
    Prepare;
    ExecSQL;
     end;

   if emp_cod <>'' then
    begin
     with frm_dm.qry2,sql do
      begin
       Close;
       Text:= ' delete from role_employee ' +
             ' where employee_emp_cod = ' + emp_cod ;
       Prepare;
       ExecSQL;
      end;
    end;                              //   unhex(p_cte_usr_ent_cod);

  qry_sql('todos');
  end;
end;

procedure Tfrm_doctor.Action_deleteExecute(Sender: TObject);
begin
//  inherited;
   emp_cod := qryempCod_Doctor.AsString;
   if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrydoc_deleted_at.AsDateTime:=Now;
     qry.Post;

        with frm_dm.qry2,sql do
       begin
        Close;
        Text:= ' update role_employee set roe_deleted_at = now()' +
               ' where employee_emp_cod = ' + emp_cod;
        Prepare;
        ExecSQL;
        end;

       qry.ApplyUpdates(0);
       qry_sql('todos');
    end;
end;

procedure Tfrm_doctor.Action_editExecute(Sender: TObject);
begin
  inherited;
     Self.Tag := 2; // para dizer que é uma alteração
    qry_role.Close;
    qry_role.Open;
    //--------------------------
    qry_doctor.Close;
    qry_doctor.Open;
  //---------------------------
    qry_role_employee.Close;
    qry_role_employee.Open;

     emp_cod:=qryempCod_Doctor.AsString;

    edt_codid.Text                    := IntToStr(qrydoc_id.AsInteger);
    edt_dt_registration.Text          := DateToStr(qrydoc_dt_registration.AsDateTime);
    cxComboBoxStatus.Text             := qrydoc_status.AsString;
    cxLookupComboBoxProfissional.Text := qryrec_name.AsString;
    cxComboBoxStatus.Text := qrydoc_status.AsString;
end;

procedure Tfrm_doctor.Action_insertExecute(Sender: TObject);
begin
  inherited;
  Self.Tag := 1; // para dizer que é uma inserção
  qry.Insert;
  qry_role_employee.Close;
  cxComboBoxStatus.ItemIndex := 0;
end;

procedure Tfrm_doctor.Action_saveExecute(Sender: TObject);
begin
if trim(cxLookupComboBoxProfissional.Text) = ''  then
 begin
   Application.MessageBox('Profissional não informado!','Tabela de Preço', MB_OK + MB_ICONINFORMATION);
   exit;
 end;

   inherited;

  if ds.DataSet.State in [dsEdit] then
    Exit;

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


  qry_sql('todos');

end;

procedure Tfrm_doctor.cxGrid1DBTableView1role_rol_codPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;

  with frm_dm.qry3,sql do
     begin
       close;
       Text :=' select * from role_employee where employee_emp_cod =' +qry_doctorempCod.AsString+ ' and role_rol_cod = '+qry_rolerolCod.AsString;
       Prepare;
       Open;

       if RecordCount >0 then
        begin
          Application.MessageBox('A especialidade selecionada já existe para este proficional !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);

           with frm_dm.qry,sql do
           begin
            Close;
            Text:= ' delete from role_employee ' +
                   ' where roe_cod = ' + roe_cod;
            Prepare;
            ExecSQL;
           end;
        end else
        begin
          if not (qry_role_employee.State in [dsEdit]) then
           qry_role_employee.Edit;
           qry_role_employeerole_rol_cod.Value:=qry_rolerol_cod.Value;
           qry_role_employee.Post;
        end;

     end;
    //--------------------------------------
    qry_role_employee.Close;
    qry_role_employee.Prepare;
    qry_role_employee.open;

end;

procedure Tfrm_doctor.cxLookupComboBoxProfissionalPropertiesPopup(Sender: TObject);
begin
  inherited;
  with frm_dm.qry3,sql do
   begin
    close;
    Text :=' select * from doctor where hex(employee_emp_cod) = '+qry_doctorempCod.AsString;
    Prepare;
    Open;
    if RecordCount >0 then
     begin
      Application.MessageBox('O proficional selecionado já está cadastrado!','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
      Abort;
     end;
   end;

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

procedure Tfrm_doctor.grid_1DBTableView1DblClick(Sender: TObject);
begin
  cxLookupComboBoxProfissional.Text := qryrec_name.AsString;
  inherited;
end;

procedure Tfrm_doctor.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //inicializar as variaveis vazias
  emp_cod := '';
  doc_cod := '';
  //------------------------------
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
   qry.Post;
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

   roe_cod :=Fields[0].AsString;
   emp_cod := qry_doctorempCod.AsString;

   Close;
   Text:='insert into role_employee (roe_id,roe_cod,employee_emp_cod,contract_ctr_cod,roe_dt_registration) ' +
         ' select 0,'+ roe_cod + ',' + emp_cod + ',' +  frm_dm.v_contract_ctr_cod +',now()'  ;
   Prepare;
   ExecSQL;
  end;

   qry_role_employee.close;
   qry_role_employee.open;

end;

procedure Tfrm_doctor.qry_role_employeeBeforePost(DataSet: TDataSet);
begin
  inherited;
      with frm_dm.qry,sql do
   begin
    close;
     Text:= ' select case when max(roe_id) is null then 1 ' +
          '      else (max(roe_id) + 1) end as maxID from role_employee '+
          ' where employee_emp_cod = ' + emp_cod;
     Prepare;
     Open;

    if not (qry_role_employee.State in [dsInsert,dsEdit])  then
     qry_role_employee.Edit;

    if qry_role_employeeroe_id.AsInteger = 0 then
       qry_role_employeeroe_id.AsInteger  := Fields[0].AsInteger;

   end;
end;

procedure Tfrm_doctor.qry_sql(sql: string);
begin
  qry.Close;
  if sql = 'todos' then
   qry.sql.text:= ' select doctor.*, rec_name,emp_cod, hex(employee_emp_cod)as empCod_Doctor from doctor  ' +
                  ' left join employee on employee_emp_cod = emp_cod    ' +
                  ' left join record on record_rec_cod = rec_cod        ' +
                  ' where doc_deleted_at is null   ';

  if sql = 'insert' then
   qry.sql.text:= ' select doctor.*, rec_name,emp_cod,hex(employee_emp_cod)as empCod_Doctor from doctor' +
                  ' left join employee on employee_emp_cod = emp_cod    ' +
                  ' left join record on record_rec_cod = rec_cod        ' +
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
