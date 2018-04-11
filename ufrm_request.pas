unit ufrm_request;

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
  FireDAC.Stan.Async, FireDAC.DApt, QImport3Wizard, QExport4Dialog, ACBrBase,
  ACBrEnterTab, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxBarEditItem,
  cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, frxClass, frxDBSet, Vcl.Grids,
  Vcl.DBGrids, ACBrSocket, ACBrCEP;

type
  Tfrm_request = class(Tfrm_form_default)
    qrypco_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryemployee_emp_id: TIntegerField;
    qrypoc_status_reason: TStringField;
    qrypco_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1pco_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1employee_emp_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_type: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_status: TcxGridDBColumn;
    cxGrid_1DBTableView1poc_status_reason: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_dt_registration: TcxGridDBColumn;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    qry_employee: TFDQuery;
    ds_employee: TDataSource;
    ds_stock: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    qry_purchase_order_iten: TFDQuery;
    ds_purchase_order_iten: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView1poi_id: TcxGridDBColumn;
    cxGrid1DBTableView1purchase_order_pco_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1poi_dt_registration: TcxGridDBColumn;
    ds_product: TDataSource;
    qry_product: TFDQuery;
    qry_purchase_order_itenpoi_id: TFDAutoIncField;
    qry_purchase_order_itenpurchase_order_pco_id: TIntegerField;
    qry_purchase_order_itenproduct_pro_id: TIntegerField;
    qry_purchase_order_itenpoi_product_quant: TBCDField;
    qry_purchase_order_itenpoi_dt_registration: TDateTimeField;
    dxCancelReq: TdxBarButton;
    FlowPanel1: TFlowPanel;
    Shape1: TShape;
    lbAberto: TLabel;
    Shape2: TShape;
    lbCancelado: TLabel;
    Shape3: TShape;
    lbFechado: TLabel;
    Shape4: TShape;
    lbLiberado: TLabel;
    Shape5: TShape;
    lbTodos: TLabel;
    dxLibRequ: TdxBarButton;
    qry_stock: TFDQuery;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    qrystock_sto_id: TIntegerField;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    frxDBDataset2: TfrxDBDataset;
    qry_solicitante: TStringField;
    qry_funcionario: TStringField;
    frx_db_iten: TfrxDBDataset;
    qry_purchase_order_itenpro_name: TStringField;
    qry_purchase_order_itenpru_initials: TStringField;
    qry_parameter_stock: TFDQuery;
    frx_db_parameter_stock: TfrxDBDataset;
    qry_parameter_stockprs_id: TFDAutoIncField;
    qry_parameter_stockprs_req_day_exp: TIntegerField;
    qry_parameter_stockdt_registration: TDateTimeField;
    qrypco_type: TStringField;
    qrypco_status: TStringField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_purchase_order_itenAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxCancelReqClick(Sender: TObject);
    procedure cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lbAbertoClick(Sender: TObject);
    procedure lbCanceladoClick(Sender: TObject);
    procedure filter(tipo:string);
    procedure lbFechadoClick(Sender: TObject);
    procedure lbLiberadoClick(Sender: TObject);
    procedure lbTodosClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dxLibRequClick(Sender: TObject);
    procedure qry_purchase_order_itenAfterEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid_1DBTableView1FilterDialogShow(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var ADone: Boolean);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure qry_purchase_order_itenBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  //variaveis para parametros do sistema
  diaMaximoVenc:Integer;
  procedure limpaCache(Sender:TObject);
  end;

var
  frm_request: Tfrm_request;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_request.Action_insertExecute(Sender: TObject);
begin
  qry.Filtered:=False;
  inherited;

end;

procedure Tfrm_request.Action_saveExecute(Sender: TObject);
begin
 cxGrid1.SetFocus;
if qrystock_sto_id.AsInteger <= 0  then
 begin
   Application.MessageBox('Estoque soolicitante não foi informado, favor informar!','AVISO',MB_OK + MB_ICONWARNING);
   cxPageControl_2.ActivePageIndex:=1;
   cxDBLookupComboBox2.SetFocus;
   exit;
 end;
  if (ds_purchase_order_iten.State in [dsEdit,dsInsert]) then
   begin
     ds_purchase_order_iten.DataSet.Post;
   end;

if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
 begin
   Application.MessageBox('Só é permitido alterar uma requisição que esteja em aberto!','Requisição', MB_ICONINFORMATION + MB_OK);
   qry.CancelUpdates;
   Exit;
 end;

  inherited;

end;

procedure Tfrm_request.cxGrid_1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
IndiceCampo: Integer;
Valor      : Variant;
begin
  inherited;
   if (AViewInfo <> nil) and ((Sender as TcxGridDBTableView).DataController.Dataset.Active ) then begin
      IndiceCampo := (Sender as
      TcxGridDBTableView).GetColumnByFieldName('pco_status').Index;
      Valor       := AViewInfo.GridRecord.Values[IndiceCampo];
//      ACanvas.Font.Style  := [];
      if (Valor = 'A') then
         ACanvas.Font.Color  := $000080FF;

      if (Valor = 'C') then
         ACanvas.Font.Color  := clRed;

      if (Valor = 'F') then
         ACanvas.Font.Color  := clBlue;

      if (Valor = 'L') then
         ACanvas.Font.Color  := clGreen;


   //   else
   //      ACanvas.Brush.Color  := clWindow;
  //    IF AViewInfo.GridRecord.Selected then begin
 //        ACanvas.Brush.Color := clSkyBlue;
