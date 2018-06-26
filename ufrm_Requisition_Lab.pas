unit ufrm_Requisition_Lab;

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
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,DateUtils,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, cxButtons, cxCurrencyEdit,
  cxMemo;

type
  Tfrm_Requisition_Lab = class(Tfrm_default)
    memreq_cod: TBytesField;
    memcontract_ctr_cod: TBytesField;
    memclient_cli_cod: TBytesField;
    mementerprise_ent_cod: TBytesField;
    memrequisition_type_ret_cod: TBytesField;
    meminsurance_ins_cod: TBytesField;
    memrole_rol_cod: TBytesField;
    memdoctor_doc_cod: TBytesField;
    memreq_id: TLongWordField;
    memreq_source: TStringField;
    memreq_status: TStringField;
    memreq_deleted_at: TDateTimeField;
    memreq_dt_registration: TDateTimeField;
    cxTextEditCNS: TcxTextEdit;
    cxLabelPaciente: TcxLabel;
    cxLookupComboBoxPaciente: TcxLookupComboBox;
    qry_client: TFDQuery;
    ds_qry_client: TDataSource;
    cxLabelDtNascimento: TcxLabel;
    cxLabelIdade: TcxLabel;
    cxLabelTipo: TcxLabel;
    cxLabelCNS: TcxLabel;
    cxLabelPeso: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabelAltura: TcxLabel;
    cxLabelSexo: TcxLabel;
    cxTextEditDataNasc: TcxTextEdit;
    cxTextEditIdade: TcxTextEdit;
    cxTextEditTipo: TcxTextEdit;
    cxTextEditPeso: TcxTextEdit;
    cxTextEditAltura: TcxTextEdit;
    cxTextEditSexo: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxTextEditRG: TcxTextEdit;
    cxLabelCPF: TcxLabel;
    cxTextEditCPF: TcxTextEdit;
    qry_enterprise: TFDQuery;
    ds_qry_enterprise: TDataSource;
    qry_enterpriseent_cod: TBytesField;
    qry_enterpriseent_id: TLongWordField;
    qry_enterpriseent_last_name: TStringField;
    qry_enterprisecontract_ctr_cod: TBytesField;
    qry_enterpriseentCod: TStringField;
    qry_insurance: TFDQuery;
    qry_insuranceins_cod: TBytesField;
    qry_insurancecontract_ctr_cod: TBytesField;
    qry_insurancetable_price_tbp_cod: TBytesField;
    qry_insuranceins_id: TLongWordField;
    qry_insuranceins_last_name: TStringField;
    qry_insuranceins_nickname: TStringField;
    ds_qry_insurance: TDataSource;
    qry_insuranceinsCod: TStringField;
    cxButton1: TcxButton;
    qry_requisition_type: TFDQuery;
    qry_requisition_typeret_cod: TBytesField;
    qry_requisition_typecontract_ctr_cod: TBytesField;
    qry_requisition_typeret_id: TLongWordField;
    qry_requisition_typeret_name: TStringField;
    qry_requisition_typeret_status: TStringField;
    qry_requisition_typeret_deleted_at: TDateTimeField;
    qry_requisition_typeret_dt_registration: TDateTimeField;
    qry_requisition_typeretCod: TStringField;
    ds_qry_requisition_type: TDataSource;
    qry_doctor: TFDQuery;
    qry_doctordoc_cod: TBytesField;
    qry_doctorcontract_ctr_cod: TBytesField;
    qry_doctoremployee_emp_cod: TBytesField;
    qry_doctordoc_id: TLongWordField;
    qry_doctordoc_status: TStringField;
    qry_doctordoc_deleted_at: TDateTimeField;
    qry_doctordoc_dt_registration: TDateTimeField;
    qry_doctorrec_name: TStringField;
    qry_doctorcodDoctor: TStringField;
    qry_doctorcodEmployee: TStringField;
    ds_qry_doctor: TDataSource;
    qry_employee: TFDQuery;
    ds_qry_employee: TDataSource;
    qry_clientcli_id: TLongWordField;
    qry_clientcli_cod: TBytesField;
    qry_clientcli_first_name: TStringField;
    qry_clientcli_last_name: TStringField;
    qry_clientcliCod: TStringField;
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientcontract_ctr_cod: TBytesField;
    qry_clientidade: TLargeintField;
    qry_clientcli_rgie: TStringField;
    qry_clientcli_cpfcnpj: TStringField;
    qry_employeeemp_cod: TBytesField;
    qry_employeeemp_id: TLongWordField;
    qry_employeecontract_ctr_cod: TBytesField;
    qry_employeerec_name: TStringField;
    qry_employeeempCod: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabelEmpresa: TcxLabel;
    cxTextEditEnterpriseID: TcxTextEdit;
    cxLookupComboBoxEmpresa: TcxLookupComboBox;
    cxLabelConvenio: TcxLabel;
    cxTextEditConvenioID: TcxTextEdit;
    cxLookupComboBoxConvenio: TcxLookupComboBox;
    cxLabelTipodeExame: TcxLabel;
    cxTextEditTipoExameID: TcxTextEdit;
    cxLookupComboBoxTipoExame: TcxLookupComboBox;
    cxLabelMedico: TcxLabel;
    cxTextEditMedicoID: TcxTextEdit;
    cxLookupComboBoxMedico: TcxLookupComboBox;
    cxLookupComboBoxColetador: TcxLookupComboBox;
    cxTextEditColetador: TcxTextEdit;
    cxLabelColetador: TcxLabel;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qry_requisition_iten: TFDQuery;
    ds_qry_requisition_iten: TDataSource;
    qry_product: TFDQuery;
    qry_productpro_id: TLongWordField;
    qry_productpro_cod: TBytesField;
    qry_productproCod: TStringField;
    qry_productpro_name: TStringField;
    qry_productpro_initials: TStringField;
    qry_productcontract_ctr_cod: TBytesField;
    ds_qry_product: TDataSource;
    qryreq_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryclient_cli_cod: TBytesField;
    qryenterprise_ent_cod: TBytesField;
    qryrequisition_type_ret_cod: TBytesField;
    qryinsurance_ins_cod: TBytesField;
    qryrole_rol_cod: TBytesField;
    qrydoctor_doc_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qryreq_id: TLongWordField;
    qryreq_source: TStringField;
    qryreq_status: TStringField;
    qryreq_deleted_at: TDateTimeField;
    qryreq_dt_registration: TDateTimeField;
    qryclientCod: TStringField;
    qryenterpriseCod: TStringField;
    qryinsuranceCod: TStringField;
    qrydoctorCod: TStringField;
    qryemployeeCod: TStringField;
    qryreqCod: TStringField;
    qry_requisition_itenpro_initials: TStringField;
    qry_requisition_itenpro_name: TStringField;
    qry_requisition_itenmat_name: TStringField;
    qry_requisition_itenrei_cod: TBytesField;
    qry_requisition_itenrequisition_req_cod: TBytesField;
    qry_requisition_itenproduct_pro_cod: TBytesField;
    qry_requisition_itenrei_id: TLongWordField;
    qry_requisition_itenproduct_value: TBCDField;
    qry_requisition_itenrei_deleted_at: TDateTimeField;
    qry_requisition_itenrei_collect: TStringField;
    qry_requisition_itenreiCod: TStringField;
    cxGrid1DBTableView1pro_initials: TcxGridDBColumn;
    cxGrid1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid1DBTableView1mat_name: TcxGridDBColumn;
    cxGrid1DBTableView1rei_cod: TcxGridDBColumn;
    cxGrid1DBTableView1requisition_req_cod: TcxGridDBColumn;
    cxGrid1DBTableView1product_pro_cod: TcxGridDBColumn;
    cxGrid1DBTableView1rei_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_value: TcxGridDBColumn;
    cxGrid1DBTableView1rei_deleted_at: TcxGridDBColumn;
    cxGrid1DBTableView1rei_collect: TcxGridDBColumn;
    cxGrid1DBTableView1reiCod: TcxGridDBColumn;
    cxLabelTotalExame: TcxLabel;
    qry_requisition_medicine: TFDQuery;
    ds_requisition_medicine: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    qry_medicine: TFDQuery;
    qry_medicinemed_cod: TBytesField;
    qry_medicinecontract_ctr_cod: TBytesField;
    qry_medicinemed_id: TLongWordField;
    qry_medicinemed_name: TStringField;
    qry_medicinemed_status: TStringField;
    qry_medicinemed_deleted_at: TDateTimeField;
    qry_medicinemed_dt_registration: TDateTimeField;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    ds_qry_medicine: TDataSource;
    qry_requisition_medicinerem_cod: TBytesField;
    qry_requisition_medicinerequisition_req_cod: TBytesField;
    qry_requisition_medicinemedicine_med_cod: TBytesField;
    qry_requisition_medicinerem_id: TLongWordField;
    qry_requisition_medicineremCod: TStringField;
    qry_requisition_medicinemed_name: TStringField;
    qry_producttpp_value: TBCDField;
    qry_requisition_itenproCod: TStringField;
    qryrec_name: TStringField;
    qrycli_first_name: TStringField;
    qryins_nickname: TStringField;
    grid_1DBTableView1req_id: TcxGridDBColumn;
    grid_1DBTableView1req_status: TcxGridDBColumn;
    grid_1DBTableView1req_dt_registration: TcxGridDBColumn;
    grid_1DBTableView1rec_name: TcxGridDBColumn;
    grid_1DBTableView1cli_first_name: TcxGridDBColumn;
    grid_1DBTableView1ins_nickname: TcxGridDBColumn;
    cxTextEditTotalExame: TcxCurrencyEdit;
    procedure cxLookupComboBoxPacientePropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBoxEmpresaPropertiesCloseUp(Sender: TObject);
    procedure cxTextEditEnterpriseIDExit(Sender: TObject);
    procedure cxLookupComboBoxConvenioPropertiesCloseUp(Sender: TObject);
    procedure cxTextEditConvenioIDExit(Sender: TObject);
    procedure cxLookupComboBoxTipoExamePropertiesCloseUp(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_sql(sql:string);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxTextEditTipoExameIDExit(Sender: TObject);
    procedure cxLookupComboBoxMedicoPropertiesCloseUp(Sender: TObject);
    procedure cxTextEditMedicoIDExit(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure cxLookupComboBoxColetadorPropertiesCloseUp(Sender: TObject);
    procedure cxTextEditColetadorExit(Sender: TObject);
    procedure qry_requisition_itenAfterInsert(DataSet: TDataSet);
    procedure cxGrid1DBTableView1pro_initialsPropertiesCloseUp(Sender: TObject);
    procedure qry_requisition_itenAfterRefresh(DataSet: TDataSet);
    procedure qry_requisition_itenAfterPost(DataSet: TDataSet);
    procedure qry_requisition_medicineAfterInsert(DataSet: TDataSet);
    procedure cxGrid2DBTableView1Column1PropertiesCloseUp(Sender: TObject);
    procedure recalcularValorExame(convenio:string);
    procedure qry_requisition_itenAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    req_cod,rei_cod,rem_cod:string;
  public
    { Public declarations }
  end;

var
  frm_Requisition_Lab: Tfrm_Requisition_Lab;

implementation

{$R *.dfm}

procedure Tfrm_Requisition_Lab.Action_editExecute(Sender: TObject);
begin
  inherited;
   cxLookupComboBoxEmpresa.ItemIndex:=-1;
   qry_enterprise.Locate('entCod',qryenterpriseCod.AsString,[loCaseInsensitive, loPartialKey]);
   cxLookupComboBoxEmpresa.Text:=qry_enterpriseent_last_name.AsString;
   cxTextEditEnterpriseID.Text:= qry_enterpriseent_id.AsString;

   cxLookupComboBoxPaciente.ItemIndex:=-1;
   qry_client.Locate('cliCod',qryclientCod.AsString,[loCaseInsensitive, loPartialKey]);
   cxLookupComboBoxPacientePropertiesCloseUp(sender);
   cxLookupComboBoxPaciente.Text:=qry_clientcli_first_name.AsString;


   cxLookupComboBoxConvenio.ItemIndex:=-1;
   qry_insurance.Locate('insCod',qryinsuranceCod.AsString,[loCaseInsensitive, loPartialKey]);
   cxLookupComboBoxConvenio.Text:=qry_insuranceins_nickname.AsString;
   cxTextEditConvenioID.Text:= qry_insuranceins_id.AsString;

   cxLookupComboBoxTipoExame.ItemIndex:=-1;
   qry_requisition_type.Locate('retCod',qryinsuranceCod.AsString,[loCaseInsensitive, loPartialKey]);
   cxLookupComboBoxTipoExame.Text:=qry_requisition_typeret_name.AsString;
   cxTextEditTipoExameID.Text:= qry_requisition_typeret_id.AsString;

   cxLookupComboBoxMedico.ItemIndex:=-1;
   qry_doctor.Locate('codDoctor',qrydoctorCod.AsString,[loCaseInsensitive, loPartialKey]);
   cxLookupComboBoxMedico.Text:=qry_doctorrec_name.AsString;
   cxTextEditMedicoID.Text:= qry_doctordoc_id.AsString;
   req_cod:=qryreqCod.AsString;

   qry_requisition_iten.Refresh;
   edt_codid.Text:=qryreq_id.AsString;
   edt_dt_registration.Text:=qryreq_dt_registration.AsString;


end;

procedure Tfrm_Requisition_Lab.Action_insertExecute(Sender: TObject);
begin
  inherited;
   cxLookupComboBoxEmpresa.ItemIndex:=-1;
   cxTextEditEnterpriseID.Clear;

   cxLookupComboBoxPaciente.ItemIndex:=-1;


   cxLookupComboBoxConvenio.ItemIndex:=-1;
   cxTextEditConvenioID.Clear;

   cxLookupComboBoxTipoExame.ItemIndex:=-1;
   cxTextEditTipoExameID.Clear;

   cxLookupComboBoxMedico.ItemIndex:=-1;
   cxTextEditMedicoID.Clear;

   qry.insert;

end;

procedure Tfrm_Requisition_Lab.Action_saveExecute(Sender: TObject);
begin
  inherited;

  if ds.DataSet.State in [dsEdit] then
    Exit;

   with frm_dm.qry,sql do
    begin
         close;
         Text:= ' select case when max(req_id) is null then 1 ' +
                '      else (max(req_id) + 1) end as maxID from requisition '+
                ' where contract_ctr_cod = unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')';
         Prepare;
         Open;
         if not (qry.State in [dsInsert,dsEdit])  then
          qry.Edit;

         if qryreq_id.AsInteger = 0 then
          qryreq_id.AsInteger:=Fields[0].AsInteger;
          qryclient_cli_cod.Value           := qry_clientcli_cod.Value;
          qryenterprise_ent_cod.Value       := qry_enterpriseent_cod.Value;
          qryrequisition_type_ret_cod.Value := qry_requisition_typeret_cod.Value;
          qryinsurance_ins_cod.Value        := qry_insuranceins_cod.Value;
          qrydoctor_doc_cod.Value           := qry_doctordoc_cod.Value;
          qryreq_source.AsString            := 'L';
          qryreq_status.AsString            := 'A';
          qry.Post;
       end;
    qry_sql('todos');

  end;


procedure Tfrm_Requisition_Lab.cxGrid1DBTableView1pro_initialsPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
if not (qry_requisition_iten.State in [dsEdit]) then
 qry_requisition_iten.Edit;

qry_requisition_itenproduct_pro_cod.Value:=qry_productpro_cod.Value;
qry_requisition_itenproduct_value.AsFloat:=qry_producttpp_value.AsFloat;
qry_requisition_iten.Post;

end;

procedure Tfrm_Requisition_Lab.cxGrid2DBTableView1Column1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
if not (qry_requisition_medicine.State in [dsEdit]) then
 qry_requisition_medicine.Edit;

qry_requisition_medicinemedicine_med_cod.Value:=qry_medicinemed_cod.Value;
qry_requisition_medicine.Post;
qry_requisition_medicine.Refresh;
end;

procedure Tfrm_Requisition_Lab.cxLookupComboBoxColetadorPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
 cxTextEditColetador.Text:=qry_employeeemp_id.AsString;
end;

procedure Tfrm_Requisition_Lab.cxLookupComboBoxConvenioPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;

 cxTextEditConvenioID.Text:=qry_insuranceins_id.AsString;
 qry_product.Close;
 qry_product.ParamByName('convenio').AsString:=qry_insuranceinsCod.AsString;
 qry_product.Prepare;
 qry_product.Open;

 if True then


 recalcularValorExame(qry_insuranceinsCod.AsString);

end;

procedure Tfrm_Requisition_Lab.cxLookupComboBoxEmpresaPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
 cxTextEditEnterpriseID.Text:=qry_enterpriseent_id.AsString;
end;

procedure Tfrm_Requisition_Lab.cxLookupComboBoxMedicoPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxTextEditMedicoID.Text:=qry_doctordoc_id.AsString;
end;

procedure Tfrm_Requisition_Lab.cxLookupComboBoxPacientePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
cxTextEditDataNasc.Text:=DateToStr(qry_clientcli_dt_birthopen.AsDateTime);

if YearsBetween(frm_dm.dataAtual,qry_clientcli_dt_birthopen.AsDateTime) = 0   then
begin
 if MonthsBetween(frm_dm.dataAtual,qry_clientcli_dt_birthopen.AsDateTime) = 0   then
  begin
  cxTextEditIdade.Text:= IntToStr(DaysBetween(frm_dm.dataAtual,qry_clientcli_dt_birthopen.AsDateTime));
   if StrToInt(cxTextEditIdade.Text) = 1 then
    cxTextEditTipo.Text:='DIA'
     else
      cxTextEditTipo.Text:='DIAS';
 end
  else
   begin
    cxTextEditIdade.Text:=IntToStr(MonthsBetween(frm_dm.dataAtual,qry_clientcli_dt_birthopen.AsDateTime));
     if StrToInt(cxTextEditIdade.Text) = 1 then
      cxTextEditTipo.Text:='MES'
       else
        cxTextEditTipo.Text:='MESES';
   end;
end
 else
  begin
   cxTextEditIdade.Text:= IntToStr(YearsBetween(frm_dm.dataAtual,qry_clientcli_dt_birthopen.AsDateTime));
    if StrToInt(cxTextEditIdade.Text) = 1 then
     cxTextEditTipo.Text:='ANO'
      else
       cxTextEditTipo.Text:='ANOS';
   end;
   cxTextEditRG.Text:=qry_clientcli_rgie.AsString;
   cxTextEditCPF.Text:=qry_clientcli_cpfcnpj.AsString;


end;

procedure Tfrm_Requisition_Lab.cxLookupComboBoxTipoExamePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
cxTextEditTipoExameID.Text:=qry_requisition_typeret_id.AsString;
end;

procedure Tfrm_Requisition_Lab.cxTextEditColetadorExit(Sender: TObject);
begin
  inherited;
 if trim(cxTextEditColetador.Text) = ''  then
  exit;

 try
  begin
   cxLookupComboBoxColetador.ItemIndex:=-1;
   qry_employee.Locate('emp_id',strToInt(cxTextEditColetador.Text),[loCaseInsensitive, loPartialKey]);
   cxLookupComboBoxColetador.Text:= qry_employeerec_name.AsString;
   end;
 Except
  begin
    Application.MessageBox('Código Inválido!','LABORATÓRIO', MB_OK + MB_ICONEXCLAMATION);
    cxTextEditMedicoID.SetFocus;
  end;

 end;
end;

procedure Tfrm_Requisition_Lab.cxTextEditConvenioIDExit(Sender: TObject);
begin
  inherited;
 if trim(cxTextEditConvenioID.Text) = ''  then
  exit;

 try
   begin
    cxLookupComboBoxConvenio.ItemIndex:=-1;
    qry_insurance.Locate('ins_id',strToInt(cxTextEditConvenioID.Text),[loCaseInsensitive, loPartialKey]);
    cxLookupComboBoxConvenio.Text:= qry_insuranceins_last_name.AsString;
   end;
 Except
  begin
    Application.MessageBox('Código Inválido!','LABORATÓRIO', MB_OK + MB_ICONEXCLAMATION);
    cxTextEditEnterpriseID.SetFocus;
  end;
  end;

end;

procedure Tfrm_Requisition_Lab.cxTextEditEnterpriseIDExit(Sender: TObject);
begin
  inherited;
  if trim(cxTextEditEnterpriseID.Text) = ''  then
  exit;

 try
   begin
    cxLookupComboBoxEmpresa.ItemIndex:=-1;
    qry_enterprise.Locate('ent_id',strToInt(cxTextEditEnterpriseID.Text),[loCaseInsensitive, loPartialKey]);
    cxLookupComboBoxEmpresa.Text:= qry_enterpriseent_last_name.AsString;
   end;
 Except
  begin
    Application.MessageBox('Código Inválido!','LABORATÓRIO', MB_OK + MB_ICONEXCLAMATION);
    cxTextEditConvenioID.SetFocus;
  end;
  end;
end;

procedure Tfrm_Requisition_Lab.cxTextEditMedicoIDExit(Sender: TObject);
begin
  inherited;
 if trim(cxTextEditMedicoID.Text) = ''  then
  exit;

 try
  begin
   cxLookupComboBoxMedico.ItemIndex:=-1;
   qry_doctor.Locate('doc_id',strToInt(cxTextEditMedicoID.Text),[loCaseInsensitive, loPartialKey]);
   cxLookupComboBoxMedico.Text:= qry_doctorrec_name.AsString;
   end;
 Except
  begin
    Application.MessageBox('Código Inválido!','LABORATÓRIO', MB_OK + MB_ICONEXCLAMATION);
    cxTextEditTipoExameID.SetFocus;
  end;
 end;
end;

procedure Tfrm_Requisition_Lab.cxTextEditTipoExameIDExit(Sender: TObject);
begin
  inherited;
 if trim(cxTextEditTipoExameID.Text) = ''  then
  exit;

 try
   begin
    cxLookupComboBoxTipoExame.ItemIndex:=-1;
    qry_requisition_type.Locate('ret_id',strToInt(cxTextEditTipoExameID.Text),[loCaseInsensitive, loPartialKey]);
    cxLookupComboBoxTipoExame.Text:= qry_requisition_typeret_name.AsString;
   end;
 Except
  begin
    Application.MessageBox('Código Inválido!','LABORATÓRIO', MB_OK + MB_ICONEXCLAMATION);
    cxTextEditConvenioID.SetFocus;
  end;
  end;
end;

procedure Tfrm_Requisition_Lab.qryAfterInsert(DataSet: TDataSet);
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
         ' select 0,unhex('+ QuotedStr(req_cod) + '),unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')' +',now()';
   Prepare;
   ExecSQL;
  end;

   qry_sql('insert');
