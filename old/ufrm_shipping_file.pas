unit ufrm_shipping_file;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_form_default, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDBData, cxContainer, dxLayoutcxEditAdapters, dxSkinsdxBarPainter,
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrSocket, ACBrCEP, frxClass,
  FireDAC.Comp.Client, QImport3Wizard, QExport4Dialog, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList,
  Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions,
  Vcl.ActnList, dxBar, cxBarEditItem, cxClasses, dxLayoutContainer, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, ACBrBoleto,ACBrUtil;

type
  Tfrm_shipping_file = class(Tfrm_form_default)
    qryenterprise_ent_id: TIntegerField;
    qrybrc_dt_maturity: TDateField;
    qrybrc_dt_emission: TDateField;
    qrybrc_document: TStringField;
    qrybrc_value: TBCDField;
    qrybrc_discount: TBCDField;
    qrybrc_status: TStringField;
    qrybnk_agency_number: TStringField;
    qrybnk_agency_digit: TStringField;
    qrybnk_code_transferor: TStringField;
    qrybnk_account_number: TStringField;
    qrybnk_account_digit: TStringField;
    qrybnk_code_agreement: TStringField;
    qrybrc_code_bar: TStringField;
    qryprs_species_document: TStringField;
    qryprs_species_coin: TStringField;
    qryprs_acceptance: TStringField;
    qryprs_wallet: TStringField;
    qryprs_value_fine: TBCDField;
    qrybrc_id: TFDAutoIncField;
    qrybrc_dt_registration: TDateTimeField;
    qrybnk_code: TStringField;
    qryprs_our_number: TIntegerField;
    qryform_payment_frp_id: TIntegerField;
    qryclient_cli_id: TIntegerField;
    qrybrc_slip_instruction1: TStringField;
    qrybrc_slip_instruction2: TStringField;
    qrybrc_slip_instruction3: TStringField;
    cxGrid_1DBTableView1selecionado: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_document: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_value: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_status: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_code_transferor: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_code_agreement: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_code_bar: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_document: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_coin: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_acceptance: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_wallet: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_fine: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_code: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_our_number: TcxGridDBColumn;
    cxGrid_1DBTableView1form_payment_frp_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_slip_instruction1: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_slip_instruction2: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_slip_instruction3: TcxGridDBColumn;
    qry_enterprise: TFDQuery;
    qry_enterpriseent_id: TFDAutoIncField;
    qry_enterpriseent_first_name: TStringField;
    qry_enterpriseent_add_bus_street: TStringField;
    qry_enterpriseent_add_bus_zipcode: TStringField;
    qry_enterpriseent_add_bus_city: TStringField;
    qry_enterpriseent_cnpj: TStringField;
    qry_enterpriseent_add_bus_complement: TStringField;
    qry_enterpriseent_add_bus_address: TStringField;
    qry_enterpriseent_add_bus_number: TStringField;
    qry_enterpriseent_add_bus_state: TStringField;
    qry_enterpriseent_phone1: TStringField;
    qry_client: TFDQuery;
    qry_clientcli_id: TFDAutoIncField;
    qry_clientcli_first_name: TStringField;
    qry_clientcli_cpfcnpj: TStringField;
    qry_clientcli_add_bil_address: TStringField;
    qry_clientcli_add_bil_number: TStringField;
    qry_clientcli_add_bil_street: TStringField;
    qry_clientcli_add_bil_city: TStringField;
    qry_clientcli_add_bil_state: TStringField;
    qry_clientcli_add_bil_zipcode: TStringField;
    qry_parameter_slip: TFDQuery;
    qry_parameter_slipprs_id: TFDAutoIncField;
    qry_parameter_slipprs_our_number: TIntegerField;
    ACBrBoleto1: TACBrBoleto;
    qry_parameter_slipprs_species_document: TStringField;
    qry_parameter_slipprs_wallet: TStringField;
    qry_parameter_slipprs_species_coin: TStringField;
    dxBarButton1: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_shipping_file: Tfrm_shipping_file;

implementation

{$R *.dfm}

procedure Tfrm_shipping_file.dxBarButton1Click(Sender: TObject);
var
  Titulo: TACBrTitulo;
  vBarra,vLinhaDigitavel:string;
  tipoCobraca:Integer;
begin
 tipoCobraca:=StrToInt(qrybnk_code.AsString);

 case tipoCobraca of
  237 :  ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
  394 :  ACBrBoleto1.Banco.TipoCobranca := cobBradescoSICOOB;
  003 :  ACBrBoleto1.Banco.TipoCobranca := cobBancoDaAmazonia;
  001 :  ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil;
  004 :  ACBrBoleto1.Banco.TipoCobranca := cobBancoDoNordeste;
  021 :  ACBrBoleto1.Banco.TipoCobranca := cobBanestes;
  033 :  ACBrBoleto1.Banco.TipoCobranca := cobSantander;
  053 :  ACBrBoleto1.Banco.TipoCobranca := cobSantander;
  008 :  ACBrBoleto1.Banco.TipoCobranca := cobSantander;
  041 :  ACBrBoleto1.Banco.TipoCobranca := cobBanrisul;
  070 :  ACBrBoleto1.Banco.TipoCobranca := cobBRB;
  104 :  ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica;
  473 :  ACBrBoleto1.Banco.TipoCobranca := cobCaixaSicob;
  320 :  ACBrBoleto1.Banco.TipoCobranca := cobBicBanco;
  422 :  ACBrBoleto1.Banco.TipoCobranca := cobBancoSafra;
  341 :  ACBrBoleto1.Banco.TipoCobranca := cobItau;
  389 :  ACBrBoleto1.Banco.TipoCobranca := cobBancoMercantil;
  748 :  ACBrBoleto1.Banco.TipoCobranca := cobSicred;
  756 :  ACBrBoleto1.Banco.TipoCobranca := cobBancoob;
  399 :  ACBrBoleto1.Banco.TipoCobranca := cobHSBC;
  091 :  ACBrBoleto1.Banco.TipoCobranca := cobUnicredRS;
  085 :  ACBrBoleto1.Banco.TipoCobranca := cobBancoCECRED;
 end;

