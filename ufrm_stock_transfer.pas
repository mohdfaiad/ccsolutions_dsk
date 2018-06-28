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
    cxDBTextEdit2: TcxDBTextEdit;
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
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1prt_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_status: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_status_reason: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_dt_registration: TcxGridDBColumn;
    qryCodTransf: TStringField;
    qryStockSaida: TStringField;
    qryStockEntra: TStringField;
    cxGrid_1DBTableView1StockSaida: TcxGridDBColumn;
    cxGrid_1DBTableView1StockEntra: TcxGridDBColumn;
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
    procedure cxButton1Click(Sender: TObject);
  private
     prt_cod, pti_cod,sti_cod: string;
     pti_id, sti_id: Integer;

  public
    { Public declarations }
   procedure limpaCache(Sender:TObject);
   procedure ExibirRegistros;
   procedure ExibirRequisicao;
   procedure ExibirEstoque;
  end;

var
  frm_stock_transfer: Tfrm_stock_transfer;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock_transfer.Action_cancelExecute(Sender: TObject);
begin
  inherited;
   ExibirRegistros;
end;

procedure Tfrm_stock_transfer.Action_deleteExecute(Sender: TObject);
begin
//
// //Condi��o para n�o permitir excluir transfer�ncia que esteja diferente do status de A - Aberto
//  if (Trim(qryprt_status.AsString) <> 'A') or (Trim(qryprt_status.AsString) ='') then
//  // if (qryprt_status.OldValue  <> 'A') and ((qryprt_status.Value  <> 'A') or (qryprt_status.Value  = ''))  then
//  begin
//     Application.MessageBox('S� � permitido excluir uma transferencia que esteja em A - Aberto !','AVISO DE EXCLUS�O DE TRANSFERENCIA', MB_ICONINFORMATION + MB_OK);
//     qry.CancelUpdates;
//     qry_product_transfer_iten.CancelUpdates;
//     Exit;
//
//  end;
//
// //Caso a transfer�ncia esteja no status de aberto poderar ser excluida
// if Application.MessageBox('Tem certeza que deseja excluir esta transfer�ncia ? ','AVISO DE EXCLUS�O DE TRANSFERENCIA',MB_YESNO + MB_ICONQUESTION) = mrYes then
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
   ExibirRequisicao;
end;

procedure Tfrm_stock_transfer.Action_insertExecute(Sender: TObject);
begin
  inherited;
  self.Tag := 1;
  ExibirRequisicao;
end;

procedure Tfrm_stock_transfer.Action_saveExecute(Sender: TObject);
var
fecha:Boolean;
begin
//Variavel para analizar se todos os produtos da requisi��o j� foram atendido
 fecha:=True;

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

     end;
   end else
        begin
          qry.Edit;
          qrystock_sto_id_entrance.Value := qry_purchase_orderstock_sto_cod.Value;
          qrystock_sto_id_exit.Value     := qry_stock_exitsto_cod.Value;
          qrypurchase_order_pco_id.Value := qry_purchase_orderpco_cod.Value;
        end;


  qry_product_transfer_iten.First;
  while not qry_product_transfer_iten.Eof do
   begin
      qry_purchase_order_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]);
      qry_purchase_order_iten.Edit;
      qry_purchase_order_itenpoi_product_quant_served.AsFloat :=
      qry_purchase_order_itenpoi_product_quant_served.AsFloat +
      qry_product_transfer_itenpti_product_quant.AsFloat;
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

  inherited;
  ExibirRegistros;

end;

procedure Tfrm_stock_transfer.CancelarTransferncia1Click(Sender: TObject);
begin
  inherited;
