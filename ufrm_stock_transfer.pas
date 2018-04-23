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
  frxDBSet, Vcl.StdCtrls, cxButtons;

type
  Tfrm_stock_transfer = class(Tfrm_form_default)
    cxGrid_1DBTableView1prt_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1employee_emp_id_request: TcxGridDBColumn;
    cxGrid_1DBTableView1employee_emp_id_agent: TcxGridDBColumn;
    cxGrid_1DBTableView1employee_emp_id_lecturer: TcxGridDBColumn;
    cxGrid_1DBTableView1stock_sto_id_exit: TcxGridDBColumn;
    cxGrid_1DBTableView1stock_sto_id_entrance: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_status: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_status_reason: TcxGridDBColumn;
    cxGrid_1DBTableView1prt_dt_registration: TcxGridDBColumn;
    cxDBSpinEdit4: TcxDBSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBSpinEdit5: TcxDBSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    qry_product_transfer_iten: TFDQuery;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    dsItens: TDataSource;
    cxGrid1DBTableView1pti_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    qry_stock_iten: TFDQuery;
    ConfirmarTransfernciaSaida1: TMenuItem;
    CancelarTransferncia1: TMenuItem;
    qry_stock_itensti_id: TFDAutoIncField;
    qry_stock_itenstock_sto_id: TIntegerField;
    qry_stock_itenproduct_pro_id: TIntegerField;
    qry_stock_itenproduct_department_prd_id: TIntegerField;
    qry_stock_itenproduct_sector_prs_id: TIntegerField;
    qry_stock_itensti_product_quant: TBCDField;
    qry_stock_itensti_dt_registration: TDateTimeField;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    qry_product_transfer_itenpti_id: TFDAutoIncField;
    qry_product_transfer_itenproduct_transfer_prt_id: TIntegerField;
    qry_product_transfer_itenproduct_pro_id: TIntegerField;
    qry_product_transfer_itenpti_product_quant: TBCDField;
    qry_product_transfer_itenpti_dt_registration: TDateTimeField;
    qry_stock_exit: TFDQuery;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    ds_stock_exit: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    qry_employee: TFDQuery;
    ds_employee: TDataSource;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    qryprt_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryemployee_emp_id_request: TIntegerField;
    qryemployee_emp_id_agent: TIntegerField;
    qryemployee_emp_id_lecturer: TIntegerField;
    qrystock_sto_id_exit: TIntegerField;
    qrystock_sto_id_entrance: TIntegerField;
    qryprt_status: TStringField;
    qryprt_status_reason: TStringField;
    qryprt_dt_registration: TDateTimeField;
    qry_productproduct_pro_id: TIntegerField;
    qry_productpro_name: TStringField;
    qry_productstock_sto_id: TIntegerField;
    qry_productsti_product_quant: TBCDField;
    cxGrid1DBTableView1pti_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1pti_dt_registration: TcxGridDBColumn;
    ConfirmarTransfernciaEntrada1: TMenuItem;
    qrypurchase_order_pco_id: TIntegerField;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    qry_purchase_order: TFDQuery;
    qry_purchase_orderpco_id: TFDAutoIncField;
    qry_purchase_ordercontract_ctr_id: TIntegerField;
    qry_purchase_orderemployee_emp_id: TIntegerField;
    qry_purchase_orderpco_type: TStringField;
    qry_purchase_orderpco_status: TStringField;
    qry_purchase_orderpoc_status_reason: TStringField;
    qry_purchase_orderpco_dt_registration: TDateTimeField;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    qry_purchase_order_iten: TFDQuery;
    qry_purchase_order_itenpoi_id: TFDAutoIncField;
    qry_purchase_order_itenpurchase_order_pco_id: TIntegerField;
    qry_purchase_order_itenproduct_pro_id: TIntegerField;
    qry_purchase_order_itenpoi_product_quant: TBCDField;
    qry_purchase_order_itenpoi_product_quant_served: TBCDField;
    qry_purchase_order_itenpoi_dt_registration: TDateTimeField;
    ds_purchase_iten: TDataSource;
    frxDBD_Stock_Transfer: TfrxDBDataset;
    frxDBD_Tranfer_Itens: TfrxDBDataset;
    qryStock_Saida: TStringField;
    qrySolicitante: TStringField;
    qryStock_Entrada: TStringField;
    qry_product_transfer_itenProduto: TStringField;
    qry_stock_exitsto_name: TStringField;
    qry_stock_exitsto_id: TFDAutoIncField;
    qry_stock_exitcontract_ctr_id: TIntegerField;
    qry_stock_exitenterprise_ent_id: TIntegerField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure ConfirmarTransfernciaSaida1Click(Sender: TObject);
    procedure CancelarTransferncia1Click(Sender: TObject);
    procedure PopupMenu_1Popup(Sender: TObject);
    procedure ConfirmarTransfernciaEntrada1Click(Sender: TObject);
    procedure qry_product_transfer_itenAfterInsert(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure qryAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
   procedure limpaCache(Sender:TObject);
  end;

var
  frm_stock_transfer: Tfrm_stock_transfer;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock_transfer.Action_deleteExecute(Sender: TObject);
begin

 //Condição para não permitir excluir transferëncia que esteja diferente do status de A - Aberto
  if (Trim(qryprt_status.AsString) <> 'A') or (Trim(qryprt_status.AsString) ='') then
  // if (qryprt_status.OldValue  <> 'A') and ((qryprt_status.Value  <> 'A') or (qryprt_status.Value  = ''))  then
  begin
     Application.MessageBox('Só é permitido excluir uma transferencia que esteja em A - Aberto !','AVISO DE EXCLUSÃO DE TRANSFERENCIA', MB_ICONINFORMATION + MB_OK);
     qry.CancelUpdates;
     qry_product_transfer_iten.CancelUpdates;
     Exit;

  end;

 //Caso a transferëncia esteja no status de aberto poderar ser excluida
 if Application.MessageBox('Tem certeza que deseja excluir esta transferëncia ? ','AVISO DE EXCLUSÃO DE TRANSFERENCIA',MB_YESNO + MB_ICONQUESTION) = mrYes then
   begin
    qry_product_transfer_iten.First;
    while not qry_product_transfer_iten.Eof do
     begin
       qry_product_transfer_iten.Delete;
     end;

     qry_product_transfer_iten.ApplyUpdates(0);

     inherited;

   end;
end;

procedure Tfrm_stock_transfer.Action_saveExecute(Sender: TObject);
var
fecha:Boolean;
begin
//Variavel para analizar se todos os produtos da requisição já foram atendido
 fecha:=True;
  qry_product_transfer_iten.First;
  while not qry_product_transfer_iten.Eof do
   begin
      qry_purchase_order_iten.Locate('product_pro_id',
      qry_product_transfer_itenproduct_pro_id.AsInteger);
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
      qry_stock_iten.ParamByName('stock').AsInteger :=
        qrystock_sto_id_exit.AsInteger;
      qry_stock_iten.Prepare;
      qry_stock_iten.open;

      qry_product_transfer_iten.First;
      while not qry_product_transfer_iten.Eof do
      begin
        qry_stock_iten.Locate('product_pro_id',
          qry_product_transfer_itenproduct_pro_id.AsInteger,
          [loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat :=
          qry_stock_itensti_product_quant.AsFloat +
          qry_product_transfer_itenpti_product_quant.AsFloat;
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
      qry_stock_iten.ParamByName('stock').AsInteger :=
        qrystock_sto_id_exit.AsInteger;
      qry_stock_iten.Prepare;
      qry_stock_iten.open;

      qry_product_transfer_iten.First;
      while not qry_product_transfer_iten.Eof do
      begin
        qry_stock_iten.Locate('product_pro_id',
          qry_product_transfer_itenproduct_pro_id.AsString,
          [loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat :=
          qry_stock_itensti_product_quant.AsFloat +
          qry_product_transfer_itenpti_product_quant.AsFloat;
        qry_stock_iten.Post;
        qry_product_transfer_iten.Next;
      end;

      qry_stock_iten.Close;
      qry_stock_iten.ParamByName('stock').AsInteger :=
        qrystock_sto_id_entrance.AsInteger;
      qry_stock_iten.Prepare;
      qry_stock_iten.open;

      qry_product_transfer_iten.First;
      while not qry_product_transfer_iten.Eof do
      begin
        qry_stock_iten.Locate('product_pro_id',
          qry_product_transfer_itenproduct_pro_id.AsString,
          [loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat :=
          qry_stock_itensti_product_quant.AsFloat -
          qry_product_transfer_itenpti_product_quant.AsFloat;
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
  end;
end;

procedure Tfrm_stock_transfer.ConfirmarTransfernciaEntrada1Click
  (Sender: TObject);
begin

  if Application.MessageBox('Deseja confirmar a entrada da transferência',
    'Transferência', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    qry_stock_iten.Close;
    qry_stock_iten.ParamByName('stock').AsInteger :=
      qrystock_sto_id_entrance.AsInteger;
    qry_stock_iten.Prepare;
    qry_stock_iten.open;

    // Dá entrada, se não encontrar ele inclui no estoque
    qry_product_transfer_iten.First;
    while not qry_product_transfer_iten.Eof do
    begin
      if not qry_stock_iten.Locate('product_pro_id',
        qry_product_transfer_itenproduct_pro_id.AsString,
        [loCaseInsensitive, loPartialKey]) then
      begin
        qry_stock_iten.Insert;
        qry_stock_itenstock_sto_id.AsInteger :=
          qrystock_sto_id_entrance.AsInteger;
        qry_stock_itenproduct_pro_id.AsInteger :=
          qry_product_transfer_itenproduct_pro_id.AsInteger;
        qry_stock_itensti_product_quant.AsFloat :=
          qry_product_transfer_itenpti_product_quant.AsFloat;
        qry_stock_iten.Post;

        qry_stock_iten.Close;
        qry_stock_iten.ParamByName('stock').AsInteger :=
          qrystock_sto_id_entrance.AsInteger;
        qry_stock_iten.Prepare;
        qry_stock_iten.open;

        qry_product_transfer_iten.Next;
      end
      else
      begin
        qry_stock_iten.Locate('product_pro_id',
          qry_product_transfer_itenproduct_pro_id.AsString,
          [loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat :=
          qry_stock_itensti_product_quant.AsFloat +
          qry_product_transfer_itenpti_product_quant.AsFloat;
        qry_stock_iten.Post;
        qry_product_transfer_iten.Next;
      end;
    end;

    qry.Edit;
    qryprt_status.AsString := 'E'; // Transferencia em Efetivada
    qry.Post;
    Application.MessageBox('Entrada da transferência confirmada com sucesso!',
      'Entrada', MB_OK + MB_ICONINFORMATION);

     inherited;

     qry.ApplyUpdates(0);

  end;
end;

procedure Tfrm_stock_transfer.ConfirmarTransfernciaSaida1Click(Sender: TObject);
begin

  if Application.MessageBox('Deseja confirmar a saida da transferência',
    'Transferência', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    qry_product_transfer_iten.First;
    while not qry_product_transfer_iten.Eof do
    begin
      qry_product.Locate('product_pro_id',
        qry_product_transfer_itenproduct_pro_id.AsString,
        [loCaseInsensitive, loPartialKey]);

      if qry_productsti_product_quant.AsFloat <= 0 then
      begin
        Application.MessageBox
          ('Não é permitido incluir produtos na transferência com estoque zerado!',
          'AVISO', MB_OK + MB_ICONWARNING);
        Exit;
      end;

      if qry_product_transfer_itenpti_product_quant.AsFloat <= 0 then
      begin
        Application.MessageBox
          ('Informe a quantidade dos produtos para transferência!', 'AVISO',
          MB_OK + MB_ICONWARNING);
        Exit;
      end;

      if qry_product_transfer_itenpti_product_quant.AsFloat >
        qry_productsti_product_quant.AsFloat then
      begin
        Application.MessageBox
          ('Quantidade solicitada maior do que dos produtos para transferência!',
          'AVISO', MB_OK + MB_ICONWARNING);
        Exit;
      end;
      qry_product_transfer_iten.Next;
    end;

    qry_stock_iten.Close;
    qry_stock_iten.ParamByName('stock').AsInteger :=
      qrystock_sto_id_exit.AsInteger;
    qry_stock_iten.Prepare;
    qry_stock_iten.open;

    // Baixa estoque saida
    qry_product_transfer_iten.First;
    while not qry_product_transfer_iten.Eof do
    begin
      qry_stock_iten.Locate('product_pro_id',
        qry_product_transfer_itenproduct_pro_id.AsString,
        [loCaseInsensitive, loPartialKey]);
      qry_stock_iten.Edit;
      qry_stock_itensti_product_quant.AsFloat :=
        qry_stock_itensti_product_quant.AsFloat -
        qry_product_transfer_itenpti_product_quant.AsFloat;
      qry_stock_iten.Post;
      qry_product_transfer_iten.Next;
    end;

    qry.Edit;
    qryprt_status.AsString := 'T'; // Transferencia em transito
    qry.Post;
    Application.MessageBox('Saída da transferência confirmada com sucesso!',
      'Entrada', MB_OK + MB_ICONINFORMATION);

    inherited;
    qry.ApplyUpdates(0);
  end;
end;

procedure Tfrm_stock_transfer.cxDBButtonEdit1PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
var
numReq:string;
begin
  inherited;
  if (Trim(cxDBButtonEdit1.Text)= '') then
  begin
    Application.MessageBox('Informe uma requisiçao, o estoque de saída e entrada para importação!',
      'Transferência', MB_OK + MB_ICONWARNING);
    cxDBButtonEdit1.SetFocus;
    Exit;
  end;

  if Application.MessageBox('Deseja importar a requisição?', 'Transferência',
    MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    if not qry_purchase_order.Locate('pco_id',cxDBButtonEdit1.Text, [loCaseInsensitive, loPartialKey])
    then
    begin
      Application.MessageBox('Requisiçao não localizada!', 'Transferência',
        MB_OK + MB_ICONWARNING);
      Exit;
    end;

    qry_purchase_order.Locate('pco_id',cxDBButtonEdit1.Text,[loCaseInsensitive, loPartialKey]);
    numReq:=cxDBButtonEdit1.Text;
    if qry_purchase_orderpco_status.AsString = 'F' then
    begin
      Application.MessageBox('Requisiçao já utilizadaem uma transferência!',
        'Transferência', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if not(qry.State in [dsinsert])  then
    qry.Insert;

    qryemployee_emp_id_request.AsInteger := qry_purchase_orderemployee_emp_id.AsInteger;
    qrypurchase_order_pco_id.AsString:=numReq;
    qry.Post;
    qry.Edit;

    with frm_dm.qry,sql do
    begin
      Close;
      Text := 'select * from purchase_order_iten ' +
        ' where purchase_order_pco_id = ' +
        QuotedStr(qry_purchase_orderpco_id.AsString);
      Prepare;
      open;
      First;

      while not Eof do
      begin
        qry_product_transfer_iten.Insert;
        qry_product_transfer_itenproduct_pro_id.AsInteger := FieldByName('product_pro_id').AsInteger;
        qry_product_transfer_itenpti_product_quant.AsFloat := FieldByName('poi_product_quant').AsFloat - FieldByName('poi_product_quant_served').AsFloat;
        qry_product_transfer_iten.Post;
        Next;
      end;

    end;

    Application.MessageBox('Importação realizada com sucesso!', 'Transferência',MB_OK + MB_ICONWARNING);

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
   //SQL para exibir somente as Requisições da Unidade de estoque que o usuário tem acesso
   qry.Close;
   qry.ParamByName('CTR_USR_ID').Value := frm_dm.qry_signinctr_usr_id.Value;
   qry.Prepare;
   qry.Open;
 //---------------------------------------------------------------------------

end;

procedure Tfrm_stock_transfer.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
  qry_product_transfer_iten.CommitUpdates();
  qry_purchase_order.CommitUpdates();
  qry_purchase_order_iten.CommitUpdates();

end;

procedure Tfrm_stock_transfer.PopupMenu_1Popup(Sender: TObject);
begin
  inherited;
  ConfirmarTransfernciaSaida1.Enabled := qryprt_status.AsString = 'A';
  ConfirmarTransfernciaEntrada1.Enabled := qryprt_status.AsString = 'T';
  CancelarTransferncia1.Enabled := qryprt_status.AsString <> 'C';
end;

procedure Tfrm_stock_transfer.qryAfterDelete(DataSet: TDataSet);
begin
  inherited;
    qry.ApplyUpdates(0);
    qry.Close;
    qry.Open;
end;

procedure Tfrm_stock_transfer.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryprt_status.AsString := 'A';
  qryprt_dt_registration.Value := Now;
  qry.Post;
  qry.Edit;

end;

procedure Tfrm_stock_transfer.qryBeforePost(DataSet: TDataSet);
begin
  if (qrystock_sto_id_exit.AsInteger = qrystock_sto_id_entrance.AsInteger) and
    (qrystock_sto_id_exit.AsInteger > 0) and
    (qrystock_sto_id_entrance.AsInteger > 0) then
  begin
    Application.MessageBox
      ('Estoque de saída igual o estoque da entrada da transferência, favor verificar!',
      'Transferência', MB_OK + MB_ICONERROR);
    Exit
  end;
  inherited;

end;

procedure Tfrm_stock_transfer.qry_product_transfer_itenAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  qry_product_transfer_itenpti_dt_registration.Value := Now;
end;

end.
