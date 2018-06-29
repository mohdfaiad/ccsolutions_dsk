unit ufrm_stock_transfer;

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
  FireDAC.Stan.Async, FireDAC.DApt, cxSpinEdit, cxDBEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FireDAC.Comp.DataSet, QImport3Wizard,
  QExport4Dialog, ACBrBase, ACBrEnterTab, FireDAC.Comp.Client,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar,
  cxBarEditItem, cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGrid, cxPC, cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit, Vcl.Grids,
  Vcl.DBGrids, cxCurrencyEdit, cxButtonEdit, frxClass, ACBrSocket, ACBrCEP,
  frxDBSet, Vcl.StdCtrls, cxButtons, dxLayoutControlAdapters;

type
  Tfrm_stock_transfer = class(Tfrm_form_default)
    edtMotivo: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    ds_transfer_iten: TDataSource;
    qry_stock_iten: TFDQuery;
    ConfirmarTransfernciaSaida1: TMenuItem;
    CancelarTransferncia1: TMenuItem;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    qry_stock_exit: TFDQuery;
    ds_stock_exit: TDataSource;
    qry_employee: TFDQuery;
    ds_employee: TDataSource;
    ConfirmarTransfernciaEntrada1: TMenuItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem10: TdxLayoutItem;
    ds_purchase_iten: TDataSource;
    frxDBD_Stock_Transfer: TfrxDBDataset;
    frxDBD_Tranfer_Itens: TfrxDBDataset;
    qryprt_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_id_request: TBytesField;
    qryemployee_emp_id_agent: TBytesField;
    qryemployee_emp_id_lecturer: TBytesField;
    qrystock_sto_id_exit: TBytesField;
    qrystock_sto_id_entrance: TBytesField;
    qrypurchase_order_pco_id: TBytesField;
    qryprt_id: TLongWordField;
    qryprt_status: TStringField;
    qryprt_status_reason: TStringField;
    qryprt_deleted_at: TDateTimeField;
    qryprt_dt_registration: TDateTimeField;
    looComboxNumeroRequisicao: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    ds_purchase_order: TDataSource;
    qry_purchase_order: TFDQuery;
    qry_purchase_orderpco_cod: TBytesField;
    qry_purchase_ordercontract_ctr_cod: TBytesField;
    qry_purchase_orderemployee_emp_cod: TBytesField;
    qry_purchase_orderstock_sto_cod: TBytesField;
    qry_purchase_orderpco_id: TLongWordField;
    qry_purchase_orderpco_type: TStringField;
    qry_purchase_orderpoc_status_reason: TStringField;
    qry_purchase_orderpco_status: TStringField;
    qry_purchase_orderpco_deleted_at: TDateTimeField;
    qry_purchase_orderpco_dt_registration: TDateTimeField;
    qry_purchase_orderCodPurchase: TStringField;
    qry_employeeCodEmployee: TStringField;
    qry_employeeCodRecord: TStringField;
    qry_employeeemp_cod: TBytesField;
    qry_employeerecord_rec_cod: TBytesField;
    qry_employeeemp_type: TStringField;
    qry_employeeemp_status: TStringField;
    qry_employeerec_name: TStringField;
    qry_employeecontract_ctr_cod: TBytesField;
    qry_purchase_orderCodEmployee: TStringField;
    looComboxEstoqueSaida: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    qry_stock_exitsto_name: TStringField;
    qry_stock_exitsto_cod: TBytesField;
    qry_stock_exitsto_id: TLongWordField;
    qry_stock_exitcontract_ctr_cod: TBytesField;
    qry_stock_exitenterprise_ent_cod: TBytesField;
    qry_stock_exitcodStock: TStringField;
    qry_purchase_orderCodStock: TStringField;
    looComboxEmployee_emp_ID_Agent: TcxLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    looComboxEmployee_Emp_ID_Lecturer: TcxLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    qry_purchase_order_iten: TFDQuery;
    qry_purchase_order_itenpoi_cod: TBytesField;
    qry_purchase_order_itenpurchase_order_pco_cod: TBytesField;
    qry_purchase_order_itenproduct_pro_cod: TBytesField;
    qry_purchase_order_itenpoi_id: TLongWordField;
    qry_purchase_order_itenpoi_product_quant: TBCDField;
    qry_purchase_order_itenpoi_product_quant_served: TBCDField;
    qry_purchase_order_itenpoi_deleted_at: TDateTimeField;
    qry_purchase_order_itenpoi_dt_registration: TDateTimeField;
    qry_purchase_order_itenCodItens: TStringField;
    qry_purchase_order_itenpro_name: TStringField;
    qry_purchase_order_itenpru_initials: TStringField;
    qry_purchase_order_itenCodProduct: TStringField;
    qry_product_transfer_iten: TFDQuery;
    qry_product_transfer_itenpti_cod: TBytesField;
    qry_product_transfer_itenproduct_transfer_prt_cod: TBytesField;
    qry_product_transfer_itenproduct_pro_cod: TBytesField;
    qry_product_transfer_itenpti_id: TLongWordField;
    qry_product_transfer_itenpti_product_quant: TBCDField;
    qry_product_transfer_itenpti_deleted_at: TDateTimeField;
    qry_product_transfer_itenpti_dt_registration: TDateTimeField;
    qry_product_transfer_itenCodTrnsfItens: TStringField;
    qry_product_transfer_itenCodTransf: TStringField;
    qry_product_transfer_itenCodProduct: TStringField;
    cxGrid1DBTableView1pti_id: TcxGridDBColumn;
    cxGrid1DBTableView1pti_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1pti_dt_registration: TcxGridDBColumn;
    qry_product_transfer_itenpro_name: TStringField;
    cxGrid1DBTableView1pro_name: TcxGridDBColumn;
    qry_product_transfer_itenpru_initials: TStringField;
    cxGrid1DBTableView1pru_initials: TcxGridDBColumn;
    ds_stock_iten: TDataSource;
    qry_purchase_ordersto_name: TStringField;
    qry_purchase_orderFuncionario: TStringField;
    edtSolicitante: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtEst_Entrada: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1prt_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_status: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_status_reason: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_dt_registration: TcxGridDBColumn;
    qryCodTransf: TStringField;
    qryStockSaida: TStringField;
    qryStockEntra: TStringField;
    cxGrid_1DBTableView1StockSaida: TcxGridDBColumn;
    cxGrid_1DBTableView1StockEntra: TcxGridDBColumn;
    qryStatusPedido: TStringField;
    qrypoc_status_reason: TStringField;
    qryID_Pedido: TLongWordField;
    cxGrid_1DBTableView1StatusPedido: TcxGridDBColumn;
    cxGrid_1DBTableView1poc_status_reason: TcxGridDBColumn;
    cxGrid_1DBTableView1ID_Pedido: TcxGridDBColumn;
    qry_stock_itensti_cod: TBytesField;
    qry_stock_itenstock_sto_cod: TBytesField;
    qry_stock_itenproduct_pro_cod: TBytesField;
    qry_stock_itenproduct_department_prd_cod: TBytesField;
    qry_stock_itenproduct_sector_prs_cod: TBytesField;
    qry_stock_itensti_id: TLongWordField;
    qry_stock_itensti_product_quant: TBCDField;
    qry_stock_itensti_product_quant_min: TBCDField;
    qry_stock_itensti_deleted_at: TDateTimeField;
    qry_stock_itensti_dt_registration: TDateTimeField;
    qry_stock_itenpro_name: TStringField;
    qry_stock_itenpru_name: TStringField;
    qry_stock_itenpru_initials: TStringField;
    qry_stock_itenCodStock: TStringField;
    qry_stock_itenCodProduct: TStringField;
    qryCodStockEntrance: TStringField;
    looComboxProduto: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    edtUND: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    edtQTD: TcxCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    btnSalvar_Item: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    btnEditar_Item: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    btnCancel_Item: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    btnExcluir_Item: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    pupMenuTransf: TPopupMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    Cancelar1: TMenuItem;
    Action_Transf_itens: TActionList;
    act_save_transf_itens: TAction;
    act_edit_transf_itens: TAction;
    act_cancel_transf_itens: TAction;
    act_delete_transf_itens: TAction;
    qry_productsti_cod: TBytesField;
    qry_productstock_sto_cod: TBytesField;
    qry_productproduct_pro_cod: TBytesField;
    qry_productproduct_department_prd_cod: TBytesField;
    qry_productproduct_sector_prs_cod: TBytesField;
    qry_productsti_id: TLongWordField;
    qry_productsti_product_quant: TBCDField;
    qry_productsti_product_quant_min: TBCDField;
    qry_productsti_deleted_at: TDateTimeField;
    qry_productsti_dt_registration: TDateTimeField;
    qry_productpro_name: TStringField;
    qry_productpru_name: TStringField;
    qry_productpru_initials: TStringField;
    qry_productCodStock: TStringField;
    qry_productCodProduct: TStringField;
    qryCodPurchase: TStringField;
    qry_product_transfer_itenpoi_product_quant: TBCDField;
    qry_product_transfer_itenpoi_product_quant_served: TBCDField;
    cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1poi_product_quant_served: TcxGridDBColumn;
    qry_product_transfer_itenprt_cod: TBytesField;
    edtStatusPedido: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qryemployeeLiberacao: TStringField;
    qryemployeeConferente: TStringField;
    cxGrid_1DBTableView1employeeLiberacao: TcxGridDBColumn;
    cxGrid_1DBTableView1employeeConferente: TcxGridDBColumn;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure ConfirmarTransfernciaSaida1Click(Sender: TObject);
    procedure CancelarTransferncia1Click(Sender: TObject);
    procedure PopupMenu_1Popup(Sender: TObject);
    procedure ConfirmarTransfernciaEntrada1Click(Sender: TObject);
    procedure qry_product_transfer_itenAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure cxTabSheet_3Show(Sender: TObject);
    procedure looComboxEstoqueSaidaPropertiesCloseUp(Sender: TObject);
    procedure looComboxNumeroRequisicaoPropertiesCloseUp(Sender: TObject);
    procedure looComboxEmployee_emp_ID_AgentPropertiesCloseUp(Sender: TObject);
    procedure looComboxEmployee_Emp_ID_LecturerPropertiesCloseUp(Sender: TObject);
    procedure act_save_transf_itensExecute(Sender: TObject);
    procedure act_edit_transf_itensExecute(Sender: TObject);
    procedure act_cancel_transf_itensExecute(Sender: TObject);
    procedure act_delete_transf_itensExecute(Sender: TObject);
    procedure edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure looComboxProdutoPropertiesCloseUp(Sender: TObject);
    procedure cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
     prt_cod, pti_cod,sti_cod: string;
     pti_id, sti_id: Integer;

  public
    { Public declarations }
   procedure limpaCache(Sender:TObject);
   procedure ExibirRegistros;
   procedure ExibirItensTransferencia;
   procedure ExibirRequisicao;

   procedure ExibirEstoque;
   procedure HabiliTarButtun(Status: Boolean);
  end;