//   qry.Edit;
//   qryreq_dt_registration.AsDateTime:=Now;
   edt_codid.Text:=qryreq_id.AsString;
   edt_dt_registration.Text:=qryreq_dt_registration.AsString;
end;

procedure Tfrm_Requisition_Lab.qry_requisition_itenAfterDelete(
  DataSet: TDataSet);
var
seq:Integer;
begin
  inherited;
   qry_requisition_iten.First;
   seq:=1;
   qry_requisition_iten.Tag:=1; ///apenas para não executar o efente afterPost
   while not qry_requisition_iten.Eof do
    begin
     qry_requisition_iten.Edit;
     qry_requisition_itenrei_id.AsInteger:=seq;
     qry_requisition_iten.Post;
     seq:=seq + 1;
     qry_requisition_iten.Next;

    end;
end;

procedure Tfrm_Requisition_Lab.qry_requisition_itenAfterInsert(
  DataSet: TDataSet);
   var
 columncIndex,seq : integer;
 b : boolean;
begin
  inherited;
 With frm_dm.qry,sql do
 begin
   close;
   text:='select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   rei_cod:=Fields[0].AsString;

   Close;
   Text:='insert into requisition_iten (rei_id,rei_collect, rei_cod,requisition_req_cod) ' +
         ' select 0,''S'',unhex('+ QuotedStr(rei_cod) + '),unhex('+ QuotedStr(req_cod) + ')';
   Prepare;
   ExecSQL;
  end;



   cxGrid1.SetFocus;
   qry_requisition_iten.Close;
   qry_requisition_iten.Prepare;
   qry_requisition_iten.open;


   qry_requisition_iten.First;
   seq:=1;
   qry_requisition_iten.Tag:=1; ///apenas para não executar o efente afterPost
   while not qry_requisition_iten.Eof do
    begin
     qry_requisition_iten.Edit;
     qry_requisition_itenrei_id.AsInteger:=seq;
     qry_requisition_iten.Post;
     seq:=seq + 1;
     qry_requisition_iten.Next;

    end;
    qry_requisition_iten.Locate('reiCod',QuotedStr(rei_cod), []);
    qry_requisition_iten.Edit;

    qry_requisition_itenrei_collect.AsString:='S';

   //Código para setar o foco na coluna co código do exame...

   b := True;
   cxgrid1.Setfocus;
   columncIndex := cxGrid1DBTableView1.GetColumnByFieldName('pro_initials').index;
   cxGrid1DBTableView1.DataController.FocusControl(columncIndex, b);

