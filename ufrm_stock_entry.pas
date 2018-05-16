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
  frxClass, ACBrSocket, ACBrCEP, frxDBSet;

type
  Tfrm_stock_entry = class(Tfrm_form_default)
    qrypde_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrysupplier_sup_id: TIntegerField;
    qrypurchase_order_pco_id: TIntegerField;
    qrypde_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1pde_id: TcxGridDBColumn;
    cxGrid_1DBTableView1supplier_sup_id: TcxGridDBColumn;
    cxGrid_1DBTableView1purchase_order_pco_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pde_invoice: TcxGridDBColumn;
    cxGrid_1DBTableView1pde_dt_emission: TcxGridDBColumn;
    cxGrid_1DBTableView1pde_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    qry_product_entry: TFDQuery;
    ds_product_entry: TDataSource;
    qry_product_entrypei_id: TFDAutoIncField;
    qry_product_entryproduct_pro_id: TIntegerField;
    qry_product_entryproduct_entry_pde_id: TIntegerField;
    qry_product_entrypei_product_quant: TBCDField;
    qry_product_entrypei_dt_registration: TDateTimeField;
    ConfirmaEntrada1: TMenuItem;
    qry_stock_iten: TFDQuery;
    qrystock_sto_id: TIntegerField;
    qrypde_status: TStringField;
    Cancelarentrada1: TMenuItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    qry_purchase_order: TFDQuery;
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
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid1DBTableView1pei_product_quant: TcxGridDBColumn;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    qry_stock_itensti_id: TFDAutoIncField;
    qry_stock_itenstock_sto_id: TIntegerField;
    qry_stock_itenproduct_pro_id: TIntegerField;
    qry_stock_itenproduct_department_prd_id: TIntegerField;
    qry_stock_itenproduct_sector_prs_id: TIntegerField;
    qry_stock_itensti_product_quant: TBCDField;
    qry_stock_itensti_dt_registration: TDateTimeField;
    qrypde_invoice: TIntegerField;
    qrypde_invoice_serie: TIntegerField;
    qrypde_invoice_dt_emission: TDateField;
    qrypde_document: TStringField;
    qryped_cost_delivery: TBCDField;
    qry_purchase_orderpco_id: TFDAutoIncField;
    qry_purchase_ordercontract_ctr_id: TIntegerField;
    qry_purchase_orderemployee_emp_id: TIntegerField;
    qry_purchase_orderstock_sto_id: TIntegerField;
    qry_purchase_orderpco_type: TStringField;
   qry_purchase_orderpco_status: TStringField;
    qry_purchase_orderpoc_status_reason: TStringField;
    qry_purchase_orderpco_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1pde_status: TcxGridDBColumn;
    frxDBD_Entrada: TfrxDBDataset;
    frxDBD_Entrada_Itens: TfrxDBDataset;
    qry_product_entryNome_Produto: TStringField;
    qryFornecedor: TStringField;
    qryEstoque: TStringField;
    qry_stocksto_name: TStringField;
    qry_stocksto_id: TFDAutoIncField;
    qry_stockcontract_ctr_id: TIntegerField;
    qry_stockenterprise_ent_id: TIntegerField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_product_entryAfterInsert(DataSet: TDataSet);
    procedure ConfirmaEntrada1Click(Sender: TObject);
    procedure PopupMenu_1Popup(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure Cancelarentrada1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure cxDBLookupComboBox1Enter(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesPopup(Sender: TObject);
    procedure cxTabSheet_3Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
  end;

var
  frm_stock_entry: Tfrm_stock_entry;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock_entry.Action_saveExecute(Sender: TObject);

begin

   if qry_product_entry.IsEmpty then
   begin
     Application.MessageBox('Não é possível salvar, falta incluir os produtos desta Nota !','AVISO DO SISTEMA',MB_OK + MB_ICONQUESTION);
      Exit;
   end;

  inherited;

  with frm_dm.qry2,sql do
     begin
       Close;
       Clear;
       Text := ' update purchase_order set pco_status =:Letra ' +
               ' where pco_id =:pco_id ';
       ParamByName('Letra').AsString := 'F';
       ParamByName('pco_id').AsInteger := qrypurchase_order_pco_id.AsInteger;
       Prepare;
       ExecSQL;
     end;


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
    end
    else
    begin
      qry_product_entry.First;
      while not qry_product_entry.Eof do
      begin
        qry_stock_iten.Locate('product_pro_id',
          qry_product_entryproduct_pro_id.AsString,[loCaseInsensitive, loPartialKey]);
        qry_stock_iten.Edit;
        qry_stock_itensti_product_quant.AsFloat :=qry_stock_itensti_product_quant.AsFloat -
          qry_product_entrypei_product_quant.AsFloat;
        qry_stock_iten.Post;
        qry_product_entry.Next;
      end;
      qry_stock_iten.ApplyUpdates(0);

      qry.Edit;
      qrypde_status.AsString := 'C';
      qry.Post;
      qry.ApplyUpdates(0);
      //---------------------------------
      qry.Close;
      qry.Open;
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
    qry_product_entry.First;
    with frm_dm.qry, sql do
    begin
      Text := ' select * from stock_iten ' +
              ' where product_pro_id =:item' +
              ' AND stock_sto_id =:stok_id';

      while not qry_product_entry.Eof do
      begin
        ParamByName('item').AsString := qry_product_entryproduct_pro_id.AsString;
        ParamByName('stok_id').AsString := qrystock_sto_id.AsString;
        prepare;
        open;

        // Se não encontrar o item na relaçao dos itens do estoque cadastre senao altera as quantidades
        if IsEmpty then
        begin
          qry_stock_iten.Insert;
          qry_stock_itenstock_sto_id.AsInteger := qrystock_sto_id.AsInteger;
          qry_stock_itenproduct_pro_id.AsInteger := qry_product_entryproduct_pro_id.AsInteger;
          qry_stock_itensti_product_quant.AsFloat := qry_product_entrypei_product_quant.AsFloat;
          qry_stock_iten.Post;
        end
        else
        begin
          qry_stock_iten.Locate('product_pro_id',
            qry_product_entryproduct_pro_id.AsString,
            [loCaseInsensitive, loPartialKey]);
          qry_stock_iten.Edit;
          qry_stock_itensti_product_quant.AsFloat :=
            qry_stock_itensti_product_quant.AsFloat +
            qry_product_entrypei_product_quant.AsFloat;
          qry_stock_iten.Post;
        end;
        qry_product_entry.Next;
      end;
      qry_stock_iten.ApplyUpdates(0);
      //--------------------------------
      qry.Edit;
      qrypde_status.AsString := 'E';
      qry.Post;
      qry.ApplyUpdates(0);
      //-------------------------------
      qry.Close;
      qry.Open;
      Application.MessageBox('Entrada confirmada com sucesso!', 'Entrada',MB_OK + MB_ICONINFORMATION);
    end;
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

procedure Tfrm_stock_entry.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;
  //SQL para exibir somente as unidades de estoque que o usuário tem acesso
   qry_stock.Close;
   qry_stock.ParamByName('CTR_USR_ID').Value := frm_dm.qry_signinctr_cod.Value;
   qry_stock.Prepare;
   qry_stock.Open;

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
  qry.Close;
  qry.ParamByName('CTR_USR_ID').Value := frm_dm.qry_signinctr_cod.Value;
  qry.Prepare;
  qry.Open;
end;

procedure Tfrm_stock_entry.limpaCache(Sender: TObject);
begin
    qry.CommitUpdates();
    qry_product_entry .CommitUpdates();
    qry_purchase_order.CommitUpdates();
    qry_stock_iten.CommitUpdates();
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
  qrypde_dt_registration.Value := Now;
  qrypde_status.AsString := 'A';
  qry.Post;
  qry.Edit;


end;

procedure Tfrm_stock_entry.qryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if qrypde_status.AsString = 'E' then
  begin
    Application.MessageBox('Não é permitido Excluir uma entrada já efetivada!',
      'Entrada', MB_OK + MB_ICONINFORMATION);
    exit;
  end;
end;

procedure Tfrm_stock_entry.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (ds_product_entry.State in [dsEdit,dsInsert]) then
   begin
     ds_product_entry.DataSet.Post;
   end;

end;

procedure Tfrm_stock_entry.qry_product_entryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qry_product_entrypei_dt_registration.Value := Now;
end;

end.
