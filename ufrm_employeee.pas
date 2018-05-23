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
    edtCNH_Numero: TcxTextEdit;
    cxLabel14: TcxLabel;
    edtRG: TcxTextEdit;
    cxLabel15: TcxLabel;
    edtCart_Trabalho_Numero: TcxTextEdit;
    cxLabel17: TcxLabel;
    edtSecao_Eleitoral: TcxTextEdit;
    edtCPF: TcxMaskEdit;
    cxLabel20: TcxLabel;
    edtCart_Trabalho_Serie: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxLabel18: TcxLabel;
    edtCart_Trabalho_EstadoUF: TcxTextEdit;
    cxLabel19: TcxLabel;
    edtCNH_Categoria: TcxTextEdit;
    edtTitulo_Eleitor: TcxTextEdit;
    cxLabel21: TcxLabel;
    edtCAM_Numero: TcxTextEdit;
    cxLabel22: TcxLabel;
    edtZona_Eleitoral: TcxTextEdit;
    cxLabel23: TcxLabel;
    edtCart_Trabalho_Dt_Emissao: TcxDateEdit;
    edtCNH_Dt_Exp: TcxDateEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    edtCRM_Numero: TcxTextEdit;
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
    edtPais_End: TcxTextEdit;
    cxLabel36: TcxLabel;
    edtContato_Tel: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    edtTel_1: TcxMaskEdit;
    cxLabel37: TcxLabel;
    edtTel_2: TcxMaskEdit;
    edtTel_4: TcxMaskEdit;
    edtTel_3: TcxMaskEdit;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    edtNumero_Casa: TcxTextEdit;
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
    cxGridDBTableView1emp_id: TcxGridDBColumn;
    cxGridDBTableView1emp_type: TcxGridDBColumn;
    cxGridDBTableView1emp_status: TcxGridDBColumn;
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure ExibirRegistros;
     procedure LimpaCampos;
     procedure PreecherCampos;

  end;

var
  frm_employee_: Tfrm_employee_;

implementation

{$R *.dfm}

uses ufrm_dm;

{ Tfrm_default1 }

procedure Tfrm_employee_.Action_editExecute(Sender: TObject);
begin
  inherited;
  //Se tag = 2 é para alterar
   Self.Tag := 2;
   PreecherCampos;
end;

procedure Tfrm_employee_.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //Se tag = 1 é para inserir
  Self.Tag := 1;
  LimpaCampos;
end;

procedure Tfrm_employee_.Action_saveExecute(Sender: TObject);
 var
  Employee: TEmployeeModel;
  Dao     : TEmployee_Dao;