end;

procedure Tfrm_Requisition_Lab.qry_requisition_itenAfterPost(DataSet: TDataSet);
begin
  inherited;
 if qry_requisition_iten.Tag = 1 then
  Exit;

  qry_requisition_iten.Refresh;
end;

procedure Tfrm_Requisition_Lab.qry_requisition_itenAfterRefresh(
  DataSet: TDataSet);
var
total:Double;
begin
  inherited;
  total:=0;
  qry_requisition_iten.DisableControls;
  qry_requisition_iten.First;
  while not qry_requisition_iten.Eof  do
   begin
     total:=total + qry_requisition_itenproduct_value.AsFloat;
     qry_requisition_iten.Next;
   end;
   cxTextEditTotalExame.Value:=total;
   qry_requisition_iten.EnableControls;
end;

procedure Tfrm_Requisition_Lab.qry_requisition_medicineAfterInsert(
  DataSet: TDataSet);
 var
 columncIndex : integer;
 b : boolean;
begin
  inherited;
 With frm_dm.qry,sql do
 begin
   close;
   text:='select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   rem_cod:=Fields[0].AsString;

   Close;
   Text:='insert into requisition_medicine (rem_id,rem_cod,requisition_req_cod) ' +
         ' select 0,unhex('+ QuotedStr(rem_cod) + '),unhex('+ QuotedStr(req_cod) + ')';
   Prepare;
   ExecSQL;
  end;
   cxGrid2.SetFocus;
   qry_requisition_medicine.Close;
   qry_requisition_medicine.Prepare;
   qry_requisition_medicine.open;
   qry_requisition_medicine.Locate('remCod',QuotedStr(rem_cod), []);
   qry_requisition_medicine.Edit;

   //Código para setar o foco na coluna co código do exame...

   b := True;
   cxGrid2.Setfocus;
   columncIndex := cxGrid2DBTableView1.GetColumnByFieldName('med_name').index;
   cxGrid2DBTableView1.DataController.FocusControl(columncIndex, b);

