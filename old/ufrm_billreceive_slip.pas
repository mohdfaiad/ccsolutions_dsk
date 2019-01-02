unit ufrm_billreceive_slip;

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
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, cxCheckBox, ACBrBoleto,
  ACBrBoletoFCFR,ACBrUtil;

type
  Tfrm_billreceive_slip = class(Tfrm_form_default)
    dxBarButton1: TdxBarButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid1DBTableView1selecionado: TcxGridDBColumn;
    cxGrid1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid1DBTableView1brc_dt_maturity: TcxGridDBColumn;
    cxGrid1DBTableView1brc_dt_emission: TcxGridDBColumn;
    cxGrid1DBTableView1brc_document: TcxGridDBColumn;
    cxGrid1DBTableView1brc_value: TcxGridDBColumn;
    cxGrid1DBTableView1brc_discount: TcxGridDBColumn;
    cxGrid1DBTableView1brc_status: TcxGridDBColumn;
    cxGrid1DBTableView1ent_first_name: TcxGridDBColumn;
    cxGrid1DBTableView1ent_add_bus_street: TcxGridDBColumn;
    cxGrid1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn;
    cxGrid1DBTableView1ent_add_bus_city: TcxGridDBColumn;
    cxGrid1DBTableView1ent_cnpj: TcxGridDBColumn;
    cxGrid1DBTableView1ent_add_bus_complement: TcxGridDBColumn;
    cxGrid1DBTableView1ent_add_bus_address: TcxGridDBColumn;
    cxGrid1DBTableView1ent_add_bus_number: TcxGridDBColumn;
    cxGrid1DBTableView1ent_add_bus_state: TcxGridDBColumn;
    cxGrid1DBTableView1ent_phone1: TcxGridDBColumn;
    cxGrid1DBTableView1bnk_agency_number: TcxGridDBColumn;
    cxGrid1DBTableView1bnk_agency_digit: TcxGridDBColumn;
    cxGrid1DBTableView1bnk_code_transferor: TcxGridDBColumn;
    cxGrid1DBTableView1bnk_account_number: TcxGridDBColumn;
    cxGrid1DBTableView1bnk_account_digit: TcxGridDBColumn;
    cxGrid1DBTableView1bnk_code_agreement: TcxGridDBColumn;
    cxGrid1DBTableView1cli_first_name: TcxGridDBColumn;
    cxGrid1DBTableView1cli_cpfcnpj: TcxGridDBColumn;
    cxGrid1DBTableView1cli_add_bil_address: TcxGridDBColumn;
    cxGrid1DBTableView1cli_add_bil_number: TcxGridDBColumn;
    cxGrid1DBTableView1cli_add_bil_street: TcxGridDBColumn;
    cxGrid1DBTableView1cli_add_bil_city: TcxGridDBColumn;
    cxGrid1DBTableView1cli_add_bil_state: TcxGridDBColumn;
    cxGrid1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn;
    cxGrid1DBTableView1brc_code_bar: TcxGridDBColumn;
    cxGrid1DBTableView1prs_species_document: TcxGridDBColumn;
    cxGrid1DBTableView1prs_species_coin: TcxGridDBColumn;
    cxGrid1DBTableView1prs_acceptance: TcxGridDBColumn;
    cxGrid1DBTableView1prs_wallet: TcxGridDBColumn;
    cxGrid1DBTableView1prs_value_fine: TcxGridDBColumn;
    cxGrid1DBTableView1brc_id: TcxGridDBColumn;
    cxGrid1DBTableView1brc_dt_registration: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    editEspecieDoc: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    editEspecieMoeda: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    editCarteira: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFR1: TACBrBoletoFCFR;
    cxGrid_1DBTableView1selecionado: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_document: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_value: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_status: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_code_transferor: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_code_agreement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_cpfcnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_code_bar: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_document: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_coin: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_acceptance: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_wallet: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_fine: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_registration: TcxGridDBColumn;
    qry_parameter_slip: TFDQuery;
    qry_parameter_slipprs_id: TFDAutoIncField;
    qry_parameter_slipprs_our_number: TIntegerField;
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
    qryselecionado: TStringField;
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
    editInstrucao1: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    editInstrucao2: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    editInstrucao3: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    qrybrc_slip_instruction1: TStringField;
    qrybrc_slip_instruction2: TStringField;
    qrybrc_slip_instruction3: TStringField;
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_billreceive_slip: Tfrm_billreceive_slip;