begin

     Employee := TEmployeeModel.Create;
     Dao      := TEmployee_Dao.Create;

     try
         //Tag = 1 para Inserir
     if Self.Tag = 1 then
      begin

       Employee.ctr_id                := 1;      //#Falta pegar ID do Contrato
       Employee.rec_name              := edtNome.Text;
       Employee.rec_nickname          := edtApelido.Text;
       Employee.rec_dt_birth          := edtDataNasc.Date;
       Employee.rec_sex               := cxCombxSexo.Text;
       Employee.rec_status_marital    := cxComboxEstadoCivil.Text;
       Employee.emp_type              := cxComboxTipo.Text;
       Employee.emp_status            := cxComboxStatus.Text;
       Employee.rec_father_name       := edtPai.Text;
       Employee.rec_mother_name       := edtMae.Text;
       Employee.rec_nationality       := edtNacionalidade.Text;
       Employee.rec_naturalness_city  := edtNaturCidade.Text;
       Employee.rec_naturalness_uf    := edtNaturUF.Text;
       Employee.rec_cpf_number        := edtCPF.Text;
       Employee.rec_rg_number         := edtRG.Text;
       Employee.rec_ctps_number       := edtCart_Trabalho_Numero.Text;
       Employee.rec_ctps_serial       := edtCart_Trabalho_Serie.Text;
       Employee.rec_ctps_date         := edtCart_Trabalho_Dt_Emissao.Date;
       Employee.rec_ctps_state        := edtCart_Trabalho_EstadoUF.Text;
       Employee.rec_cnh_number        := edtCNH_Numero.Text;
       Employee.rec_chn_category      := edtCNH_Categoria.Text;
       Employee.rec_cnh_dt_expiration := edtCNH_Dt_Exp.Date;
       Employee.rec_cam_number        := edtCAM_Numero.Text;
       Employee.rec_te_number         := edtTitulo_Eleitor.Text;
       Employee.rec_te_zone           := edtZona_Eleitoral.Text;
       Employee.rec_te_section        := edtSecao_Eleitoral.Text;
       Employee.rec_crm_number        := edtCRM_Numero.Text;
       Employee.rec_add_zipcode       := btnEditCEP.Text;
       Employee.rec_add_address       := edtRua.Text;
       Employee.rec_add_number        := edtNumero_Casa.Text;
       Employee.rec_add_street        := edtBairro.Text;
       Employee.rec_add_complement    := edtComplemento.Text;
       Employee.rec_add_city          := edtCidade.Text;
       Employee.rec_add_state         := edtUF_End.Text;
       Employee.rec_add_country       := edtPais_End.Text;
       Employee.rec_phone1            := edtTel_1.Text;
       Employee.rec_phone2            := edtTel_2.Text;
       Employee.rec_phone3            := edtTel_3.Text;
       Employee.rec_phone4            := edtTel_4.Text;
       Employee.rec_contact           := edtContato_Tel.Text;

       Dao.Employee_Create(Employee);

      end       //Tag = 2 para Alterar
       else if Self.Tag = 2 then
        begin
           Employee.rec_id  := memTablerec_id.AsInteger;
           Employee.emp_id  := memTableemp_id.AsInteger;

           Employee.rec_name              := edtNome.Text;
           Employee.rec_nickname          := edtApelido.Text;
           Employee.rec_dt_birth          := edtDataNasc.Date;
           Employee.rec_sex               := cxCombxSexo.Text;
           Employee.rec_status_marital    := cxComboxEstadoCivil.Text;
           Employee.emp_type              := cxComboxTipo.Text;
           Employee.emp_status            := cxComboxStatus.Text;
           Employee.rec_father_name       := edtPai.Text;
           Employee.rec_mother_name       := edtMae.Text;
           Employee.rec_nationality       := edtNacionalidade.Text;
           Employee.rec_naturalness_city  := edtNaturCidade.Text;
           Employee.rec_naturalness_uf    := edtNaturUF.Text;
           Employee.rec_cpf_number        := edtCPF.Text;
           Employee.rec_rg_number         := edtRG.Text;
           Employee.rec_ctps_number       := edtCart_Trabalho_Numero.Text;
           Employee.rec_ctps_serial       := edtCart_Trabalho_Serie.Text;
           Employee.rec_ctps_date         := edtCart_Trabalho_Dt_Emissao.Date;
           Employee.rec_ctps_state        := edtCart_Trabalho_EstadoUF.Text;
           Employee.rec_cnh_number        := edtCNH_Numero.Text;
           Employee.rec_chn_category      := edtCNH_Categoria.Text;
           Employee.rec_cnh_dt_expiration := edtCNH_Dt_Exp.Date;
           Employee.rec_cam_number        := edtCAM_Numero.Text;
           Employee.rec_te_number         := edtTitulo_Eleitor.Text;
           Employee.rec_te_zone           := edtZona_Eleitoral.Text;
           Employee.rec_te_section        := edtSecao_Eleitoral.Text;
           Employee.rec_crm_number        := edtCRM_Numero.Text;
           Employee.rec_add_zipcode       := btnEditCEP.Text;
           Employee.rec_add_address       := edtRua.Text;
           Employee.rec_add_number        := edtNumero_Casa.Text;
           Employee.rec_add_street        := edtBairro.Text;
           Employee.rec_add_complement    := edtComplemento.Text;
           Employee.rec_add_city          := edtCidade.Text;
           Employee.rec_add_state         := edtUF_End.Text;
           Employee.rec_add_country       := edtPais_End.Text;
           Employee.rec_phone1            := edtTel_1.Text;
           Employee.rec_phone2            := edtTel_2.Text;
           Employee.rec_phone3            := edtTel_3.Text;
           Employee.rec_phone4            := edtTel_4.Text;
           Employee.rec_contact           := edtContato_Tel.Text;

           Dao.Employee_Update(Employee);

         end;
     finally
       Employee.Free;
       Dao.Free;
       ExibirRegistros;
     end;
  inherited;