end;

procedure Tfrm_Requisition_Lab.qry_sql(sql: string);
begin
  qry.Close;
  if sql = 'todos' then
   qry.sql.text:= 'select requisition.*, hex(client_cli_cod) as clientCod,hex(enterprise_ent_cod) as enterpriseCod, '+
                  ' hex(insurance_ins_cod) as insuranceCod,hex(doctor_doc_cod) as doctorCod, '  +
                  ' hex(employee_emp_cod) employeeCod,hex(req_cod) as reqCod,rec_name,cli_first_name,ins_nickname from requisition '+
                  ' left join record on rec_cod in (select employee.record_rec_cod from employee  ' +
                  ' where  emp_cod in (select doctor.employee_emp_cod from doctor where hex(doc_cod) = hex(requisition.doctor_doc_cod))) ' +
                  ' left join client on cli_cod = client_cli_cod ' +
                  ' left join insurance on ins_cod = insurance_ins_cod ' +
                  ' where req_deleted_at is null';

  if sql = 'insert' then
   qry.sql.text:= 'select requisition.*, hex(client_cli_cod) as clientCod,hex(enterprise_ent_cod) as enterpriseCod, '+
                  ' hex(insurance_ins_cod) as insuranceCod,hex(doctor_doc_cod) as doctorCod, '  +
                  ' hex(employee_emp_cod) employeeCod,hex(req_cod) as reqCod,rec_name,cli_first_name,ins_nickname from requisition '+
                  ' left join record on rec_cod in (select employee.record_rec_cod from employee  ' +
                  ' where  emp_cod in (select doctor.employee_emp_cod from doctor where hex(doc_cod) = hex(requisition.doctor_doc_cod))) ' +
                  ' left join client on cli_cod = client_cli_cod ' +
                  ' left join insurance on ins_cod = insurance_ins_cod ' +
                  ' where req_cod = unhex(' + QuotedStr(req_cod) + ')';
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_Requisition_Lab.recalcularValorExame(convenio: string);
var
passou:Boolean;
begin
passou:=True;
with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' select hex(product_pro_cod) as proCod,tpp_value from table_price_product ' +
         ' where table_price_tbp_cod in (select table_price_tbp_cod from insurance ' +
                                         ' where hex(ins_cod) = ' + QuotedStr(convenio) + ')' ;
  prepare;
  open;
  qry_requisition_iten.First;
  while not qry_requisition_iten.Eof do
   begin
    if not Locate('proCod',qry_requisition_itenproCod.AsString,[]) then
     begin
      Application.MessageBox('Existem Exames em sua requisição que não tem cobertura por esse convênio!', 'Requisição',MB_OK + MB_ICONINFORMATION);
      passou:=False;
      Break;
     end;
     qry_requisition_iten.Next;
   end;


  if not passou then
   exit;

  qry_requisition_iten.First;
  qry_requisition_iten.Tag:=1; ///apenas para não executar o efente afterPost
  while not qry_requisition_iten.Eof do
   begin
    Locate('proCod',qry_requisition_itenproCod.AsString,[]);
    qry_requisition_iten.Edit;
    qry_requisition_itenproduct_value.Value:= FieldByName('tpp_value').AsFloat;
    qry_requisition_iten.Post;
   qry_requisition_iten.Next;
   end;
 end;

 qry_requisition_iten.Tag:=0;
 qry_requisition_iten.Refresh;



end;

end.
