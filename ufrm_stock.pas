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
    qryCodStock: TStringField;
    looComboxEmpresa: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure looComboxEmpresaPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
     stock_cod:string;
  public
      procedure ExibirEstoques;
  end;

var
  frm_stock: Tfrm_stock;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock.Action_cancelExecute(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State in [dsEdit] then
    Exit;

   if (qrysto_id.AsInteger = 0) then
    begin

      qry.Delete;
      qry.ApplyUpdates(0);
    end;

    ExibirEstoques;
end;

procedure Tfrm_stock.Action_deleteExecute(Sender: TObject);
begin
 //--- SQL para verificar se existe produtos em itens do estoque---
 // Caso exista o estoque não poderá ser excluído
  with frm_dm.qry3, sql do
    begin
      Clear;
      Text := ' select * from stock_iten' +
              ' where stock_sto_cod =unhex(:sto_cod)';
       ParamByName('sto_cod').AsString := stock_cod;
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
     qry.Edit;
     qrysto_deleled_at.AsDateTime := Now;
     qry.ApplyUpdates(0);

    end;

   ExibirEstoques;

end;

procedure Tfrm_stock.Action_editExecute(Sender: TObject);
begin
  inherited;

  frm_dm.qry_enterprise.Locate('ent_last_name',qryEmpresa.AsString,[loCaseInsensitive, loPartialKey]);
  looComboxEmpresa.Text := frm_dm.qry_enterpriseent_last_name.AsString;
end;

procedure Tfrm_stock.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure Tfrm_stock.Action_saveExecute(Sender: TObject);
begin

  inherited;

 if ds.DataSet.State in [dsEdit] then
    Exit;

   if (qrysto_id.AsInteger = 0) then
    begin

     with frm_dm.qry,sql do
      begin
       close;
       Text:= ' select case when max(sto_id) is null then 1 ' +
              '      else (max(sto_id) + 1) end as maxID from stock '+
              ' where contract_ctr_cod =unhex(' + QuotedStr(frm_dm.p_contract_ctr_cod)+')';
       Prepare;
       Open;


       if not (qry.State in [dsInsert,dsEdit])  then
        qry.Edit;
        qrysto_id.AsInteger :=Fields[0].AsInteger;
        qry.Post;
        qry.ApplyUpdates(0);

      end;

    end;

    ExibirEstoques;

end;

procedure Tfrm_stock.cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
begin
  inherited;
  //Para atualizar combobox
   frm_dm.qry_enterprise.Close;
   frm_dm.qry_enterprise.Open;

end;


procedure Tfrm_stock.ExibirEstoques;
begin
      //SQL para exibir somente as unidade de estoque que o usuário tem acesso
  qry.Close;
  qry.SQL.Text := 'select stock.*, hex(sto_cod)as CodStock from stock     ' +
                  ' where contract_ctr_cod =unhex(:ctr_cod)                      ' +
                  ' and enterprise_ent_cod in                             ' +
                  ' (select enterprise_ent_cod from contract_user_enterprise where contract_user_ctr_usr_cod =unhex(:ctr_usr_cod)) '+
                  'and sto_deleled_at is null';
  qry.ParamByname('ctr_cod').AsString     := frm_dm.p_contract_ctr_cod;
  qry.ParamByname('ctr_usr_cod').AsString := frm_dm.p_ctr_usr_cod;
  qry.Prepare;
  qry.Open;
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
  ExibirEstoques;


end;

procedure Tfrm_stock.looComboxEmpresaPropertiesPopup(Sender: TObject);
begin
  inherited;
   qryenterprise_ent_cod.value := frm_dm.qry_enterpriseent_cod.value;
end;

procedure Tfrm_stock.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;

   With frm_dm.qry,sql do
  begin
   close;
   text:= 'select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   stock_cod:=Fields[0].AsString;

   Close;
   Text:='insert into stock (sto_id,sto_cod,contract_ctr_cod,sto_dt_registration) ' +
         ' select 0, unhex('+QuotedStr(stock_cod) +'), unhex(' +QuotedStr(frm_dm.p_contract_ctr_cod) +'), now() ';
   Prepare;
   ExecSQL;
  end;


   qry.Unprepare;
   qry.Close;
   qry.sql.text:= ' select stock.*, hex(sto_cod)as CodStock from stock ' +
                  ' where sto_cod = unhex(' +QuotedStr(stock_cod)+') and sto_deleled_at is null ';
   qry.Prepare;
   qry.open;
   qry.Edit;

end;

end.
