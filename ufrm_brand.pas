unit ufrm_brand;

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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxShellComboBox, QImport3Wizard, QExport4Dialog, cxBarEditItem, ACBrSocket,
  ACBrCEP, frxClass, Vcl.ExtCtrls;

type
  Tfrm_brand = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    Image1: TImage;
    qrybra_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrybra_id: TLongWordField;
    qrybra_name: TStringField;
    qrybra_status: TStringField;
    qrybra_deleted_at: TDateTimeField;
    qrybra_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1bra_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bra_name: TcxGridDBColumn;
    cxGrid_1DBTableView1bra_status: TcxGridDBColumn;
    cxGrid_1DBTableView1bra_dt_registration: TcxGridDBColumn;
    dbComboxStatus: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    qryCodBrand: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    bra_cod: string;
  public
    { Public declarations }
    procedure ExibirRegistros;
  end;

var
  frm_brand: Tfrm_brand;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_brand.Action_cancelExecute(Sender: TObject);
begin
  inherited;
  if result = false then
    exit;

 if (qrybra_id.AsInteger = 0) then
  begin
   with frm_dm.qry,sql do
    begin
      Close;
      Text:= ' delete from brand ' +
             ' where bra_cod = unhex('+ QuotedStr(bra_cod)+')' ;
      Prepare;
      ExecSQL;
    end;
  end;

   ExibirRegistros;

end;

procedure Tfrm_brand.Action_deleteExecute(Sender: TObject);
begin
   inherited;
    if (result = false) then
      exit;

     qry.Edit;
     qrybra_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     Application.MessageBox('Marca excluída com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);

    ExibirRegistros;
end;

procedure Tfrm_brand.Action_editExecute(Sender: TObject);
begin
   inherited;
  dbComboxStatus.Enabled := True;
  bra_cod := qryCodBrand.AsString;
end;

procedure Tfrm_brand.Action_insertExecute(Sender: TObject);
begin
   inherited;
   dbComboxStatus.ItemIndex := 0;
   dbComboxStatus.Enabled := false;

end;

procedure Tfrm_brand.Action_saveExecute(Sender: TObject);

begin

//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

with frm_dm.qry,sql do
 begin
   close;     // -- SQL para retornar o ultimo ID da tabela brand---
   Text:= ' select case when max(bra_id) is null then 1 ' +
          '      else (max(bra_id) + 1) end as maxID from brand '+
          ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
   Prepare;
   Open;

   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrybra_id.AsInteger = 0 then
    qrybra_id.AsInteger:=Fields[0].AsInteger;
 end;

  inherited;
  ExibirRegistros;

end;

procedure Tfrm_brand.ExibirRegistros;
begin

  qry.Close;
  qry.SQL.Text := ' select brand.*, hex(bra_cod)as CodBrand from brand                     ' +
                  ' where contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')' +
                  ' and bra_deleted_at is null  ' ;
   qry.Prepare;
   qry.Open;

end;

procedure Tfrm_brand.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_brand.Destroy;
  frm_brand := Nil;
end;

procedure Tfrm_brand.FormShow(Sender: TObject);
begin
  inherited;
   ExibirRegistros
end;

procedure Tfrm_brand.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 //SQL para obter Número do Cod ID em Hex--------
   With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   bra_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
   Text:='insert into brand (bra_id,bra_cod,contract_ctr_cod, bra_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(bra_cod)+'), unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:= ' select brand.*, hex(bra_cod)as CodBrand from brand ' +
                  ' where bra_cod = unhex('+QuotedStr(bra_cod)+') and bra_deleted_at is null';
   qry.Prepare;
   qry.open;

   qry.Edit;
end;

end.
