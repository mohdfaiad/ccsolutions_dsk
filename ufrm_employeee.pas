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
  cxCalendar, cxButtonEdit, ACBrSocket, ACBrCEP;
type
  Tfrm_employee_ = class(Tfrm_default)
    tbsht_documentos: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
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
    qryrecCod: TStringField;
    qryempCod: TStringField;
    mememp_cod: TBytesField;
    memcontract_ctr_cod: TBytesField;
    memrecord_rec_cod: TBytesField;
    mememp_id: TLongWordField;
    mememp_type: TStringField;
    mememp_status: TStringField;
    mememp_deleted_at: TDateTimeField;
    mememp_dt_registration: TDateTimeField;
    memrec_cod: TBytesField;
    memcontract_ctr_cod_1: TBytesField;
    memrec_id: TLongWordField;
    memrec_name: TStringField;
    memrec_nickname: TStringField;
    memrec_sex: TStringField;
    memrec_dt_birth: TDateField;
    memrec_cpf_number: TStringField;
    memrec_rg_number: TStringField;
    memrec_ctps_number: TStringField;
    memrec_ctps_serial: TStringField;
    memrec_ctps_state: TStringField;
    memrec_ctps_date: TDateField;
    memrec_cam_number: TStringField;
    memrec_cnh_number: TStringField;
    memrec_chn_category: TStringField;
    memrec_cnh_dt_expiration: TDateField;
    memrec_te_number: TStringField;
    memrec_te_zone: TStringField;
    memrec_te_section: TStringField;
    memrec_crm_number: TStringField;
    memrec_status_marital: TStringField;
    memrec_nationality: TStringField;
    memrec_naturalness_uf: TStringField;
    memrec_naturalness_city: TStringField;
    memrec_father_name: TStringField;
    memrec_mother_name: TStringField;
    memrec_add_zipcode: TStringField;
    memrec_add_address: TStringField;
    memrec_add_number: TStringField;
    memrec_add_street: TStringField;
    memrec_add_complement: TStringField;
    memrec_add_city: TStringField;
    memrec_add_state: TStringField;
    memrec_add_country: TStringField;
    memrec_phone1: TStringField;
    memrec_phone2: TStringField;
    memrec_phone3: TStringField;
    memrec_phone4: TStringField;
    memrec_contact: TStringField;
    memrec_deleted_at: TDateTimeField;
    memrec_dt_registration: TDateTimeField;
    memrecCod: TStringField;
    memempCod: TStringField;
    cxGridDBTableView1emp_id: TcxGridDBColumn;
    cxGridDBTableView1emp_type: TcxGridDBColumn;
    cxGridDBTableView1emp_status: TcxGridDBColumn;
    cxGridDBTableView1emp_dt_registration: TcxGridDBColumn;
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
    edtNaturUF: TcxTextEdit;
    cxLabel12: TcxLabel;
    edtNacionalidade: TcxTextEdit;
    edtNaturCidade: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    edtMae: TcxTextEdit;
    cxLabel9: TcxLabel;
    edtPai: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxComboxStatus: TcxComboBox;
    cxComboxTipo: TcxComboBox;
    cxLabel41: TcxLabel;
    cxLabel40: TcxLabel;
    cxComboxEstadoCivil: TcxComboBox;
    cxLabel7: TcxLabel;
    cxCombxSexo: TcxComboBox;
    cxLabel6: TcxLabel;
    edtDataNasc: TcxDateEdit;
    cxLabel5: TcxLabel;
    edtApelido: TcxTextEdit;
    cxLabel4: TcxLabel;
    edtNome: TcxTextEdit;
    cxLabel3: TcxLabel;
    grid_1DBTableView1emp_id: TcxGridDBColumn;
    grid_1DBTableView1emp_type: TcxGridDBColumn;
    grid_1DBTableView1emp_status: TcxGridDBColumn;
    grid_1DBTableView1emp_dt_registration: TcxGridDBColumn;
    grid_1DBTableView1rec_name: TcxGridDBColumn;
    grid_1DBTableView1rec_nickname: TcxGridDBColumn;
    grid_1DBTableView1rec_sex: TcxGridDBColumn;
    grid_1DBTableView1rec_dt_birth: TcxGridDBColumn;
    grid_1DBTableView1rec_cpf_number: TcxGridDBColumn;
    grid_1DBTableView1rec_rg_number: TcxGridDBColumn;
    grid_1DBTableView1rec_ctps_number: TcxGridDBColumn;
    grid_1DBTableView1rec_ctps_serial: TcxGridDBColumn;
    grid_1DBTableView1rec_ctps_state: TcxGridDBColumn;
    grid_1DBTableView1rec_ctps_date: TcxGridDBColumn;
    grid_1DBTableView1rec_cam_number: TcxGridDBColumn;
    grid_1DBTableView1rec_cnh_number: TcxGridDBColumn;
    grid_1DBTableView1rec_chn_category: TcxGridDBColumn;
    grid_1DBTableView1rec_cnh_dt_expiration: TcxGridDBColumn;
    grid_1DBTableView1rec_te_number: TcxGridDBColumn;
    grid_1DBTableView1rec_te_zone: TcxGridDBColumn;
    grid_1DBTableView1rec_te_section: TcxGridDBColumn;
    grid_1DBTableView1rec_crm_number: TcxGridDBColumn;
    grid_1DBTableView1rec_status_marital: TcxGridDBColumn;
    grid_1DBTableView1rec_nationality: TcxGridDBColumn;
    grid_1DBTableView1rec_naturalness_uf: TcxGridDBColumn;
    grid_1DBTableView1rec_naturalness_city: TcxGridDBColumn;
    grid_1DBTableView1rec_father_name: TcxGridDBColumn;
    grid_1DBTableView1rec_mother_name: TcxGridDBColumn;
    grid_1DBTableView1rec_add_zipcode: TcxGridDBColumn;
    grid_1DBTableView1rec_add_address: TcxGridDBColumn;
    grid_1DBTableView1rec_add_number: TcxGridDBColumn;
    grid_1DBTableView1rec_add_street: TcxGridDBColumn;
    grid_1DBTableView1rec_add_complement: TcxGridDBColumn;
    grid_1DBTableView1rec_add_city: TcxGridDBColumn;
    grid_1DBTableView1rec_add_state: TcxGridDBColumn;
    grid_1DBTableView1rec_add_country: TcxGridDBColumn;
    grid_1DBTableView1rec_phone1: TcxGridDBColumn;
    grid_1DBTableView1rec_phone2: TcxGridDBColumn;
    grid_1DBTableView1rec_phone3: TcxGridDBColumn;
    grid_1DBTableView1rec_phone4: TcxGridDBColumn;
    grid_1DBTableView1rec_contact: TcxGridDBColumn;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure btnEditCEPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

     procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
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