implementation

{$R *.dfm}

procedure Tfrm_billreceive_slip.Action_editExecute(Sender: TObject);
begin
  inherited;
 editEspecieDoc.Text:=qryprs_species_document.AsString;
 editEspecieMoeda.Text:=qryprs_species_coin.AsString;
 editCarteira.Text:=qryprs_wallet.AsString;
end;

procedure Tfrm_billreceive_slip.Action_saveExecute(Sender: TObject);
var
  Titulo: TACBrTitulo;
  vBarra,vLinhaDigitavel:string;
  selecionado:Boolean;
  tipoCobraca:Integer;
begin
qry.First;
selecionado:=false;
while not qry.Eof do
 begin
  if qryselecionado.AsString = 'S' then
   begin
    selecionado:=true;
    Break;
   end;
  qry.Next;
 end;

if not selecionado then
 begin
  Application.MessageBox('Não existe contas a receber para geração de boletos, favor selecionar ao menos uma conta a receber',
                         'BOLETO',MB_OK + MB_ICONEXCLAMATION);
  Exit;
 end;

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
 if qryselecionado.AsString = 'S' then
  begin
   Titulo := ACBrBoleto1.CriarTituloNaLista;
   with Titulo do
    begin
     Vencimento :=qrybrc_dt_maturity.AsDateTime;
     DataDocumento := qrybrc_dt_emission.AsDateTime;
     NumeroDocumento := qrybrc_document.AsString;
     EspecieDoc := editEspecieDoc.Text;
     Aceite := atNao;
     DataProcessamento := Now;
     Carteira := editCarteira.Text;
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
     Mensagem.Text := editInstrucao1.Text + #13 +
                      editInstrucao2.Text + #13 +
                      editInstrucao3.Text;
     OcorrenciaOriginal.Tipo := toRemessaBaixar;
     Instrucao1 := editInstrucao1.Text;
     Instrucao2 := editInstrucao2.Text;
     Instrucao3 := editInstrucao3.Text;
     vBarra:=Titulo.ACBrBoleto.Banco.MontarCodigoBarras(Titulo);
     vLinhaDigitavel:=Titulo.ACBrBoleto.Banco.MontarLinhaDigitavel(vBarra,Titulo);
     qry.Edit;
     qrybrc_code_bar.AsString:=vLinhaDigitavel;
     qrybrc_slip_instruction1.AsString:=editInstrucao1.Text;
     qrybrc_slip_instruction2.AsString:=editInstrucao2.Text;
     qrybrc_slip_instruction3.AsString:=editInstrucao3.Text;
     qry.Post;
     qry_parameter_slip.Edit;
     qry_parameter_slipprs_our_number.AsInteger:=qry_parameter_slipprs_our_number.AsInteger + 1;
     qry_parameter_slip.Post;

    end;

  end;
   qry.Next;
  end;
  qry.ApplyUpdates(0);
  qry_parameter_slip.ApplyUpdates(0);
  ACBrBoleto1.Imprimir;
end;

procedure Tfrm_billreceive_slip.dxBarButton1Click(Sender: TObject);
begin
  inherited;
 cxTabSheet_3.Show;
 qry.Filtered:=False;
 qry.Filter:= ' selecionado = ''S'' ';
 qry.Filtered:=True;
 Action_editExecute(Sender);

end;

procedure Tfrm_billreceive_slip.FormCreate(Sender: TObject);
begin
  inherited;
ACBrBoletoFCFR1.FastReportFile:='C:\ccsolutions_dsk\reports\Boleto.fr3';

end;

end.
