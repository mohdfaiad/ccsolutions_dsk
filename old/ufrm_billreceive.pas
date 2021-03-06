unit ufrm_billreceive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxShellComboBox, cxBarEditItem, dxBarExtItems, QExport4Dialog, frxDesgn,
  QImport3Wizard, ACBrSocket, ACBrCEP, frxClass;

type
  Tfrm_billreceive = class(Tfrm_form_default)
    qrybrc_id: TFDAutoIncField;
    qryclient_cli_id: TIntegerField;
    qrycontract_ctr_id: TIntegerField;
    qryseller_sel_id: TIntegerField;
    qrybrc_value: TBCDField;
    qrybrc_reference: TStringField;
    qrybrc_discount: TBCDField;
    qrybrc_addition: TBCDField;
    qrybrc_ammount_receive: TBCDField;
    qrybrc_document: TStringField;
    qrybrc_dt_emission: TDateField;
    qrybrc_dt_maturity: TDateField;
    qrybrc_dt_registration: TDateTimeField;
    qry_client: TFDQuery;
    ds_client: TDataSource;
    qry_seller: TFDQuery;
    ds_seller: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBedtParcela: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBedtDesconto: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBedtAcrescimo: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBedt_Val_Receber: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBedtDocumento: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qrybrc_status: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1brc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1seller_sel_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_status: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_value: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_addition: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_ammount_receive: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_document: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1brc_dt_registration: TcxGridDBColumn;
    qrybrc_installment: TStringField;
    qrybrc_invoice: TStringField;
    ds_enterprise: TDataSource;
    qry_enterprise: TFDQuery;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    qryform_payment_frp_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBedtN_Parcela: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    qry_enterpriseent_id: TFDAutoIncField;
    qry_enterprisecontract_ctr_id: TIntegerField;
    qry_enterpriseent_type: TStringField;
    qry_enterpriseent_first_name: TStringField;
    qry_enterpriseent_last_name: TStringField;
    qry_enterpriseent_email: TStringField;
    qry_enterpriseent_cnpj: TStringField;
    qry_enterpriseent_ie: TStringField;
    qry_enterpriseent_im: TStringField;
    qry_enterpriseent_suframa: TStringField;
    qry_enterpriseent_add_bus_zipcode: TStringField;
    qry_enterpriseent_add_bus_address: TStringField;
    qry_enterpriseent_add_bus_number: TStringField;
    qry_enterpriseent_add_bus_street: TStringField;
    qry_enterpriseent_add_bus_complement: TStringField;
    qry_enterpriseent_add_bus_city: TStringField;
    qry_enterpriseent_add_bus_state: TStringField;
    qry_enterpriseent_add_bus_country: TStringField;
    qry_enterpriseent_phone1: TStringField;
    qry_enterpriseent_phone2: TStringField;
    qry_enterpriseent_phone3: TStringField;
    qry_enterpriseent_phone4: TStringField;
    qry_enterpriseent_contact: TStringField;
    qry_enterpriseent_dt_open: TDateField;
    qry_enterpriseent_image: TBlobField;
    qry_enterpriseent_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1brc_installment: TcxGridDBColumn;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBedtAcrescimoPropertiesChange(Sender: TObject);
    procedure cxDBedtDescontoPropertiesChange(Sender: TObject);
    procedure cxDBedt_Val_ReceberPropertiesChange(Sender: TObject);
    procedure cxDBedtParcelaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
     function CalculaParcela(const Parcela, Acrescimo, Desconto: Double): Double ;
  end;

var
  frm_billreceive: Tfrm_billreceive;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_duplicAccount;