///         ACanvas.Font.Color  := clBlue;
//      end;
   end;

end;

procedure Tfrm_request.cxGrid_1DBTableView1FilterDialogShow(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var ADone: Boolean);
begin
  inherited;
if not qry.Active then
 begin
   qry.Prepare;
   qry.Open;
 end;
end;

procedure Tfrm_request.dsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
 if (qrypco_status.AsString = 'C') or (qrypco_status.AsString = 'F') then
   dxCancelReq.Enabled:=false
   else
    dxCancelReq.Enabled:=True;


  dxLibRequ.Enabled:=qrypco_status.AsString = 'A';
end;

procedure Tfrm_request.dxCancelReqClick(Sender: TObject);
var
motCancel:string;
begin
  inherited;
if Application.MessageBox('Deseja cancelar essa requisição?','REQUISIÇÃO',MB_YESNO + MB_ICONQUESTION) = mrYes  then
 begin
  motCancel:=UpperCase(InputBox('Cancelamento','Qual o motivo do cancelamento? (mínimo 20 caracteres)',motCancel));
  if Length(trim(motCancel)) >= 20 then
   begin
     qry.Edit;
     qrypco_status.AsString:='C';
     qrypoc_status_reason.AsString:=motCancel;
     qry.Post;
     FDSchemaAdapter_1.ApplyUpdates(0);
   end
   else
   Application.MessageBox('Motivo do cancelamento menor que 20 caracteres!','REQUISIÇÃO',MB_OK + MB_ICONWARNING);
 end;
end;

procedure Tfrm_request.dxLibRequClick(Sender: TObject);
var
motLib:string;
begin
  inherited;
if Application.MessageBox('Deseja liberar essa requisição?','REQUISIÇÃO',MB_YESNO + MB_ICONQUESTION) = mrYes  then
 begin
  motLib:=UpperCase(InputBox('Liberação','Informe uma observação da liberação! (Não obrigatório)',motLib));
  qry.Edit;
  qrypco_status.AsString:='L';
  qrypoc_status_reason.AsString:=motLib;
  qry.Post;
  FDSchemaAdapter_1.ApplyUpdates(0);
 end;
end;

procedure Tfrm_request.filter(tipo: string);
begin
  qry.Filter := 'pco_status = ' + QuotedStr(tipo);
  qry.Filtered := True;
end;

procedure Tfrm_request.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_request.Destroy;
  frm_request := Nil;
end;

procedure Tfrm_request.FormCreate(Sender: TObject);
begin
  inherited;
FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
with frm_dm.qry,sql do
 begin
   close;
   text:='select prs_req_day_exp from parameter_stock';
   prepare;
   open;
   diaMaximoVenc:=FieldByName('prs_req_day_exp').AsInteger;

 end;

end;

procedure Tfrm_request.FormShow(Sender: TObject);
begin
  inherited;
with frm_dm.qry, sql do
 begin
   close;
   text:= 'select count(*) from purchase_order ' +
          'where pco_type = ''R'' and pco_status = ''A'' '+
          ' and pco_dt_registration < (select date_sub(curdate(), interval :dia day))';
   ParamByName('dia').AsString:=IntToStr(diaMaximoVenc);
   prepare;
   open;
   if Fields[0].AsInteger > 0 then
   Application.MessageBox(PWideChar('Existe(m) ' +  Fields[0].AsString + ' requisição(ões) vencida(s)'),'AVISO',MB_OK + MB_ICONWARNING);
end;
end;

procedure Tfrm_request.lbAbertoClick(Sender: TObject);
begin
  inherited;
  filter('A');
end;

procedure Tfrm_request.lbCanceladoClick(Sender: TObject);
begin
  inherited;
  filter('C');
end;

procedure Tfrm_request.lbFechadoClick(Sender: TObject);
begin
  inherited;
  filter('F');
end;

procedure Tfrm_request.lbLiberadoClick(Sender: TObject);
begin
  inherited;
  filter('L');
end;

procedure Tfrm_request.lbTodosClick(Sender: TObject);
begin
  inherited;
  qry.Filtered:=False;
end;

procedure Tfrm_request.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
  qry_purchase_order_iten.CommitUpdates();
end;

procedure Tfrm_request.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
qrypco_status.AsString:='A';
qrypco_dt_registration.Value:=now;
qrypco_type.AsString:='R';
qry.Post;
qry.Edit;
end;

procedure Tfrm_request.qry_purchase_order_itenAfterEdit(DataSet: TDataSet);
begin
  inherited;
if not (qry.State in [dsInsert,dsEdit]) then
 qry.Edit;
end;

procedure Tfrm_request.qry_purchase_order_itenAfterInsert(DataSet: TDataSet);
begin
  inherited;
if not (qry.State in [dsInsert,dsEdit]) then
 qry.Edit;

 if qrypco_status.AsString  <> 'A' then
 begin
   Application.MessageBox('Só é permitido alterar uma requisição que esteja em aberto!','Requisição', MB_ICONINFORMATION + MB_OK);
   qry_purchase_order_iten.Delete;
   Exit;
 end;

qry_purchase_order_itenpoi_dt_registration.Value:=Now;
end;

procedure Tfrm_request.qry_purchase_order_itenBeforePost(DataSet: TDataSet);
begin

  if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
    Application.MessageBox('Não é permitido alterar a quantidade do produto de requisições liberadas!','Requisição', MB_ICONINFORMATION + MB_OK);
    qry_purchase_order_iten.CancelUpdates;
    Exit;
   end;

 inherited;

end;

end.