with ACBrBoleto1.Cedente do
 begin
  Agencia:=qrybnk_agency_number.AsString;
  AgenciaDigito:=qrybnk_agency_digit.AsString;
  Bairro:= qry_enterpriseent_add_bus_street.AsString;
  CEP:=qry_enterpriseent_add_bus_zipcode.AsString;
  Cidade:=qry_enterpriseent_add_bus_city.AsString;
  CNPJCPF:=qry_enterpriseent_cnpj.AsString;
  CodigoCedente:=qrybnk_code_transferor.AsString;
  Complemento:=qry_enterpriseent_add_bus_complement.AsString;
  Conta:=qrybnk_account_number.AsString;
  ContaDigito:=qrybnk_account_digit.AsString;
  Convenio:=qrybnk_code_agreement.AsString;
  Logradouro:=qry_enterpriseent_add_bus_address.AsString;
  Nome :=qry_enterpriseent_first_name.AsString;
  NumeroRes:= qry_enterpriseent_add_bus_number.AsString;
  Telefone:=qry_enterpriseent_phone1.AsString;
  UF:=qry_enterpriseent_add_bus_state.AsString;
 end;

qry.First;
while not qry.Eof do
 begin
  Titulo := ACBrBoleto1.CriarTituloNaLista;
  with Titulo do
   begin
    Vencimento :=qrybrc_dt_maturity.AsDateTime;
    DataDocumento := qrybrc_dt_emission.AsDateTime;
    NumeroDocumento := qrybrc_document.AsString;
    EspecieDoc := qry_parameter_slipprs_species_document.AsString;
    Aceite := atNao;
    DataProcessamento := Now;
    Carteira := qry_parameter_slipprs_wallet.AsString;
    NossoNumero := qry_parameter_slipprs_our_number.AsString;
    ValorDocumento := qrybrc_value.AsFloat;
    Sacado.NomeSacado := qry_clientcli_first_name.AsString;
    Sacado.CNPJCPF := OnlyNumber(qry_clientcli_cpfcnpj.AsString);
    Sacado.Logradouro := qry_clientcli_add_bil_address.AsString;
    Sacado.Numero := qry_clientcli_add_bil_number.AsString;
    Sacado.Bairro := qry_clientcli_add_bil_street.AsString;
    Sacado.Cidade := qry_clientcli_add_bil_city.AsString;
    Sacado.UF := qry_clientcli_add_bil_state.AsString;
    Sacado.CEP := OnlyNumber(qry_clientcli_add_bil_zipcode.AsString);
    ValorAbatimento := 0;
    LocalPagamento := 'Pagar preferêncialmente nas agências do Itaú';
    ValorMoraJuros := 0;
    ValorDesconto := qrybrc_discount.AsFloat;
    ValorAbatimento := 0;
    DataMoraJuros := 0;
    DataDesconto := StrToDate('06/05/2018');
    DataAbatimento := StrToDate('06/06/2018');
    DataProtesto := StrToDate('06/05/2018');
    PercentualMulta := 0;
    Mensagem.Text := 'TESTE DO SISTEMA';
    ValorAbatimento := 0;
    DataMoraJuros := 0;
    DataDesconto := 0;
    DataAbatimento := StrToDate('06/06/2018');
    DataProtesto := StrToDate('06/06/2018');
    PercentualMulta := 0;
    Mensagem.Text := qrybrc_slip_instruction1.AsString + #13 +
                     qrybrc_slip_instruction2.AsString + #13 +
                     qrybrc_slip_instruction3.AsString;
    OcorrenciaOriginal.Tipo := toRemessaBaixar;
    Instrucao1 :=  qrybrc_slip_instruction1.AsString;
    Instrucao2 := qrybrc_slip_instruction2.AsString;
    Instrucao3 := qrybrc_slip_instruction3.AsString;
    vBarra:=Titulo.ACBrBoleto.Banco.MontarCodigoBarras(Titulo);
    vLinhaDigitavel:=Titulo.ACBrBoleto.Banco.MontarLinhaDigitavel(vBarra,Titulo);
   end;
   qry.Next;
  end;

  ACBrBoleto1.GerarRemessa(1);

end;

procedure Tfrm_shipping_file.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_shipping_file.Free;
  frm_shipping_file:= nil;
end;

end.
