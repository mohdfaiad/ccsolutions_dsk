unit ufrm_stock_out;

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
  cxGridDBTableView, cxGrid, cxPC, cxDBLookupComboBox, cxLookupEdit,
  cxDBLookupEdit, dxLayoutControlAdapters, Vcl.StdCtrls, Vcl.Buttons, frxDBSet;

type
  Tfrm_stock_out = class(Tfrm_form_default)
    qryreq_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryclient_cli_id: TIntegerField;
    qrydoctor_doc_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    qryinsurance_ins_id: TIntegerField;
    qrydt_registration: TDateTimeField;
    ds_enterprise: TDataSource;
    qry_enterprise: TFDQuery;
    qry_enterpriseent_id: TFDAutoIncField;
    qry_enterpriseent_first_name: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    qry_client: TFDQuery;
    ds_qry_client: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid_1DBTableView1req_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1doctor_doc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1insurance_ins_id: TcxGridDBColumn;
    cxGrid_1DBTableView1dt_registration: TcxGridDBColumn;
    qry_lab_request_itens: TFDQuery;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    ds_qry_lab_request_itens: TDataSource;
    cxGrid1DBTableView1lri_id: TcxGridDBColumn;
    cxGrid1DBTableView1lab_request_req_id: TcxGridDBColumn;
    cxGrid1DBTableView1lri_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1lri_product_value: TcxGridDBColumn;
    cxGrid1DBTableView1lri_dt_registration: TcxGridDBColumn;
    qry_product_list: TFDQuery;
    ds_product_list: TDataSource;
    ds_qry_product_out: TDataSource;
    BitBtn1: TBitBtn;
    dxLayoutItem7: TdxLayoutItem;
    qry_enterprisecontract_ctr_id: TIntegerField;
    qry_lab_request_itenslri_id: TFDAutoIncField;
    qry_lab_request_itenslab_request_req_id: TIntegerField;
    qry_lab_request_itensproduct_pro_id: TIntegerField;
    qry_lab_request_itenslri_product_quant: TBCDField;
    qry_lab_request_itenslri_product_value: TBCDField;
    qry_lab_request_itenslri_dt_registration: TDateTimeField;
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    qry_stock_iten: TFDQuery;
    qry_stock_itensti_id: TFDAutoIncField;
    qry_stock_itenstock_sto_id: TIntegerField;
    qry_stock_itenproduct_pro_id: TIntegerField;
    qry_stock_itenproduct_department_prd_id: TIntegerField;
    qry_stock_itenproduct_sector_prs_id: TIntegerField;
    qry_stock_itensti_product_quant: TBCDField;
    qry_stock_itensti_product_quant_min: TBCDField;
    qry_stock_itensti_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1Column1: TcxGridDBColumn;
    qry_doctor: TFDQuery;
    ds_qry_doctor: TDataSource;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    frxDBD_Estoque_Saida: TfrxDBDataset;
    frxDBD_Saida_Itens: TfrxDBDataset;
    qryCliente: TStringField;
    qryEmpresa: TStringField;
    qry_doctordoc_id: TFDAutoIncField;
    qry_doctorcontract_ctr_id: TIntegerField;
    qry_lab_request_itensProduto: TStringField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure limpaCache(Sender:TObject);
  end;

var
  frm_stock_out: Tfrm_stock_out;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock_out.Action_saveExecute(Sender: TObject);
begin
 qry_lab_request_itens.First;
 while not qry_lab_request_itens.Eof do
  begin
    qry_stock_iten.Locate('product_pro_id',qry_lab_request_itensproduct_pro_id.AsInteger,
    [loCaseInsensitive,loPartialKey]);
    qry_stock_iten.Edit;
    qry_stock_itensti_product_quant.AsFloat:= qry_stock_itensti_product_quant.AsFloat -
                                              qry_lab_request_itenslri_product_quant.AsFloat;
    qry_stock_iten.Post;
    qry_lab_request_itens.Next;
  end;

  inherited;

end;

procedure Tfrm_stock_out.BitBtn1Click(Sender: TObject);
begin
  inherited;
//procedimento para inserir os itens na requisição
with frm_dm.qry, sql do
 begin
   close;
   text:='select product_pro_id,product_pro_id_input,pro_name from product_input ' +
         ' inner join product on pro_id = product_pro_id_input '+
         ' where product_pro_id = 4';
   prepare;
   open;
   first;

   while not Eof do
    begin
     qry_lab_request_itens.Insert;
     qry_lab_request_itensproduct_pro_id.AsInteger:=FieldByName('product_pro_id_input').AsInteger;
     qry_lab_request_itenslri_product_quant.AsFloat:=1;
     qry_lab_request_itenslri_dt_registration.Value:=Now;
     qry_lab_request_itens.Post;
     Next;
    end;
 end;

end;

procedure Tfrm_stock_out.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Atualização do combobox
  qry_enterprise.Refresh;
end;

procedure Tfrm_stock_out.cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
begin
  inherited;
   //Atualização do combobox
  qry_client.Refresh;
end;

procedure Tfrm_stock_out.cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
begin
  inherited;
   //Atualização do combobox
  qry_doctor.Refresh;
end;

procedure Tfrm_stock_out.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_stock_out.Destroy;
  frm_stock_out := Nil;
end;

procedure Tfrm_stock_out.FormCreate(Sender: TObject);
begin
  inherited;
FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_stock_out.limpaCache(Sender: TObject);
begin
 qry.CommitUpdates();
 qry_lab_request_itens.CommitUpdates();
 qry_stock_iten.CommitUpdates();

end;

procedure Tfrm_stock_out.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
qrydt_registration.Value:=Now;
qry.Post;
qry.Edit;
end;

end.
