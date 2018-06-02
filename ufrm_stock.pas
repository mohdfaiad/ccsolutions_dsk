unit ufrm_stock;

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
  cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frxClass,
  ACBrSocket, ACBrCEP, frxDBSet, Conexao;

type
  Tfrm_stock = class(Tfrm_form_default)
    qrysto_type: TStringField;
    qrysto_status: TStringField;
    qrysto_dt_registration: TDateTimeField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxGrid_1DBTableView1sto_type: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_status: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_dt_registration: TcxGridDBColumn;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    qrysto_name: TStringField;
    cxGrid_1DBTableView1sto_name: TcxGridDBColumn;
    frxDBD_Estoque: TfrxDBDataset;
    qryEmpresa: TStringField;
    qrysto_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryenterprise_ent_cod: TBytesField;
    qrysto_id: TLongWordField;
    qrysto_deleled_at: TDateTimeField;
    cxGrid_1DBTableView1sto_id: TcxGridDBColumn;
    cxGrid_1DBTableView1Empresa: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_cod: TcxGridDBColumn;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
  private
    FConexao : TConexao;
    { Private declarations }
     stock_cod:string;
  public
    { Public declarations }
    function ExibirStock_Em_Insert: TFDQuery;
  end;

var
  frm_stock: Tfrm_stock;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock.Action_deleteExecute(Sender: TObject);
begin
 //--- SQL para verificar se existe produtos em itens do estoque---
 // Caso exista o estoque não poderá ser excluído
  with frm_dm.qry3, sql do
    begin
      Clear;
      Text := ' select * from stock_iten' +
              ' where stock_sto_id =:sto_id';
       ParamByName('sto_id').AsInteger := qrysto_id.AsInteger;
       Prepare;
       Open;

     if RecordCount >=1 then
     begin
       Application.MessageBox('Não é permitido excluir este estóque pois o mesmo contem produtos !','AVISO DO ESTOQUE',MB_OK+MB_ICONINFORMATION);
       exit;
     end;

    end;
  //--Caso não retorne nenhum produto no itens do estoque poderá ser excluido
   if Application.MessageBox('Tem certeza que deseja excluir este estoque ? ','AVISO DE EXCLUSÃO DO ESTOQUE',MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin

     inherited;
      qry.ApplyUpdates(0);

    end;



end;

procedure Tfrm_stock.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure Tfrm_stock.Action_saveExecute(Sender: TObject);
begin
   inherited;
   cxTabSheet_1.Show;
end;

procedure Tfrm_stock.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Para atualizar combobox
   frm_dm.qry_enterprise.Refresh;
end;

function Tfrm_stock.ExibirStock_Em_Insert: TFDQuery;
  var
    qry : TFDQuery;
begin
   qry := FConexao.CriarQuery;

   qry.Unprepare;
   qry.Close;
   qry.sql.text:= ' select * from enterprise ' +
                  ' where ent_cod = ' + stock_cod +
                  ' and ent_deleted_at is null ';
   qry.Prepare;
   qry.open;


end;

Procedure Tfrm_stock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_stock.Destroy;
  frm_stock := Nil;
end;

procedure Tfrm_stock.FormShow(Sender: TObject);
begin
  inherited;
  //SQL para exibir somente as unidade de estoque que o usuário tem acesso
  qry.Close;
  qry.ParamByName('CTR_USR_COD').Value := frm_dm.v_ctr_usr_cod;
  qry.Prepare;
  qry.Open;


end;

procedure Tfrm_stock.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;

   With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   stock_cod:=Fields[0].AsString;

   Close;
   Text:='insert into stock (sto_id,sto_cod,contract_ctr_cod,sto_dt_registration) ' +
         ' select 0,'+ stock_cod + ',' + frm_dm.v_contract_ctr_cod + ' now() ';
   Prepare;
   ExecSQL;
  end;


   qry.Unprepare;
   qry.Close;
   qry.sql.text:= ' select * from enterprise ' +
                  ' where ent_cod = ' + stock_cod +
                  ' and ent_deleted_at is null ';
   qry.Prepare;
   qry.open;
   qry.Edit;
end;

end.
