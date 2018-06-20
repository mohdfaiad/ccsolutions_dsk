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
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_Requisition_Lab = class(Tfrm_default)
    qryreq_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryclient_cli_cod: TBytesField;
    qryenterprise_ent_cod: TBytesField;
    qryrequisition_type_ret_cod: TBytesField;
    qryinsurance_ins_cod: TBytesField;
    qryrole_rol_cod: TBytesField;
    qrydoctor_doc_cod: TBytesField;
    qryreq_id: TLongWordField;
    qryreq_source: TStringField;
    qryreq_status: TStringField;
    qryreq_deleted_at: TDateTimeField;
    qryreq_dt_registration: TDateTimeField;
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
    grid_1DBTableView1req_cod: TcxGridDBColumn;
    grid_1DBTableView1contract_ctr_cod: TcxGridDBColumn;
    grid_1DBTableView1client_cli_cod: TcxGridDBColumn;
    grid_1DBTableView1enterprise_ent_cod: TcxGridDBColumn;
    grid_1DBTableView1requisition_type_ret_cod: TcxGridDBColumn;
    grid_1DBTableView1insurance_ins_cod: TcxGridDBColumn;
    grid_1DBTableView1role_rol_cod: TcxGridDBColumn;
    grid_1DBTableView1doctor_doc_cod: TcxGridDBColumn;
    grid_1DBTableView1req_id: TcxGridDBColumn;
    grid_1DBTableView1req_source: TcxGridDBColumn;
    grid_1DBTableView1req_status: TcxGridDBColumn;
    grid_1DBTableView1req_deleted_at: TcxGridDBColumn;
    grid_1DBTableView1req_dt_registration: TcxGridDBColumn;
    cxTextEditCNS: TcxTextEdit;
    cxLabelPaciente: TcxLabel;
    cxLookupComboBoxPaciente: TcxLookupComboBox;
    qry_client: TFDQuery;
    qry_clientcli_id: TLongWordField;
    qry_clientcli_cod: TBytesField;
    qry_clientcli_first_name: TStringField;
    qry_clientcli_last_name: TStringField;
    qry_clientcliCod: TStringField;
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
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientidade: TLargeintField;
    cxTextEditPeso: TcxTextEdit;
    cxTextEditAltura: TcxTextEdit;
    cxTextEditSexo: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxTextEditRG: TcxTextEdit;
    cxLabelCPF: TcxLabel;
    cxTextEditCPF: TcxTextEdit;
    cxLabelEmpresa: TcxLabel;
    cxLookupComboBoxEmpresa: TcxLookupComboBox;
    qry_enterprise: TFDQuery;
    qry_clientcontract_ctr_cod: TBytesField;
    ds_qry_enterprise: TDataSource;
    cxTextEditEnterpriseID: TcxTextEdit;
    cxTextEditConvenioID: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    BitBtn1: TBitBtn;
    qry_enterpriseent_cod: TBytesField;
    qry_enterpriseent_id: TLongWordField;
    qry_enterpriseent_last_name: TStringField;
    qry_enterprisecontract_ctr_cod: TBytesField;
    qry_enterpriseentCod: TStringField;
    cxLabelConvenio: TcxLabel;
    cxLookupComboBoxConvenio: TcxLookupComboBox;
    qry_insurance: TFDQuery;
    qry_insuranceins_cod: TBytesField;
    qry_insurancecontract_ctr_cod: TBytesField;
    qry_insurancetable_price_tbp_cod: TBytesField;
    qry_insuranceins_id: TLongWordField;
    qry_insuranceins_last_name: TStringField;
    qry_insuranceins_nickname: TStringField;
    ds_qry_insurance: TDataSource;
    qry_insuranceinsCod: TStringField;
    procedure cxLookupComboBoxPacientePropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBoxEmpresaPropertiesCloseUp(Sender: TObject);
    procedure cxTextEditEnterpriseIDExit(Sender: TObject);
    procedure cxLookupComboBoxConvenioPropertiesCloseUp(Sender: TObject);
    procedure cxTextEditConvenioIDExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Requisition_Lab: Tfrm_Requisition_Lab;

implementation

{$R *.dfm}

procedure Tfrm_Requisition_Lab.cxLookupComboBoxConvenioPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
 cxTextEditConvenioID.Text:=qry_insuranceins_id.AsString;
end;

procedure Tfrm_Requisition_Lab.cxLookupComboBoxEmpresaPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
 cxTextEditEnterpriseID.Text:=qry_enterpriseent_id.AsString;
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


//if (StrToInt(FormatDateTime('yyyy',frm_dm.dataAtual)) - StrToInt(FormatDateTime('yyyy',qry_clientcli_dt_birthopen.AsDateTime))) = 0   then
//begin
// if (StrToInt(FormatDateTime('MM',frm_dm.dataAtual)) - StrToInt(FormatDateTime('MM',qry_clientcli_dt_birthopen.AsDateTime))) = 0   then
//  begin
//  cxTextEditIdade.Text:= IntToStr((StrToInt(FormatDateTime('dd',frm_dm.dataAtual)) - StrToInt(FormatDateTime('dd',qry_clientcli_dt_birthopen.AsDateTime))));
//  cxTextEditTipo.Text:='Dias';
// end
//  else
//   begin
//    cxTextEditIdade.Text:=IntToStr((StrToInt(FormatDateTime('MM',frm_dm.dataAtual)) - StrToInt(FormatDateTime('MM',qry_clientcli_dt_birthopen.AsDateTime))));
//    cxTextEditTipo.Text:='Mese(s)';
//   end;
//end
// else
//  begin
//   cxTextEditIdade.Text:=qry_clientidade.AsString;;
//   cxTextEditTipo.Text:='Anos';
//  end;


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
    cxTextEditConvenioID.SetFocus;
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

end.
