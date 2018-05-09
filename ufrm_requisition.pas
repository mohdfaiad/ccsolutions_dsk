unit ufrm_requisition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_form_default, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  dxLayoutcxEditAdapters, dxSkinsdxBarPainter, cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, ACBrSocket, ACBrCEP, frxClass, FireDAC.Comp.Client, QImport3Wizard, QExport4Dialog, ACBrBase,
  ACBrEnterTab, FireDAC.Comp.DataSet, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxBarEditItem, cxClasses,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Grids, Vcl.DBGrids, frxDBSet;

type
  Tfrm_requisition = class(Tfrm_form_default)
    cxGrid_1DBTableView1req_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1requisition_type_ret_id: TcxGridDBColumn;
    cxGrid_1DBTableView1req_dt_registration: TcxGridDBColumn;
    qry_client: TFDQuery;
    ds_client: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    qry_clientcli_id: TFDAutoIncField;
    qry_clientcontract_ctr_id: TIntegerField;
    qry_clienttable_price_tbp_id: TIntegerField;
    qry_clientcli_type: TStringField;
    qry_clientcli_first_name: TStringField;
    qry_clientcli_last_name: TStringField;
    qry_clientcli_email: TStringField;
    qry_clientcli_phone1: TStringField;
    qry_clientcli_phone2: TStringField;
    qry_clientcli_phone3: TStringField;
    qry_clientcli_phone4: TStringField;
    qry_clientcli_contact: TStringField;
    qry_clientcli_cpfcnpj: TStringField;
    qry_clientcli_rgie: TStringField;
    qry_clientcli_im: TStringField;
    qry_clientcli_suframa: TStringField;
    qry_clientcli_add_bus_zipcode: TStringField;
    qry_clientcli_add_bus_address: TStringField;
    qry_clientcli_add_bus_number: TStringField;
    qry_clientcli_add_bus_street: TStringField;
    qry_clientcli_add_bus_complement: TStringField;
    qry_clientcli_add_bus_city: TStringField;
    qry_clientcli_add_bus_state: TStringField;
    qry_clientcli_add_bus_country: TStringField;
    qry_clientcli_add_bil_zipcode: TStringField;
    qry_clientcli_add_bil_address: TStringField;
    qry_clientcli_add_bil_number: TStringField;
    qry_clientcli_add_bil_street: TStringField;
    qry_clientcli_add_bil_complement: TStringField;
    qry_clientcli_add_bil_city: TStringField;
    qry_clientcli_add_bil_state: TStringField;
    qry_clientcli_add_bil_country: TStringField;
    qry_clientcli_add_del_zipcode: TStringField;
    qry_clientcli_add_del_address: TStringField;
    qry_clientcli_add_del_number: TStringField;
    qry_clientcli_add_del_street: TStringField;
    qry_clientcli_add_del_complement: TStringField;
    qry_clientcli_add_del_city: TStringField;
    qry_clientcli_add_del_state: TStringField;
    qry_clientcli_add_del_country: TStringField;
    qry_clientcli_image: TBlobField;
    qry_clientcli_day_maturity: TIntegerField;
    qry_clientcli_status: TStringField;
    qry_clientcli_dt_birthopen: TDateField;
    qry_clientcli_account_code_sippulse: TStringField;
    qry_clientcli_dt_registration: TDateTimeField;
    qry_insurance: TFDQuery;
    ds_insurance: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    qry_price_product: TFDQuery;
    ds_price_product: TDataSource;
    qry_price_producttpp_id: TFDAutoIncField;
    qry_price_producttable_price_tbp_id: TIntegerField;
    qry_price_productcontract_ctr_id: TIntegerField;
    qry_price_productproduct_pro_id: TIntegerField;
    qry_price_productpro_type: TStringField;
    qry_price_productpro_name: TStringField;
    qry_price_producttpp_value: TBCDField;
    qry_insurancecin_id: TFDAutoIncField;
    qry_insurancecontract_ctr_id: TIntegerField;
    qry_insurancetable_price_tbp_id: TIntegerField;
    qry_insuranceclient_cli_id: TIntegerField;
    qry_insuranceinsurance_ins_id: TIntegerField;
    qry_insuranceins_first_name: TStringField;
    qry_insuranceins_last_name: TStringField;
    qry_insuranceins_email: TStringField;
    qry_insuranceins_cnpj: TStringField;
    qry_requisition_iten: TFDQuery;
    ds_requisition_iten: TDataSource;
    qry_requisition_itenrei_in: TFDAutoIncField;
    qry_requisition_itenrequisition_req_id: TIntegerField;
    qry_requisition_itenproduct_pro_id: TIntegerField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qry_requisition_type: TFDQuery;
    ds_requisition_type: TDataSource;
    qry_requisition_typeret_id: TFDAutoIncField;
    qry_requisition_typecontract_ctr_id: TIntegerField;
    qry_requisition_typeret_name: TStringField;
    qry_requisition_typeret_dt_registration: TDateTimeField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    qryreq_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryclient_cli_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    qryrequisition_type_ret_id: TIntegerField;
    qryinsurance_ins_id: TIntegerField;
    qryreq_dt_registration: TDateTimeField;
    qry_requisition_itenproduct_value: TBCDField;
    cxGrid1DBTableView1rei_in: TcxGridDBColumn;
    cxGrid1DBTableView1requisition_req_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_value: TcxGridDBColumn;
    qryCliente: TStringField;
    cxGrid_1DBTableView1insurance_ins_id: TcxGridDBColumn;
    cxGrid_1DBTableView1Cliente: TcxGridDBColumn;
    frxDB_Requisition: TfrxDBDataset;
    frxDBD_Requisition_iten: TfrxDBDataset;
    qryConvênio: TStringField;
    qryTipoexame: TStringField;
    qry_requisition_itenExame: TStringField;
    procedure cxDBLookupComboBox3Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure qry_requisition_itenproduct_pro_idValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
  end;

var
  frm_requisition: Tfrm_requisition;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_requisition.Action_saveExecute(Sender: TObject);
begin

    if qry_requisition_iten.IsEmpty then
   begin
     Application.MessageBox('Não é possível salvar, falta incluir os exemes na requisição !','AVISO DO SISTEMA',MB_OK + MB_ICONQUESTION);
      Exit;
   end;

  //Para salvar os intens da requisição caso u usuário não faça
  if (qry_requisition_iten.State in [dsEdit,dsInsert]) then
   begin
     qry_requisition_iten.Post;
   end;

  inherited;
end;

procedure Tfrm_requisition.cxDBLookupComboBox3Enter(Sender: TObject);
begin
  inherited;
  qry_client.Locate('cli_id',qryclient_cli_id.AsInteger,[loCaseInsensitive, loPartialKey]);
end;

procedure Tfrm_requisition.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    frm_requisition.Destroy;
    frm_requisition := Nil;
end;

procedure Tfrm_requisition.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_requisition.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
  qry_requisition_iten.CommitUpdates();
end;

procedure Tfrm_requisition.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryreq_dt_registration.AsDateTime := now;
  qryenterprise_ent_id.AsInteger    := frm_dm.qry_enterpriseent_id.AsInteger;
  qry.Post;
  qry.Edit;
end;

procedure Tfrm_requisition.qry_requisition_itenproduct_pro_idValidate(Sender: TField);
begin
  inherited;
   qry_requisition_itenproduct_value.AsFloat:=qry_price_producttpp_value.AsFloat;
end;

end.
