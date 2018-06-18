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
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

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
    cxTextEditPaciente: TcxTextEdit;
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
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxTextEditDataNasc: TcxTextEdit;
    cxTextEditIdade: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientidade: TLargeintField;
    procedure cxLookupComboBoxPacientePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Requisition_Lab: Tfrm_Requisition_Lab;

implementation

{$R *.dfm}

procedure Tfrm_Requisition_Lab.cxLookupComboBoxPacientePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
cxTextEditDataNasc.Text:=DateToStr(qry_clientcli_dt_birthopen.AsDateTime);
cxTextEditIdade.Text:=IntToStr(qry_clientidade.AsInteger);

end;

end.
