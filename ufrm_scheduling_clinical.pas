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
  dxDateTimeWheelPicker, cxCalendar, ufrm_main, ufrm_scheduling, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo, cxSpinEdit, cxTimeEdit,DateUtils ;

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
    cxLabelClient: TcxLabel;
    looComboBoxCliente: TcxLookupComboBox;
    qryCliente: TStringField;
    looComboxConvenio: TcxLookupComboBox;
    looComboxEspecialidade: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Qry_rolee02: TFDQuery;
    dsRolee02: TDataSource;
    looComboxMedico: TcxLookupComboBox;
    qry_doctor_role: TFDQuery;
    ds_doctor_role: TDataSource;
    qry_doctor_roledoc_cod: TBytesField;
    qry_doctor_rolecontract_ctr_cod: TBytesField;
    qry_doctor_roleemployee_emp_cod: TBytesField;
    qry_doctor_roledoc_id: TLongWordField;
    qry_doctor_roledoc_status: TStringField;
    qry_doctor_roledoc_deleted_at: TDateTimeField;
    qry_doctor_roledoc_dt_registration: TDateTimeField;
    qry_doctor_rolerec_name: TStringField;
    qry_doctor_rolecodDoctor: TStringField;
    qry_doctor_rolecodEmployee: TStringField;
    Qry_rolee02rol_cod: TBytesField;
    Qry_rolee02rol_name: TStringField;
    Qry_rolee02rolCod: TStringField;
    Qry_rolee02contract_ctr_cod: TBytesField;
    looComboxEmpresa: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    qry_client_insurance: TFDQuery;
    ds_client_insurance: TDataSource;
    qry_client_insurancecin_cod: TBytesField;
    qry_client_insuranceclient_cli_cod: TBytesField;
    qry_client_insuranceinsurance_ins_cod: TBytesField;
    qry_client_insurancecin_id: TLongWordField;
    qry_client_insurancecin_deleted_at: TDateTimeField;
    qry_client_insurancecin_dt_registration: TDateTimeField;
    qry_client_insuranceins_first_name: TStringField;
    qry_client_insurancecodCliInsirance: TStringField;
    qry_client_insuranceClientCod: TStringField;
    edtDate: TcxDateEdit;
    edtTime: TcxTimeEdit;
    memoDescricao: TcxMemo;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    looComboxTipoExame: TcxLookupComboBox;
    cxLabel8: TcxLabel;
    qry_requisition_type: TFDQuery;
    qry_requisition_typeret_cod: TBytesField;
    qry_requisition_typecontract_ctr_cod: TBytesField;
    qry_requisition_typeret_id: TLongWordField;
    qry_requisition_typeret_name: TStringField;
    qry_requisition_typeret_status: TStringField;
    qry_requisition_typeret_deleted_at: TDateTimeField;
    qry_requisition_typeret_dt_registration: TDateTimeField;
    ds_requisition_type: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    qry_scheduling: TFDQuery;
    qry_schedulingsch_cod: TBytesField;
    qry_schedulingcontract_ctr_cod: TBytesField;
    qry_schedulingemployee_emp_cod: TBytesField;
    qry_schedulingsch_id: TLongWordField;
    qry_schedulingsch_datetime: TDateTimeField;
    qry_schedulingsch_description: TStringField;
    qry_schedulingsch_dt_registration: TDateTimeField;
    ds_scheduling: TDataSource;
    cxGrid2DBTableView1sch_id: TcxGridDBColumn;
    cxGrid2DBTableView1sch_datetime: TcxGridDBColumn;
    cxGrid2DBTableView1sch_description: TcxGridDBColumn;
    cxGrid2DBTableView1sch_dt_registration: TcxGridDBColumn;
    qry_requisition_sheduling02: TFDQuery;
    qry_requisition_sheduling02rsh_cod: TBytesField;
    qry_requisition_sheduling02contract_ctr_cod: TBytesField;
    qry_requisition_sheduling02requisition_req_cod: TBytesField;
    qry_requisition_sheduling02scheduling_sch_cod: TBytesField;
    qry_requisition_sheduling02role_rol_cod: TBytesField;
    qry_requisition_sheduling02doctor_doc_cod: TBytesField;
    qry_requisition_sheduling02rsh_id: TLongWordField;
    qry_requisition_sheduling02rsh_status: TStringField;
    qry_requisition_sheduling02rsh_deleted_at: TDateTimeField;
    qry_requisition_sheduling02rsh_dt_registration: TDateTimeField;
    qry_requisition_sheduling02employee_emp_cod: TBytesField;
    qry_requisition_sheduling02sch_datetime: TDateTimeField;
    qry_requisition_sheduling02sch_description: TStringField;
    qry_requisition_sheduling02rec_name: TStringField;
    qry_requisition_sheduling02rol_name: TStringField;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    ds_requisition_sheduling02: TDataSource;
    cxGrid3DBTableView1rsh_id: TcxGridDBColumn;
    cxGrid3DBTableView1rsh_status: TcxGridDBColumn;
    cxGrid3DBTableView1rsh_dt_registration: TcxGridDBColumn;
    cxGrid3DBTableView1sch_datetime: TcxGridDBColumn;
    cxGrid3DBTableView1sch_description: TcxGridDBColumn;
    cxGrid3DBTableView1rec_name: TcxGridDBColumn;
    cxGrid3DBTableView1rol_name: TcxGridDBColumn;
    qryreq_source: TStringField;
    qryCodReq: TStringField;
    qry_requisition_sheduling02reqCod: TStringField;
    grid_1DBTableView1req_cod: TcxGridDBColumn;
    grid_1DBTableView1req_id: TcxGridDBColumn;
    grid_1DBTableView1req_status: TcxGridDBColumn;
    grid_1DBTableView1req_dt_registration: TcxGridDBColumn;
    grid_1DBTableView1Cliente: TcxGridDBColumn;
    grid_1DBTableView1req_source: TcxGridDBColumn;
    grid_1DBTableView1CodReq: TcxGridDBColumn;
    qryCodType_ret_cod: TStringField;
    qryret_name: TStringField;
    grid_1DBTableView1CodType_ret_cod: TcxGridDBColumn;
    ComboxStatus: TcxComboBox;
    btnAgendar: TButton;
    qry_schedulingCodEmployee: TStringField;
    cxLabel9: TcxLabel;
    qrycli_first_name: TStringField;
    qryent_first_name: TStringField;
    grid_1DBTableView1ret_name: TcxGridDBColumn;
    grid_1DBTableView1cli_first_name: TcxGridDBColumn;
    grid_1DBTableView1ent_first_name: TcxGridDBColumn;
    procedure Action_cancelExecute(Sender: TObject);
    procedure qry_sql(sql:string);
    procedure Action_saveExecute(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_insertExecute(Sender: TObject);
    procedure tbsht_5Show(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_requisition_sheduling02AfterInsert(DataSet: TDataSet);
    procedure cxGrid3DBTableView1rec_namePropertiesCloseUp(Sender: TObject);
    procedure cxGrid3DBTableView1rol_namePropertiesCloseUp(Sender: TObject);
    procedure btnAgendarClick(Sender: TObject);
    procedure edtDatePropertiesCloseUp(Sender: TObject);
    procedure edtTimePropertiesEditValueChanged(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
  private
    req_cod,rsh_cod,sch_cod:string;

  public
    procedure ExibirAgendamento;
    procedure ExibirAxemeAgendado;

  end;

var
  frm_scheduling_clinical: Tfrm_scheduling_clinical;

implementation

{$R *.dfm}


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

    Self.Tag := 2; // para dizer que é uma inserção

    req_cod                   := qryCodReq.AsString;
    edt_codid.Text            := IntToStr(qryreq_id.AsInteger);
    edt_dt_registration.Text  := DateToStr(qryreq_dt_registration.AsDateTime);
    looComboxEmpresa.Text     := qryent_first_name.AsString;
    looComboBoxCliente.Text   := qrycli_first_name.AsString;
    looComboxTipoExame.Text   := qryret_name.AsString;
    ComboxStatus.Text         := qryreq_status.AsString;
    ComboxStatus.Enabled      := True;

    looComboxEspecialidade.Text := qry_requisition_sheduling02rol_name.AsString;
    looComboxMedico.Text        := qry_requisition_sheduling02rec_name.AsString;
    edtDate.Date                := qry_requisition_sheduling02sch_datetime.AsDateTime;
    edtTime.Time                := qry_requisition_sheduling02sch_datetime.AsDateTime;

    ExibirAxemeAgendado;

end;

procedure Tfrm_scheduling_clinical.Action_insertExecute(Sender: TObject);
begin
  inherited;
  Self.Tag := 1; // para dizer que é uma inserção
   qry.Insert;

   ComboxStatus.ItemIndex := 0;
   ComboxStatus.Enabled := False;
   Qry_rolee02.Close;
   Qry_rolee02.Open;

    edtDate.Date    := Date;
    edtDate.Enabled := True;
    edtTime.Time    := Time;
    edtTime.Enabled := True;
    memoDescricao.Text := 'AGENDAMENTO';
end;

procedure Tfrm_scheduling_clinical.Action_saveExecute(Sender: TObject);
begin
 if Self.Tag = 1 then
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
        qryclient_cli_cod.Value           := qry_clientcli_cod.Value;
        qryenterprise_ent_cod.Value       := frm_dm.qry_enterpriseent_cod.Value;
        qryrequisition_type_ret_cod.Value := qry_requisition_typeret_cod.Value;
        qryinsurance_ins_cod.Value        := qry_client_insuranceinsurance_ins_cod.Value;
        qryreq_source.AsString            := 'C';
        qryreq_status.AsString            := ComboxStatus.Text;
        qry.Post;
        Application.MessageBox('Agendamento finalizado com sucesso !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);

     end;


  end else if (Self.Tag = 2) then
         begin
           qry.Edit;
           qryclient_cli_cod.Value           := qry_clientcli_cod.Value;
           qryinsurance_ins_cod.Value        := qry_client_insurancecin_cod.Value;
           qryrequisition_type_ret_cod.Value := qry_requisition_typeret_cod.Value;
           qryreq_status.AsString            := ComboxStatus.Text;
           qry.Post;
           Application.MessageBox('Ateração finalizada com sucesso !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);

         end;

  inherited;
  qry_sql('todos');

end;

procedure Tfrm_scheduling_clinical.btnAgendarClick(Sender: TObject);
 var
  HoraInicio: TTime;
  HoraFim   : TTime;
  DataAgend : TDateTime;
begin
  inherited;

 if (Self.Tag = 1) then
  begin
  //Não permite finalizar com Memo_Descrição vazio--------
   if ((Trim(memoDescricao.Text) = '') or (looComboxEspecialidade.ItemIndex = -1) or (looComboxMedico.ItemIndex = -1)) then
     begin
      Application.MessageBox('Para finalizar o agendamento é necessario informar todos os campos obrigatorios!','AVISO DE AGENDAMENTO',MB_OK + MB_ICONWARNING);
      memoDescricao.SetFocus;
      Exit;
     end;

        qry_scheduling.First;
        while not qry_scheduling.Eof do
         begin
          HoraInicio:=StrToTime(FormatDateTime('hh:mm',(qry_schedulingsch_datetime.AsDateTime)));
          HoraFim:=IncMinute(HoraInicio,30);

         if ((edtTime.Time >= HoraInicio) and (edtTime.Time <= HoraFim) and (Self.Tag = 1)) then  //Tag 1 quando for inserir
           begin
             Application.MessageBox('Existe um compromiso agendado para essa data e hoja, '+
                'por favor vericar data e hora do agendamento !', 'AVISO DE AGENDAMENTO',MB_OK + MB_ICONWARNING);
             edtDate.SetFocus;
             Exit;
           end;
           qry_scheduling.Next;
         end;

      //----Comando para Inserir na tabela scheduling----(Agendamento do Médico)------------------------------------------
       with frm_dm.qry,sql do
          begin
           close;
           Text:= ' select case when max(sch_id) is null then 1 ' +
                  '      else (max(sch_id) + 1) end as maxID from scheduling '+
                  ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
           Prepare;
           Open;
         end;

         sch_cod := '';  //Inicializar as variaveis vazias--------------
         DataAgend := edtDate.Date + edtTime.Time;
         With frm_dm.qry2,sql do
          begin
           close;
           text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
           prepare;
           open;
           //Setando o Código Hexadecimal na Variável-----------------------
           sch_cod:=Fields[0].AsString;
           //Comando para Inserir o registro no banco com (código) (ID) (contrato)(data do registro)
           Close;
           Text:='insert into scheduling (sch_id,sch_cod,contract_ctr_cod,employee_emp_cod,sch_datetime,sch_description,sch_dt_registration) ' +
          ' select '+frm_dm.qry.Fields[0].AsString+','+ sch_cod + ',' +  frm_dm.v_contract_ctr_cod +',unhex('+QuotedStr(qry_doctor_rolecodEmployee.AsString)+'),'+QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss',DataAgend))+','+QuotedStr(memoDescricao.Text)+',Now()';
           ExecSQL;
          end;

        //-----------------------------------------------------------------------------
         rsh_cod := '';  //Inicializar as variaveis vazias--------------
         With frm_dm.qry2,sql do
          begin
           close;
           text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
           prepare;
           open;

           rsh_cod :=Fields[0].AsString;

           Close;
           Text:='insert into requisition_sheduling (rsh_id, rsh_cod, requisition_req_cod, scheduling_sch_cod, contract_ctr_cod, rsh_dt_registration) ' +
                 ' select 0,'+ rsh_cod + ',unhex('+QuotedStr(req_cod)+'),'+sch_cod+','+ frm_dm.v_contract_ctr_cod +',now()'  ;
           Prepare;
           ExecSQL;
          end;

           qry_requisition_sheduling02.close;
           qry_requisition_sheduling02.open;


        with frm_dm.qry3,sql do
         begin
           close;
           Text:= ' select case when max(rsh_id) is null then 1 ' +
                  '      else (max(rsh_id) + 1) end as maxID from requisition_sheduling '+
                  ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
           Prepare;
           Open;
           if not (qry_requisition_sheduling02.State in [dsInsert,dsEdit])  then
            qry_requisition_sheduling02.Edit;

           if qry_requisition_sheduling02rsh_id.AsInteger = 0 then
            begin
              qry_requisition_sheduling02rsh_id.AsInteger          := Fields[0].AsInteger;
              qry_requisition_sheduling02role_rol_cod.Value        := Qry_rolee02rol_cod.Value;
              qry_requisition_sheduling02doctor_doc_cod.Value      := qry_doctor_roledoc_cod.Value;
              qry_requisition_sheduling02rsh_status.AsString       := 'A';
              qry_requisition_sheduling02.Post;

             //Mensagem ao Inserir
              Application.MessageBox('Agendamento realizado com sucesso !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);
             //Retorna o select para atualizar a lista no Grid--
               qry_requisition_sheduling02.close;
               qry_requisition_sheduling02.open;

            end;
         end;

   end else if (Self.Tag = 2) then
   begin
   //Para evitar duplicidade de agendamento no mesmo horário
   //Semente a Descrição pode ser alterada




    //Mensagem ao Inserir
     Application.MessageBox('Agendamento alterado com sucesso !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);
    //Retorna o select para atualizar a lista no Grid--
      qry_requisition_sheduling02.close;
      qry_requisition_sheduling02.open;
   end;



end;

procedure Tfrm_scheduling_clinical.cxGrid3DBTableView1rec_namePropertiesCloseUp(Sender: TObject);
begin
  inherited;
    with frm_dm.qry3,sql do
     begin
       close;
       Text :=' select requisition_sheduling.*,hex(requisition_req_cod)as reqCod, sch.employee_emp_cod,sch.sch_datetime, sch.sch_description, '+
              ' rec.rec_name, rol.rol_name from requisition_sheduling                       ' +
              ' left join scheduling as sch on sch.sch_cod = scheduling_sch_cod             ' +
              ' left join role as rol on rol.rol_cod = role_rol_cod                         ' +
              ' left join doctor as doc on   doc.doc_cod = doctor_doc_cod                   ' +
              ' left join employee as emp on emp.emp_cod = doc.employee_emp_cod             ' +
              ' left join record as rec on rec.rec_cod = emp.record_rec_cod                 ' +
              ' where rsh_cod = '+ rsh_cod +' and rsh_deleted_at is null ';
       Prepare;
       Open;


        //  if not (qry_requisition_sheduling02.State in [dsEdit]) then
           qry_requisition_sheduling02.Edit;
           qry_requisition_sheduling02doctor_doc_cod.value := qry_doctor_roledoc_cod.value;
           qry_requisition_sheduling02.Post;

     end;
    //--------------------------------------
    qry_requisition_sheduling02.close;
    qry_requisition_sheduling02.open;
end;

procedure Tfrm_scheduling_clinical.cxGrid3DBTableView1rol_namePropertiesCloseUp(Sender: TObject);
begin
  inherited;
   with frm_dm.qry3,sql do
     begin
       close;
       Text :=' select requisition_sheduling.*,hex(requisition_req_cod)as reqCod, sch.employee_emp_cod,sch.sch_datetime, sch.sch_description, '+
              ' rec.rec_name, rol.rol_name from requisition_sheduling                       ' +
              ' left join scheduling as sch on sch.sch_cod = scheduling_sch_cod             ' +
              ' left join role as rol on rol.rol_cod = role_rol_cod                         ' +
              ' left join doctor as doc on   doc.doc_cod = doctor_doc_cod                   ' +
              ' left join employee as emp on emp.emp_cod = doc.employee_emp_cod             ' +
              ' left join record as rec on rec.rec_cod = emp.record_rec_cod                 ' +
              ' where rsh_cod = '+ rsh_cod +' and rsh_deleted_at is null ';
       Prepare;
       Open;

        //  if not (qry_requisition_sheduling02.State in [dsEdit]) then
           qry_requisition_sheduling02.Edit;
           qry_requisition_sheduling02role_rol_cod.value := qry_rolee02rol_cod.value;
           qry_requisition_sheduling02.Post;

     end;
    //--------------------------------------
    qry_requisition_sheduling02.close;
    qry_requisition_sheduling02.open;
end;

procedure Tfrm_scheduling_clinical.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
   qry_doctor_role.Close;
   qry_doctor_role.ParamByName('CODROLE').Value := Qry_rolee02rol_cod.Value;
   qry_doctor_role.Open;

end;

procedure Tfrm_scheduling_clinical.edtDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
   ExibirAgendamento;
end;

procedure Tfrm_scheduling_clinical.edtTimePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  ExibirAgendamento;
end;

procedure Tfrm_scheduling_clinical.ExibirAgendamento;
begin
//     qry_scheduling.Close;
//     qry_scheduling.ParamByName('EMPLOYEE_EMP_COD').assTring := qry_doctor_rolecodEmployee.asstring;
//     qry_scheduling.ParamByName('DATAINCIO').AsDateTime:= StrToDateTime(DateToStr(edtDate.Date) + ' 00:00:00');
//     qry_scheduling.ParamByName('DATAFIM').AsDateTime:= StrToDateTime(DateToStr(edtDate.Date) + ' 23:59:59');
//     qry_scheduling.Prepare;
//     qry_scheduling.Open;
end;

procedure Tfrm_scheduling_clinical.ExibirAxemeAgendado;
begin
    with frm_dm.qry2,sql do
     begin
       close;
       text :=  ' select requisition_sheduling.*,hex(requisition_req_cod)as reqCod, sch.employee_emp_cod,sch.sch_datetime,   ' +
                ' sch.sch_description, rec.rec_name, rol.rol_name from requisition_sheduling     ' +
                ' left join scheduling as sch on sch.sch_cod = scheduling_sch_cod                ' +
                ' left join role as rol on rol.rol_cod = role_rol_cod                            ' +
                ' left join doctor as doc on   doc.doc_cod = doctor_doc_cod                      ' +
                ' left join employee as emp on emp.emp_cod = doc.employee_emp_cod                ' +
                ' left join record as rec on rec.rec_cod = emp.record_rec_cod                    ' +
                ' where requisition_req_cod ='+ qryCodReq.assTring +' and rsh_deleted_at is null   ';
     Prepare;
     Open;
     end;

end;

procedure Tfrm_scheduling_clinical.FormShow(Sender: TObject);
begin
  inherited;
    qry_sql('todos');
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
   Text:='insert into requisition (req_id,req_cod,contract_ctr_cod,req_dt_registration) ' +
         ' select 0,unhex('+ QuotedStr(req_cod) + '),' +  frm_dm.v_contract_ctr_cod +',now()';
   Prepare;
   ExecSQL;
  end;

   qry_sql('insert');
//   qry.Edit;
//   qryreq_dt_registration.AsDateTime:=Now;
   edt_codid.Text:=qryreq_id.AsString;
   edt_dt_registration.Text:=qryreq_dt_registration.AsString;
end;

procedure Tfrm_scheduling_clinical.qry_requisition_sheduling02AfterInsert(DataSet: TDataSet);
begin
  inherited;
  With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   rsh_cod :=Fields[0].AsString;

   Close;
   Text:='insert into requisition_sheduling (rsh_id, rsh_cod, requisition_req_cod, contract_ctr_cod, rsh_dt_registration) ' +
         ' select 0,'+ rsh_cod + ', unhex('  + QuotedStr(req_cod)+'),' + frm_dm.v_contract_ctr_cod +',now()'  ;
   Prepare;
   ExecSQL;
  end;

   qry_requisition_sheduling02.close;
   qry_requisition_sheduling02.open;

end;

procedure Tfrm_scheduling_clinical.qry_sql(sql: string);
begin
  qry.Close;
  if sql = 'todos' then
   qry.sql.text:= ' select r.*, c.cli_first_name, concat(''0x'', hex(r.req_cod))as CodReq, ent.ent_first_name, hex(r.requisition_type_ret_cod)as CodType_ret_cod, t.ret_name  from requisition as r  ' +
                  ' left join requisition_type as t on t.ret_cod = requisition_type_ret_cod               ' +
                  ' left join client as c on c.cli_cod = r.client_cli_cod                                 ' +
                  ' left join enterprise as ent on ent.ent_cod = r.enterprise_ent_cod                     ' +
                  ' where r.contract_ctr_cod = unhex('+QuotedStr(frm_dm.p_contract_ctr_cod)+') and req_deleted_at is null ';

  if sql = 'insert' then
   qry.sql.text:= ' select r.*, c.cli_first_name, concat(''0x'', hex(r.req_cod))as CodReq, ent.ent_first_name, hex(r.requisition_type_ret_cod)as CodType_ret_cod, t.ret_name  from requisition as r  ' +
                  ' left join requisition_type as t on t.ret_cod = requisition_type_ret_cod               ' +
                  ' left join client as c on c.cli_cod = r.client_cli_cod                                 ' +
                  ' left join enterprise as ent on ent.ent_cod = r.enterprise_ent_cod                     ' +
                  ' where req_cod = unhex(' + QuotedStr(req_cod) + ')';
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_scheduling_clinical.tbsht_5Show(Sender: TObject);
begin
  inherited;
    edt_codid.Text               := IntToStr(qryreq_id.AsInteger);
    edt_dt_registration.Text     := DateToStr(qryreq_dt_registration.AsDateTime);
    looComboBoxCliente.Text := qryCliente.AsString;

  //Abrir Consulta do Cliente-------------------------------
   qry_client.Close;
   qry_client.Prepare;
   qry_client.Open;

  //Abrir Consulta do Convênios do Cliente------------------
    qry_client_insurance.Close;
    qry_client_insurance.Prepare;
    qry_client_insurance.Open;

  //Abrir Consulta das Especialidades do Proficional-------
    Qry_rolee02.Close;
    Qry_rolee02.Prepare;
    Qry_rolee02.Open;

  //Abrir Consulta dos Proficional Médicos----------------
    qry_doctor_role.Close;
    qry_doctor_role.Prepare;
    qry_doctor_role.Open;

  //Abrir Consulta dos tipos de exames-------------------
    qry_requisition_type.Close;
    qry_requisition_type.Prepare;
    qry_requisition_type.Open;

    qry_requisition_sheduling02.Close;
    qry_requisition_sheduling02.Prepare;
    qry_requisition_sheduling02.Open;


end;

end.