var
  frm_stock_transfer: Tfrm_stock_transfer;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock_transfer.Action_cancelExecute(Sender: TObject);
begin
  inherited;
    if not result then
    exit;


  if (qryprt_id.AsInteger = 0) then
  begin
   if (qry_product_transfer_iten.RecordCount >0) then
    begin
      with frm_dm.qry,sql do
       begin

        Close;
        Text:= ' delete from product_transfer_iten ' +
               ' where product_transfer_prt_cod = unhex('+QuotedStr(prt_cod)+')' ;
        Prepare;
        ExecSQL;

        Close;
        Text:= ' delete from product_transfer ' +
           ' where prt_cod = unhex('+QuotedStr(prt_cod)+')' ;
        Prepare;
        ExecSQL;

       end;
    end else
     begin
       with frm_dm.qry2,sql do
        begin
         Close;
         Text:= ' delete from product_transfer ' +
           ' where prt_cod = unhex('+ QuotedStr(prt_cod)+')' ;
         Prepare;
         ExecSQL;
        end;
     end;

  end;

  ExibirRegistros;

end;

procedure Tfrm_stock_transfer.Action_deleteExecute(Sender: TObject);
begin
//
// //Condição para não permitir excluir transferëncia que esteja diferente do status de A - Aberto
//  if (Trim(qryprt_status.AsString) <> 'A') or (Trim(qryprt_status.AsString) ='') then
//  // if (qryprt_status.OldValue  <> 'A') and ((qryprt_status.Value  <> 'A') or (qryprt_status.Value  = ''))  then
//  begin
//     Application.MessageBox('Só é permitido excluir uma transferencia que esteja em A - Aberto !','AVISO DE EXCLUSÃO DE TRANSFERENCIA', MB_ICONINFORMATION + MB_OK);
//     qry.CancelUpdates;
//     qry_product_transfer_iten.CancelUpdates;
//     Exit;
//
//  end;
//
// //Caso a transferëncia esteja no status de aberto poderar ser excluida
// if Application.MessageBox('Tem certeza que deseja excluir esta transferëncia ? ','AVISO DE EXCLUSÃO DE TRANSFERENCIA',MB_YESNO + MB_ICONQUESTION) = mrYes then
//   begin
//    qry_product_transfer_iten.First;
//    while not qry_product_transfer_iten.Eof do
//     begin
//       qry_product_transfer_iten.Delete;
//     end;
//
//     qry_product_transfer_iten.ApplyUpdates(0);
//
//     inherited;
//
//   end;
end;