uses ufrm_dm, Employee.Dao, Employee.Model;

{ Tfrm_default1 }

procedure Tfrm_employee_.ACBrCEP_1BuscaEfetuada(Sender: TObject);
 var
  i:Integer;
begin
  inherited;
  for I := 0 to ACBrCEP1.Enderecos.Count -1 do
    begiN
     edtRua.Text            := ACBrCEP1.Enderecos[i].Logradouro;
     edtBairro.Text         := ACBrCEP1.Enderecos[i].Bairro;
     edtComplemento.Text    := ACBrCEP1.Enderecos[i].Complemento;
     edtCidade.Text    	    := ACBrCEP1.Enderecos[i].Municipio;
     edtUF_End.Text         := ACBrCEP1.Enderecos[i].UF;
     edtPais_End.Text       := 'BRASIL';
     edtNumero_Casa.SetFocus;
    end;
end;

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
  Dao : TEmployee_Dao;
begin

     Employee    := TEmployeeModel.Create;
     Dao         := TEmployee_Dao.Create;

     try

       Employee.ctr_cod               := frm_dm.p_contract_ctr_cod;
       Employee.rec_name              := edtNome.Text;
       Employee.rec_nickname          := edtApelido.Text;
       Employee.rec_dt_birth          := edtDataNasc.Date;
       Employee.rec_sex               := Copy(cxCombxSexo.Text,0,1);
       Employee.rec_status_marital    := cxComboxEstadoCivil.Text;
       Employee.emp_type              :=Copy(cxComboxTipo.Text,0,1);
       Employee.emp_status            := Copy(cxComboxStatus.Text,0,1);
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

                    //Tag = 1 para Inserir
    if Self.Tag = 1 then
      begin

       Dao.Employee_Create(Employee);

      end       //Tag = 2 para Alterar
       else if Self.Tag = 2 then
        begin
           Employee.rec_cod  := memrecCod.AsString;
           Employee.emp_cod  := memempCod.AsString;

           Dao.Employee_Update(Employee);

         end;
     finally
       Employee.Free;
       Dao.Free;
       ExibirRegistros;
     end;
  inherited;

