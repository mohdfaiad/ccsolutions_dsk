unit ufrm_product_unit;

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
  ACBrSocket, ACBrCEP, frxClass;

type
  Tfrm_product_unit = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    qrypru_name: TStringField;
    qrypru_initials: TStringField;
    qrypru_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1pru_initials: TcxGridDBColumn;
    cxGrid_1DBTableView1pru_dt_registration: TcxGridDBColumn;
    qrypru_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrypru_id: TLongWordField;
    qrypru_status: TStringField;
    qrypru_deleted_at: TDateTimeField;
    dbComboxStatus: TcxDBComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1pru_status: TcxGridDBColumn;
    cxGrid_1DBTableView1pru_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pru_name: TcxGridDBColumn;
    qryCodProdUnit: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
  private
    pru_cod: string;
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
    procedure ExibirRegistros;
  end;

var
  frm_product_unit: Tfrm_product_unit;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_product_unit.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if result = false then
    exit;

 if (qrypru_id.AsInteger = 0) then
  begin
   with frm_dm.qry,sql do
    begin
      Close;
      Text:= ' delete from product_unit ' +
             ' where pru_cod = unhex('+ QuotedStr(pru_cod)+')' ;
      Prepare;
      ExecSQL;
    end;
  end;

   ExibirRegistros ;

end;

procedure Tfrm_product_unit.Action_deleteExecute(Sender: TObject);
begin
  inherited;
    if (result = false) then
      exit;

     qry.Edit;
     qrypru_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     Application.MessageBox('Unidade do produto excluída com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);

    ExibirRegistros;
end;

procedure Tfrm_product_unit.Action_editExecute(Sender: TObject);
begin
  inherited;
   dbComboxStatus.Enabled := True;
   pru_cod := qryCodProdUnit.AsString;
end;

procedure Tfrm_product_unit.Action_insertExecute(Sender: TObject);
begin
  inherited;
   dbComboxStatus.ItemIndex := 0;
   dbComboxStatus.Enabled := false;
end;

procedure Tfrm_product_unit.Action_saveExecute(Sender: TObject);
begin

//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

  inherited;
  if ds.DataSet.State in [dsEdit] then
   Exit;

if (qrypru_id.AsInteger = 0) then
 begin
   with frm_dm.qry,sql do
   begin
     close;     // -- SQL para retornar o ultimo ID da tabela brand---
     Text:= ' select case when max(pru_id) is null then 1 ' +
            '      else (max(pru_id) + 1) end as maxID from product_unit '+
            ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
     Prepare;
     Open;

     if not (qry.State in [dsInsert,dsEdit])  then
      qry.Edit;

     if qrypru_id.AsInteger = 0 then
       qrypru_id.AsInteger:=Fields[0].AsInteger;

      qry.Post;
      qry.ApplyUpdates(0);

   end;
 end;

  ExibirRegistros;

end;

procedure Tfrm_product_unit.ExibirRegistros;
begin
   qry.Close;
   qry.SQL.Text := ' select product_unit.*, hex(pru_cod)as CodProdUnit from product_unit   ' +
                   ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+') ' +
                   ' and pru_deleted_at is null ';
   qry.Prepare;
   qry.Open;

end;

procedure Tfrm_product_unit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_product_unit.Destroy;
  frm_product_unit := Nil;
end;

procedure Tfrm_product_unit.FormShow(Sender: TObject);
begin
  inherited;
  ExibirRegistros
end;

procedure Tfrm_product_unit.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
end;

procedure Tfrm_product_unit.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
//SQL para obter Número do Cod ID em Hex--------
   With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   pru_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
   Text:='insert into product_unit (pru_id,pru_cod,contract_ctr_cod, pru_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(pru_cod)+'), unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:= ' select product_unit.*, hex(pru_cod)as CodProdUnit from product_unit ' +
                  ' where pru_cod = unhex('+QuotedStr(pru_cod)+') and pru_deleted_at is null';
   qry.Prepare;
   qry.open;

   qry.Edit;
end;

end.
