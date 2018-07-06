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
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, dxLayoutControlAdapters, cxButtons;

type
  Tfrm_purchase_order = class(Tfrm_form_default)
    ds_purchase_order_iten: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    qry_employee: TFDQuery;
    ds_employee: TDataSource;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
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
    qry_stock: TFDQuery;
    ds_stock: TDataSource;
    Image1: TImage;
    looComboxProduto: TcxLookupComboBox;
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
    qry_productproCod: TStringField;
    qry_productpro_name: TStringField;
    qry_productpro_cod: TBytesField;
    qry_productpro_id: TLongWordField;
    qry_productcontract_ctr_cod: TBytesField;
    pupMenuPedido: TPopupMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    edtQTD: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    btnSalvar_Item: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    btnEditar_Item: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    btnCancel_Item: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    cxGrid1DBTableView1poi_id: TcxGridDBColumn;
    cxGrid1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1poi_dt_registration: TcxGridDBColumn;
    btnExcluir_Item: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    Cancelar1: TMenuItem;
    Action_purchase_order: TActionList;
    act_save_purchase_order_iten: TAction;
    act_edit_purchase_order_iten: TAction;
    act_cancel_purchase_order_iten: TAction;
    act_delete_purchase_order_iten: TAction;
    qry_purchase_order_iten: TFDQuery;
    qry_purchase_order_itenpoi_cod: TBytesField;
    qry_purchase_order_itenpurchase_order_pco_cod: TBytesField;
    qry_purchase_order_itenproduct_pro_cod: TBytesField;
    qry_purchase_order_itenpoi_id: TLongWordField;
    qry_purchase_order_itenpoi_product_quant: TBCDField;
    qry_purchase_order_itenpoi_product_quant_served: TBCDField;
    qry_purchase_order_itenpoi_deleted_at: TDateTimeField;
    qry_purchase_order_itenpoi_dt_registration: TDateTimeField;
    qry_purchase_order_itenpro_name: TStringField;
    qry_purchase_order_itenpru_name: TStringField;
    qry_purchase_order_itenpru_initials: TStringField;
    qry_purchase_order_iteniten_Cod: TStringField;
    cxGrid1DBTableView1pru_initials: TcxGridDBColumn;
    edtUnd: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    qry_productpru_name: TStringField;
    qry_productpru_initials: TStringField;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qrypco_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qrystock_sto_cod: TBytesField;
    qrypco_id: TLongWordField;
    qrypco_type: TStringField;
    qrypoc_status_reason: TStringField;
    qrypco_status: TStringField;
    qrypco_deleted_at: TDateTimeField;
    qrypco_dt_registration: TDateTimeField;
    qryCodPurchase: TStringField;
    qrysto_name: TStringField;
    qryFuncionario: TStringField;
    cxGrid_1DBTableView1pco_id: TcxGridDBColumn;
    cxGrid_1DBTableView1poc_status_reason: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_status: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_name: TcxGridDBColumn;
    cxGrid_1DBTableView1Funcionario: TcxGridDBColumn;
    qry_stocksto_name: TStringField;
    qry_stocksto_cod: TBytesField;
    qry_stocksto_id: TLongWordField;
    qry_stockcontract_ctr_cod: TBytesField;
    qry_stockenterprise_ent_cod: TBytesField;
    qry_stockcodStock: TStringField;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    qry_purchase_order_itencodProduct: TStringField;
    qry_purchase_order_itenpro_id: TLongWordField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lbAbertoClick(Sender: TObject);
    procedure lbCanceladoClick(Sender: TObject);
    procedure lbFechadoClick(Sender: TObject);
    procedure lbLiberadoClick(Sender: TObject);
    procedure lbTodosClick(Sender: TObject);
    procedure dxCancelPedClick(Sender: TObject);
    procedure dxLiberarPedClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure cxLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure lookupComboxStockPropertiesPopup(Sender: TObject);
    procedure cxLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Action_editExecute(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure cxGrid1DBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure act_save_purchase_order_itenExecute(Sender: TObject);
    procedure act_edit_purchase_order_itenExecute(Sender: TObject);
    procedure act_cancel_purchase_order_itenExecute(Sender: TObject);
    procedure act_delete_purchase_order_itenExecute(Sender: TObject);
    procedure looComboxProdutoPropertiesCloseUp(Sender: TObject);
    procedure Action_print_editExecute(Sender: TObject);
  private
       pco_cod,iten_cod:string;
       iten_ID: Integer;
  procedure filter(status:string);
  procedure limpaCache(Sender:TObject);

  public
    { Public declarations }
    procedure ExibirPedidoCompra;
    procedure ExibirEstoque;
    procedure HabiliTarButtun(Status: Boolean);
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

  if not result then
    exit;


  if (qrypco_id.AsInteger = 0) then
  begin
   if (qry_purchase_order_iten.RecordCount >0) then
    begin
      with frm_dm.qry,sql do
       begin

        Close;
        Text:= ' delete from purchase_order_iten ' +
               ' where purchase_order_pco_cod = unhex('+QuotedStr(pco_cod)+')' ;
        Prepare;
        ExecSQL;

        Close;
        Text:= ' delete from purchase_order ' +
           ' where pco_cod = unhex('+QuotedStr(pco_cod)+')' ;
        Prepare;
        ExecSQL;

       end;
    end else
     begin
       with frm_dm.qry2,sql do
        begin
         Close;
         Text:= ' delete from purchase_order ' +
           ' where pco_cod = unhex('+ QuotedStr(pco_cod)+')' ;
         Prepare;
         ExecSQL;
        end;
     end;

  end;

  ExibirPedidoCompra;

end;

procedure Tfrm_purchase_order.Action_deleteExecute(Sender: TObject);
begin

   inherited;
   if (result = false) then
     exit;

//Condição para não permitir excluir um pedido de compra que esteja diferente do status de A - Aberto
 if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
  begin
     Application.MessageBox('Só é permitido excluir um pedido de compra que esteja em A - Aberto !','AVISO DO PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     qry.CancelUpdates;
     Exit;
  end;

    if Application.MessageBox('Deseja excluir o Registro?','AVISO DE EXCLUSÃO', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrypco_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     Application.MessageBox('Pedido de compra excluído com sucesso!','AVISO DO PEDIDO DE COMPRA', MB_OK + MB_ICONINFORMATION);

    end;

    ExibirPedidoCompra;

end;

procedure Tfrm_purchase_order.Action_editExecute(Sender: TObject);
begin
  inherited;

  btnSalvar_Item.Tag := 1; // Para Inserir
  pco_cod := qryCodPurchase.AsString;
  ExibirEstoque;

  lookupComboxEmployee.Text := qryfuncionario.AsString;
  lookupComboxStock.Text    := qrysto_name.AsString;
  qry_purchase_order_iten.Close;
  qry_purchase_order_iten.Open;

   HabiliTarButtun(true);

end;
procedure Tfrm_purchase_order.Action_insertExecute(Sender: TObject);
begin
  inherited;

   btnSalvar_Item.Tag := 1; // Para Inserir
   lookupComboxEmployee.ItemIndex := -1;
   lookupComboxStock.ItemIndex    := -1;

   ExibirEstoque;
   qry_purchase_order_iten.Close;
   qry_purchase_order_iten.Open;

   HabiliTarButtun(true);

end;

procedure Tfrm_purchase_order.Action_print_editExecute(Sender: TObject);
begin
  inherited;
   //
end;

procedure Tfrm_purchase_order.Action_saveExecute(Sender: TObject);
begin

   if qry_purchase_order_iten.IsEmpty then
   begin
     Application.MessageBox('Não é possível salvar, falta incluir os produtos neste Pedido !','AVISO DO PEDIDO DE COMPRA',MB_OK + MB_ICONQUESTION);
      Exit;
   end;


  if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido alterar um pedido de compra que esteja em aberto!','AVISO DO PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     qry.CancelUpdates;
     cxTabSheet_1.Show;
     Exit;
   end;

  inherited;
  if ds.DataSet.State in [dsEdit] then
     Exit;

  if qrypco_id.AsInteger = 0 then
   begin

     with frm_dm.qry,sql do
      begin
       close;
       Text:= ' select case when max(pco_id) is null then 1 ' +
          '      else (max(pco_id) + 1) end as maxID from purchase_order '+
          ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
       Prepare;
       Open;

       qry.Edit;
       qrypco_id.AsInteger:=Fields[0].AsInteger;
       qryemployee_emp_cod.Value := qry_employeeemp_cod.Value;
       qrystock_sto_cod.Value    := qry_stocksto_cod.Value;
     end;
   end else
        begin
          qry.Edit;
          qryemployee_emp_cod.Value := qry_employeeemp_cod.Value;
          qrystock_sto_cod.Value    := qry_stocksto_cod.Value;
        end;
  qry.Post;
  qry.ApplyUpdates(0);
  ExibirPedidoCompra;

end;

procedure Tfrm_purchase_order.act_cancel_purchase_order_itenExecute(Sender: TObject);
begin
  btnSalvar_Item.Tag := 1;
  looComboxProduto.Clear;
  edtQTD.Clear;
  edtUnd.Clear;
  cxGrid1.SetFocus;
  HabiliTarButtun(true);

end;

procedure Tfrm_purchase_order.act_delete_purchase_order_itenExecute(Sender: TObject);
begin
  //--Condição para só deixar Excluir produtos no Pedido em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Excluir), produtos em pedidos de compra que estejam em abertos!','AVISO DO PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     edtUnd.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;

  if Application.MessageBox('Deseja excluir este produto ?','AVISO DE EXCLUSÃO',MB_YESNO+MB_ICONQUESTION)=mrYes then
   begin
     with frm_dm.qry,sql do
       begin
       Close;      //--SQL para excluir um produto do pedido de compra----
       Text:= 'Delete from purchase_order_iten where poi_cod =unhex(:poi_cod)';
       ParamByName('poi_cod').AsString := qry_purchase_order_iteniten_Cod.AsString;
       Prepare;
       ExecSQL;

       Application.MessageBox('Produto excluído com sucesso!','AVISO DE EXCLUSÃO', MB_OK + MB_ICONINFORMATION);
     end;
   end;

   btnSalvar_Item.Tag :=1;
   qry_purchase_order_iten.Close;
   qry_purchase_order_iten.Open;
   HabiliTarButtun(true);

end;

procedure Tfrm_purchase_order.act_edit_purchase_order_itenExecute(Sender: TObject);
begin
    //--Condição para só deixar Alterar produtos no Pedido em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos em pedidos de compra que estejam em abertos!','AVISO DO PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;

  btnSalvar_Item.Tag := 2; ////button com Tag = 2 -- condição onde sei que estou alterando um produto do pedido----
  looComboxProduto.Text := qry_purchase_order_itenpro_name.AsString;
  edtUnd.Text           := qry_purchase_order_itenpru_initials.AsString;
  edtQTD.Value          := qry_purchase_order_itenpoi_product_quant.AsFloat;
  edtQTD.SetFocus;
  HabiliTarButtun(true);
end;

procedure Tfrm_purchase_order.act_save_purchase_order_itenExecute(Sender: TObject);
begin
  //--Condição para só deixar inserir ou alterar produtos no Pedido em Status de Aberto ------

   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos em pedidos de compra que estejam em abertos!','AVISO DO PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;
       //--Condição para não deixar inserir com campos em branco (vazio)------
   if (Trim(looComboxProduto.Text)<>'') and (Trim(edtQTD.Text)<>'') then
    begin
     if (btnSalvar_Item.Tag = 1) then  //button com Tag = 1 -- condição onde sei que estou inserindo----
      begin
        With frm_dm.qry,sql do
        begin
         close;   //SQL para obter o Codigo ID em Hex-----
         text:= 'select hex(uuid_to_bin(uuid()))';
         prepare;
         open;

         iten_cod:=Fields[0].AsString;


             close;  // SQL para Obter o proximo ID ta tabela-----
             Text:= ' select case when max(poi_id) is null then 1 ' +
                    '      else (max(poi_id) + 1) end as maxID from purchase_order_iten '+
                    ' where purchase_order_pco_cod =unhex('+QuotedStr(pco_cod)+')';
             Prepare;
             Open;

         iten_ID:=Fields[0].AsInteger;

         Close;   //SQL para Inserir o produto do Pedido de Compra------
         Text:='insert into purchase_order_iten (poi_id, poi_cod, purchase_order_pco_cod, product_pro_cod, poi_product_quant, poi_dt_registration) ' +
               ' values (:poi_id, unhex(:poi_cod), unhex(:purchase_order_pco_cod), unhex(:product_pro_cod), :poi_product_quant, :poi_dt_registration) ';
         ParamByName('poi_id').AsInteger                := iten_ID;
         ParamByName('poi_cod').AsString                := iten_cod;
         ParamByName('purchase_order_pco_cod').AsString := pco_cod;
         ParamByName('product_pro_cod').AsString        := qry_productproCod.AsString;
         ParamByName('poi_product_quant').AsFloat       := edtQTD.Value;
         ParamByName('poi_dt_registration').AsDateTime  := Now;
         Prepare;
         ExecSQL;
        end;
      end else if (btnSalvar_Item.Tag = 2) then   //button com Tag = 2 -- condição onde sei que estou Alterando----
               begin
                qry_purchase_order_iten.Edit;
                qry_purchase_order_itenproduct_pro_cod.Value     := qry_productpro_cod.Value;
                qry_purchase_order_itenpoi_product_quant.AsFloat := edtQTD.Value;
                qry_purchase_order_iten.Post;

               end;




         qry_purchase_order_iten.Close;
         qry_purchase_order_iten.Open;

         looComboxProduto.Clear;
         edtQTD.Clear;
         edtUnd.Clear;
         cxGrid1.SetFocus;
         btnSalvar_Item.Tag := 1;
         HabiliTarButtun(true);
    end else
    begin
      application.MessageBox('Para inserir um produto, é necessário informar um "Produto e sua Quantidade" !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION)
    end;

end;

procedure Tfrm_purchase_order.cxGrid1DBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  inherited;
  //
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

procedure Tfrm_purchase_order.dsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
 if (qrypco_status.AsString = 'C') or (qrypco_status.AsString = 'F') then
   dxCancelPed.Enabled:=false
   else
    dxCancelPed.Enabled:=True;

  dxLiberarPed.Enabled:=qrypco_status.AsString = 'A';
end;

procedure Tfrm_purchase_order.dxCancelPedClick(Sender: TObject);
var
motCancel:string;
begin
  inherited;
  if (qry.RecordCount >0) then
   begin
    if Application.MessageBox('Deseja cancelar este Pedido de Compra ?','PEDIDO DE COMPRA',MB_YESNO + MB_ICONQUESTION) = mrYes  then
     begin
      motCancel:=UpperCase(InputBox('Cancelamento','Qual o motivo do cancelamento? (mínimo 20 caracteres)',motCancel));
      if Length(trim(motCancel)) >= 20 then
       begin
        with frm_dm.qry,sql do
        begin
          Close;
          SQL.Clear;
          Text:= ' update purchase_order set poc_status_reason =:Pstatus_reason, pco_status =:Pstatus ' +
                 ' where pco_cod = unhex('+QuotedStr(qryCodPurchase.AsString)+')';
          ParamByName('Pstatus_reason').AsString  := motCancel;
          ParamByName('Pstatus').AsString         := 'C';
          ExecSQL;
        end;

         ExibirPedidoCompra;

       end
       else
       Application.MessageBox('Motivo do cancelamento menor que 20 caracteres!','PEDIDO DE COMPRA',MB_OK + MB_ICONWARNING);
     end;
   end
   else
    Application.MessageBox('Não existe nenhum pediddo para ser Cancelado !','PEDIDO DE COMPRA',MB_OK + MB_ICONQUESTION);

end;

procedure Tfrm_purchase_order.dxLiberarPedClick(Sender: TObject);
var
motLib:string;
begin
  inherited;
  if Application.MessageBox('Deseja liberar este Pedido de Compra ?','PEDIDO DE COMPRA',MB_YESNO + MB_ICONQUESTION) = mrYes  then
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
               ' where pco_cod = unhex('+QuotedStr(qryCodPurchase.AsString)+')';
        ParamByName('Pstatus_reason').AsString  := motLib;
        ParamByName('Pstatus').AsString         := 'L';
        ExecSQL;
      end;

       ExibirPedidoCompra;

     end
     //Caso o Pedido esteja vasia sem produtos não podera ser liberado
     else
     Application.MessageBox('Não existe nenhum produto neste Pedido de Compra, portanto ele não pode ser liberado !','AVISO DO SISTEMA',MB_OK+MB_ICONQUESTION);
   end;
end;

procedure Tfrm_purchase_order.edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key =13 then
    btnSalvar_Item.Click;
end;

procedure Tfrm_purchase_order.Excluir2Click(Sender: TObject);
begin
  inherited;

  //

end;

procedure Tfrm_purchase_order.ExibirEstoque;
begin
  qry_stock.Close;
  qry_stock.SQL.Text:= ' select st.sto_name, st.sto_cod, st.sto_id,st.contract_ctr_cod,st.enterprise_ent_cod, hex(st.sto_cod) as codStock  from stock st   ' +
                       ' left join contract co on co.ctr_cod = st.contract_ctr_cod                                                                         ' +
                       ' left join enterprise en on en.ent_cod = st.enterprise_ent_cod                                                                     ' +
                       ' where st.sto_status = ''A'' and st.contract_ctr_cod =unhex(:ctr_cod)                                                                ' +
                       ' and st.enterprise_ent_cod in (select enterprise_ent_cod                                                                           ' +
                       ' from contract_user_enterprise where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod)) ' ;
  qry_stock.ParamByname('ctr_cod').AsString     := frm_dm.v_contract_ctr_cod;
  qry_stock.ParamByname('ctr_usr_cod').AsString := frm_dm.v_ctr_usr_cod;
  qry_stock.Prepare;
  qry_stock.Open;

end;

procedure Tfrm_purchase_order.ExibirPedidoCompra;
begin
   qry.Close;
   qry.SQL.Text:= ' select pur.*, hex(pco_cod)as CodPurchase, sto_name from purchase_order as pur  ' +
                  ' left join stock as sto on sto.sto_cod = pur.stock_sto_cod                      ' +
                  ' where pur.pco_type = ''C'' and pur.contract_ctr_cod =unhex(:ctr_cod)             ' +
                  ' and sto.enterprise_ent_cod in (select enterprise_ent_cod                       ' +
                  ' from contract_user_enterprise                                                  ' +
                  ' where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))                          ' +
                  ' and pco_deleted_at is null  ' ;
  qry.ParamByName('ctr_cod').AsString     :=  frm_dm.v_contract_ctr_cod;
  qry.ParamByName('ctr_usr_cod').AsString :=  frm_dm.v_ctr_usr_cod;
  qry.Prepare;
  qry.Open;
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

  ExibirPedidoCompra

end;

procedure Tfrm_purchase_order.HabiliTarButtun(Status: Boolean);
begin
   btnSalvar_Item.Enabled  := Status ;
   if (qry_purchase_order_iten.IsEmpty) then
    begin
      btnEditar_Item.Enabled  := not Status;
      btnExcluir_Item.Enabled := not Status;
      btnCancel_Item.Enabled  := not Status;
    end else
      begin
       btnCancel_Item.Enabled  := not Status;
       btnEditar_Item.Enabled  := Status;
       btnExcluir_Item.Enabled := not Status;
      end;
   if btnSalvar_Item.tag = 2 then
    begin
     btnEditar_Item.Enabled := not Status;
     btnCancel_Item.Enabled  := Status;
     btnExcluir_Item.Enabled := not Status;
    end;
    if ((qry_purchase_order_iten.RecordCount >0) and (btnSalvar_Item.tag = 1)) then
     begin
      btnCancel_Item.Enabled  := not Status;
      btnExcluir_Item.Enabled := Status;
     end;

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
end;

procedure Tfrm_purchase_order.looComboxProdutoPropertiesCloseUp(Sender: TObject);
begin
  edtUnd.Text := qry_productpru_initials.AsString;
end;

procedure Tfrm_purchase_order.lookupComboxStockPropertiesPopup(Sender: TObject);
begin
  inherited;
   qry_stock.Close;
   qry_stock.Prepare;
   qry_stock.Open;
end;

procedure Tfrm_purchase_order.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 //SQL para obter Número do Cod ID em Hex--------
  With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   pco_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela purchase_order inserindo os primeiros registros obrigatórios----
   Text:='insert into purchase_order (pco_id,pco_cod,pco_status, pco_type,contract_ctr_cod,pco_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(pco_cod)+'),''A'',''C'',unhex(' +QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

    qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
    qry.sql.text:=  ' select pur.*, hex(pco_cod)as CodPurchase, sto_name from purchase_order as pur   ' +
                   ' left join stock as sto on sto.sto_cod = pur.stock_sto_cod                       ' +
                   ' where pur.pco_type = ''C'' and pur.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')' +
                   ' and pco_cod = unhex('+ QuotedStr(pco_cod)+') and pur.pco_deleted_at is null';
   qry.Prepare;
   qry.open;
   qry.Edit;

 end;

end.