//  if Application.MessageBox('Deseja cancelar a transfer�ncia', 'Entrada',
//    MB_YESNO + MB_ICONQUESTION) = mrYes then
//  begin
//    // Caso a transfer�ncia esteja em aberto, o sistema apenas marca como cancelada
//    if qryprt_status.AsString = 'A' then
//    begin
//      qry.Edit;
//      qryprt_status.AsString := 'C';
//      qry.Post;
//
//    end;
//
//    // Caso a transfer�ncia esteja in transit, localiza os produtos que foi dado baixa
//    // e d� entrada novamente
//    if qryprt_status.AsString = 'T' then
//    begin
//      qry_stock_iten.Close;
//      qry_stock_iten.ParamByName('stock').AsInteger :=
//        qrystock_sto_id_exit.AsInteger;
//      qry_stock_iten.Prepare;
//      qry_stock_iten.open;
//
//      qry_product_transfer_iten.First;
//      while not qry_product_transfer_iten.Eof do
//      begin
//        qry_stock_iten.Locate('product_pro_id',
//          qry_product_transfer_itenproduct_pro_id.AsInteger,
//          [loCaseInsensitive, loPartialKey]);
//        qry_stock_iten.Edit;
//        qry_stock_itensti_product_quant.AsFloat :=
//          qry_stock_itensti_product_quant.AsFloat +
//          qry_product_transfer_itenpti_product_quant.AsFloat;
//        qry_stock_iten.Post;
//        qry_product_transfer_iten.Next;
//      end;
//
//
//    end;
//
//    if qryprt_status.AsString = 'E' then
//    begin
//      // Status E - Efetivado Quer dizer que j� foi confirmado a sa�da e a entrada
//      // ent�o precissa  fazer o processo de inverso, ou seja d� entrada no estoque
//      // que saiu e da sa�da no estoque em que entrou
//
//      qry_stock_iten.Close;
//      qry_stock_iten.ParamByName('stock').AsInteger :=
//        qrystock_sto_id_exit.AsInteger;
//      qry_stock_iten.Prepare;
//      qry_stock_iten.open;
//
//      qry_product_transfer_iten.First;
//      while not qry_product_transfer_iten.Eof do
//      begin
//        qry_stock_iten.Locate('product_pro_id',
//          qry_product_transfer_itenproduct_pro_id.AsString,
//          [loCaseInsensitive, loPartialKey]);
//        qry_stock_iten.Edit;
//        qry_stock_itensti_product_quant.AsFloat :=
//          qry_stock_itensti_product_quant.AsFloat +
//          qry_product_transfer_itenpti_product_quant.AsFloat;
//        qry_stock_iten.Post;
//        qry_product_transfer_iten.Next;
//      end;
//
//      qry_stock_iten.Close;
//      qry_stock_iten.ParamByName('stock').AsInteger :=
//        qrystock_sto_id_entrance.AsInteger;
//      qry_stock_iten.Prepare;
//      qry_stock_iten.open;
//
//      qry_product_transfer_iten.First;
//      while not qry_product_transfer_iten.Eof do
//      begin
//        qry_stock_iten.Locate('product_pro_id',
//          qry_product_transfer_itenproduct_pro_id.AsString,
//          [loCaseInsensitive, loPartialKey]);
//        qry_stock_iten.Edit;
//        qry_stock_itensti_product_quant.AsFloat :=
//          qry_stock_itensti_product_quant.AsFloat -
//          qry_product_transfer_itenpti_product_quant.AsFloat;
//        qry_stock_iten.Post;
//        qry_product_transfer_iten.Next;
//      end;
//
//
//
//    end;
//
//    qry.Edit;
//    qryprt_status.AsString := 'T'; // Transferencia em transito
//    qry.Post;
//    Application.MessageBox('Sa�da da transfer�ncia confirmada com sucesso!',
//      'Entrada', MB_OK + MB_ICONINFORMATION);
//
//    qry.Edit;
//    qryprt_status.AsString := 'C';
//    qry.Post;
//    qry.ApplyUpdates(0);
//    Application.MessageBox('Transfer�ncia cancelada com sucesso!', 'Entrada',
//      MB_OK + MB_ICONINFORMATION);
//
//    qry.Close;
//    qry.Open;
//  end;
end;

procedure Tfrm_stock_transfer.ConfirmarTransfernciaEntrada1Click
  (Sender: TObject);
