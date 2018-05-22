unit ufrm_employeee;

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
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, frxExportDOCX, frxClass,
  frxExportBaseDialog, frxExportPDF, System.ImageList, Vcl.ImgList, QExport4Dialog, QImport3Wizard, ACBrBase,
  ACBrEnterTab, Vcl.Menus, dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList, cxCheckBox, dxStatusBar,
  cxTextEdit, cxLabel, cxGroupBox, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.ExtCtrls, cxDropDownEdit, cxMaskEdit,
  cxCalendar, cxButtonEdit, Employee.Model, Employee.Dao;
type
  Tfrm_employee_ = class(Tfrm_default)
    tbsht_documentos: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    edtNome: TcxTextEdit;
    edtApelido: TcxTextEdit;
    edtPai: TcxTextEdit;
    edtDataNasc: TcxDateEdit;
    cxCombxSexo: TcxComboBox;
    cxComboxEstadoCivil: TcxComboBox;
    edtMae: TcxTextEdit;
    edtNacionalidade: TcxTextEdit;
    edtNaturCidade: TcxTextEdit;
    edtNaturUF: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    edtCNH: TcxTextEdit;
    cxLabel14: TcxLabel;
    edtRG: TcxTextEdit;
    cxLabel15: TcxLabel;
    edtCart_Trabalho: TcxTextEdit;
    cxLabel17: TcxLabel;
    edtSecao_Eleitoral: TcxTextEdit;
    edtCPF: TcxMaskEdit;
    cxLabel20: TcxLabel;
    edtSerie_Cart_Trabalho: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxLabel18: TcxLabel;
    edtEstadoUF: TcxTextEdit;
    cxLabel19: TcxLabel;
    edtCat_CNH: TcxTextEdit;
    edtTitulo_Eleitor: TcxTextEdit;
    cxLabel21: TcxLabel;
    edt_N_CAM: TcxTextEdit;
    cxLabel22: TcxLabel;
    edtZona_Eleitoral: TcxTextEdit;
    cxLabel23: TcxLabel;
    edtDt_Emissao: TcxDateEdit;
    edtDt_Exp_CNH: TcxDateEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    edt_N_CRM: TcxTextEdit;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    edtRua: TcxTextEdit;
    cxLabel33: TcxLabel;
    edtBairro: TcxTextEdit;
    btnEditCEP: TcxButtonEdit;
    edtComplemento: TcxTextEdit;
    edtCidade: TcxTextEdit;
    edtUF_End: TcxTextEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    edtPais: TcxTextEdit;
    cxLabel36: TcxLabel;
    edtContato: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    edtTel_1: TcxMaskEdit;
    cxLabel37: TcxLabel;
    edtTel_2: TcxMaskEdit;
    edtTel_4: TcxMaskEdit;
    edtTel_3: TcxMaskEdit;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    edtN_Casa: TcxTextEdit;
    cxComboxTipo: TcxComboBox;
    cxComboxStatus: TcxComboBox;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    qryemp_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryrecord_rec_cod: TBytesField;
    qryemp_id: TLongWordField;
    qryemp_type: TStringField;
    qryemp_status: TStringField;
    qryemp_deleted_at: TDateTimeField;
    qryemp_dt_registration: TDateTimeField;
    qryrec_cod: TBytesField;
    qrycontract_ctr_cod_1: TBytesField;
    qryrec_id: TLongWordField;
    qryrec_name: TStringField;
    qryrec_nickname: TStringField;
    qryrec_sex: TStringField;
    qryrec_dt_birth: TDateField;
    qryrec_cpf_number: TStringField;
    qryrec_rg_number: TStringField;
    qryrec_ctps_number: TStringField;
    qryrec_ctps_serial: TStringField;
    qryrec_ctps_state: TStringField;
    qryrec_ctps_date: TDateField;
    qryrec_cam_number: TStringField;
    qryrec_cnh_number: TStringField;
    qryrec_chn_category: TStringField;
    qryrec_cnh_dt_expiration: TDateField;
    qryrec_te_number: TStringField;
    qryrec_te_zone: TStringField;
    qryrec_te_section: TStringField;
    qryrec_crm_number: TStringField;
    qryrec_status_marital: TStringField;
    qryrec_nationality: TStringField;
    qryrec_naturalness_uf: TStringField;
    qryrec_naturalness_city: TStringField;
    qryrec_father_name: TStringField;
    qryrec_mother_name: TStringField;
    qryrec_add_zipcode: TStringField;
    qryrec_add_address: TStringField;
    qryrec_add_number: TStringField;
    qryrec_add_street: TStringField;
    qryrec_add_complement: TStringField;
    qryrec_add_city: TStringField;
    qryrec_add_state: TStringField;
    qryrec_add_country: TStringField;
    qryrec_phone1: TStringField;
    qryrec_phone2: TStringField;
    qryrec_phone3: TStringField;
    qryrec_phone4: TStringField;
    qryrec_contact: TStringField;
    qryrec_deleted_at: TDateTimeField;
    qryrec_dt_registration: TDateTimeField;
    memTableemp_cod: TBytesField;
    memTablecontract_ctr_cod: TBytesField;
    memTablerecord_rec_cod: TBytesField;
    memTableemp_id: TLongWordField;
    memTableemp_type: TStringField;
    memTableemp_status: TStringField;
    memTableemp_deleted_at: TDateTimeField;
    memTableemp_dt_registration: TDateTimeField;
    memTablerec_cod: TBytesField;
    memTablecontract_ctr_cod_1: TBytesField;
    memTablerec_id: TLongWordField;
    memTablerec_name: TStringField;
    memTablerec_nickname: TStringField;
    memTablerec_sex: TStringField;
    memTablerec_dt_birth: TDateField;
    memTablerec_cpf_number: TStringField;
    memTablerec_rg_number: TStringField;
    memTablerec_ctps_number: TStringField;
    memTablerec_ctps_serial: TStringField;
    memTablerec_ctps_state: TStringField;
    memTablerec_ctps_date: TDateField;
    memTablerec_cam_number: TStringField;
    memTablerec_cnh_number: TStringField;
    memTablerec_chn_category: TStringField;
    memTablerec_cnh_dt_expiration: TDateField;
    memTablerec_te_number: TStringField;
    memTablerec_te_zone: TStringField;
    memTablerec_te_section: TStringField;
    memTablerec_crm_number: TStringField;
    memTablerec_status_marital: TStringField;
    memTablerec_nationality: TStringField;
    memTablerec_naturalness_uf: TStringField;
    memTablerec_naturalness_city: TStringField;
    memTablerec_father_name: TStringField;
    memTablerec_mother_name: TStringField;
    memTablerec_add_zipcode: TStringField;
    memTablerec_add_address: TStringField;
    memTablerec_add_number: TStringField;
    memTablerec_add_street: TStringField;
    memTablerec_add_complement: TStringField;
    memTablerec_add_city: TStringField;
    memTablerec_add_state: TStringField;
    memTablerec_add_country: TStringField;
    memTablerec_phone1: TStringField;
    memTablerec_phone2: TStringField;
    memTablerec_phone3: TStringField;
    memTablerec_phone4: TStringField;
    memTablerec_contact: TStringField;
    memTablerec_deleted_at: TDateTimeField;
    memTablerec_dt_registration: TDateTimeField;
    cxGridDBTableView1emp_cod: TcxGridDBColumn;
    cxGridDBTableView1contract_ctr_cod: TcxGridDBColumn;
    cxGridDBTableView1record_rec_cod: TcxGridDBColumn;
    cxGridDBTableView1emp_id: TcxGridDBColumn;
    cxGridDBTableView1emp_type: TcxGridDBColumn;
    cxGridDBTableView1emp_status: TcxGridDBColumn;
    cxGridDBTableView1emp_deleted_at: TcxGridDBColumn;
    cxGridDBTableView1emp_dt_registration: TcxGridDBColumn;
    cxGridDBTableView1rec_id: TcxGridDBColumn;
    cxGridDBTableView1rec_name: TcxGridDBColumn;
    cxGridDBTableView1rec_nickname: TcxGridDBColumn;
    cxGridDBTableView1rec_sex: TcxGridDBColumn;
    cxGridDBTableView1rec_dt_birth: TcxGridDBColumn;
    cxGridDBTableView1rec_cpf_number: TcxGridDBColumn;
    cxGridDBTableView1rec_rg_number: TcxGridDBColumn;
    cxGridDBTableView1rec_ctps_number: TcxGridDBColumn;
    cxGridDBTableView1rec_ctps_serial: TcxGridDBColumn;
    cxGridDBTableView1rec_ctps_state: TcxGridDBColumn;
    cxGridDBTableView1rec_ctps_date: TcxGridDBColumn;
    cxGridDBTableView1rec_cam_number: TcxGridDBColumn;
    cxGridDBTableView1rec_cnh_number: TcxGridDBColumn;
    cxGridDBTableView1rec_chn_category: TcxGridDBColumn;
    cxGridDBTableView1rec_cnh_dt_expiration: TcxGridDBColumn;
    cxGridDBTableView1rec_te_number: TcxGridDBColumn;
    cxGridDBTableView1rec_te_zone: TcxGridDBColumn;
    cxGridDBTableView1rec_te_section: TcxGridDBColumn;
    cxGridDBTableView1rec_crm_number: TcxGridDBColumn;
    cxGridDBTableView1rec_status_marital: TcxGridDBColumn;
    cxGridDBTableView1rec_nationality: TcxGridDBColumn;
    cxGridDBTableView1rec_naturalness_uf: TcxGridDBColumn;
    cxGridDBTableView1rec_naturalness_city: TcxGridDBColumn;
    cxGridDBTableView1rec_father_name: TcxGridDBColumn;
    cxGridDBTableView1rec_mother_name: TcxGridDBColumn;
    cxGridDBTableView1rec_add_zipcode: TcxGridDBColumn;
    cxGridDBTableView1rec_add_address: TcxGridDBColumn;
    cxGridDBTableView1rec_add_number: TcxGridDBColumn;
    cxGridDBTableView1rec_add_street: TcxGridDBColumn;
    cxGridDBTableView1rec_add_complement: TcxGridDBColumn;
    cxGridDBTableView1rec_add_city: TcxGridDBColumn;
    cxGridDBTableView1rec_add_state: TcxGridDBColumn;
    cxGridDBTableView1rec_add_country: TcxGridDBColumn;
    cxGridDBTableView1rec_phone1: TcxGridDBColumn;
    cxGridDBTableView1rec_phone2: TcxGridDBColumn;
    cxGridDBTableView1rec_phone3: TcxGridDBColumn;
    cxGridDBTableView1rec_phone4: TcxGridDBColumn;
    cxGridDBTableView1rec_contact: TcxGridDBColumn;
    cxGridDBTableView1rec_deleted_at: TcxGridDBColumn;
    cxGridDBTableView1rec_dt_registration: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExibirRegistros;
  end;

var
  frm_employee_: Tfrm_employee_;

implementation

{$R *.dfm}

uses ufrm_dm;

{ Tfrm_default1 }

procedure Tfrm_employee_.ExibirRegistros;
var
  Dao : TEmployee_Dao;
begin
   memTable.Close;
   Dao :=TEmployee_Dao.Create;
   try
     memTable.Data := Dao.Employee_read;
   finally
     Dao.Free;
   end;

end;

procedure Tfrm_employee_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frm_employee_);
end;

procedure Tfrm_employee_.FormShow(Sender: TObject);
begin
  inherited;
   ExibirRegistros;
end;

end.
