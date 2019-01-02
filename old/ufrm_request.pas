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
  Vcl.DBGrids, ACBrSocket, ACBrCEP, cxCurrencyEdit, cxButtons;

type
  Tfrm_request = class(Tfrm_form_default)
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    qry_employee: TFDQuery;
    ds_employee: TDataSource;
    ds_stock: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    ds_purchase_order_iten: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    ds_product: TDataSource;
    qry_product: TFDQuery;
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
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    qry_parameter_stock: TFDQuery;
    frx_db_parameter_stock: TfrxDBDataset;
    qry_employeeemp_type: TStringField;
    qry_employeeemp_status: TStringField;
    qry_employeerec_name: TStringField;
    qry_employeeemp_cod: TBytesField;
    qry_employeerecord_rec_cod: TBytesField;
    qry_employeecontract_ctr_cod: TBytesField;
    qry_stocksto_name: TStringField;
    qry_stocksto_cod: TBytesField;
    qry_stockcontract_ctr_cod: TBytesField;
    qry_stockenterprise_ent_cod: TBytesField;
    qry_purchase_order_iten: TFDQuery;
    cxGrid1DBTableView1poi_id: TcxGridDBColumn;
    cxGrid1DBTableView1poi_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1poi_dt_registration: TcxGridDBColumn;
    cxGrid1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid1DBTableView1pru_initials: TcxGridDBColumn;
    looComboxSolicitante: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    looComboxFuncionario: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    looComboxProduto: TcxLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    edtQTD: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    qry_productproCod: TStringField;
    qry_productpro_name: TStringField;
    qry_productpro_cod: TBytesField;
    qry_productcontract_ctr_cod: TBytesField;
    qry_productpro_id: TLongWordField;
    qry_purchase_order_itenpoi_cod: TBytesField;
    qry_purchase_order_itenpurchase_order_pco_cod: TBytesField;
    qry_purchase_order_itenproduct_pro_cod: TBytesField;
    qry_purchase_order_itenpoi_id: TLongWordField;
    qry_purchase_order_itenpoi_product_quant: TBCDField;
    qry_purchase_order_itenpoi_product_quant_served: TBCDField;
    qry_purchase_order_itenpoi_deleted_at: TDateTimeField;
    qry_purchase_order_itenpoi_dt_registration: TDateTimeField;
    qry_purchase_order_itenpro_name: TStringField;
    qry_purchase_order_itenpru_initials: TStringField;
    qry_purchase_order_itenCodItens: TStringField;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    btnSalvar_Item: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    btnEditar_Item: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    btnCancel_Item: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    btnExcluir_Item: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    Action_request: TActionList;
    act_save_request_itns: TAction;
    act_edit_request_itens: TAction;
    act_cancel_request_itens: TAction;
    act_delete_request_itens: TAction;
    edtUND: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
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
    cxGrid_1DBTableView1pco_id: TcxGridDBColumn;
    cxGrid_1DBTableView1poc_status_reason: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_status: TcxGridDBColumn;
    cxGrid_1DBTableView1pco_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_name: TcxGridDBColumn;
    cxGrid_1DBTableView1Funcionario: TcxGridDBColumn;
    pupMenuRequisicao: TPopupMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    Cancelar1: TMenuItem;
    qryFuncionario: TStringField;
    qry_productpru_name: TStringField;
    qry_productpru_initials: TStringField;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    qry_parameter_stockprs_cod: TBytesField;
    qry_parameter_stockprs_id: TLongWordField;
    qry_parameter_stockprs_req_day_exp: TByteField;
    frx_db_Requisicao: TfrxDBDataset;
    frx_db_ItensRequisicao: TfrxDBDataset;
    qry_purchase_order_itenpro_id: TLongWordField;
    procedure qryAfterInsert(DataSet: TDataSet);
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid_1DBTableView1FilterDialogShow(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var ADone: Boolean);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure cxTabSheet_2Show(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Excluir2Click(Sender: TObject);
    procedure Editar2Click(Sender: TObject);
    procedure act_save_request_itnsExecute(Sender: TObject);
    procedure act_edit_request_itensExecute(Sender: TObject);
    procedure act_cancel_request_itensExecute(Sender: TObject);
    procedure act_delete_request_itensExecute(Sender: TObject);
    procedure cxTabSheet_3Show(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure looComboxProdutoPropertiesCloseUp(Sender: TObject);
    procedure looComboxSolicitantePropertiesCloseUp(Sender: TObject);
    procedure looComboxFuncionarioPropertiesCloseUp(Sender: TObject);
  private
      pco_cod,iten_cod:string;
      iten_ID: Integer;
  public
    { Public declarations }
  //variaveis para parametros do sistema
  diaMaximoVenc:Integer;
  procedure limpaCache(Sender:TObject);
  procedure ExibirRequisicao;
  procedure ExibirEstoque;
  procedure HabiliTarButtun(Status: Boolean);
  end;

var
  frm_request: Tfrm_request;

implementation

{$R *.dfm}

uses ufrm_dm, Class_Report, ufrm_dm_report;

procedure Tfrm_request.Action_cancelExecute(Sender: TObject);
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

  ExibirRequisicao;

end;

procedure Tfrm_request.Action_deleteExecute(Sender: TObject);
begin

   inherited;
   if (result = false) then
      exit;

//Condição para não permitir excluir um pedido de compra que esteja diferente do status de A - Aberto
 if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
  begin
     Application.MessageBox('Só é permitido excluir uma requisição que esteja em Aberto !','AVISO DA REQUISIÇÃO', MB_ICONINFORMATION + MB_OK);
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

     Application.MessageBox('Requisição excluída com sucesso!','AVISO DA REQUISIÇÃO', MB_OK + MB_ICONINFORMATION);

    end;

    ExibirRequisicao;

end;

procedure Tfrm_request.Action_editExecute(Sender: TObject);
begin
 if qry.IsEmpty then
   exit;

 inherited;

  btnSalvar_Item.Tag := 1; //Tag = 1 - Condição para Inserir Itens Na Requisição----
  pco_cod := qryCodPurchase.AsString;
  ExibirEstoque;
  looComboxFuncionario.Text := qryFuncionario.AsString;
  looComboxSolicitante.Text    := qrysto_name.AsString;

  qry_purchase_order_iten.Close;
  qry_purchase_order_iten.Open;

  HabiliTarButtun(True);


end;

procedure Tfrm_request.Action_insertExecute(Sender: TObject);
begin
   inherited;

   qry.Filtered:=False;
   btnSalvar_Item.Tag := 1;   //Tag = 1 - Condição para Inserir Itens Na Requisição----
   qry_purchase_order_iten.Close;
   qry_purchase_order_iten.Open;
   ExibirEstoque;
   HabiliTarButtun(True);

end;

procedure Tfrm_request.Action_saveExecute(Sender: TObject);
begin
   cxGrid1.SetFocus;

   if qry_purchase_order_iten.IsEmpty then
   begin
     Application.MessageBox('Não é possível salvar, falta incluir os produtos nesta requisição !','AVISO DA REQUISIÇÃO',MB_OK + MB_ICONQUESTION);
      Exit;
   end;


  if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido alterar uma requisição que esteja em aberto!','AVISO DA REQUISIÇÃO', MB_ICONINFORMATION + MB_OK);
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
          ' where contract_ctr_cod =unhex(' +QuotedStr(frm_dm.v_contract_ctr_cod)+')';
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

   ExibirRequisicao;

end;

procedure Tfrm_request.act_cancel_request_itensExecute(Sender: TObject);
begin
  btnSalvar_Item.Tag := 1; //Tag = 1 - Condição para Inserir Itens Na Requisição----
  looComboxProduto.Clear;
  edtQTD.Clear;
  edtUND.Clear;
  cxGrid1.SetFocus;
  HabiliTarButtun(true);

end;

procedure Tfrm_request.act_delete_request_itensExecute(Sender: TObject);
begin
    //--Condição para só deixar Excluir produtos no Pedido em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Excluir), produtos em requisição que esteja em aberto!','AVISO DA REQUISIÇÃO', MB_ICONINFORMATION + MB_OK);
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
       Text:= 'Delete from purchase_order_iten where poi_cod =unhex(:poi_cod)';
       ParamByName('poi_cod').AsString := qry_purchase_order_itenCodItens.AsString;
       Prepare;
       ExecSQL;

       Application.MessageBox('Produto excluído com sucesso!','AVISO DE EXCLUSÃO', MB_OK + MB_ICONINFORMATION);
     end;
   end;

   btnSalvar_Item.Tag :=1;   //Tag = 1 - Condição para Inserir Itens Na Requisição----
   qry_purchase_order_iten.Close;
   qry_purchase_order_iten.Open;
   HabiliTarButtun(true);
end;

procedure Tfrm_request.act_edit_request_itensExecute(Sender: TObject);
begin
   //--Condição para só deixar Alterar produtos no Pedido em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos em requisição que esteja em aberto!','AVISO DA REQUISIÇÃO', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     edtUND.Clear;
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

procedure Tfrm_request.act_save_request_itnsExecute(Sender: TObject);
begin
    //--Condição para só deixar inserir ou alterar produtos na requisição em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos na requisição que esteja em aberto!','AVISO DA REQUISIÇÃO', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     cxGrid1.SetFocus;
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
         edtUND.Clear;
         cxGrid1.SetFocus;
         btnSalvar_Item.Tag := 1;  //Tag = 1 - Condição para Inserir Itens Na Requisição----
         HabiliTarButtun(True);
    end else
    begin
      application.MessageBox('Para inserir um produto, é necessário informar um "Produto e sua Quantidade" !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION)
    end;

end;

procedure Tfrm_request.btnInserirClick(Sender: TObject);
begin
   //--Condição para só deixar inserir ou alterar produtos na requisição em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos na requisição que estejam em abertos!','AVISO DA REQUISIÇÃO', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     cxGrid1.SetFocus;
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
         cxGrid1.SetFocus;
         btnSalvar_Item.Tag := 1;
    end else
    begin
      application.MessageBox('Para inserir um produto, é necessário informar um "Produto e sua Quantidade" !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION)
    end;

end;

procedure Tfrm_request.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  qry_employee.Refresh;
end;

procedure Tfrm_request.cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
begin
  inherited;
  qry_stock.Refresh;
end;

procedure Tfrm_request.cxGrid_1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
IndiceCampo: Integer;
Valor      : Variant;
begin
  inherited;
   if (AViewInfo <> nil) and ((Sender as TcxGridDBTableView).DataController.Dataset.Active ) then
   begin
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

procedure Tfrm_request.cxTabSheet_2Show(Sender: TObject);
begin
  inherited;
  //
end;

procedure Tfrm_request.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;
   qry_product.Close;
   qry_product.Open;

   qry_employee.Close;
   qry_employee.Open;
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
 if (qry.RecordCount >0) then
  begin
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
      ExibirRequisicao;
     end
    else
    Application.MessageBox('Motivo do cancelamento menor que 20 caracteres!','REQUISIÇÃO',MB_OK + MB_ICONWARNING);
   end;
  end
  else
   Application.MessageBox('Não existe nenhuma Requisição para ser Cancelada !','REQUISIÇÃO',MB_OK + MB_ICONINFORMATION);

end;

procedure Tfrm_request.dxLibRequClick(Sender: TObject);
var
motLib:string;
begin
  inherited;
if Application.MessageBox('Deseja liberar essa requisição?','REQUISIÇÃO',MB_YESNO + MB_ICONQUESTION) = mrYes  then
 begin
 //Comando para verificar se existe produtos na requisição, caso exista produto poderá ser liberada
   if qry_purchase_order_iten.Locate('purchase_order_pco_cod',qrypco_cod.Value,[loCaseInsensitive, loPartialKey]) then
   begin
     motLib:=UpperCase(InputBox('Liberação','Informe uma observação da liberação! (Não obrigatório)',motLib));
     qry.Edit;
     qrypco_status.AsString:='L';
     qrypoc_status_reason.AsString:=motLib;
     qry.Post;
     FDSchemaAdapter_1.ApplyUpdates(0);
     ExibirRequisicao;
   end
   //Caso a requisição esteja vasia sem produtos não podera ser liberada
   else
   Application.MessageBox('Não existe nenhum produto nesta requisição, portanto ela não pode ser liberado !','AVISO DO SISTEMA',MB_OK+MB_ICONQUESTION);
 end;
end;

procedure Tfrm_request.Editar2Click(Sender: TObject);
begin
  inherited;

   //--Condição para só deixar Alterar produtos no Pedido em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos em requisição que esteja em aberto!','AVISO DA REQUISIÇÃO', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;

  btnSalvar_Item.Tag := 2; ////button com Tag = 2 -- condição onde sei que estou alterando um produto do pedido----
  looComboxProduto.Text := qry_purchase_order_itenpro_name.AsString;
  edtQTD.Value          := qry_purchase_order_itenpoi_product_quant.AsFloat;
  edtQTD.SetFocus;

end;

procedure Tfrm_request.edtQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key =13 then
    btnSalvar_Item.Click;
end;

procedure Tfrm_request.Excluir2Click(Sender: TObject);
begin
  inherited;

  //--Condição para só deixar Excluir produtos no Pedido em Status de Aberto ------
   if (qrypco_status.OldValue  <> 'A') and ((qrypco_status.Value  <> 'A') or (qrypco_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), produtos em pedidos de compra que estejam em abertos!','AVISO DO PEDIDO DE COMPRA', MB_ICONINFORMATION + MB_OK);
     looComboxProduto.Clear;
     edtQTD.Clear;
     looComboxProduto.SetFocus;
     exit;
   end;

  if Application.MessageBox('Deseja excluir este produto ?','AVISO DE EXCLUSÃO',MB_YESNO+MB_ICONQUESTION)=mrYes then
   begin
     with frm_dm.qry,sql do
       begin
       Close;      //--SQL para excluir um produto do pedido de compra----
       Text:= 'Delete from purchase_order_iten where poi_cod =unhex(:poi_cod)';
       ParamByName('poi_cod').AsString := qry_purchase_order_itenCodItens.AsString;
       Prepare;
       ExecSQL;

       Application.MessageBox('Produto excluído com sucesso!','AVISO DE EXCLUSÃO', MB_OK + MB_ICONINFORMATION);
     end;
   end;


   qry_purchase_order_iten.Close;
   qry_purchase_order_iten.Open;
end;

procedure Tfrm_request.ExibirEstoque;
begin
    qry_stock.Close;
    qry_stock.SQL.Text:= ' select st.sto_name, st.sto_cod, st.sto_id,st.contract_ctr_cod,st.enterprise_ent_cod, hex(st.sto_cod) as codStock  from stock st  '+
                         ' left join contract co on co.ctr_cod = st.contract_ctr_cod                             ' +
                         ' left join enterprise en on en.ent_cod = st.enterprise_ent_cod                         ' +
                         ' where st.sto_status = ''A'' and st.contract_ctr_cod =unhex(:ctr_cod)                  ' +
                         ' and st.enterprise_ent_cod in (select enterprise_ent_cod                               ' +
                         ' from contract_user_enterprise where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod))   ';
    qry_stock.ParamByname('ctr_cod').AsString     := frm_dm.v_contract_ctr_cod;
    qry_stock.ParamByname('ctr_usr_cod').AsString := frm_dm.v_ctr_usr_cod;
    qry_stock.Prepare;
    qry_stock.Open;
end;

procedure Tfrm_request.ExibirRequisicao;
begin
  qry.Close;
  qry.SQL.Text:= ' select pur.*, hex(pco_cod)as CodPurchase, sto_name from purchase_order as pur  '+
                 ' left join stock as sto on sto.sto_cod = pur.stock_sto_cod                      '+
                 ' where pur.pco_type = ''R'' and pur.contract_ctr_cod =unhex(:ctr_cod)           '+
                 ' and sto.enterprise_ent_cod in (select enterprise_ent_cod from contract_user_enterprise '+
                 ' where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod)) and pco_deleted_at is null ';
  qry.ParamByName('ctr_cod').AsString := frm_dm.v_contract_ctr_cod;
  qry.ParamByName('ctr_usr_cod').AsString := frm_dm.v_ctr_usr_cod;
  qry.Prepare;
  qry.Open;

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
  //SQL para exibir somente as Requisições da Unidade de estoque que o usuário tem acesso
    ExibirRequisicao ;
 //---------------------------------------------------------------------------

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

procedure Tfrm_request.HabiliTarButtun(Status: Boolean);
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
end;

procedure Tfrm_request.looComboxFuncionarioPropertiesCloseUp(Sender: TObject);
begin
  inherited;
   qryemployee_emp_cod.Value := qry_employeeemp_cod.Value;
   qry.Post;
   qry.ApplyUpdates(0);
   qry.Edit;
end;

procedure Tfrm_request.looComboxProdutoPropertiesCloseUp(Sender: TObject);
begin
  inherited;
   edtUND.Text := qry_productpru_initials.AsString;

end;

procedure Tfrm_request.looComboxSolicitantePropertiesCloseUp(Sender: TObject);
begin
  inherited;
   qrystock_sto_cod.Value := qry_stocksto_cod.Value;
   qry.Post;
   qry.ApplyUpdates(0);
   qry.Edit;
end;

procedure Tfrm_request.qryAfterInsert(DataSet: TDataSet);
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
         ' select 0,unhex('+QuotedStr(pco_cod)+'),''A'',''R'',unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'), Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:=  ' select pur.*, hex(pco_cod)as CodPurchase, sto_name from purchase_order as pur   ' +
                 ' left join stock as sto on sto.sto_cod = pur.stock_sto_cod                       ' +
                 ' where pur.pco_type = ''R'' and pur.contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')' +
                 ' and pco_cod = unhex('+ QuotedStr(pco_cod)+') and pur.pco_deleted_at is null';
   qry.Prepare;
   qry.open;
   qry.Edit;

end;

end.
