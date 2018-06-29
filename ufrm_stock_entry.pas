unit ufrm_stock_entry;

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
  cxSpinEdit, dxLayoutControlAdapters, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  frxClass, ACBrSocket, ACBrCEP, frxDBSet, cxButtons;

type
  Tfrm_stock_entry = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    ds_product_entry_itens: TDataSource;
    ConfirmaEntrada1: TMenuItem;
    Cancelarentrada1: TMenuItem;
    ds_purchase_order: TDataSource;
    qry_supplier: TFDQuery;
    ds_supplier: TDataSource;
    qry_stock: TFDQuery;
    ds_stock: TDataSource;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    frxDBD_Entrada: TfrxDBDataset;
    frxDBD_Entrada_Itens: TfrxDBDataset;
    qrypde_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrysupplier_sup_cod: TBytesField;
    qrypurchase_order_pco_cod: TBytesField;
    qrystock_sto_cod: TBytesField;
    qrypde_invoice: TLongWordField;
    qrypde_invoice_serie: TLongWordField;
    qrypde_invoice_dt_emission: TDateField;
    qrypde_document: TStringField;
    qryped_cost_delivery: TBCDField;
    qrypde_status: TStringField;
    qrypde_deleted_at: TDateTimeField;
    qrypde_dt_registration: TDateTimeField;
    qryCodProEnty: TStringField;
    qrysto_name: TStringField;
    qrysup_first_name: TStringField;
    qrysup_last_name: TStringField;
    looComboxFornecedor: TcxLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    qry_suppliersup_cod: TBytesField;
    qry_suppliercontract_ctr_cod: TBytesField;
    qry_suppliersup_id: TLongWordField;
    qry_suppliersup_first_name: TStringField;
    qry_suppliersup_last_name: TStringField;
    qry_suppliersup_cnpj: TStringField;
    qry_supplierCodSupplier: TStringField;
    qry_stocksto_name: TStringField;
    qry_stocksto_cod: TBytesField;
    qry_stockcontract_ctr_cod: TBytesField;
    qry_stockenterprise_ent_cod: TBytesField;
    qry_stockcodStock: TStringField;
    looComboxEstoque: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    qry_purchase_order: TFDQuery;
    looComboxPed_Compra: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    looComboxProduto: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    edtUND: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    btnSalvar_Item: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    btnEditar_Item: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    btnCancel_Item: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    btnExcluir_Item: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    qry_product_entry_itens: TFDQuery;
    qry_product_entry_itenspei_cod: TBytesField;
    qry_product_entry_itensproduct_pro_cod: TBytesField;
    qry_product_entry_itensproduct_entry_pde_cod: TBytesField;
    qry_product_entry_itenspei_id: TLongWordField;
    qry_product_entry_itenspei_product_quant: TBCDField;
    qry_product_entry_itenspei_deleted_at: TDateTimeField;
    qry_product_entry_itenspei_dt_registration: TDateTimeField;
    qry_product_entry_itenspro_name: TStringField;
    qry_product_entry_itenspru_name: TStringField;
    qry_product_entry_itenspru_initials: TStringField;
    qry_product_entry_itensCodEntyItens: TStringField;
    qry_product_entry_itensCodProduct: TStringField;
    qry_product_entry_itensCodEntyPDE: TStringField;
    cxGrid1DBTableView1pei_id: TcxGridDBColumn;
    cxGrid1DBTableView1pei_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1pei_dt_registration: TcxGridDBColumn;
    cxGrid1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid1DBTableView1pru_initials: TcxGridDBColumn;
    Action_entry_itens: TActionList;
    act_save_entry_itens: TAction;
    act_edit_entry_itens: TAction;
    act_cancel_entry_itens: TAction;
    act_delete_entry_itens: TAction;
    qry_productCodProduct: TStringField;
    qry_productpro_name: TStringField;
    qry_productpro_cod: TBytesField;
    qry_productcontract_ctr_cod: TBytesField;
    qry_productpru_name: TStringField;
    qry_productpru_initials: TStringField;
    qry_productpro_id: TLongWordField;
    edtQTD: TcxCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    qrypde_id: TLongWordField;
    qrypco_id: TLongWordField;
    cxGrid_1DBTableView1pde_invoice: TcxGridDBColumn;
    cxGrid_1DBTableView1pde_invoice_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1pde_status: TcxGridDBColumn;
    cxGrid_1DBTableView1pde_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pde_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_id: TcxGridDBColumn;
    qry_stocksto_id: TLongWordField;
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
    pupMenuRequisicao: TPopupMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    Cancelar1: TMenuItem;
    qryCodStock: TStringField;
    qry_stock_iten: TFDQuery;
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
    qry_stock_itenCodStock: TStringField;
    qry_stock_itenCodProduct: TStringField;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qry_purchase_orderCodStock: TStringField;
    procedure ConfirmaEntrada1Click(Sender: TObject);
    procedure PopupMenu_1Popup(Sender: TObject);
    procedure Cancelarentrada1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBLookupComboBox1Enter(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
    procedure cxTabSheet_3Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_save_entry_itensExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure looComboxProdutoPropertiesCloseUp(Sender: TObject);
    procedure edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEditar_ItemClick(Sender: TObject);
    procedure act_edit_entry_itensExecute(Sender: TObject);
    procedure act_cancel_entry_itensExecute(Sender: TObject);
    procedure act_delete_entry_itensExecute(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure looComboxPed_CompraPropertiesCloseUp(Sender: TObject);
  private
     pde_cod, pei_cod, sti_cod: string;
     pei_id, sti_id: Integer;
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
    procedure ExibirRegistros;
    procedure ExibirEstoque;
    procedure ExibirPed_Compra;
    procedure HabiliTarButtun(Status: Boolean);

  end;

var
  frm_stock_entry: Tfrm_stock_entry;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock_entry.Action_cancelExecute(Sender: TObject);
begin
  inherited;
    if not result then
    exit;


  if (qrypde_id.AsInteger = 0) then
  begin
   if (qry_product_entry_itens.RecordCount >0) then
    begin
      with frm_dm.qry,sql do
       begin

        Close;
        Text:= ' delete from product_entry_itens ' +
               ' where product_entry_pde_cod = unhex('+QuotedStr(pde_cod)+')' ;
        Prepare;
        ExecSQL;

        Close;
        Text:= ' delete from product_entry ' +
           ' where pde_cod = unhex('+QuotedStr(pde_cod)+')' ;
        Prepare;
        ExecSQL;

       end;
    end else
     begin
       with frm_dm.qry2,sql do
        begin
         Close;
         Text:= ' delete from product_entry ' +
           ' where pde_cod = unhex('+ QuotedStr(pde_cod)+')' ;
         Prepare;
         ExecSQL;
        end;
     end;

  end;

  ExibirRegistros;

end;

procedure Tfrm_stock_entry.Action_deleteExecute(Sender: TObject);
begin
 inherited;
   if (result = false) then
      exit;

  //Condição para não permitir excluir um pedido de compra que esteja diferente do status de A - Aberto
 if (qrypde_status.OldValue  <> 'A') and ((qrypde_status.Value  <> 'A') or (qrypde_status.Value  = ''))  then
  begin
     Application.MessageBox('Só é permitido excluir uma entrada de produtos que esteja em Aberto !','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     qry.CancelUpdates;
     Exit;
  end;

    if Application.MessageBox('Deseja excluir o Registro?','AVISO DE EXCLUSÃO', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrypde_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     Application.MessageBox('Requisição excluída com sucesso!','AVISO DA REQUISIÇÃO', MB_OK + MB_ICONINFORMATION);

    end;

    ExibirRegistros;
end;

procedure Tfrm_stock_entry.Action_editExecute(Sender: TObject);
begin
  inherited;
  self.Tag :=2;
  ExibirPed_Compra;
  btnSalvar_Item.Tag := 1;
  pde_cod := qryCodProEnty.AsString;
  ExibirEstoque;

  looComboxFornecedor.Text  := qrysup_last_name.AsString;
  looComboxEstoque.Text     := qrysto_name.AsString;
  looComboxPed_Compra.Text  := IntToStr(qrypco_id.AsInteger);

  qry_product_entry_itens.Close;
  qry_product_entry_itens.Open;

  HabiliTarButtun(True);

end;

Procedure Tfrm_stock_entry.Action_insertExecute(Sender: TObject);
begin
  inherited;
   self.Tag :=1;
   btnSalvar_Item.Tag := 1;

   looComboxFornecedor.ItemIndex := -1;
   looComboxEstoque.ItemIndex    := -1;
   looComboxPed_Compra.ItemIndex := -1;

   qry_product_entry_itens.Close;
   qry_product_entry_itens.Open;

   ExibirPed_Compra;
   HabiliTarButtun(True);
end;

procedure Tfrm_stock_entry.Action_saveExecute(Sender: TObject);

begin

   if qry_product_entry_itens.IsEmpty then
   begin
     Application.MessageBox('Não é possível salvar, falta incluir os produtos desta Nota !','AVISO DO SISTEMA',MB_OK + MB_ICONQUESTION);
      Exit;
   end;

    //--Condição para só deixar alterar Entrada no Estoque em Status de Aberto ------
   if (qrypde_status.OldValue  <> 'A') and ((qrypde_status.Value  <> 'A') or (qrypde_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), Entrada no estoque que estejam em abertos!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     exit;
   end;

   inherited;
   if ds.DataSet.State in [dsEdit] then
      Exit;


   if qrypde_id.AsInteger = 0 then
   begin

     with frm_dm.qry,sql do
      begin
       close;
       Text:= ' select case when max(pde_id) is null then 1 ' +
          '      else (max(pde_id) + 1) end as maxID from product_entry '+
          ' where contract_ctr_cod =unhex(' +QuotedStr(frm_dm.v_contract_ctr_cod)+')';
       Prepare;
       Open;

       qry.Edit;
       qrypde_id.AsInteger:=Fields[0].AsInteger;
       qrysupplier_sup_cod.Value := qry_suppliersup_cod.Value;
       qrystock_sto_cod.Value    := qry_stocksto_cod.Value;
       qrypurchase_order_pco_cod.Value := qry_purchase_orderpco_cod.Value;
       qry.Post;
       qry.ApplyUpdates(0);

     end;
   end else
        begin
          qry.Edit;
          qrysupplier_sup_cod.Value := qry_suppliersup_cod.Value;
          qrystock_sto_cod.Value    := qry_stocksto_cod.Value;
          qrypurchase_order_pco_cod.Value := qry_purchase_orderpco_cod.Value;
          qry.Post;
          qry.ApplyUpdates(0);
        end;

   ExibirRegistros;

end;

procedure Tfrm_stock_entry.act_cancel_entry_itensExecute(Sender: TObject);
begin
  btnSalvar_Item.Tag := 1;
  looComboxProduto.Clear;
  edtQTD.Clear;
  edtUND.Clear;
  cxGrid1.SetFocus;
  HabiliTarButtun(true);

end;

procedure Tfrm_stock_entry.act_delete_entry_itensExecute(Sender: TObject);
begin
    //--Condição para só deixar Excluir produtos no Pedido em Status de Aberto ------
   if (qrypde_status.OldValue  <> 'A') and ((qrypde_status.Value  <> 'A') or (qrypde_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Excluir), produtos em entradas de produtos que esteja em aberto!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
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
       Text:= 'Delete from product_entry_itens where pei_cod =unhex(:pei_cod)';
       ParamByName('pei_cod').AsString := qry_product_entry_itensCodEntyItens.AsString;
       Prepare;
       ExecSQL;

       Application.MessageBox('Produto excluído com sucesso!','AVISO DE EXCLUSÃO', MB_OK + MB_ICONINFORMATION);
     end;
   end;

   btnSalvar_Item.Tag :=1;
   qry_product_entry_itens.Close;
   qry_product_entry_itens.Open;
   HabiliTarButtun(true);
end;

procedure Tfrm_stock_entry.act_edit_entry_itensExecute(Sender: TObject);
begin
       //--Condição para só deixar Alterar produtos no Pedido em Status de Aberto ------
   if (qrypde_status.OldValue  <> 'A') and ((qrypde_status.Value  <> 'A') or (qrypde_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos com status em aberto!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     edtUND.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;

  btnSalvar_Item.Tag := 2; ////button com Tag = 2 -- condição onde sei que estou alterando um produto do pedido----
  looComboxProduto.Text := qry_product_entry_itenspro_name.AsString;
  edtUnd.Text           := qry_product_entry_itenspru_initials.AsString;
  edtQTD.Value          := qry_product_entry_itenspei_product_quant.AsFloat;
  edtQTD.SetFocus;
  HabiliTarButtun(true);
end;

procedure Tfrm_stock_entry.act_save_entry_itensExecute(Sender: TObject);
begin
    //--Condição para só deixar inserir ou alterar produtos em Entrada no Estoque em Status de Aberto ------

   if (qrypde_status.OldValue  <> 'A') and ((qrypde_status.Value  <> 'A') or (qrypde_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos em entrada no estoque que estejam em abertos!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
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

         pei_cod:=Fields[0].AsString;


             close;  // SQL para Obter o proximo ID ta tabela-----
             Text:= ' select case when max(pei_id) is null then 1 ' +
                    '      else (max(pei_id) + 1) end as maxID from product_entry_itens '+
                    ' where product_entry_pde_cod =unhex('+QuotedStr(pde_cod)+')';
             Prepare;
             Open;

         pei_id:=Fields[0].AsInteger;

         Close;   //SQL para Inserir o produto do Pedido de Compra------
         Text:='insert into product_entry_itens (pei_id, pei_cod, product_entry_pde_cod, product_pro_cod, pei_product_quant, pei_dt_registration)   ' +
               ' values (:pei_id, unhex(:pei_cod), unhex(:product_entry_pde_cod), unhex(:product_pro_cod), :pei_product_quant, :pei_dt_registration) ';
         ParamByName('pei_id').AsInteger                := pei_id;
         ParamByName('pei_cod').AsString                := pei_cod;
         ParamByName('product_entry_pde_cod').AsString := pde_cod;
         ParamByName('product_pro_cod').AsString        := qry_productCodProduct.AsString;
         ParamByName('pei_product_quant').AsFloat       := edtQTD.Value;
         ParamByName('pei_dt_registration').AsDateTime  := Now;
         Prepare;
         ExecSQL;
        end;
      end else if (btnSalvar_Item.Tag = 2) then   //button com Tag = 2 -- condição onde sei que estou Alterando----
               begin
                qry_product_entry_itens.Edit;
                qry_product_entry_itensproduct_pro_cod.Value     := qry_productpro_cod.Value;
                qry_product_entry_itenspei_product_quant.AsFloat := edtQTD.Value;
                qry_product_entry_itens.Post;

               end;


         qry_product_entry_itens.Close;
         qry_product_entry_itens.Open;

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

procedure Tfrm_stock_entry.btnEditar_ItemClick(Sender: TObject);
begin
  inherited;
    //
end;

procedure Tfrm_stock_entry.Cancelarentrada1Click(Sender: TObject);
begin
  inherited;

  if Application.MessageBox('Deseja cancelar a entrada', 'Entrada',
    MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    if qrypde_status.AsString = 'A' then
    begin
      qry.Edit;
      qrypde_status.AsString := 'C';
      qry.Post;
      qry.ApplyUpdates(0);
    end
    else
    begin
      qry_product_entry_itens.First;
      while not qry_product_entry_itens.Eof do
      begin
        qry_stock_iten.Close;
        qry_stock_iten.Open;

        qry_stock_iten.Locate('CodProduct',qry_product_entry_itensCodProduct.AsString,[loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat - qry_product_entry_itenspei_product_quant.AsFloat;
        qry_stock_iten.Post;
  
        qry_product_entry_itens.Next;
      end;

      qry.Edit;
      qrypde_status.AsString := 'C';
      qry.Post;
      qry.ApplyUpdates(0);
      //---------------------------------
      ExibirRegistros;
      Application.MessageBox('Cancelamento confirmado com sucesso!', 'Entrada',MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure Tfrm_stock_entry.ConfirmaEntrada1Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja confirmar a entrada', 'Entrada',
    MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    qry_product_entry_itens.First;
     while not qry_product_entry_itens.Eof do
      begin

        with frm_dm.qry, sql do
        begin
          Text := ' select * from stock_iten ' +
                  ' where product_pro_cod =unhex(:pro_cod)' +
                  ' AND stock_sto_cod =unhex(:sto_cod)';
          ParamByName('pro_cod').AsString := qry_product_entry_itensCodProduct.AsString;
          ParamByName('sto_cod').AsString := qryCodStock.AsString;
          prepare;
          open;

          // Se não encontrar o item na relaçao dos itens do estoque cadastre senao altera as quantidades
          if IsEmpty then
          begin

           //SQL para obter Número do Cod ID em Hex--------
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
                      ' where stock_sto_cod =unhex('+QuotedStr(qryCodStock.AsString)+')';
               Prepare;
               Open;
               sti_id:=Fields[0].AsInteger;

             Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
             Text:='insert into stock_iten (sti_id, sti_cod, stock_sto_cod, product_pro_cod, sti_product_quant, sti_dt_registration) ' +
                   ' values (:sti_id, unhex(:sti_cod), unhex(:stock_sto_cod), unhex(:product_pro_cod), :sti_product_quant, :sti_dt_registration)         ';
             ParamByName('sti_id').AsInteger  := sti_id;
             ParamByName('sti_cod').AsString  := sti_cod;
             ParamByName('stock_sto_cod').AsString := qryCodStock.AsString;
             ParamByName('product_pro_cod').AsString := qry_product_entry_itensCodProduct.AsString;
             ParamByName('sti_product_quant').AsFloat := qry_product_entry_itenspei_product_quant.AsFloat;
             ParamByName('sti_dt_registration').AsDateTime := Now();
             Prepare;
             ExecSQL;
            end;

          end else
            begin
              qry_stock_iten.Close;
              qry_stock_iten.Open;

              qry_stock_iten.Locate('CodProduct',qry_product_entry_itensCodProduct.AsString,[loCaseInsensitive, loPartialKey]);
              qry_stock_iten.Edit;
              qry_stock_itensti_product_quant.AsFloat := qry_stock_itensti_product_quant.AsFloat + qry_product_entry_itenspei_product_quant.AsFloat;
              qry_stock_iten.Post;
             // qry_stock_iten.ApplyUpdates(0);
            end;

            qry_product_entry_itens.Next;

        end;

      end;

      qry_purchase_order.Locate('pco_id',qrypco_id.AsInteger,[loCaseInsensitive, loPartialKey]);
      qry_purchase_order.Edit;
      qry_purchase_orderpco_status.AsString := 'F';
      qry_purchase_order.Post;
      //--------------------------------
      qry.Edit;
      qrypde_status.AsString := 'E';
      qry.Post;
      qry.ApplyUpdates(0);
      //-------------------------------
      ExibirRegistros;
      Application.MessageBox('Entrada confirmada com sucesso!', 'Entrada',MB_OK + MB_ICONINFORMATION);
  end;

end;
procedure Tfrm_stock_entry.cxDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  //Atualização do combobox
  qry_supplier.refresh;
end;

procedure Tfrm_stock_entry.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Atualização do combobox
   qry_supplier.refresh;
end;

procedure Tfrm_stock_entry.cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Atualização do combobox
   qry_stock.Refresh;
end;

procedure Tfrm_stock_entry.cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Atualização do combobox
   qry_purchase_order.refresh;
end;

procedure Tfrm_stock_entry.cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
IndiceCampo: Integer;
Valor      : Variant;
begin
  inherited;
   if (AViewInfo <> nil) and ((Sender as TcxGridDBTableView).DataController.Dataset.Active ) then
   begin
      IndiceCampo := (Sender as
      TcxGridDBTableView).GetColumnByFieldName('pde_status').Index;
      Valor       := AViewInfo.GridRecord.Values[IndiceCampo];

      if (Valor = 'A') then
         ACanvas.Font.Color  := $000080FF;

      if (Valor = 'C') then
         ACanvas.Font.Color  := clRed;

      if (Valor = 'E') then
         ACanvas.Font.Color  := clGreen;

   end;

end;

procedure Tfrm_stock_entry.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;

   qry_supplier.Close;
   qry_supplier.Open;
   qry_product.Close;
   qry_product.Open;

   ExibirEstoque;

  //SQL para exibir somente as unidades de estoque que o usuário tem acesso

end;

procedure Tfrm_stock_entry.edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key =13 then
      btnSalvar_Item.Click;
end;

procedure Tfrm_stock_entry.ExibirEstoque;
begin
   qry_stock.Close;
   qry_stock.SQL.Text:= ' select st.sto_name, st.sto_cod, st.sto_id,st.contract_ctr_cod,st.enterprise_ent_cod,   ' +
                        ' hex(st.sto_cod) as codStock  from stock st                                             ' +
                        ' left join contract co on co.ctr_cod = st.contract_ctr_cod                              ' +
                        ' left join enterprise en on en.ent_cod = st.enterprise_ent_cod                          ' +
                        ' where st.sto_status = ''A'' and st.contract_ctr_cod =unhex(:ctr_cod)                     ' +
                        ' and st.enterprise_ent_cod in (select enterprise_ent_cod                                ' +
                        ' from contract_user_enterprise where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))    ';
  qry_stock.ParamByname('ctr_cod').AsString     := frm_dm.v_contract_ctr_cod;
  qry_stock.ParamByname('ctr_usr_cod').AsString := frm_dm.v_ctr_usr_cod;
  qry_stock.Prepare;
  qry_stock.Open;
end;

procedure Tfrm_stock_entry.ExibirPed_Compra;
begin

 if (self.tag = 1) then
  begin
   qry_purchase_order.Close;
   qry_purchase_order.SQL.Text:=' SELECT pur_ord.*, hex(pur_ord.pco_cod)as CodPurchase, hex(pur_ord.stock_sto_cod)as CodStock FROM purchase_order as pur_ord '+
                                ' left join stock as sto on sto.sto_cod = pur_ord.stock_sto_cod                       '+
                                ' where pur_ord.pco_status = ''L'' and pur_ord.pco_type = ''C''                       '+
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
      qry_purchase_order.SQL.Text:= ' SELECT pur_ord.*, hex(pur_ord.pco_cod)as CodPurchase, hex(pur_ord.stock_sto_cod)as CodStock FROM purchase_order as pur_ord '+
                                    ' left join stock as sto on sto.sto_cod = pur_ord.stock_sto_cod                       '+
                                    ' where pur_ord.pco_status = ''F'' and pur_ord.pco_type = ''C''                       '+
                                    ' and pur_ord.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')       '+
                                    ' and sto.enterprise_ent_cod in (select enterprise_ent_cod                            '+
                                    ' from contract_user_enterprise                                                       '+
                                    '  where contract_user_ctr_usr_cod =unhex('+QuotedStr(frm_dm.v_ctr_usr_cod)+'))       '+
                                    ' and pco_deleted_at is null ';
      qry_purchase_order.Prepare;
      qry_purchase_order.Open;

     end;

end;

procedure Tfrm_stock_entry.ExibirRegistros;
begin
   qry.Close;
   qry.SQL.Text:=' SELECT pro_enty.*, hex(pde_cod)as CodProEnty, hex(pro_enty.stock_sto_cod)as CodStock, sto.sto_name, supp.sup_first_name, '+
                 ' supp.sup_last_name, pur_ord.pco_id FROM product_entry as pro_enty                          '+
                 ' left join purchase_order as pur_ord on pur_ord.pco_cod = pro_enty.purchase_order_pco_cod   '+
                 ' left join stock as sto on sto.sto_cod = pro_enty.stock_sto_cod                             '+
                 ' left join supplier as supp on supp.sup_cod = pro_enty.supplier_sup_cod                     '+
                 ' where pro_enty.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')           '+
                 ' and sto.enterprise_ent_cod in (select enterprise_ent_cod                                   '+
                 ' from contract_user_enterprise                                                              '+
                 ' where contract_user_ctr_usr_cod =unhex('+QuotedStr(frm_dm.v_ctr_usr_cod)+'))               '+
                 ' and pde_deleted_at is null     ';
   qry.Prepare;
   qry.Open;

end;

procedure Tfrm_stock_entry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_stock_entry.Destroy;
  frm_stock_entry := Nil;
end;

procedure Tfrm_stock_entry.FormCreate(Sender: TObject);
begin
  inherited;
   FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;

end;

procedure Tfrm_stock_entry.FormShow(Sender: TObject);
begin
  inherited;
   //SQL para exibir somente as entradas no estoque dos estoques que o usuário tem acesso
    ExibirRegistros;
end;

procedure Tfrm_stock_entry.HabiliTarButtun(Status: Boolean);
begin
   btnSalvar_Item.Enabled  := Status ;
   if (qry_product_entry_itens.IsEmpty) then
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
    if ((qry_product_entry_itens.RecordCount >0) and (btnSalvar_Item.tag = 1)) then
     begin
      btnCancel_Item.Enabled  := not Status;
      btnExcluir_Item.Enabled := Status;
     end;
end;

procedure Tfrm_stock_entry.limpaCache(Sender: TObject);
begin
    qry.CommitUpdates();
end;

procedure Tfrm_stock_entry.looComboxPed_CompraPropertiesCloseUp(Sender: TObject);
begin
  if (Trim(looComboxPed_Compra.Text)= '') then
  begin
    Application.MessageBox('Selecione um número de pedido, para continuar !',
      'AVISO DO SISTEMA', MB_OK + MB_ICONWARNING);
    Exit;
  end;


    looComboxEstoque.ItemIndex := -1;
    qry_stock.locate('codStock',qry_purchase_orderCodStock.AsString,[loCaseInsensitive, loPartialKey]);
    looComboxEstoque.Text := qry_stocksto_name.AsString;



end;

procedure Tfrm_stock_entry.looComboxProdutoPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  edtUND.Text := qry_productpru_initials.AsString;
end;

procedure Tfrm_stock_entry.PopupMenu_1Popup(Sender: TObject);
begin
  inherited;
  ConfirmaEntrada1.Enabled := qrypde_status.AsString = 'A';
  Cancelarentrada1.Enabled := qrypde_status.AsString <> 'C';
end;

procedure Tfrm_stock_entry.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
   //SQL para obter Número do Cod ID em Hex--------
  With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   pde_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela purchase_order inserindo os primeiros registros obrigatórios----
   Text:='insert into product_entry (pde_id,pde_cod,pde_status,contract_ctr_cod,pde_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(pde_cod)+'),''A'', unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'), Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;       //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.SQL.Text:= ' SELECT pro_enty.*, hex(pde_cod)as CodProEnty, hex(pro_enty.stock_sto_cod)as CodStock, sto.sto_name, supp.sup_first_name, '+
                  ' supp.sup_last_name, pur_ord.pco_id FROM product_entry as pro_enty                          '+
                  ' left join purchase_order as pur_ord on pur_ord.pco_cod = pro_enty.purchase_order_pco_cod   '+
                  ' left join stock as sto on sto.sto_cod = pro_enty.stock_sto_cod                             '+
                  ' left join supplier as supp on supp.sup_cod = pro_enty.supplier_sup_cod                     '+
                  ' where pro_enty.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')          '+
                  ' and pro_enty.pde_cod = unhex('+ QuotedStr(pde_cod)+') and pro_enty.pde_deleted_at is null ';
   qry.Prepare;
   qry.Open;
   qry.Edit;


end;

end.
