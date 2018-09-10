unit ufrm_receipt;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxCurrencyEdit,
  cxShellComboBox, QImport3Wizard, QExport4Dialog, cxBarEditItem, ACBrSocket,
  ACBrCEP, frxClass, frxDBSet, ACBrExtenso, Vcl.Grids, Vcl.DBGrids,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList;

type
  Tfrm_receipt = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem6: TdxLayoutItem;
    qry_enterprise: TFDQuery;
    ds_enterprise: TDataSource;
    ds_client: TDataSource;
    qry_client: TFDQuery;
    qryrec_description: TStringField;
    qryrec_dt_emission: TDateField;
    qryrec_dt_registration: TDateTimeField;
    qryrec_title: TStringField;
    cxGrid_1DBTableView1rec_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_title: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_value: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_registration: TcxGridDBColumn;
    frx_db_recibo: TfrxDBDataset;
    frx_db_recibo_cliente: TfrxDBDataset;
    ACBrExtenso1: TACBrExtenso;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    qryrec_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryenterprise_ent_cod: TBytesField;
    qryclient_cli_cod: TBytesField;
    qryrec_deleted_at: TDateTimeField;
    qryrec_id: TLongWordField;
    qryrec_value: TBCDField;
    cxLookupComboBoxClient: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    qry_clientcli_id: TLongWordField;
    qry_clientcli_cod: TBytesField;
    qry_clientcli_first_name: TStringField;
    qry_clientcli_last_name: TStringField;
    qry_clientcliCod: TStringField;
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientcontract_ctr_cod: TBytesField;
    qry_clientidade: TLargeintField;
    cxLookupComboBoxEnterprise: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    qry_enterpriseent_cod: TBytesField;
    qry_enterpriseent_id: TLongWordField;
    qry_enterpriseent_last_name: TStringField;
    qry_enterprisecontract_ctr_cod: TBytesField;
    qry_enterpriseentCod: TStringField;
    frx_db_recibo_empresa: TfrxDBDataset;
    qry_enterpriseent_first_name: TStringField;
    qry_enterpriseent_cnpj: TStringField;
    qry_enterpriseent_add_bus_zipcode: TStringField;
    qry_enterpriseent_add_bus_address: TStringField;
    qry_enterpriseent_add_bus_number: TStringField;
    qry_enterpriseent_add_bus_street: TStringField;
    qry_enterpriseent_add_bus_complement: TStringField;
    qry_enterpriseent_add_bus_city: TStringField;
    qry_enterpriseent_add_bus_state: TStringField;
    qry_enterpriseent_add_bus_country: TStringField;
    dxBarSubItem1: TdxBarSubItem;
    qryclientCod: TStringField;
    qryenterpriseCod: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_printExecute(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    rec_cod:string;
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
  end;

var
  frm_receipt: Tfrm_receipt;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_receipt.Action_printExecute(Sender: TObject);
begin
 cxLookupComboBoxClient.ItemIndex:=-1;
 qry_client.Locate('cliCod',qryclientCod.AsString,[]);

 cxLookupComboBoxEnterprise.ItemIndex:=-1;
 qry_enterprise.Locate('entCod',qryenterpriseCod.AsString,[]);

 frxReport_1.LoadFromFile(TcxShellComboBoxProperties(cxBarEditItem_1.Properties).Root.CurrentPath +'\'+cxBarEditItem_1.EditValue);
 frxReport_1.variables['extenso'] := QuotedStr(ACBrExtenso1.ValorToTexto(qryrec_value.AsFloat));
 if Application.MessageBox('Deseja imprimir duas vias do recibo?','RECIBO',MB_YESNO + MB_ICONQUESTION) = mrYes  then
  frxReport_1.variables['2vias'] := QuotedStr('SIM')
   else
    frxReport_1.variables['2vias'] := QuotedStr('NAO');
  frxReport_1.ShowReport;
 end;



procedure Tfrm_receipt.Action_saveExecute(Sender: TObject);
begin
  inherited;
//
//  if ds.DataSet.State in [dsEdit] then
//    Exit;
//
//   with frm_dm.qry,sql do
//    begin
//      close;
//      Text:= ' select case when max(rec_id) is null then 1 ' +
//          '      else (max(rec_id) + 1) end as maxID from receipt '+
//          ' where contract_ctr_cod = unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')';
//      Prepare;
//      Open;
//      if not (qry.State in [dsInsert,dsEdit])  then
//        qry.Edit;
//
//      if qryrec_id.AsInteger = 0 then
//        qryrec_id.AsInteger:=Fields[0].AsInteger;
//
//
//        qry.Post;
//        qry.ApplyUpdates(0);
//    end;
//
//   qry.Close;
//   qry.Close;
//   qry.SQL.Text:= ' select receipt.*,hex(client_cli_cod) clientCod,hex(enterprise_ent_cod) enterpriseCod from receipt '+
//                  ' where rec_deleted_at is null ';
//   qry.Prepare;
//   qry.open;
//   qry.Edit;

end;

procedure Tfrm_receipt.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
qryclient_cli_cod.Value:=qry_clientcli_cod.Value;
qry.Post;

end;

procedure Tfrm_receipt.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
   //Comando para atualizar combobox
  qry_client.Refresh;
end;

procedure Tfrm_receipt.cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Comando para atualizar combobox
  qry_enterprise.Refresh;
end;

procedure Tfrm_receipt.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
 qryclient_cli_cod.Value:=qry_clientcli_cod.Value;
end;

procedure Tfrm_receipt.cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
begin
  inherited;
 qryenterprise_ent_cod.Value:=qry_enterpriseent_cod.Value;
end;

procedure Tfrm_receipt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_receipt.Destroy;
  frm_receipt := Nil;
end;

procedure Tfrm_receipt.FormCreate(Sender: TObject);
begin
  inherited;
//  schadapter.AfterApplyUpdate := limpaCache;
end;

procedure Tfrm_receipt.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
end;

procedure Tfrm_receipt.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
// With frm_dm.qry,sql do
//  begin
//   close;
//   text:='select hex(uuid_to_bin(uuid()))';
//   prepare;
//   open;
//
//   rec_cod:=Fields[0].AsString;
//
//   Close;
//   Text:='insert into receipt (rec_id,rec_cod,contract_ctr_cod,rec_dt_registration) ' +
//         ' select 0,unhex( '+  QuotedStr(rec_cod) + '), unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')' +',now()';
//
//   Prepare;
//   ExecSQL;
//  end;
//
//   qry.Close;
//   qry.SQL.Text:= ' select receipt.*,hex(client_cli_cod) clientCod,hex(enterprise_ent_cod) enterpriseCod from receipt ' +
//                  ' where rec_deleted_at is null ' +
//                  ' and rec_cod = unhex('+ QuotedStr(rec_cod) + ')';
//   qry.Prepare;
//   qry.open;
//   qry.Edit;

end;

end.