procedure Tfrm_stock_transfer.Action_editExecute(Sender: TObject);
begin
  inherited;
   self.Tag := 2;
   prt_cod:= qryCodTransf.AsString;

   ExibirRequisicao;
   ExibirItensTransferencia;

   looComboxNumeroRequisicao.Text := qry_purchase_orderpco_id.AsString;
   edtSolicitante.Text        := qry_purchase_orderFuncionario.AsString;
   edtEst_Entrada.Text        := qry_purchase_ordersto_name.AsString;
   looComboxEstoqueSaida.Text := qryStockSaida.AsString;

   looComboxEmployee_emp_ID_Agent.ItemIndex :=-1;
   qry_employee.Locate('CodEmployee',qryemployee_emp_id_agent.AsString,[loCaseInsensitive, loPartialKey]);
   looComboxEmployee_emp_ID_Agent.Text := qry_employeerec_name.AsString;

   looComboxEmployee_Emp_ID_Lecturer.ItemIndex :=-1;
   qry_employee.Locate('CodEmployee',qryemployee_emp_id_lecturer.AsString,[loCaseInsensitive, loPartialKey]);
   looComboxEmployee_Emp_ID_Lecturer.Text := qry_employeerec_name.AsString;



   looComboxEstoqueSaida.Enabled := true;

end;

procedure Tfrm_stock_transfer.Action_insertExecute(Sender: TObject);
begin
  inherited;
  self.Tag := 1;
  ExibirRequisicao;
  looComboxEstoqueSaida.Enabled := true;

  looComboxNumeroRequisicao.ItemIndex := -1;
  edtSolicitante.Clear;
  edtEst_Entrada.Clear;
  looComboxEstoqueSaida.ItemIndex := -1;
  looComboxEmployee_emp_ID_Agent.ItemIndex := -1;
  looComboxEmployee_Emp_ID_Lecturer.ItemIndex := -1;

end;

procedure Tfrm_stock_transfer.Action_saveExecute(Sender: TObject);
var
fecha:Boolean;
begin
  //--Condição para só deixar alterar Entrada no Estoque em Status de Aberto ------
   if (qry_purchase_orderpco_status.AsString  <> 'L') or (qryprt_status.AsString  <> 'A')  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), Transferência com Status em Abertos!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     exit;
   end;

//Variavel para analizar se todos os produtos da requisição já foram atendido
 fecha:=True;

  inherited;
  if ds.DataSet.State in [dsEdit] then
     Exit;

  if qryprt_id.AsInteger = 0 then
   begin

     with frm_dm.qry,sql do
      begin
       close;
       Text:= ' select case when max(prt_id) is null then 1 ' +
          '      else (max(prt_id) + 1) end as maxID from product_transfer '+
          ' where contract_ctr_cod =unhex(' +QuotedStr(frm_dm.v_contract_ctr_cod)+')';
       Prepare;
       Open;

       qry.Edit;
       qryprt_id.AsInteger:=Fields[0].AsInteger;
       qrystock_sto_id_entrance.Value := qry_purchase_orderstock_sto_cod.Value;
       qrystock_sto_id_exit.Value     := qry_stock_exitsto_cod.Value;
       qrypurchase_order_pco_id.Value := qry_purchase_orderpco_cod.Value;
       qry.Post;
       qry.ApplyUpdates(0);
     end;
   end else
        begin
          qry.Edit;
          qrystock_sto_id_entrance.Value := qry_purchase_orderstock_sto_cod.Value;
          qrystock_sto_id_exit.Value     := qry_stock_exitsto_cod.Value;
          qrypurchase_order_pco_id.Value := qry_purchase_orderpco_cod.Value;
          qry.Post;
          qry.ApplyUpdates(0);
        end;

  qry_purchase_order_iten.Close;
  qry_purchase_order_iten.Open;
  qry_product_transfer_iten.First;
  while not qry_product_transfer_iten.Eof do
   begin
      qry_purchase_order_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]);
      qry_purchase_order_iten.Edit;
      qry_purchase_order_itenpoi_product_quant_served.AsFloat := qry_purchase_order_itenpoi_product_quant_served.AsFloat + qry_product_transfer_itenpti_product_quant.AsFloat;
      qry_purchase_order_iten.Post;

      qry_product_transfer_iten.Next;
   end;

  qry_purchase_order_iten.First;
   while not qry_purchase_order_iten.Eof do
    begin
      if (qry_purchase_order_itenpoi_product_quant_served.AsFloat < qry_purchase_order_itenpoi_product_quant.AsFloat) then
       begin
         fecha := False;
       end;
       qry_purchase_order_iten.Next;
    end;

   if fecha then
    begin
      qry_purchase_order.Edit;
      qry_purchase_orderpco_status.AsString := 'F';
      qry_purchase_order.Post;
    end;

  ExibirRegistros;

end;

