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
    dbComboxPro_type: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid_1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_status: TcxGridDBColumn;
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
    qry_product_unit: TFDQuery;
    ds_product_unit: TDataSource;
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
    cxGrid_1DBTableView1pro_height: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_width: TcxGridDBColumn;

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
    qrysup_last_name: TStringField;
    qryprc_name: TStringField;
    qryprc_status: TStringField;
    qryprs_name: TStringField;
    qryman_last_name: TStringField;
    qrybra_name: TStringField;
    qrybra_status: TStringField;
    qrypru_name: TStringField;
    qrypru_initials: TStringField;
    qrypru_status: TStringField;
    qry_suppliersup_cod: TBytesField;
    qry_suppliercontract_ctr_cod: TBytesField;
    qry_suppliersup_id: TLongWordField;
    qry_suppliersup_first_name: TStringField;
    qry_suppliersup_last_name: TStringField;
    qry_suppliersup_email: TStringField;
    qry_suppliersup_cnpj: TStringField;
    qry_suppliersup_ie: TStringField;
    qry_suppliersup_im: TStringField;
    qry_suppliersup_suframa: TStringField;
    qry_suppliersup_dt_open: TDateField;
    qry_suppliersup_add_bus_zipcode: TStringField;
    qry_suppliersup_add_bus_address: TStringField;
    qry_suppliersup_add_bus_number: TStringField;
    qry_suppliersup_add_bus_street: TStringField;
    qry_suppliersup_add_bus_complement: TStringField;
    qry_suppliersup_add_bus_city: TStringField;
    qry_suppliersup_add_bus_state: TStringField;
    qry_suppliersup_add_bus_country: TStringField;
    qry_suppliersup_phone1: TStringField;
    qry_suppliersup_phone2: TStringField;
    qry_suppliersup_phone3: TStringField;
    qry_suppliersup_phone4: TStringField;
    qry_suppliersup_contact: TStringField;
    qry_suppliersup_status: TStringField;
    qry_suppliersup_deleted_at: TDateTimeField;
    qry_suppliersup_dt_registration: TDateTimeField;
    qry_supplierCodSupplier: TStringField;
    qry_manufacturerman_cod: TBytesField;
    qry_manufacturercontract_ctr_cod: TBytesField;
    qry_manufacturerman_id: TLongWordField;
    qry_manufacturerman_first_name: TStringField;
    qry_manufacturerman_last_name: TStringField;
    qry_manufacturerman_email: TStringField;
    qry_manufacturerman_cnpj: TStringField;
    qry_manufacturerman_ie: TStringField;
    qry_manufacturerman_im: TStringField;
    qry_manufacturerman_suframa: TStringField;
    qry_manufacturerman_dt_open: TDateField;
    qry_manufacturerman_add_bus_zipcode: TStringField;
    qry_manufacturerman_add_bus_address: TStringField;
    qry_manufacturerman_add_bus_number: TStringField;
    qry_manufacturerman_add_bus_street: TStringField;
    qry_manufacturerman_add_bus_complement: TStringField;
    qry_manufacturerman_add_bus_city: TStringField;
    qry_manufacturerman_add_bus_state: TStringField;
    qry_manufacturerman_add_bus_country: TStringField;
    qry_manufacturerman_phone1: TStringField;
    qry_manufacturerman_phone2: TStringField;
    qry_manufacturerman_phone3: TStringField;
    qry_manufacturerman_phone4: TStringField;
    qry_manufacturerman_contact: TStringField;
    qry_manufacturerman_status: TStringField;
    qry_manufacturerman_deleted_at: TDateTimeField;
    qry_manufacturerman_dt_registration: TDateTimeField;
    qry_manufacturerCodManufact: TStringField;
    qry_product_classprc_cod: TBytesField;
    qry_product_classcontract_ctr_cod: TBytesField;
    qry_product_classprc_id: TLongWordField;
    qry_product_classprc_name: TStringField;
    qry_product_classprc_status: TStringField;
    qry_product_classprc_deleted_at: TDateTimeField;
    qry_product_classprc_dt_registration: TDateTimeField;
    qry_product_classCodProductClass: TStringField;
    qry_product_class_subprs_cod: TBytesField;
    qry_product_class_subcontract_ctr_cod: TBytesField;
    qry_product_class_subproduct_class_prc_cod: TBytesField;
    qry_product_class_subprs_id: TLongWordField;
    qry_product_class_subprs_name: TStringField;
    qry_product_class_subprs_deleted_at: TDateTimeField;
    qry_product_class_subprs_dt_registration: TDateTimeField;
    qry_product_class_subCodClassSub: TStringField;
    qry_ncmncm_cod: TBytesField;
    qry_ncmcontract_ctr_cod: TBytesField;
    qry_ncmncm_id: TLongWordField;
    qry_ncmncm_code: TStringField;
    qry_ncmncm_description: TMemoField;
    qry_ncmncm_status: TStringField;
    qry_ncmncm_deleted_at: TDateTimeField;
    qry_ncmncm_dt_registration: TDateTimeField;
    qry_ncmCodNCM: TStringField;
    qry_product_unitpru_cod: TBytesField;
    qry_product_unitcontract_ctr_cod: TBytesField;
    qry_product_unitpru_id: TLongWordField;
    qry_product_unitpru_name: TStringField;
    qry_product_unitpru_initials: TStringField;
    qry_product_unitpru_status: TStringField;
    qry_product_unitpru_deleted_at: TDateTimeField;
    qry_product_unitpru_dt_registration: TDateTimeField;
    qry_product_unitCodProdUnit: TStringField;
    qry_brandbra_cod: TBytesField;
    qry_brandcontract_ctr_cod: TBytesField;
    qry_brandbra_id: TLongWordField;
    qry_brandbra_name: TStringField;
    qry_brandbra_status: TStringField;
    qry_brandbra_deleted_at: TDateTimeField;
    qry_brandbra_dt_registration: TDateTimeField;
    qry_brandCodBrand: TStringField;
    dbComboxStatus: TcxDBComboBox;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    loopComboxNCM: TcxLookupComboBox;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    looComboxUnidMedida: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    looCombxMarca: TcxLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    looComboxFornecedor: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    looComboxFabricante: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    looComboxClasse: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    looComboxSub_Classe: TcxLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1pro_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prc_name: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_name: TcxGridDBColumn;
    cxGrid_1DBTableView1man_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1bra_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pru_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pru_initials: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_initials: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_tag: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_description: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_gender: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_barcod: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_barcod_manufacturer: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_length: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_weight: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_liter: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn;
    qryCodProduct: TStringField;
    qryncm_code: TStringField;
    qryncm_description: TMemoField;
    qryCodClass: TStringField;
    qryCodSub_Class: TStringField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox4Enter(Sender: TObject);
    procedure cxDBLookupComboBox2Enter(Sender: TObject);
    procedure cxDBLookupComboBox7Enter(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox4PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox5PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox6PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox7PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure cxTabSheet_1Show(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
  private
    { Private declarations }
     pro_cod: string;

  public
    procedure limpaCache(Sender:TObject);

    procedure ExibirRegistros;
  end;

var
  frm_product: Tfrm_product;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_product.Action_cancelExecute(Sender: TObject);
begin
  inherited;
    if result = false then
    exit;

 if (qrypro_id.AsInteger = 0) then
  begin
   with frm_dm.qry2,sql do
    begin
     Close;
     Text:= ' delete from product ' +
       ' where pro_cod = unhex('+ QuotedStr(pro_cod)+')' ;
     Prepare;
     ExecSQL;
    end;
  end;

  ExibirRegistros;

end;

procedure Tfrm_product.Action_deleteExecute(Sender: TObject);
begin
  inherited;
  if (result = false) then
      exit;


 if Application.MessageBox('Tem certeza que deseja excluir este Produto ? ','AVISO DE EXCLUSÃO',MB_YESNO + MB_ICONQUESTION) = mrYes then
   begin
     qry.Edit;
     qrypro_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     Application.MessageBox('Produto excluído com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);
   end;

    ExibirRegistros;
end;

procedure Tfrm_product.Action_editExecute(Sender: TObject);
begin
  inherited;
   pro_cod := qryCodProduct.AsString;
   dbComboxStatus.Enabled   :=True;
   looComboxFornecedor.Text := qrysup_last_name.AsString;
   looComboxFabricante.Text := qryman_last_name.AsString;
   loopComboxNCM.Text       := qryncm_description.AsString;
   looComboxUnidMedida.Text := qrypru_name.AsString;
   looCombxMarca.Text       :=  qrybra_name.AsString;
   looComboxClasse.Text     := qryprc_name.AsString;

   looComboxSub_Classe.ItemIndex := -1;
   qry_product_class_sub.Locate('CodClassSub',qryCodSub_Class.AsString,[loCaseInsensitive, loPartialKey]);
   looComboxSub_Classe.Text := qry_product_class_subprs_name.AsString;

end;

procedure Tfrm_product.Action_insertExecute(Sender: TObject);
begin
  inherited;
  dbComboxStatus.ItemIndex := 0;
  dbComboxPro_type.ItemIndex :=0;
  dbComboxStatus.Enabled :=False;

end;

procedure Tfrm_product.Action_saveExecute(Sender: TObject);
begin
  //--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

  inherited;
  if ds.DataSet.State in [dsEdit] then
    Exit;

if qrypro_id.AsInteger = 0 then
   begin

     with frm_dm.qry,sql do
      begin
       close;
       Text:= ' select case when max(pro_id) is null then 1 ' +
          '      else (max(pro_id) + 1) end as maxID from product '+
          ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
       Prepare;
       Open;

       qry.Edit;
       qrypro_id.AsInteger:=Fields[0].AsInteger;
       qrysupplier_sup_cod.Value          := qry_suppliersup_cod.Value;
       qrymanufacturer_man_cod.Value      := qry_manufacturerman_cod.Value;
       qryproduct_class_prc_cod.Value     := qry_product_classprc_cod.Value;
       qryproduct_class_sub_prs_cod.Value := qry_product_class_subprs_cod.Value;
       qryncm_ncm_cod.Value               := qry_ncmncm_cod.Value;
       qryproduct_unit_pru_cod.Value      := qry_product_unitpru_cod.Value;
       qrybrand_bra_cod.Value             := qry_brandbra_cod.Value;
     end;
   end else
        begin
         qry.Edit;
         qrysupplier_sup_cod.Value          := qry_suppliersup_cod.Value;
         qrymanufacturer_man_cod.Value      := qry_manufacturerman_cod.Value;
         qryproduct_class_prc_cod.Value     := qry_product_classprc_cod.Value;
         qryproduct_class_sub_prs_cod.Value := qry_product_class_subprs_cod.Value;
         qryncm_ncm_cod.Value               := qry_ncmncm_cod.Value;
         qryproduct_unit_pru_cod.Value      := qry_product_unitpru_cod.Value;
         qrybrand_bra_cod.Value             := qry_brandbra_cod.Value;

        end;

   qry.Post;
   qry.ApplyUpdates(0);
   ExibirRegistros;

end;

procedure Tfrm_product.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
 if not (qry.State in[dsEdit]) then
  qry.Edit;

  qryncm_ncm_cod.Value := qry_ncmncm_cod.Value;
  qry.Post;
  qry.Refresh;
  qry.Edit;
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
   //
end;
procedure Tfrm_product.ExibirRegistros;
begin
   qry.Close;
   qry.SQL.Text:=  ' select pro.*, hex(pro_cod)as CodProduct,hex(pro.product_class_prc_cod)as CodClass, hex(pro.product_class_sub_prs_cod)as CodSub_Class,   ' +
                   ' sup.sup_last_name, cla.prc_name, cla.prc_status, cla_sub.prs_name, manuf.man_last_name,                                                 ' +
                   ' br.bra_name, br.bra_status, pr_unt.pru_name, pr_unt.pru_initials, pr_unt.pru_status,nc.ncm_code,nc.ncm_description from product as pro  ' +
                   ' left join supplier as sup on sup.sup_cod = pro.supplier_sup_cod                                                                         ' +
                   ' left join product_class as cla on cla.prc_cod = pro.product_class_prc_cod                                                               ' +
                   ' left join product_class_sub as cla_sub on cla_sub.prs_cod = pro.product_class_prc_cod                                                   ' +
                   ' left join manufacturer as manuf on manuf.man_cod = pro.manufacturer_man_cod                                                             ' +
                   ' left join brand as br on br.bra_cod = pro.brand_bra_cod                                                                                 ' +
                   ' left join ncm as nc on nc.ncm_cod = pro.ncm_ncm_cod                                                                                     ' +
                   ' left join product_unit as pr_unt on pr_unt.pru_cod = pro.product_unit_pru_cod                                                           ' +
                   ' where pro_type =''P'' and  pro.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+') and pro.pro_deleted_at is null  ';
   qry.Prepare;
   qry.Open;
end;

procedure Tfrm_product.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_product.Destroy;
  frm_product := Nil;
end;

procedure Tfrm_product.FormCreate(Sender: TObject);
begin
  inherited;
   FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_product.FormShow(Sender: TObject);
begin
  inherited;
  ExibirRegistros;
end;

procedure Tfrm_product.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
end;

procedure Tfrm_product.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
//SQL para obter Número do Cod ID em Hex--------
  With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   pro_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela purchase_order inserindo os primeiros registros obrigatórios----
   Text:='insert into product (pro_id,pro_cod,pro_status,pro_type,contract_ctr_cod,pro_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(pro_cod)+'),''A'',''P'',unhex(' +QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:=' select pro.*, hex(pro_cod)as CodProduct,hex(pro.product_class_prc_cod)as CodClass, hex(pro.product_class_sub_prs_cod)as CodSub_Class,   ' +
                 ' sup.sup_last_name, cla.prc_name, cla.prc_status, cla_sub.prs_name, manuf.man_last_name,                                                 ' +
                 ' br.bra_name, br.bra_status, pr_unt.pru_name, pr_unt.pru_initials, pr_unt.pru_status,nc.ncm_code,nc.ncm_description from product as pro  ' +
                 ' left join supplier as sup on sup.sup_cod = pro.supplier_sup_cod                                                                         ' +
                 ' left join product_class as cla on cla.prc_cod = pro.product_class_prc_cod                                                               ' +
                 ' left join product_class_sub as cla_sub on cla_sub.prs_cod = pro.product_class_prc_cod                                                   ' +
                 ' left join manufacturer as manuf on manuf.man_cod = pro.manufacturer_man_cod                                                             ' +
                 ' left join brand as br on br.bra_cod = pro.brand_bra_cod                                                                                 ' +
                 ' left join ncm as nc on nc.ncm_cod = pro.ncm_ncm_cod                                                                                     ' +
                 ' left join product_unit as pr_unt on pr_unt.pru_cod = pro.product_unit_pru_cod                                                           ' +
                 ' where pro_type =''P'' and  pro_cod = unhex('+ QuotedStr(pro_cod)+') and pro_deleted_at is null ' ;
   qry.Prepare;
   qry.open;

   qry.Edit;
end;

end.