end;

procedure Tfrm_employee_.btnEditCEPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

begin
  inherited;
     ACBrCEP1.BuscarPorCEP(btnEditCEP.Text);
end;

procedure Tfrm_employee_.ExibirRegistros;
var
  Dao : TEmployee_Dao;
begin
   mem.Close;
   Dao :=TEmployee_Dao.Create;
   try
     mem.Data := Dao.Employee_read;
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
      edt_codid.Text                    := IntToStr(mememp_id.AsInteger);
      edt_dt_registration.Text          := DateToStr(mememp_dt_registration.AsDateTime);
      edtNome.Text                      := memrec_name.AsString;
      edtApelido.Text                   := memrec_nickname.AsString;
      edtDataNasc.Date                  := memrec_dt_birth.AsDateTime;
      cxCombxSexo.Text                  := memrec_sex.AsString;
      cxComboxEstadoCivil.Text          := memrec_status_marital.AsString;
      cxComboxTipo.Text                 := mememp_type.AsString;
      cxComboxStatus.Text               := mememp_status.AsString;
      edtPai.Text                       := memrec_father_name.AsString;
      edtMae.Text                       := memrec_mother_name.AsString;
      edtNacionalidade.Text             := memrec_nationality.AsString;
      edtNaturCidade.Text               := memrec_naturalness_city.AsString;
      edtNaturUF.Text                   := memrec_naturalness_uf.AsString;
      edtCPF.Text                       := memrec_cpf_number.AsString;
      edtRG.Text                        := memrec_rg_number.AsString;
      edtCart_Trabalho_Numero.Text      := memrec_ctps_number.AsString;
      edtCart_Trabalho_Serie.Text       := memrec_ctps_serial.AsString;
      edtCart_Trabalho_Dt_Emissao.Date  := memrec_ctps_date.AsDateTime;
      edtCart_Trabalho_EstadoUF.Text    := memrec_ctps_state.AsString;
      edtCNH_Numero.Text                := memrec_cnh_number.AsString;
      edtCNH_Categoria.Text             := memrec_chn_category.AsString;
      edtCNH_Dt_Exp.Date                := memrec_cnh_dt_expiration.AsDateTime;
      edtCAM_Numero.Text                := memrec_cam_number.AsString;
      edtTitulo_Eleitor.Text            := memrec_te_number.AsString;
      edtZona_Eleitoral.Text            := memrec_te_zone.AsString;
      edtSecao_Eleitoral.Text           := memrec_te_section.AsString;
      edtCRM_Numero.Text                := memrec_crm_number.AsString;
      btnEditCEP.Text                   := memrec_add_zipcode.AsString;
      edtRua.Text                       := memrec_add_address.AsString;
      edtNumero_Casa.Text               := memrec_add_number.AsString;
      edtBairro.Text                    := memrec_add_street.AsString;
      edtComplemento.Text               := memrec_add_complement.AsString;
      edtCidade.Text                    := memrec_add_city.AsString;
      edtUF_End.Text                    := memrec_add_state.AsString;
      edtPais_End.Text                  := memrec_add_country.AsString;
      edtTel_1.Text                     := memrec_phone1.AsString;
      edtTel_2.Text                     := memrec_phone2.AsString;
      edtTel_3.Text                     := memrec_phone3.AsString;
      edtTel_4.Text                     := memrec_phone4.AsString;
      edtContato_Tel.Text               := memrec_contact.AsString;
      edtNome.SetFocus;

end;

end.