procedure Tfrm_stock_transfer.act_cancel_transf_itensExecute(Sender: TObject);
begin
  inherited;
   btnSalvar_Item.Tag := 1;
   looComboxProduto.Clear;
   edtQTD.Clear;
   edtUND.Clear;
   cxGrid1.SetFocus;
   HabiliTarButtun(true);
end;

procedure Tfrm_stock_transfer.act_delete_transf_itensExecute(Sender: TObject);
begin
  inherited;
    //--Condição para só deixar Excluir produtos no Pedido em Status de Aberto ------
   if (qryprt_status.OldValue  <> 'A') and ((qryprt_status.Value  <> 'A') or (qryprt_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Excluir), produtos em transferência que esteja em aberto!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     edtUND.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;

  if Application.MessageBox('Deseja excluir este produto ?','AVISO DE EXCLUSÃO',MB_YESNO+MB_ICONQUESTION)=mrYes then
   begin
     with frm_dm.qry,sql do
       begin
       Close;      //--SQL para excluir um produto do pedido de compra----
       Text:= 'Delete from product_transfer_iten where pti_cod =unhex(:pti_cod)';
       ParamByName('pti_cod').AsString := qry_product_transfer_itenCodTrnsfItens.AsString;
       Prepare;
       ExecSQL;

       Application.MessageBox('Produto excluído com sucesso!','AVISO DE EXCLUSÃO', MB_OK + MB_ICONINFORMATION);
     end;
   end;

   btnSalvar_Item.Tag :=1;
   qry_product_transfer_iten.Close;
   qry_product_transfer_iten.Open;
   HabiliTarButtun(true);
end;

procedure Tfrm_stock_transfer.act_edit_transf_itensExecute(Sender: TObject);
begin
  inherited;
     //--Condição para só deixar Alterar produtos na transferencia com Status de Aberto ------
   if (qryprt_status.OldValue  <> 'A') and ((qryprt_status.Value  <> 'A') or (qryprt_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos com status em aberto!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     edtUND.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;

  btnSalvar_Item.Tag := 2; ////button com Tag = 2 -- condição onde sei que estou alterando um produto do pedido----
  looComboxProduto.Text := qry_product_transfer_itenpro_name.AsString;
  edtUnd.Text           := qry_product_transfer_itenpru_initials.AsString;
  edtQTD.Value          := qry_product_transfer_itenpti_product_quant.AsFloat;
  edtQTD.SetFocus;
  HabiliTarButtun(true);
end;

procedure Tfrm_stock_transfer.act_save_transf_itensExecute(Sender: TObject);
begin
    //--Condição para só deixar inserir ou alterar produtos em Transferencia com Status de Aberto ------

    if (qry_purchase_orderpco_status.AsString  <> 'L') or (qryprt_status.AsString  <> 'A')  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos em transferência que estejam em abertos!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtUND.Clear;
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

         pti_cod:=Fields[0].AsString;


             close;  // SQL para Obter o proximo ID ta tabela-----
             Text:= ' select case when max(pti_id) is null then 1 ' +
                    '      else (max(pti_id) + 1) end as maxID from product_transfer_iten '+
                    ' where product_transfer_prt_cod =unhex('+QuotedStr(prt_cod)+')';
             Prepare;
             Open;

         pti_id:=Fields[0].AsInteger;

         Close;   //SQL para Inserir o produto do Pedido de Compra------
         Text:='insert into product_transfer_iten (pti_id, pti_cod, product_transfer_prt_cod, product_pro_cod, pti_product_quant, pti_dt_registration)   ' +
               ' values (:pti_id, unhex(:pti_cod), unhex(:product_transfer_prt_cod), unhex(:product_pro_cod), :pti_product_quant, :pti_dt_registration) ';
         ParamByName('pti_id').AsInteger                := pti_id;
         ParamByName('pti_cod').AsString                := pti_cod;
         ParamByName('product_transfer_prt_cod').AsString := prt_cod;
         ParamByName('product_pro_cod').AsString        := qry_productCodProduct.AsString;
         ParamByName('pti_product_quant').AsFloat       := edtQTD.Value;
         ParamByName('pti_dt_registration').AsDateTime  := Now;
         Prepare;
         ExecSQL;
        end;
      end else if (btnSalvar_Item.Tag = 2) then   //button com Tag = 2 -- condição onde sei que estou Alterando----
               begin
                with frm_dm.qry,sql do
                 begin
                   Close;
                   Text := 'Update product_transfer_iten set product_pro_cod =unhex(:pro_cod), pti_product_quant =:QTD '+
                           'Where pti_cod =unhex(:pti_cod)';
                   ParamByName('pro_cod').AsString := qry_product_transfer_itenCodProduct.AsString;
                   ParamByName('QTD').AsFloat      := edtQTD.Value;
                   ParamByName('pti_cod').AsString := qry_product_transfer_itenCodTrnsfItens.AsString;
                   Prepare;
                   ExecSQL;
                 end;

               end;


         ExibirItensTransferencia;

         looComboxProduto.Clear;
         edtQTD.Clear;
         edtUnd.Clear;
         cxGrid1.SetFocus;
         btnSalvar_Item.Tag := 1;
         HabiliTarButtun(true);
    end else
    begin
      application.MessageBox('Para inserir um registro, é necessário informar um "Produto e sua Quantidade" !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION)
    end;
end;

procedure Tfrm_stock_transfer.CancelarTransferncia1Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja cancelar a transferência', 'Entrada',
    MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    // Caso a transferência esteja em aberto, o sistema apenas marca como cancelada
    if qryprt_status.AsString = 'A' then
    begin
      qry.Edit;
      qryprt_status.AsString := 'C';
      qry.Post;

    end;

    // Caso a transferência esteja in transit, localiza os produtos que foi dado baixa
    // e dá entrada novamente
    if qryprt_status.AsString = 'T' then
    begin
       qry_stock_iten.Close;
       qry_stock_iten.ParamByName('STO_COD').Value := qrystock_sto_id_exit.Value;
       qry_stock_iten.Prepare;
       qry_stock_iten.Open;

       qry_product_transfer_iten.Close;
       qry_product_transfer_iten.Open;

      qry_product_transfer_iten.First;
      while not qry_product_transfer_iten.Eof do
      begin
        qry_stock_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat + qry_product_transfer_itenpti_product_quant.AsFloat;
        qry_stock_iten.Post;
        qry_product_transfer_iten.Next;
      end;


    end;

    if qryprt_status.AsString = 'E' then
    begin
      // Status E - Efetivado Quer dizer que já foi confirmado a saída e a entrada
      // então precissa  fazer o processo de inverso, ou seja dá entrada no estoque
      // que saiu e da saída no estoque em que entrou

       qry_stock_iten.Close;
       qry_stock_iten.ParamByName('STO_COD').Value := qrystock_sto_id_entrance.Value;
       qry_stock_iten.Prepare;
       qry_stock_iten.Open;

       qry_product_transfer_iten.Close;
       qry_product_transfer_iten.Open;

      qry_product_transfer_iten.First;
      while not qry_product_transfer_iten.Eof do
      begin
        qry_stock_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat - qry_product_transfer_itenpti_product_quant.AsFloat;
        qry_stock_iten.Post;
        qry_product_transfer_iten.Next;
      end;

      qry_stock_iten.Close;
      qry_stock_iten.ParamByName('STO_COD').Value := qrystock_sto_id_exit.Value;
      qry_stock_iten.Prepare;
      qry_stock_iten.Open;

      qry_product_transfer_iten.Close;
      qry_product_transfer_iten.Open;

      qry_product_transfer_iten.First;
      while not qry_product_transfer_iten.Eof do
      begin
        qry_stock_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat + qry_product_transfer_itenpti_product_quant.AsFloat;
        qry_stock_iten.Post;
        qry_product_transfer_iten.Next;
      end;


    end;

    qry.Edit;
    qryprt_status.AsString := 'T'; // Transferencia em transito
    qry.Post;
    Application.MessageBox('Saída da transferência confirmada com sucesso!',
      'Entrada', MB_OK + MB_ICONINFORMATION);

    qry.Edit;
    qryprt_status.AsString := 'C';
    qry.Post;
    qry.ApplyUpdates(0);
    Application.MessageBox('Transferência cancelada com sucesso!', 'Entrada',
      MB_OK + MB_ICONINFORMATION);

    ExibirRegistros;

  end;
end;

procedure Tfrm_stock_transfer.ConfirmarTransfernciaEntrada1Click
  (Sender: TObject);
begin

  if Application.MessageBox('Deseja confirmar a entrada da transferência',
    'Transferência', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    qry_stock_iten.Close;
    qry_stock_iten.ParamByName('STO_COD').Value := qrystock_sto_id_entrance.Value;
    qry_stock_iten.Prepare;
    qry_stock_iten.Open;

    // Dá entrada, se não encontrar ele inclui no estoque
    qry_product_transfer_iten.First;
    while not qry_product_transfer_iten.Eof do
    begin
      if qry_stock_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]) then
      begin

        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat + qry_product_transfer_itenpti_product_quant.AsFloat;
        qry_stock_iten.Post;

      end else
         begin
           With frm_dm.qry,sql do
            begin
              close;   //SQL para obter o Codigo ID em Hex-----
              text:= 'select hex(uuid_to_bin(uuid()))';
              prepare;
              open;
              sti_cod:=Fields[0].AsString;


              close;  // SQL para Obter o proximo ID ta tabela-----
              Text:= ' select case when max(sti_id) is null then 1 ' +
                      '      else (max(sti_id) + 1) end as maxID from stock_iten '+
                      ' where stock_sto_cod =unhex('+QuotedStr(qryCodStockEntrance.AsString)+')';
               Prepare;
               Open;
               sti_id:=Fields[0].AsInteger;

             Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
             Text:='insert into stock_iten (sti_id, sti_cod, stock_sto_cod, product_pro_cod, sti_product_quant, sti_dt_registration) ' +
                   ' values (:sti_id, unhex(:sti_cod), unhex(:stock_sto_cod), unhex(:product_pro_cod), :sti_product_quant, :sti_dt_registration)         ';
             ParamByName('sti_id').AsInteger  := sti_id;
             ParamByName('sti_cod').AsString  := sti_cod;
             ParamByName('stock_sto_cod').AsString := qryCodStockEntrance.AsString;
             ParamByName('product_pro_cod').AsString := qry_product_transfer_itenCodProduct.AsString;
             ParamByName('sti_product_quant').AsFloat := qry_product_transfer_itenpti_product_quant.AsFloat;
             ParamByName('sti_dt_registration').AsDateTime := Now();
             Prepare;
             ExecSQL;
            end;


         end;

        qry_product_transfer_iten.Next;

    end;

    qry.Edit;
    qryprt_status.AsString := 'E'; // Transferencia em Efetivada
    qry.Post;
    qry.ApplyUpdates(0);

    Application.MessageBox('Entrada da transferência confirmada com sucesso!',
      'Entrada', MB_OK + MB_ICONINFORMATION);

     ExibirRegistros;
     inherited;




  end;
end;

procedure Tfrm_stock_transfer.ConfirmarTransfernciaSaida1Click(Sender: TObject);
begin

   qry_stock_iten.Close;
   qry_stock_iten.ParamByName('STO_COD').Value := qrystock_sto_id_exit.Value;
   qry_stock_iten.Prepare;
   qry_stock_iten.Open;

   qry_product_transfer_iten.Close;
   qry_product_transfer_iten.Open;


  if Application.MessageBox('Deseja confirmar a saida da transferência',
    'Transferência', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    qry_product_transfer_iten.First;
    while not qry_product_transfer_iten.Eof do
    begin
      qry_stock_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]);

        if qry_stock_itensti_product_quant.AsFloat <= 0 then
        begin
          Application.MessageBox
            ('Não é permitido incluir produtos na transferência com estoque zerado!',
            'AVISO', MB_OK + MB_ICONWARNING);
          Exit;
        end;

        if qry_product_transfer_itenpti_product_quant.AsFloat <= 0 then
        begin
          Application.MessageBox('Informe a quantidade dos produtos para transferência!', 'AVISO',MB_OK + MB_ICONWARNING);
          Exit;
        end;

        if qry_product_transfer_itenpti_product_quant.AsFloat > qry_stock_itensti_product_quant.AsFloat then
        begin
          Application.MessageBox(PChar('A Quantidade solicitada do Produto: '+qry_stock_itenpro_name.AsString+' é maior que a Quantidade no Estoque!'),'AVISO DO SISTEMA', MB_OK + MB_ICONWARNING);
          Exit;
        end;

       // Baixa estoque saida
      qry_stock_iten.Edit;
      qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat - qry_product_transfer_itenpti_product_quant.AsFloat;
      qry_stock_iten.Post;
      qry_product_transfer_iten.Next;

    end;

    qry.Edit;
    qryprt_status.AsString := 'T'; // Transferencia em transito
    qry.Post;
    qry.ApplyUpdates(0);
    Application.MessageBox('Saída da transferência confirmada com sucesso!',
      'AVISO DE TRANSFERÊNCIA', MB_OK + MB_ICONINFORMATION);

    ExibirRegistros;
    inherited;

   end;
end;

procedure Tfrm_stock_transfer.cxDBLookupComboBox1PropertiesPopup(
  Sender: TObject);
begin
  inherited;
   //Atualização do combobox
   qry_stock_exit.Refresh;
end;

procedure Tfrm_stock_transfer.cxDBLookupComboBox2PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //Atualização do combobox
   qry_stock_exit.Refresh;
end;

procedure Tfrm_stock_transfer.cxDBLookupComboBox3PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //Atualização do combobox
  qry_employee.Refresh;
end;

procedure Tfrm_stock_transfer.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  act_edit_transf_itens.Execute;

end;

procedure Tfrm_stock_transfer.cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
IndiceCampo: Integer;
Valor      : Variant;
begin
  inherited;
   if (AViewInfo <> nil) and ((Sender as TcxGridDBTableView).DataController.Dataset.Active ) then
   begin
      IndiceCampo := (Sender as
      TcxGridDBTableView).GetColumnByFieldName('prt_status').Index;
      Valor       := AViewInfo.GridRecord.Values[IndiceCampo];

      if (Valor = 'A') then
         ACanvas.Font.Color  := $000080FF;

      if (Valor = 'C') then
         ACanvas.Font.Color  := clRed;

      if (Valor = 'E') then
         ACanvas.Font.Color  := clBlue;

      if (Valor = 'T') then
         ACanvas.Font.Color  := clGreen;

   end;

end;

procedure Tfrm_stock_transfer.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;
   qry_employee.Close;
   qry_employee.Open;


   ExibirEstoque;


end;

procedure Tfrm_stock_transfer.edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key =13 then
      btnSalvar_Item.Click;
end;

procedure Tfrm_stock_transfer.ExibirEstoque;
begin
  qry_stock_exit.Close;
  qry_stock_exit.SQL.Text := ' select st.sto_name, st.sto_cod, st.sto_id,st.contract_ctr_cod,st.enterprise_ent_cod, hex(st.sto_cod) as codStock  from stock st                              '+
                             ' where st.sto_status = ''A'' and st.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')                                                         '+
                             ' and st.enterprise_ent_cod in (select enterprise_ent_cod from contract_user_enterprise where contract_user_ctr_usr_cod =unhex('+QuotedStr(frm_dm.v_ctr_usr_cod)+')) ';
  qry_stock_exit.Prepare;
  qry_stock_exit.Open;
end;

procedure Tfrm_stock_transfer.ExibirItensTransferencia;
begin
    qry_product_transfer_iten.Close;
   qry_product_transfer_iten.SQL.Text :=' select prt_cod,trans_itens.*,pro_name,pru_initials,ord_itens.poi_product_quant_served,ord_itens.poi_product_quant,      ' +
                                        ' hex(pti_cod)as CodTrnsfItens,                                                                                           ' +
                                        ' hex(product_transfer_prt_cod)as CodTransf, hex(trans_itens.product_pro_cod)as CodProduct from product_transfer          ' +
                                        ' inner join product_transfer_iten as trans_itens on trans_itens.product_transfer_prt_cod = prt_cod                       ' +
                                        ' inner join product  on pro_cod = trans_itens.product_pro_cod                                                            ' +
                                        ' inner join product_unit on pru_cod = product_unit_pru_cod                                                               ' +
                                        ' inner join purchase_order_iten as ord_itens on ord_itens.purchase_order_pco_cod = purchase_order_pco_id and ord_itens.product_pro_cod = trans_itens.product_pro_cod '+
                                        ' where trans_itens.product_transfer_prt_cod =unhex('+QuotedStr(prt_cod)+')  ' ;
   qry_product_transfer_iten.Prepare;
   qry_product_transfer_iten.Open;
end;

procedure Tfrm_stock_transfer.ExibirRegistros;
begin
   qry.Close;
   qry.SQL.Text := ' select trans.*, sai.sto_name as StockSaida, ent.sto_name as StockEntra, hex(prt_cod)as CodTransf, hex(trans.stock_sto_id_entrance)as CodStockEntrance,' +
                   ' pur_ord.pco_status as StatusPedido, pur_ord.poc_status_reason, pur_ord.pco_id as ID_Pedido, hex(trans.purchase_order_pco_id)as CodPurchase from product_transfer as trans  ' +
                   ' left join purchase_order as pur_ord on pur_ord.pco_cod = trans.purchase_order_pco_id                                       ' +
                   ' left join stock as sai on sai.sto_cod = stock_sto_id_exit                                                                  ' +
                   ' left join stock as ent on ent.sto_cod = stock_sto_id_entrance                                                              ' +
                   ' where trans.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')                                              ' +
                   ' and prt_deleted_at is null ' ;
   qry.Prepare;
   qry.Open;