procedure Tfrm_billreceive.Action_saveExecute(Sender: TObject);
begin
(* if qryaccount_plan_acp_id.AsInteger = 0 then
  begin
   Application.MessageBox('Conta Sint�tica n�o informada!','CONTAS A PAGAR', MB_OK + MB_ICONINFORMATION);
   exit;
  end;

 if qryaccount_plan_detail_acd_id.AsInteger = 0 then
  begin
   Application.MessageBox('Conta Anal�tica n�o informada!','CONTAS A PAGAR', MB_OK + MB_ICONINFORMATION);
   exit;
  end;
 *)

  if qryclient_cli_id.AsInteger = 0 then
  begin
   Application.MessageBox('Cliente n�o informada!','CONTAS A RECEBER', MB_OK + MB_ICONINFORMATION);
   exit;
  end;
    qrybrc_installment.AsString := cxDBedtDocumento.Text +'/'+ cxDBedtN_Parcela.Text;

   inherited;

   if Application.MessageBox('Deseja cadastrar outras parcelas baseada nessa conta ?','CONTAS A RECEBER', MB_YESNO + MB_ICONQUESTION) = IDYES then
     begin
      Application.CreateForm(Tfrm_duplicAccount,frm_duplicAccount);
      frm_duplicAccount.Caption:='Duplilca��o de Contas a Receber';
      frm_duplicAccount.cxEditCodigo.TExt:=qrybrc_id.AsString;
      frm_duplicAccount.cxEditDescricao.TExt:=qrybrc_reference.AsString;
      frm_duplicAccount.cxEditNumDoc.TExt:=qrybrc_document.AsString;
      frm_duplicAccount.cxEditLancamento.TExt:=FormatDateTime('dd/mm/yyyy',qrybrc_dt_registration.AsDateTime);
      frm_duplicAccount.cxEditVenc.TExt:=FormatDateTime('dd/mm/yyyy', qrybrc_dt_maturity.AsDateTime);
      frm_duplicAccount.cxEditValor.TExt:=FormatFloat('0.0,00', qrybrc_value.AsFloat);
      frm_duplicAccount.Tag:=0;


      frm_duplicAccount.Showmodal;
    // qry.Close;
   //  qry.Open;
      FDSchemaAdapter_1.CommitUpdates;
     end;



end;

function Tfrm_billreceive.CalculaParcela(const Parcela, Acrescimo, Desconto: Double): Double;
begin
  Result := Parcela + Acrescimo - Desconto;
end;

procedure Tfrm_billreceive.cxDBedtAcrescimoPropertiesChange(Sender: TObject);
begin
  inherited;
  qrybrc_ammount_receive.AsFloat := CalculaParcela(cxDBedtParcela.Value,cxDBedtAcrescimo.Value,cxDBedtDesconto.Value);
end;

procedure Tfrm_billreceive.cxDBedtDescontoPropertiesChange(Sender: TObject);
begin
  inherited;
    qrybrc_ammount_receive.AsFloat := CalculaParcela(cxDBedtParcela.Value,cxDBedtAcrescimo.Value,cxDBedtDesconto.Value);
end;

procedure Tfrm_billreceive.cxDBedtParcelaPropertiesChange(Sender: TObject);
begin
  inherited;
  qrybrc_ammount_receive.AsFloat := CalculaParcela(cxDBedtParcela.Value,cxDBedtAcrescimo.Value,cxDBedtDesconto.Value);
end;

procedure Tfrm_billreceive.cxDBedt_Val_ReceberPropertiesChange(Sender: TObject);
begin
  inherited;
  qrybrc_ammount_receive.AsFloat := CalculaParcela(cxDBedtParcela.Value,cxDBedtAcrescimo.Value,cxDBedtDesconto.Value);
end;

procedure Tfrm_billreceive.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Comando para atualizar combobox
  qry_client.Refresh;
end;

procedure Tfrm_billreceive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_billreceive.Free;
  frm_billreceive := nil;
end;

procedure Tfrm_billreceive.FormCreate(Sender: TObject);
begin
  inherited;
   FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_billreceive.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
end;

procedure Tfrm_billreceive.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrybrc_dt_registration.Value := Now;
  qrybrc_status.AsString:='A';
end;

end.
