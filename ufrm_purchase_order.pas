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
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_purchase_order = class(Tfrm_form_default)
    qry_purchase_order_iten: TFDQuery;
    ds_purchase_order_iten: TDataSource;
    cxGrid_1DBTableView1pco_id: TcxGridDBColumn;
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
    cxGrid1DBTableView1poi_id: TcxGridDBColumn;
    cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1poi_dt_registration: TcxGridDBColumn;
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
    dxLiberarPed: TdxBarButton;
    frxDBD_Pedido_Compra: TfrxDBDataset;
    frxDBD_Pedido_Itens: TfrxDBDataset;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qry_stock: TFDQuery;
    ds_stock: TDataSource;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qrypco_cod: TBytesField;
    qry_stocksto_name: TStringField;
    qry_stocksto_id: TLongWordField;
    qry_stockcontract_ctr_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qrystock_sto_cod: TBytesField;
    qrypco_id: TLongWordField;
    qrypco_type: TStringField;
    qrypoc_status_reason: TStringField;
    qrypco_status: TStringField;
    qrypco_deleted_at: TDateTimeField;
    qrypco_dt_registration: TDateTimeField;
    dxLayoutGroup4: TdxLayoutGroup;
    lookupComboxItens_Pedido: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    qry_employeeemp_cod: TBytesField;
    qry_employeeemp_id: TLongWordField;
    qry_employeerecord_rec_cod: TBytesField;
    qry_employeeemp_type: TStringField;
    qry_employeeemp_status: TStringField;
    qry_employeerec_name: TStringField;
    qry_employeecontract_ctr_cod: TBytesField;
    qry_employeecodEmployee: TStringField;
    lookupComboxEmployee: TcxLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    lookupComboxStock: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    qry_stocksto_cod: TBytesField;
    qry_stockenterprise_ent_cod: TBytesField;
    qry_stockcodStock: TStringField;
    qry_productproCod: TStringField;
    qry_productpro_name: TStringField;
    qry_productpro_cod: TBytesField;
    qry_productpro_id: TLongWordField;
    qry_productcontract_ctr_cod: TBytesField;
    qry_purchase_order_itenpoi_cod: TBytesField;
    qry_purchase_order_itenpurchase_order_pco_cod: TBytesField;
    qry_purchase_order_itenproduct_pro_cod: TBytesField;
    qry_purchase_order_itenpoi_id: TLongWordField;
    qry_purchase_order_itenpoi_product_quant: TBCDField;
    qry_purchase_order_itenpoi_product_quant_served: TBCDField;
    qry_purchase_order_itenpoi_deleted_at: TDateTimeField;
    qry_purchase_order_itenpoi_dt_registration: TDateTimeField;
    qry_purchase_order_itenpro_cod: TStringField;
    qry_purchase_order_itenpro_name: TStringField;
    qry_purchase_order_iteniten_Cod: TStringField;
    cxTextEditQTD: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid1DBTableView1pro_name: TcxGridDBColumn;
    qrysto_name: TStringField;
    cxGrid_1DBTableView1sto_name: TcxGridDBColumn;
    qryFuncionario: TStringField;
    qryCodPCO: TStringField;
    SpeedButton3: TSpeedButton;
    dxLayoutItem7: TdxLayoutItem;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure lookupComboxStockPropertiesPopup(Sender: TObject);
    procedure cxLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure qry_purchase_order_itenBeforePost(DataSet: TDataSet);
    procedure qry_purchase_order_itenAfterPost(DataSet: TDataSet);
    procedure cxTabSheet_3Show(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
       pco_cod,iten_cod:string;
       iten_ID: Integer;
  procedure filter(status:string);
  procedure limpaCache(Sender:TObject);
  public
    { Public declarations }
  end;

var
  frm_purchase_order: Tfrm_purchase_order;

implementation

{$R *.dfm}

uses ufrm_dm, Vcl.Imaging.jpeg, Class_Report,
  ufrm_dm_report, class_required_field;

procedure Tfrm_purchase_order.Action_cancelExecute(Sender: TObject);
begin
  inherited;

  if (qrypco_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
  begin
   with frm_dm.qry,sql do
   begin
    Close;
    Text:= ' delete from purchase_order ' +
           ' where pco_cod = ' + pco_cod ;
    Prepare;
    ExecSQL;
    end;

  with frm_dm.qry2,sql do
   begin
    Close;
    Text:= ' delete from purchase_order_iten ' +
           ' where purchase_order_pco_cod = ' + pco_cod ;
    Prepare;
    ExecSQL;
    end;

  end;

    qry.Close;
    qry.sql.text:= ' select sto_name, purchase_order.*,concat(''0x'',hex(pco_cod)) as CodPCO from purchase_order  ' +
                   ' left join stock on stock_sto_cod = sto_cod where pco_type = ''C''                  ' +
                   ' and stock_sto_cod in (select sto_cod from stock                                    ' +
                   ' where contract_ctr_cod ='+frm_dm.v_contract_ctr_cod+') and pco_deleted_at is null  ';
    qry.Prepare;
    qry.open;



end;

procedure Tfrm_purchase_order.Action_deleteExecute(Sender: TObject);
begin
////Condição para não permitir excluir um pedido de compra que esteja diferente do status de A - Aberto
// if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
//  begin
//     Application.MessageBox('Só é permitido excluir um pedido de compra que esteja em A - Aberto !','PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
//     qry.CancelUpdates;
//     qry_purchase_order_iten.CancelUpdates;
//     Exit;
//  end;

    if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrypco_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     qry.Close;
     qry.sql.text:= ' select sto_name, purchase_order.*,concat(''0x'',hex(pco_cod)) as CodPCO from purchase_order  ' +
                   ' left join stock on stock_sto_cod = sto_cod where pco_type = ''C''                  ' +
                   ' and stock_sto_cod in (select sto_cod from stock                                    ' +
                   ' where contract_ctr_cod ='+frm_dm.v_contract_ctr_cod+') and pco_deleted_at is null  ';
     qry.Prepare;
     qry.open;

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

 with frm_dm.qry,sql do
   begin
   close;
   Text:= ' select case when max(pco_id) is null then 1 ' +
          '      else (max(pco_id) + 1) end as maxID from purchase_order '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrypco_id.AsInteger = 0 then
    qrypco_id.AsInteger:=Fields[0].AsInteger;
    qryemployee_emp_cod.Value := qry_employeeemp_cod.Value;
    qrystock_sto_cod.Value    := qry_stocksto_cod.Value;
   end;

  inherited;
    qry.Close;
    qry.sql.text:= ' select sto_name, purchase_order.*,concat(''0x'',hex(pco_cod)) as CodPCO from purchase_order  ' +
                   ' left join stock on stock_sto_cod = sto_cod where pco_type = ''C''                  ' +
                   ' and stock_sto_cod in (select sto_cod from stock                                    ' +
                   ' where contract_ctr_cod ='+frm_dm.v_contract_ctr_cod+') and pco_deleted_at is null  ';
    qry.Prepare;
    qry.open;

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

procedure Tfrm_purchase_order.cxLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
   qry_product.Close;
   qry_product.Prepare;
   qry_product.Open;
end;

procedure Tfrm_purchase_order.cxLookupComboBox2PropertiesPopup(Sender: TObject);
begin
  inherited;
    qry_employee.Close;
   qry_employee.Prepare;
   qry_employee.Open;
end;

procedure Tfrm_purchase_order.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;
    lookupComboxEmployee.Text := qryfuncionario.AsString;
    lookupComboxStock.Text    := qrysto_name.AsString;
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
        with frm_dm.qry,sql do
        begin
          Close;
          SQL.Clear;
          Text:= ' update purchase_order set poc_status_reason =:Pstatus_reason, pco_status =:Pstatus ' +
                 ' where pco_cod = ' + qryCodPCO.Value;
          ParamByName('Pstatus_reason').AsString  := motCancel;
          ParamByName('Pstatus').AsString         := 'C';
          ExecSQL;
        end;

        qry.Close;
        qry.sql.text:= ' select sto_name, purchase_order.*,concat(''0x'',hex(pco_cod)) as CodPCO from purchase_order  ' +
                   ' left join stock on stock_sto_cod = sto_cod where pco_type = ''C''                  ' +
                   ' and stock_sto_cod in (select sto_cod from stock                                    ' +
                   ' where contract_ctr_cod ='+frm_dm.v_contract_ctr_cod+') and pco_deleted_at is null  ';
        qry.Prepare;
        qry.open;

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
    if qry_purchase_order_iten.Locate('purchase_order_pco_cod',qrypco_cod.Value,[loCaseInsensitive, loPartialKey]) then
     begin
      motLib:=UpperCase(InputBox('Liberação','Informe uma observação da liberação! (Não obrigatório)',motLib));

      with frm_dm.qry,sql do
      begin
        Close;
        SQL.Clear;
        Text:= ' update purchase_order set poc_status_reason =:Pstatus_reason, pco_status =:Pstatus ' +
               ' where pco_cod = ' + qryCodPCO.Value;
        ParamByName('Pstatus_reason').AsString  := motLib;
        ParamByName('Pstatus').AsString         := 'L';
        ExecSQL;
      end;

      qry.Close;
      qry.sql.text:= ' select sto_name, purchase_order.*,concat(''0x'',hex(pco_cod)) as CodPCO from purchase_order  ' +
                   ' left join stock on stock_sto_cod = sto_cod where pco_type = ''C''                  ' +
                   ' and stock_sto_cod in (select sto_cod from stock                                    ' +
                   ' where contract_ctr_cod ='+frm_dm.v_contract_ctr_cod+') and pco_deleted_at is null  ';
      qry.Prepare;
      qry.open;

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

procedure Tfrm_purchase_order.lookupComboxStockPropertiesPopup(Sender: TObject);
begin
  inherited;
   qry_stock.Close;
   qry_stock.Prepare;
   qry_stock.Open;
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

  With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   pco_cod:=Fields[0].AsString;

   Close;
   Text:='insert into purchase_order (pco_id,pco_cod,pco_status, pco_type,contract_ctr_cod) ' +
         ' select 0,'+ pco_cod + ',''A'',''C'',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry.Close;
   qry.sql.text:= ' select sto_name, purchase_order.*,concat(''0x'',hex(pco_cod)) as CodPCO from purchase_order ' +
                  ' left join stock on stock_sto_cod = sto_cod where pco_type = ''C''                 ' +
                  ' and pco_cod = ' + pco_cod + ' and pco_deleted_at is null';
   qry.Prepare;
   qry.open;

   qry.Edit;
   qrypco_dt_registration.AsDateTime:=Now;

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
With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   iten_cod:=Fields[0].AsString;

   Close;
   Text:='insert into purchase_order_iten(poi_id,poi_cod,purchase_order_pco_cod) ' +
         ' select 0,'+ iten_cod + ',' + pco_cod;
   Prepare;
   ExecSQL;
  end;

   qry_purchase_order_iten.Close;
   qry_purchase_order_iten.sql.text:= ' select purchase_order_iten.*, concat(''0x'',hex(product_pro_cod)) as pro_cod,  '+
                                      ' pro_name, concat(''0x'',hex(poi_cod)) as iten_Cod  from purchase_order_iten    '+
                                      ' left join product on pro_cod = product_pro_cod                               '+
                                      ' where purchase_order_pco_cod = ' + pco_cod;
   qry_purchase_order_iten.Prepare;
   qry_purchase_order_iten.open;

   qry_purchase_order_iten.Locate('iten_Cod',iten_cod,[]);
   qry_purchase_order_iten.Edit;
   qry_purchase_order_itenpoi_dt_registration.AsDateTime:=Now;
end;

procedure Tfrm_purchase_order.qry_purchase_order_itenAfterPost(DataSet: TDataSet);
begin
  inherited;
    qry_purchase_order_iten.Refresh;

   lookupComboxItens_Pedido.Text:='' ;
   cxTextEditQTD.Clear;
end;

procedure Tfrm_purchase_order.qry_purchase_order_itenBeforePost(DataSet: TDataSet);
begin
  inherited;
  with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(poi_id) is null then 1 ' +
          '      else (max(poi_id) + 1) end as maxID from purchase_order_iten '+
          ' where purchase_order_pco_cod = ' + pco_cod;
   Prepare;
   Open;

   if not (qry_purchase_order_iten.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qry_purchase_order_itenpoi_id.AsInteger = 0 then
    qry_purchase_order_itenpoi_id.AsInteger        := Fields[0].AsInteger;
    qry_purchase_order_itenproduct_pro_cod.Value   := qry_productpro_cod.Value;
    qry_purchase_order_itenpoi_product_quant.Value := StrToFloat(cxTextEditQTD.Text);

  end;

end;

procedure Tfrm_purchase_order.SpeedButton1Click(Sender: TObject);

begin
//-----------------------------------------------------
  inherited;

    if Application.MessageBox('Deseja imprimir o relatório selecionado ?','AVISO DE IMPRESSÃO',MB_YESNO + MB_ICONQUESTION) = ID_YES then
   begin
     frxReport_1.LoadFromStream(TReport.Read_Report(cxBarEditItem_1.EditValue, 'rep_report', frm_dm_report.qry_report));
     frxReport_1.ShowReport;
   end;


end;

procedure Tfrm_purchase_order.SpeedButton2Click(Sender: TObject);
 var
  NameReport: string;
begin
  //-----------------------------------------------------------

inherited;
 with frm_dm.qry3,sql do
   begin
    Close;
    Clear;
    Text:= 'select * from report where rep_name =:p_report';
    ParamByName('p_report').Value:=cxBarEditItem_1.EditValue;
    Prepare;
    Open;
    if (RecordCount >0) then
     begin
      Application.MessageBox('Este relatório já está cadastrada !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
      Exit
     end
     else
      begin
       NameReport :='';
       NameReport:= TcxShellComboBoxProperties(cxBarEditItem_1.Properties).Root.CurrentPath +'\'+cxBarEditItem_1.EditValue;
       TReport.Save_Report(frm_dm.qry_contractctr_id.Value,cxBarEditItem_1.EditValue, NameReport,'rep_report',frm_dm_report.qry_report);
     end;
 end;

end;
procedure Tfrm_purchase_order.SpeedButton3Click(Sender: TObject);
begin
  inherited;
    With frm_dm.qry,sql do
  begin
   close;
   text:= 'select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   iten_cod:=Fields[0].AsString;


       close;
       Text:= ' select case when max(poi_id) is null then 1 ' +
              '      else (max(poi_id) + 1) end as maxID from purchase_order_iten '+
              ' where purchase_order_pco_cod =unhex(' + QuotedStr(pco_cod)+')';
       Prepare;
       Open;

   iten_ID:=Fields[0].AsInteger;

   Close;
   Text:='insert into purchase_order_iten (poi_id, poi_cod, purchase_order_pco_cod, product_pro_cod, poi_product_quant, poi_dt_registration) ' +
         ' values (:poi_id, unhex(:poi_cod), unhex(:purchase_order_pco_cod), unhex(:product_pro_cod), :poi_product_quant, :poi_dt_registration) ';
   ParamByName('poi_id').AsInteger                := iten_ID;
   ParamByName('poi_cod').AsString                := iten_cod;
   ParamByName('purchase_order_pco_cod').AsString := pco_cod;
   ParamByName('product_pro_cod').AsString        := qry_productproCod.AsString;
//   ParamByName('poi_product_quant').AsFloat       := cxTextEditQTD.Text;
   ParamByName('poi_dt_registration').AsDateTime  := Now;
   Prepare;
   ExecSQL;
  end;

 //  ExibirItensPedido;
end;

end.