end;

procedure Tfrm_stock_transfer.ExibirRequisicao;
begin
  if (self.tag = 1) then
  begin
   qry_purchase_order.Close;
   qry_purchase_order.SQL.Text:=' SELECT pur_ord.*, hex(pur_ord.pco_cod)as CodPurchase, hex(pur_ord.employee_emp_cod)as CodEmployee, '+
                                ' hex(pur_ord.stock_sto_cod)as CodStock, sto.sto_name FROM purchase_order as pur_ord                '+
                                ' left join stock as sto on sto.sto_cod = pur_ord.stock_sto_cod                       '+
                                ' where pur_ord.pco_status = ''L'' and pur_ord.pco_type = ''R''                       '+
                                ' and pur_ord.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')       '+
                                ' and sto.enterprise_ent_cod in (select enterprise_ent_cod                            '+
                                ' from contract_user_enterprise                                                       '+
                                '  where contract_user_ctr_usr_cod =unhex('+QuotedStr(frm_dm.v_ctr_usr_cod)+'))       '+
                                ' and pco_deleted_at is null ';
   qry_purchase_order.Prepare;
   qry_purchase_order.Open;

  end else if (self.tag = 2) then
     begin
      qry_purchase_order.Close;
      qry_purchase_order.SQL.Text:= ' SELECT pur_ord.*, hex(pur_ord.pco_cod)as CodPurchase, hex(pur_ord.employee_emp_cod)as CodEmployee, '+
                                    ' hex(pur_ord.stock_sto_cod)as CodStock, sto.sto_name FROM purchase_order as pur_ord                 '+
                                    ' left join stock as sto on sto.sto_cod = pur_ord.stock_sto_cod                                      '+
                                    ' where pur_ord.pco_type = ''R'' and pur_ord.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+') '+
                                    ' and pco_cod =unhex('+QuotedStr(qryCodPurchase.AsString)+')       '+
                                    ' and pco_deleted_at is null ';
      qry_purchase_order.Prepare;
      qry_purchase_order.Open;

     end;