end;

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

procedure Tfrm_employee_.LimpaCampos;
 var
  i: Integer;
begin

   for i := 0 to ComponentCount -1 do
    begin
    if Components[i] is TcxTextEdit then
      TcxTextEdit(Components[i]).Clear;

    if Components[i] is TcxDateEdit then
      TcxTextEdit(Components[i]).Clear;

    if Components[i] is TcxComboBox then
       TcxComboBox(Components[i]).Clear;

    if Components[i] is TcxButtonEdit then
       TcxButtonEdit(Components[i]).Clear;

    end;

   edtNome.SetFocus;
end;

procedure Tfrm_employee_.PreecherCampos;
begin
      edt_codid.Text                    := IntToStr(memTableemp_id.AsInteger);
      edt_dt_registration.Text          := DateToStr(memTableemp_dt_registration.AsDateTime);
      edtNome.Text                      := memTablerec_name.AsString;
      edtApelido.Text                   := memTablerec_nickname.AsString;
      edtDataNasc.Date                  := memTablerec_dt_birth.AsDateTime;
      cxCombxSexo.Text                  := memTablerec_sex.AsString;
      cxComboxEstadoCivil.Text          := memTablerec_status_marital.AsString;
      cxComboxTipo.Text                 := memTableemp_type.AsString;
      cxComboxStatus.Text               := memTableemp_status.AsString;
      edtPai.Text                       := memTablerec_father_name.AsString;
      edtMae.Text                       := memTablerec_mother_name.AsString;
      edtNacionalidade.Text             := memTablerec_nationality.AsString;
      edtNaturCidade.Text               := memTablerec_naturalness_city.AsString;
      edtNaturUF.Text                   := memTablerec_naturalness_uf.AsString;
      edtCPF.Text                       := memTablerec_cpf_number.AsString;
      edtRG.Text                        := memTablerec_rg_number.AsString;
      edtCart_Trabalho_Numero.Text      := memTablerec_ctps_number.AsString;
      edtCart_Trabalho_Serie.Text       := memTablerec_ctps_serial.AsString;
      edtCart_Trabalho_Dt_Emissao.Date  := memTablerec_ctps_date.AsDateTime;
      edtCart_Trabalho_EstadoUF.Text    := memTablerec_ctps_state.AsString;
      edtCNH_Numero.Text                := memTablerec_cnh_number.AsString;
      edtCNH_Categoria.Text             := memTablerec_chn_category.AsString;
      edtCNH_Dt_Exp.Date                := memTablerec_cnh_dt_expiration.AsDateTime;
      edtCAM_Numero.Text                := memTablerec_cam_number.AsString;
      edtTitulo_Eleitor.Text            := memTablerec_te_number.AsString;
      edtZona_Eleitoral.Text            := memTablerec_te_zone.AsString;
      edtSecao_Eleitoral.Text           := memTablerec_te_section.AsString;
      edtCRM_Numero.Text                := memTablerec_crm_number.AsString;
      btnEditCEP.Text                   := memTablerec_add_zipcode.AsString;
      edtRua.Text                       := memTablerec_add_address.AsString;
      edtNumero_Casa.Text               := memTablerec_add_number.AsString;
      edtBairro.Text                    := memTablerec_add_street.AsString;
      edtComplemento.Text               := memTablerec_add_complement.AsString;
      edtCidade.Text                    := memTablerec_add_city.AsString;
      edtUF_End.Text                    := memTablerec_add_state.AsString;
      edtPais_End.Text                  := memTablerec_add_country.AsString;
      edtTel_1.Text                     := memTablerec_phone1.AsString;
      edtTel_2.Text                     := memTablerec_phone2.AsString;
      edtTel_3.Text                     := memTablerec_phone3.AsString;
      edtTel_4.Text                     := memTablerec_phone4.AsString;
      edtContato_Tel.Text               := memTablerec_contact.AsString;

end;

end.
