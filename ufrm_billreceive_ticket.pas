unit ufrm_billreceive_ticket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_search, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, dxBar, cxClasses, dxStatusBar, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ufrm_dm, ACBrBase, ACBrBoleto, Vcl.Menus,ACBrUtil, ACBrBoletoFCFR,
  Vcl.ExtCtrls;

type
  Tfrm_billreceive_ticket = class(Tfrm_search)
    ACBrBoleto1: TACBrBoleto;
    GerarBoleto1: TMenuItem;
    ACBrBoletoFCFR1: TACBrBoletoFCFR;
    qryenterprise_ent_id: TIntegerField;
    qrybrc_dt_maturity: TDateField;
    qrybrc_dt_emission: TDateField;
    qrybrc_document: TStringField;
    qrybrc_value: TBCDField;
    qrybrc_discount: TBCDField;
    qrybrc_status: TStringField;
    qryent_first_name: TStringField;
    qryent_add_bus_street: TStringField;
    qryent_add_bus_zipcode: TStringField;
    qryent_add_bus_city: TStringField;
    qryent_cnpj: TStringField;
    qryent_add_bus_complement: TStringField;
    qryent_add_bus_address: TStringField;
    qryent_add_bus_number: TStringField;
    qryent_add_bus_state: TStringField;
    qryent_phone1: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure GerarBoleto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_billreceive_ticket: Tfrm_billreceive_ticket;

implementation

{$R *.dfm}

procedure Tfrm_billreceive_ticket.FormCreate(Sender: TObject);
begin
  inherited;
qry.Close;
qry.Prepare;
qry.Open;
ACBrBoletoFCFR1.FastReportFile:='C:\ccsolutions_dsk\reports\Boleto.fr3';

end;

procedure Tfrm_billreceive_ticket.GerarBoleto1Click(Sender: TObject);
var
  Titulo: TACBrTitulo;
begin
  Titulo := ACBrBoleto1.CriarTituloNaLista;
 with ACBrBoleto1.Cedente do
  begin
    Agencia:='XX';//Falta Pegar
    AgenciaDigito:='CC'; //Falta Pegar
    Bairro:= qryent_add_bus_street.AsString;
    CEP:=qryent_add_bus_zipcode.AsString;
    Cidade:=qryent_add_bus_city.AsString;
    CNPJCPF:=qryent_cnpj.AsString;
    CodigoCedente:='XX';//Falta Pegar
    Complemento:=qryent_add_bus_complement.AsString;
    Conta:='XX';//Falta Pegar
    ContaDigito:='XX'; //Falta Pegar
    Convenio:='XX'; //Falta Pegar
    Logradouro:=qryent_add_bus_address.AsString;
    Modalidade:='XX'; //Falta Pegar
    Nome :=qryent_first_name.AsString;
    NumeroRes:= qryent_add_bus_number.AsString;
    Telefone:=qryent_phone1.AsString;
    UF:=qryent_add_bus_state.AsString;
  end;

  with Titulo do
  begin
    Vencimento :=qrybrc_dt_maturity.AsDateTime;
    DataDocumento := qrybrc_dt_emission.AsDateTime;
    NumeroDocumento := qrybrc_document.AsString;
    EspecieDoc := 'DM';
    Aceite := atNao;
    DataProcessamento := Now;
    Carteira := '09' ; //Carteira com Registro
    NossoNumero := '1';
    ValorDocumento := qrybrc_value.AsFloat;
    Sacado.NomeSacado := ' ELIZEU COSTA DE SOUZA';
    Sacado.CNPJCPF := OnlyNumber('79586937372');
    Sacado.Logradouro := 'RUA JOSE FRANCISCO';
    Sacado.Numero := '71';
    Sacado.Bairro := 'TANCREDO NEVES';
    Sacado.Cidade := 'MANAUS';
    Sacado.UF := 'AM';
    Sacado.CEP := OnlyNumber('69087110');
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
    Mensagem.Text := 'Teste do sistema';
    OcorrenciaOriginal.Tipo := toRemessaBaixar;
    Instrucao1 := 'TESTE';
    Instrucao2 := 'TESTE2';
    Instrucao3 := 'TESTE 3';
  end;
 ACBrBoleto1.Imprimir;

end;

end.