end;

procedure Tfrm_stock_transfer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_stock_transfer.Destroy;
  frm_stock_transfer := NIl;
end;

procedure Tfrm_stock_transfer.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_stock_transfer.FormShow(Sender: TObject);
begin
  inherited;
   //SQL para exibir somente as Transferencia da Unidade de estoque que o usuário tem acesso
   ExibirRegistros;
 //---------------------------------------------------------------------------

end;

procedure Tfrm_stock_transfer.HabiliTarButtun(Status: Boolean);
begin
    btnSalvar_Item.Enabled  := Status ;
   if (qry_product_transfer_iten.IsEmpty) then
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
    if ((qry_product_transfer_iten.RecordCount >0) and (btnSalvar_Item.tag = 1)) then
     begin
      btnCancel_Item.Enabled  := not Status;
      btnExcluir_Item.Enabled := Status;
     end;
end;

procedure Tfrm_stock_transfer.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();

end;

procedure Tfrm_stock_transfer.looComboxEmployee_emp_ID_AgentPropertiesCloseUp(Sender: TObject);
begin
   qry.Edit;
   qryemployee_emp_id_agent.Value := qry_employeeemp_cod.Value;
   qry.Post;
   qry.ApplyUpdates(0);
   qry.Edit;
end;

procedure Tfrm_stock_transfer.looComboxEmployee_Emp_ID_LecturerPropertiesCloseUp(Sender: TObject);
begin
   qry.Edit;
   qryemployee_emp_id_lecturer.Value := qry_employeeemp_cod.Value;
   qry.Post;
   qry.ApplyUpdates(0);
   qry.Edit;