begin

  if Application.MessageBox('Deseja confirmar a entrada da transfer�ncia',
    'Transfer�ncia', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    qry_stock_iten.Close;
   qry_stock_iten.ParamByName('STO_COD').Value := qrystock_sto_id_entrance.Value;
   qry_stock_iten.Prepare;
   qry_stock_iten.Open;

    // D� entrada, se n�o encontrar ele inclui no estoque
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

             Close;          //---Insert na tabela brand inserindo os primeiros registros obrigat�rios----
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

    Application.MessageBox('Entrada da transfer�ncia confirmada com sucesso!',
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


  if Application.MessageBox('Deseja confirmar a saida da transfer�ncia',
    'Transfer�ncia', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    qry_product_transfer_iten.First;
    while not qry_product_transfer_iten.Eof do
    begin
      qry_stock_iten.Locate('CodProduct',qry_product_transfer_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]);

        if qry_stock_itensti_product_quant.AsFloat <= 0 then
        begin
          Application.MessageBox
            ('N�o � permitido incluir produtos na transfer�ncia com estoque zerado!',
            'AVISO', MB_OK + MB_ICONWARNING);
          Exit;
        end;

        if qry_product_transfer_itenpti_product_quant.AsFloat <= 0 then
        begin
          Application.MessageBox
            ('Informe a quantidade dos produtos para transfer�ncia!', 'AVISO',
            MB_OK + MB_ICONWARNING);
          Exit;
        end;

        if qry_product_transfer_itenpti_product_quant.AsFloat >
          qry_stock_itensti_product_quant.AsFloat then
        begin
          Application.MessageBox
            ('Quantidade solicitada maior do que dos produtos para transfer�ncia!',
            'AVISO', MB_OK + MB_ICONWARNING);
         // Exit;

         qry_product_transfer_iten.Next;

        end;

       // Baixa estoque saida
      qry_stock_iten.Edit;
      qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat - qry_product_transfer_itenpti_product_quant.AsFloat;
      qry_stock_iten.Post;
      qry_product_transfer_iten.Next;

    end;

//    qry_stock_iten.Close;
//    qry_stock_iten.ParamByName('stock').AsInteger :=
//    qrystock_sto_id_exit.AsInteger;
//    qry_stock_iten.Prepare;
//    qry_stock_iten.open;

    // Baixa estoque saida
//    qry_product_transfer_iten.First;
//    while not qry_product_transfer_iten.Eof do
//    begin
//        qry_stock_iten.Locate('product_pro_id',
//        qry_product_transfer_itenproduct_pro_id.AsString,
//        [loCaseInsensitive, loPartialKey]);
//      qry_stock_iten.Edit;
//      qry_stock_itensti_product_quant.AsFloat :=
//        qry_stock_itensti_product_quant.AsFloat -
//        qry_product_transfer_itenpti_product_quant.AsFloat;
//      qry_stock_iten.Post;
//      qry_product_transfer_iten.Next;
//    end;

    qry.Edit;
    qryprt_status.AsString := 'T'; // Transferencia em transito
    qry.Post;
    qry.ApplyUpdates(0);
    Application.MessageBox('Sa�da da transfer�ncia confirmada com sucesso!',
      'AVISO DE TRANSFER�NCIA', MB_OK + MB_ICONINFORMATION);

    ExibirRegistros;
    inherited;

   end;
end;

procedure Tfrm_stock_transfer.cxButton1Click(Sender: TObject);
begin
   qry_stock_iten.Close;
   qry_stock_iten.Open;
end;

procedure Tfrm_stock_transfer.cxDBLookupComboBox1PropertiesPopup(
  Sender: TObject);
begin
  inherited;
   //Atualiza��o do combobox
   qry_stock_exit.Refresh;
end;

procedure Tfrm_stock_transfer.cxDBLookupComboBox2PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //Atualiza��o do combobox
   qry_stock_exit.Refresh;
end;

procedure Tfrm_stock_transfer.cxDBLookupComboBox3PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //Atualiza��o do combobox
  qry_employee.Refresh;
end;

procedure Tfrm_stock_transfer.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;
   qry_employee.Close;
   qry_employee.Open;

   ExibirEstoque;

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

procedure Tfrm_stock_transfer.ExibirRegistros;
begin
   qry.Close;
   qry.SQL.Text := ' select trans.*, sai.sto_name as StockSaida, ent.sto_name as StockEntra, hex(prt_cod)as CodTransf, hex(trans.stock_sto_id_entrance)as CodStockEntrance,' +
                   ' pur_ord.pco_status as StatusPedido, pur_ord.poc_status_reason, pur_ord.pco_id as ID_Pedido from product_transfer as trans  ' +
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
   //SQL para exibir somente as Transferencia da Unidade de estoque que o usu�rio tem acesso
   ExibirRegistros;
 //---------------------------------------------------------------------------

end;

procedure Tfrm_stock_transfer.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
//  qry_product_transfer_iten.CommitUpdates();
//  qry_purchase_order.CommitUpdates();
//  qry_purchase_order_iten.CommitUpdates();

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
   qry_purchase_order_iten.first;
   while not qry_purchase_order_iten.Eof do
    begin
     if qry_stock_iten.Locate('CodProduct',qry_purchase_order_itenCodProduct.AsString,[loCaseInsensitive, loPartialKey]) then
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
           ParamByName('pti_product_quant').AsFloat       := qry_purchase_order_itenpoi_product_quant.Value;
           ParamByName('pti_dt_registration').AsDateTime  := Now;
           Prepare;
           ExecSQL;


          end;


      end else
        begin
           Application.MessageBox(PChar('Produto: '+qry_stock_itenpro_name.AsString+' est� em falta no Estoque!'),'AVISO DE TRANSFER�NCIA', MB_OK + MB_ICONWARNING);
        end;

     qry_purchase_order_iten.Next;

    end;


    qry_product_transfer_iten.Close;
    qry_product_transfer_iten.Open;


//      with frm_dm.qry,sql do
//    begin
//      Close;
//      Text := 'select * from purchase_order_iten ' +
//        ' where purchase_order_pco_id = ' +
//        QuotedStr(qry_purchase_orderpco_id.AsString);
//      Prepare;
//      open;
//      First;
//
//      while not Eof do
//      begin
//        qry_product_transfer_iten.Insert;
//        qry_product_transfer_itenproduct_pro_id.AsInteger := FieldByName('product_pro_id').AsInteger;
//        qry_product_transfer_itenpti_product_quant.AsFloat := FieldByName('poi_product_quant').AsFloat - FieldByName('poi_product_quant_served').AsFloat;
//        qry_product_transfer_iten.Post;
//        Next;
//      end;
//
//    end;
end;

procedure Tfrm_stock_transfer.PopupMenu_1Popup(Sender: TObject);
begin
  inherited;
//  ConfirmarTransfernciaSaida1.Enabled := qryprt_status.AsString = 'A';
//  ConfirmarTransfernciaEntrada1.Enabled := qryprt_status.AsString = 'T';
//  CancelarTransferncia1.Enabled := qryprt_status.AsString <> 'C';
end;

procedure Tfrm_stock_transfer.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
   //SQL para obter N�mero do Cod ID em Hex--------
  With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   prt_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela purchase_order inserindo os primeiros registros obrigat�rios----
   Text:='insert into product_transfer (prt_id,prt_cod,prt_status,contract_ctr_cod,prt_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(prt_cod)+'),''A'', unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'), Now()';
   Prepare;
   ExecSQL;
  end;

  qry.Close;
   qry.SQL.Text := ' select trans.*, hex(prt_cod)as CodTransf from product_transfer as trans  ' +
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
    Application.MessageBox('Selecione uma requisi�ao, do estoque de sa�da e entrada para importa��o!',
      'Transfer�ncia', MB_OK + MB_ICONWARNING);
    Exit;
  end;


    edtSolicitante.Text := qry_purchase_orderFuncionario.AsString;
    edtEst_Entrada.Text := qry_purchase_ordersto_name.AsString;


 //      qry_stock_exit.Locate('codStock',qry_purchase_orderCodStock.AsString,[loCaseInsensitive, loPartialKey]);
    with frm_dm.qry,sql do
    begin
//      Close;
//      Text := 'select * from purchase_order_iten ' +
//        ' where purchase_order_pco_id = ' +
//        QuotedStr(qry_purchase_orderpco_id.AsString);
//      Prepare;
//      open;
//      First;
//
//      while not Eof do
//      begin
//        qry_product_transfer_iten.Insert;
//        qry_product_transfer_itenproduct_pro_id.AsInteger := FieldByName('product_pro_id').AsInteger;
//        qry_product_transfer_itenpti_product_quant.AsFloat := FieldByName('poi_product_quant').AsFloat - FieldByName('poi_product_quant_served').AsFloat;
//        qry_product_transfer_iten.Post;
//        Next;
//      end;

    end;

end;

end.
