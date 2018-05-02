unit ufrm_purchase_order;

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
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, QImport3Wizard, QExport4Dialog, ACBrBase,
  ACBrEnterTab, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxBarEditItem,
  cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, ACBrSocket, ACBrCEP, frxDBSet,
  Vcl.Buttons;

type
  Tfrm_purchase_order = class(Tfrm_form_default)
    qry_purchase_order_iten: TFDQuery;
    ds_purchase_order_iten: TDataSource;
    qrypco_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryemployee_emp_id: TIntegerField;
    qrypco_dt_registration: TDateTimeField;
    qry_purchase_order_itenpoi_id: TFDAutoIncField;
    qry_purchase_order_itenpurchase_order_pco_id: TIntegerField;
    qry_purchase_order_itenpoi_product_quant: TBCDField;
    qry_purchase_order_itenpoi_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1pco_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1employee_emp_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_dt_registration: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    qry_employee: TFDQuery;
    ds_employee: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    qry_purchase_order_itenproduct_pro_id: TIntegerField;
    cxGrid1DBTableView1poi_id: TcxGridDBColumn;
    cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1poi_dt_registration: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    qrypco_status: TStringField;
    qrypoc_status_reason: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid_1DBTableView1pco_status: TcxGridDBColumn;
    cxGrid_1DBTableView1poc_status_reason: TcxGridDBColumn;
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
    dxCancelPed: TdxBarButton;
    qrypco_type: TStringField;
    dxLiberarPed: TdxBarButton;
    frxDBD_Pedido_Compra: TfrxDBDataset;
    frxDBD_Pedido_Itens: TfrxDBDataset;
    qryFuncionário: TStringField;
    qry_purchase_order_itenProduto: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qrystock_sto_id: TIntegerField;
    qry_stock: TFDQuery;
    ds_stock: TDataSource;
    qry_stocksto_name: TStringField;
    qry_stocksto_id: TFDAutoIncField;
    qry_stockcontract_ctr_id: TIntegerField;
    qry_stockenterprise_ent_id: TIntegerField;
    FDQuery1: TFDQuery;
    FDQuery1id: TFDAutoIncField;
    FDQuery1report: TBlobField;
    FDQuery1report01: TMemoField;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_purchase_order_itenAfterInsert(DataSet: TDataSet);
    procedure cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lbAbertoClick(Sender: TObject);
    procedure lbCanceladoClick(Sender: TObject);
    procedure lbFechadoClick(Sender: TObject);
    procedure lbLiberadoClick(Sender: TObject);
    procedure lbTodosClick(Sender: TObject);
    procedure dxCancelPedClick(Sender: TObject);
    procedure qry_purchase_order_itenAfterEdit(DataSet: TDataSet);
    procedure dxLiberarPedClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure Action_deleteExecute(Sender: TObject);
    procedure qryAfterDelete(DataSet: TDataSet);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTabSheet_2Show(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  procedure filter(status:string);
  procedure limpaCache(Sender:TObject);
  public
    { Public declarations }
  end;

var
  frm_purchase_order: Tfrm_purchase_order;

implementation

{$R *.dfm}

uses ufrm_dm, Vcl.Imaging.jpeg;

procedure Tfrm_purchase_order.Action_deleteExecute(Sender: TObject);
begin
//Condição para não permitir excluir um pedido de compra que esteja diferente do status de A - Aberto
 if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
  begin
     Application.MessageBox('Só é permitido excluir um pedido de compra que esteja em A - Aberto !','PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     qry.CancelUpdates;
     qry_purchase_order_iten.CancelUpdates;
     Exit;
  end;
 //Caso o pedido de compra esteja no status de aberto poderar ser excluido
  if Application.MessageBox('Tem certeza que deseja excluir este pedido de compra ?','AVISO DE EXCLUSÃO DO PEDIDO DE COMPRA',MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      qry_purchase_order_iten.First;
      while not qry_purchase_order_iten.Eof do
       begin
         qry_purchase_order_iten.Delete;
       end;

       qry_purchase_order_iten.ApplyUpdates(0);

      inherited;
    end;

end;

procedure Tfrm_purchase_order.Action_saveExecute(Sender: TObject);
begin

   if qry_purchase_order_iten.IsEmpty then
   begin
     Application.MessageBox('Não é possível salvar, falta incluir os produtos neste Pedido !','AVISO DO SISTEMA',MB_OK + MB_ICONQUESTION);
      Exit;
   end;


  if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido alterar um pedido de compra que esteja em aberto!','PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     qry.CancelUpdates;
     qry_purchase_order_iten.CancelUpdates;
     cxTabSheet_1.Show;
     Exit;
   end;
  inherited;

end;

procedure Tfrm_purchase_order.cxDBLookupComboBox1PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  qry_employee.Refresh;
end;

procedure Tfrm_purchase_order.cxDBLookupComboBox2PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  qry_stock.Refresh;

end;

procedure Tfrm_purchase_order.cxGrid_1DBTableView1CustomDrawCell(
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
   end;

end;

procedure Tfrm_purchase_order.cxTabSheet_2Show(Sender: TObject);
begin
  inherited;
   qry_stock.Close;
   qry_stock.ParamByName('CTR_USR_ID').Value := frm_dm.qry_signinctr_usr_id.Value;
   qry_stock.Prepare;
   qry_stock.Open;

end;

procedure Tfrm_purchase_order.dsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
 if (qrypco_status.AsString = 'C') or (qrypco_status.AsString = 'F') then
   dxCancelPed.Enabled:=false
   else
    dxCancelPed.Enabled:=True;

  dxLiberarPed.Enabled:=qrypco_status.AsString = 'A';
end;

Procedure Tfrm_purchase_order.dxCancelPedClick(Sender: TObject);
var
motCancel:string;
begin
  inherited;
  if (qry.RecordCount >0) then
   begin
    if Application.MessageBox('Deseja cancelar este Pedido de Compra ?','PEDIDO',MB_YESNO + MB_ICONQUESTION) = mrYes  then
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
       Application.MessageBox('Motivo do cancelamento menor que 20 caracteres!','PEDIDO',MB_OK + MB_ICONWARNING);
     end;
   end
   else
    Application.MessageBox('Não existe nenhum pediddo para ser Cancelado !','PEDIDO',MB_OK + MB_ICONQUESTION);

end;

procedure Tfrm_purchase_order.dxLiberarPedClick(Sender: TObject);
var
motLib:string;
begin
  inherited;
  if Application.MessageBox('Deseja liberar este Pedido de Compra ?','PEDIDO',MB_YESNO + MB_ICONQUESTION) = mrYes  then
   begin
   //Comando para verificar se existe produtos no Pedido, caso exista produto poderá ser liberado
    if qry_purchase_order_iten.Locate('purchase_order_pco_id',qrypco_id.AsInteger,[loCaseInsensitive, loPartialKey]) then
     begin
      motLib:=UpperCase(InputBox('Liberação','Informe uma observação da liberação! (Não obrigatório)',motLib));
      qry.Edit;
      qrypco_status.AsString:='L';
      qrypoc_status_reason.AsString:=motLib;
      qry.Post;
      FDSchemaAdapter_1.ApplyUpdates(0);
     end
     //Caso o Pedido esteja vasia sem produtos não podera ser liberado
     else
     Application.MessageBox('Não existe nenhum produto neste Pedido de Compra, portanto ele não pode ser liberado !','AVISO DO SISTEMA',MB_OK+MB_ICONQUESTION);
   end;
end;

procedure Tfrm_purchase_order.filter(status: string);
begin
  qry.Filter := 'pco_status = ' + QuotedStr(status);
  qry.Filtered := True;
end;

procedure Tfrm_purchase_order.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_purchase_order.Destroy;
  frm_purchase_order := Nil;
end;

procedure Tfrm_purchase_order.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_purchase_order.FormShow(Sender: TObject);
begin
  inherited;
  //SQL para exibir somente as Requisições da Unidade de estoque que o usuário tem acesso
  qry.Close;
  qry.ParamByName('CTR_USR_ID').Value := frm_dm.qry_signinctr_usr_id.Value;
  qry.Prepare;
  qry.Open;

end;

procedure Tfrm_purchase_order.lbAbertoClick(Sender: TObject);
begin
  inherited;
   filter('A');
end;

procedure Tfrm_purchase_order.lbCanceladoClick(Sender: TObject);
begin
  inherited;
  filter('C');
end;

procedure Tfrm_purchase_order.lbFechadoClick(Sender: TObject);
begin
  inherited;
 filter('F');
end;

procedure Tfrm_purchase_order.lbLiberadoClick(Sender: TObject);
begin
  inherited;
   filter('L');
end;

procedure Tfrm_purchase_order.lbTodosClick(Sender: TObject);
begin
  inherited;
  qry.Filtered:=False;
end;

procedure Tfrm_purchase_order.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
   qry_purchase_order_iten.CommitUpdates();
end;

procedure Tfrm_purchase_order.qryAfterDelete(DataSet: TDataSet);
begin
  inherited;
    qry.ApplyUpdates(0);
    qry.Close;
    qry.Open;
end;

procedure Tfrm_purchase_order.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrypco_status.AsString:='A';
  qrypco_dt_registration.Value:=now;
  qrypco_type.AsString:='C';
  qry.Post;
  qry.Edit;
 end;

procedure Tfrm_purchase_order.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
   if (ds_purchase_order_iten.State in [dsEdit,dsInsert]) then
   begin
     ds_purchase_order_iten.DataSet.Post;
   end;
end;

procedure Tfrm_purchase_order.qry_purchase_order_itenAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
if not (qry.State in [dsInsert,dsEdit]) then
 qry.Edit;
end;

procedure Tfrm_purchase_order.qry_purchase_order_itenAfterInsert
  (DataSet: TDataSet);
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

end.