end;

procedure Tfrm_stock_transfer.looComboxEstoqueSaidaPropertiesCloseUp(Sender: TObject);
begin
  inherited;

   qry_stock_iten.Close;
   qry_stock_iten.ParamByName('STO_COD').Value := qry_stock_exitsto_cod.Value;
   qry_stock_iten.Prepare;
   qry_stock_iten.Open;

   qry_purchase_order_iten.Close;
   qry_purchase_order_iten.Open;

   qry.Edit;
   qrystock_sto_id_entrance.Value := qry_purchase_orderstock_sto_cod.Value;
   qrystock_sto_id_exit.Value     := qry_stock_exitsto_cod.Value;
   qrypurchase_order_pco_id.Value := qry_purchase_orderpco_cod.Value;
   qry.Post;
   qry.ApplyUpdates(0);

   qry.Close;
   qry.SQL.Text := ' select trans.*, sai.sto_name as StockSaida, ent.sto_name as StockEntra, hex(prt_cod)as CodTransf,hex(trans.stock_sto_id_entrance)as CodStockEntrance, ' +
                   ' pur_ord.pco_status as StatusPedido, pur_ord.poc_status_reason, pur_ord.pco_id as ID_Pedido, hex(trans.purchase_order_pco_id)as CodPurchase from product_transfer as trans ' +
                   ' left join purchase_order as pur_ord on pur_ord.pco_cod = trans.purchase_order_pco_id                                                                  ' +
                   ' left join stock as sai on sai.sto_cod = stock_sto_id_exit                                                                                             ' +
                   ' left join stock as ent on ent.sto_cod = stock_sto_id_entrance                                                                                         ' +
                   ' where trans.prt_cod =unhex('+QuotedStr(prt_cod)+') ' +
                   ' and prt_deleted_at is null ' ;
   qry.Prepare;
   qry.Open;
   qry.Edit;


   qry_purchase_order_iten.first;
   while not qry_purchase_order_iten.Eof do
    begin
     if qry_stock_iten.Locate('CodProduct',qry_purchase_order_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]) then
      begin

        ExibirItensTransferencia;
        if qry_product_transfer_iten.Locate('CodProduct',qry_purchase_order_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]) then
          begin
           qry_product_transfer_iten.Delete;
          end;


       if qry_purchase_order_itenpoi_product_quant.AsFloat > qry_stock_itensti_product_quant.AsFloat then
        begin
           Application.MessageBox(PChar('A Quantidade solicitada do Produto: '+qry_stock_itenpro_name.AsString+' é maior que a Quantidade no Estoque!'),'AVISO DO SISTEMA', MB_OK + MB_ICONWARNING);

           With frm_dm.qry,sql do
            begin
             close;   //SQL para obter o Codigo ID em Hex-----
             text:= 'select hex(uuid_to_bin(uuid()))';
             prepare;
             open;

             pti_cod:=Fields[0].AsString;


                 close;  // SQL para Obter o proximo ID ta tabela-----
                 Text:= ' select case when max(pti_id) is null then 1 ' +
                        '      else (max(pti_id) + 1) end as maxID from product_transfer_iten '+
                        ' where product_transfer_prt_cod =unhex('+QuotedStr(prt_cod)+')';
                 Prepare;
                 Open;

             pti_id:=Fields[0].AsInteger;

             Close;   //SQL para Inserir o produto do Pedido de Compra------
             Text:='insert into product_transfer_iten (pti_id, pti_cod, product_transfer_prt_cod, product_pro_cod, pti_product_quant, pti_dt_registration) ' +
                   ' values (:pti_id, unhex(:pti_cod), unhex(:product_transfer_prt_cod), unhex(:product_pro_cod), :pti_product_quant, :pti_dt_registration) ';
             ParamByName('pti_id').AsInteger                := pti_id;
             ParamByName('pti_cod').AsString                := pti_cod;
             ParamByName('product_transfer_prt_cod').AsString := prt_cod;
             ParamByName('product_pro_cod').AsString        := qry_purchase_order_itenCodProduct.AsString;
             ParamByName('pti_product_quant').AsFloat       := qry_stock_itensti_product_quant.Value;
             ParamByName('pti_dt_registration').AsDateTime  := Now;
             Prepare;
             ExecSQL;

            end;

        end else
         begin
           With frm_dm.qry,sql do
            begin
             close;   //SQL para obter o Codigo ID em Hex-----
             text:= 'select hex(uuid_to_bin(uuid()))';
             prepare;
             open;

             pti_cod:=Fields[0].AsString;


                 close;  // SQL para Obter o proximo ID ta tabela-----
                 Text:= ' select case when max(pti_id) is null then 1 ' +
                        '      else (max(pti_id) + 1) end as maxID from product_transfer_iten '+
                        ' where product_transfer_prt_cod =unhex('+QuotedStr(prt_cod)+')';
                 Prepare;
                 Open;

             pti_id:=Fields[0].AsInteger;

             Close;   //SQL para Inserir o produto do Pedido de Compra------
             Text:='insert into product_transfer_iten (pti_id, pti_cod, product_transfer_prt_cod, product_pro_cod, pti_product_quant, pti_dt_registration) ' +
                   ' values (:pti_id, unhex(:pti_cod), unhex(:product_transfer_prt_cod), unhex(:product_pro_cod), :pti_product_quant, :pti_dt_registration) ';
             ParamByName('pti_id').AsInteger                := pti_id;
             ParamByName('pti_cod').AsString                := pti_cod;
             ParamByName('product_transfer_prt_cod').AsString := prt_cod;
             ParamByName('product_pro_cod').AsString        := qry_purchase_order_itenCodProduct.AsString;
             ParamByName('pti_product_quant').AsFloat       := qry_purchase_order_itenpoi_product_quant.Value - qry_purchase_order_itenpoi_product_quant_served.Value;
             ParamByName('pti_dt_registration').AsDateTime  := Now;
             Prepare;
             ExecSQL;


            end;

         end;


      end else
        begin
           Application.MessageBox(PChar('Produto: '+qry_purchase_order_itenpro_name.AsString+' está em falta no Estoque!'),'AVISO DE TRANSFERÊNCIA', MB_OK + MB_ICONWARNING);
        end;

     qry_purchase_order_iten.Next;

    end;

    ExibirItensTransferencia;

    if qryprt_id.AsInteger >0 then
       looComboxEstoqueSaida.Enabled := false;

