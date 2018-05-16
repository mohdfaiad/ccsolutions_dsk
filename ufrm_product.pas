unit ufrm_product;

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
  cxCurrencyEdit, cxMemo, cxShellComboBox, QExport4Dialog, cxBarEditItem,
  dxBarExtItems, QImport3Wizard, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ACBrSocket, ACBrCEP, frxClass, frxDBSet;

type
  Tfrm_product = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid_1DBTableView1pro_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_type: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_tag: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_status: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn;
    qry_ncm: TFDQuery;
    ds_ncm: TDataSource;
    qry_supplier: TFDQuery;
    ds_supplier: TDataSource;
    qry_manufacturer: TFDQuery;
    ds_manufacturer: TDataSource;
    qry_brand: TFDQuery;
    ds_brand: TDataSource;
    qry_product_class: TFDQuery;
    ds_product_class: TDataSource;
    qry_product_class_sub: TFDQuery;
    ds_product_class_sub: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    qry_product_unit: TFDQuery;
    ds_product_unit: TDataSource;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxGrid_1DBTableView1supplier_sup_id: TcxGridDBColumn;
    cxGrid_1DBTableView1product_class_prc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1product_class_sub_prs_id: TcxGridDBColumn;
    cxGrid_1DBTableView1manufacturer_man_id: TcxGridDBColumn;
    cxGrid_1DBTableView1product_unit_pru_id: TcxGridDBColumn;
    cxGrid_1DBTableView1brand_bra_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_barcod: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_barcod_manufacturer: TcxGridDBColumn;
    cxGrid_1DBTableView1ncm_ncm_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_height: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_width: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_length: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_weight: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_liter: TcxGridDBColumn;

    qry_product_input: TFDQuery;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem20: TdxLayoutItem;
    ds_product_input: TDataSource;
    cxGrid1DBTableView1pri_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_pro_id_input: TcxGridDBColumn;
    cxGrid1DBTableView1pri_dt_registration: TcxGridDBColumn;
    qry_product_list_input: TFDQuery;
    qry_product_list_inputpro_name: TStringField;
    ds_product_list_input: TDataSource;
    frxDBD_Produto: TfrxDBDataset;
    frxReport1: TfrxReport;
    qry_product_list_inputpro_id: TLongWordField;
    qrypro_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrymaterial_mat_cod: TBytesField;
    qrysupplier_sup_cod: TBytesField;
    qryproduct_class_prc_cod: TBytesField;
    qryproduct_class_sub_prs_cod: TBytesField;
    qrymanufacturer_man_cod: TBytesField;
    qrybrand_bra_cod: TBytesField;
    qryncm_ncm_cod: TBytesField;
    qryproduct_unit_pru_cod: TBytesField;
    qrypro_id: TLongWordField;
    qrypro_type: TStringField;
    qrypro_name: TStringField;
    qrypro_initials: TStringField;
    qrypro_tag: TStringField;
    qrypro_description: TMemoField;
    qrypro_gender: TStringField;
    qrypro_annotation: TMemoField;
    qrypro_barcod: TStringField;
    qrypro_barcod_manufacturer: TStringField;
    qrypro_height: TBCDField;
    qrypro_width: TBCDField;
    qrypro_length: TBCDField;
    qrypro_weight: TBCDField;
    qrypro_liter: TBCDField;
    qrypro_status: TStringField;
    qrypro_deleted_at: TDateTimeField;
    qrypro_dt_registration: TDateTimeField;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox4Enter(Sender: TObject);
    procedure cxDBLookupComboBox2Enter(Sender: TObject);
    procedure cxDBLookupComboBox7Enter(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox6Enter(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox4PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox5PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox6PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox7PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure cxTabSheet_1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_product: Tfrm_product;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_product.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qrypro_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from product ' +
         ' where contract_ctr_cod =:contract ' +
         ' and pro_id = 0';
  ParamByName('contract').Value:=frm_dm.qry_signinctr_cod.Value;
  Prepare;
  ExecSQL;
end;
end;

procedure Tfrm_product.Action_saveExecute(Sender: TObject);
begin
  if (Trim(cxDBLookupComboBox7.Text)='') OR (Trim(cxDBTextEdit1.Text)='')  then
   begin
     Application.MessageBox('Por favor imformar a unidade de medida do produto !','AVISO CADASTRO DE PRODUTO',MB_OK+MB_ICONINFORMATION);
     Exit;
   end;

with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(pro_id) is null then 1 ' +
          '      else (max(pro_id) + 1) end as maxID from ncm '+
          ' where contract_ctr_cod = (select ctr_cod from contract ' +
          ' where ctr_id =:ctr_id)';
   ParamByName('ctr_id').AsInteger:=frm_dm.qry_signinctr_id.AsInteger;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrypro_id.AsInteger = 0 then
    qrypro_id.AsInteger:=Fields[0].AsInteger;
 end;



  inherited;

end;

procedure Tfrm_product.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
   qry_ncm.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
  qry_supplier.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Comando para atualização do combobox
   qry_supplier.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
begin
  inherited;
   qry_manufacturer.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox4Enter(Sender: TObject);
begin
  inherited;
  qry_brand.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox4PropertiesPopup(Sender: TObject);
begin
  inherited;
   //Comando para atualização do combobox
   qry_brand.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox5PropertiesPopup(Sender: TObject);
begin
  inherited;
    //Comando para atualização do combobox
   qry_product_class.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox6Enter(Sender: TObject);
begin
  inherited;
//   qry_product_class.Locate('prc_id',qryproduct_class_prc_id.AsInteger,[loCaseInsensitive, loPartialKey]);
end;

procedure Tfrm_product.cxDBLookupComboBox6PropertiesPopup(Sender: TObject);
begin
  inherited;
   //Comando para atualização do combobox
  qry_product_class_sub.Refresh;
end;

Procedure Tfrm_product.cxDBLookupComboBox7Enter(Sender: TObject);
begin
  inherited;
   qry_product_unit.Refresh;
end;

procedure Tfrm_product.cxDBLookupComboBox7PropertiesPopup(Sender: TObject);
begin
  inherited;
   //Comando para atualização do combobox
   qry_product_unit.Refresh;
end;

procedure Tfrm_product.cxTabSheet_1Show(Sender: TObject);
begin
  inherited;
   qry.Close;
   qry.sql.text:= ' select * from product ';
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_product.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_product.Destroy;
  frm_product := Nil;
end;

procedure Tfrm_product.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into product(pro_cod,pro_id,contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,(select ctr_cod from contract ' +
         ' where ctr_id = :contrato)';
   ParamByName('contrato').AsInteger:=frm_dm.qry_signinctr_id.AsInteger;
   Prepare;
   ExecSQL;
  end;
   qry.Close;
   qry.sql.text:= ' select * from product ' +
                  ' where pro_id = 0 ';
   qry.Prepare;
   qry.open;

  qry.Edit;
  qrypro_dt_registration.Value := Date + Time;
end;

end.
