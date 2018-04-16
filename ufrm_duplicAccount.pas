unit ufrm_duplicAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels, cxClasses,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ComCtrls, dxSkinsdxBarPainter, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, dxBar;

type
  Tfrm_duplicAccount = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup1: TdxLayoutGroup;
    cxEditCodigo: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxEditDescricao: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxEditLancamento: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxEditNumDoc: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxEditVenc: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxEditValor: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxCbTipoDuplic: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxEditQuantidade: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem9: TdxLayoutItem;
    qry_duplicAccount: TFDQuery;
    ds_qry_duplicAccount: TDataSource;
    qry_duplicAccountnumDoc: TStringField;
    qry_duplicAccountparcela: TStringField;
    qry_duplicAccountdtVenc: TDateField;
    cxGrid1DBTableView1numDoc: TcxGridDBColumn;
    cxGrid1DBTableView1parcela: TcxGridDBColumn;
    cxGrid1DBTableView1dtVenc: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxImageList_1: TcxImageList;
    dxBarButton2: TdxBarButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    qry_duplicAccountvalor: TBCDField;
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_duplicAccount: Tfrm_duplicAccount;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_billpay;

procedure Tfrm_duplicAccount.cxButton1Click(Sender: TObject);
var
i:Integer;
begin
qry_duplicAccount.CancelUpdates;

if Self.Tag = 0 then //Se a tag do formulário for 0 será contas a pagar
 begin
  for I := 1 to StrToInt(cxEditQuantidade.Text) do
   begin
    qry_duplicAccount.Append;
    qry_duplicAccountnumDoc.AsString:=frm_billpay.qrybpy_document.AsString;
    qry_duplicAccountparcela.AsString:=frm_billpay.qrybpy_document.AsString + '/'+ IntToStr(i + 1);
    qry_duplicAccountvalor.AsFloat:=frm_billpay.qrybpy_value.AsFloat;


    if cxCbTipoDuplic.ItemIndex = 0 then
     qry_duplicAccountdtVenc.AsDateTime:=frm_billpay.qrybpy_dt_maturity.AsDateTime + i;

    if cxCbTipoDuplic.ItemIndex = 1 then
     qry_duplicAccountdtVenc.AsDateTime:=frm_billpay.qrybpy_dt_maturity.AsDateTime + 7 * i;

    if cxCbTipoDuplic.ItemIndex = 2 then
     qry_duplicAccountdtVenc.AsDateTime:=frm_billpay.qrybpy_dt_maturity.AsDateTime + 15 * i;

    if cxCbTipoDuplic.ItemIndex = 3 then
     qry_duplicAccountdtVenc.AsDateTime:=IncMonth(frm_billpay.qrybpy_dt_maturity.AsDateTime,i);

   qry_duplicAccount.Post;
 end;
 end;
end;

procedure Tfrm_duplicAccount.dxBarButton1Click(Sender: TObject);
var
enterprise_ent_id,supplier_sup_id,account_plan_acp_id,account_plan_detail_acd_id,
cost_center_coc_id,cost_center_detail_cod_id:Integer;
bpy_addition,bpy_discount,bpy_amount_pay:Double;
bpy_reference,bpy_invoice:string;


begin
if Self.Tag = 0 then //Se a tag do formulário for 0 será contas a pagar
 begin
  if Application.MessageBox('Deseja confirmar o lançamento das paracelas geradas ?','PARCELA',MB_YESNO + MB_ICONQUESTION) = mrYes  then
   begin
    enterprise_ent_id:= frm_billpay.qryenterprise_ent_id.AsInteger;
    supplier_sup_id:= frm_billpay.qrysupplier_sup_id.AsInteger;
    account_plan_acp_id:=frm_billpay.qryaccount_plan_acp_id.AsInteger;
    account_plan_detail_acd_id:=frm_billpay.qryaccount_plan_detail_acd_id.AsInteger;
    cost_center_coc_id:=frm_billpay.qrycost_center_coc_id.AsInteger;
    cost_center_detail_cod_id:=frm_billpay.qrycost_center_detail_cod_id.AsInteger;
    bpy_addition:=frm_billpay.qrybpy_addition.AsFloat;
    bpy_discount:=frm_billpay.qrybpy_discount.AsFloat;
    bpy_amount_pay:=frm_billpay.qrybpy_amount_pay.AsFloat;
    bpy_reference:=frm_billpay.qrybpy_reference.AsString;
    bpy_invoice:=frm_billpay.qrybpy_invoice.AsString;

    qry_duplicAccount.First;
    while not qry_duplicAccount.Eof do
     begin
      frm_billpay.qry.Append;
      frm_billpay.qrybpy_document.AsString:= qry_duplicAccountnumDoc.AsString;
      frm_billpay.qrybpy_installment.AsString:= qry_duplicAccountparcela.AsString;
      frm_billpay.qrybpy_dt_maturity.Value:=qry_duplicAccountdtVenc.Value;
      frm_billpay.qrybpy_value.AsFloat:= qry_duplicAccountvalor.AsFloat;
      frm_billpay.qryenterprise_ent_id.AsInteger :=enterprise_ent_id;
      frm_billpay.qrysupplier_sup_id.AsInteger:=supplier_sup_id;
//    frm_billpay.qryaccount_plan_acp_id.AsInteger:=account_plan_acp_id;
//    frm_billpay.qryaccount_plan_detail_acd_id.AsInteger:=account_plan_detail_acd_id;
//    frm_billpay.qrycost_center_coc_id.AsInteger:= cost_center_coc_id;
//    frm_billpay.qrycost_center_detail_cod_id.AsInteger:=cost_center_detail_cod_id;
      frm_billpay.qrybpy_addition.AsFloat:= bpy_addition;
      frm_billpay.qrybpy_discount.AsFloat:= bpy_discount;
      frm_billpay.qrybpy_amount_pay.AsFloat:= bpy_amount_pay;
      frm_billpay.qrybpy_dt_emission.AsDateTime:=Now;
      frm_billpay.qrybpy_reference.AsString:=bpy_reference;
      frm_billpay.qrybpy_invoice.AsString:=bpy_invoice;
      frm_billpay.qrybpy_status.AsString:='A';
      frm_billpay.qrybpy_dt_registration.Value:=Now;
      frm_billpay.qry.Post;
      qry_duplicAccount.Next;
     end;
    close;
   end;
  end;
end;

procedure Tfrm_duplicAccount.dxBarButton2Click(Sender: TObject);
begin
if Application.MessageBox('Deseja sair sem salvar as parcelas?','PARCELA',MB_YESNO + MB_ICONQUESTION) = mrYes  then
 close;

end;

procedure Tfrm_duplicAccount.FormShow(Sender: TObject);
begin
qry_duplicAccount.Close;
qry_duplicAccount.sql.Text:='SELECT bpy_document as numDoc, ' +
     ' bpy_installment as parcela,bpy_dt_maturity as dtVenc, ' +
     ' bpy_value as valor FROM billpay ' +
     ' where bpy_id = -1';
qry_duplicAccount.prepare;
qry_duplicAccount.open;
end;

end.