end;

procedure Tfrm_stock_transfer.PopupMenu_1Popup(Sender: TObject);
begin
  inherited;
  ConfirmarTransfernciaSaida1.Enabled := qryprt_status.AsString = 'A';
  ConfirmarTransfernciaEntrada1.Enabled := qryprt_status.AsString = 'T';
  CancelarTransferncia1.Enabled := qryprt_status.AsString <> 'C';
end;

procedure Tfrm_stock_transfer.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
   //SQL para obter Número do Cod ID em Hex--------
  With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   prt_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela purchase_order inserindo os primeiros registros obrigatórios----
   Text:='insert into product_transfer (prt_id,prt_cod,prt_status,contract_ctr_cod,prt_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(prt_cod)+'),''A'', unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'), Now()';
   Prepare;
   ExecSQL;
  end;

  qry.Close;
   qry.SQL.Text := ' select trans.*, sai.sto_name as StockSaida, ent.sto_name as StockEntra, hex(prt_cod)as CodTransf,hex(trans.stock_sto_id_entrance)as CodStockEntrance, ' +
                   ' pur_ord.pco_status as StatusPedido, pur_ord.poc_status_reason, pur_ord.pco_id as ID_Pedido, hex(trans.purchase_order_pco_id)as CodPurchase from product_transfer as trans ' +
                   ' left join purchase_order as pur_ord on pur_ord.pco_cod = trans.purchase_order_pco_id                                                                  ' +
                   ' left join stock as sai on sai.sto_cod = stock_sto_id_exit                                                                                             ' +
                   ' left join stock as ent on ent.sto_cod = stock_sto_id_entrance                                                                                         ' +
                   ' where trans.prt_cod =unhex('+QuotedStr(prt_cod)+') ' +
                   ' and prt_deleted_at is null ' ;
   qry.Prepare;
   qry.Open;
   qry.Edit;

end;

procedure Tfrm_stock_transfer.qry_product_transfer_itenAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  qry_product_transfer_itenpti_dt_registration.Value := Now;
end;

procedure Tfrm_stock_transfer.looComboxNumeroRequisicaoPropertiesCloseUp(Sender: TObject);
begin
  if (Trim(looComboxNumeroRequisicao.Text)= '') then
  begin
    Application.MessageBox('Selecione uma requisiçao, do estoque de saída e entrada para importação!',
      'Transferência', MB_OK + MB_ICONWARNING);
    Exit;
  end;


    edtSolicitante.Text := qry_purchase_orderFuncionario.AsString;
    edtEst_Entrada.Text := qry_purchase_ordersto_name.AsString;
    edtStatusPedido.Text := qry_purchase_orderpco_status.AsString;

end;

procedure Tfrm_stock_transfer.looComboxProdutoPropertiesCloseUp(Sender: TObject);
begin
   edtUND.Text := qry_productpru_initials.AsString;
end;

end.
