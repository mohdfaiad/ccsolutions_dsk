unit ufrm_ncm;

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
  ACBrSocket, ACBrNCMs, cxMemo, cxButtonEdit, ACBrCEP, frxClass, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, frxDBSet;

type
  Tfrm_ncm = class(Tfrm_form_default)
    qryncm_code: TStringField;
    qryncm_description: TMemoField;
    qryncm_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ncm_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ncm_description: TcxGridDBColumn;
    cxGrid_1DBTableView1ncm_dt_registration: TcxGridDBColumn;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem4: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    qryncm_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryncm_id: TLongWordField;
    qryncm_status: TStringField;
    qryncm_deleted_at: TDateTimeField;
    qryCodNCM: TStringField;
    cxGrid_1DBTableView1ncm_status: TcxGridDBColumn;
    dbComboxStatus: TcxDBComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid_1DBTableView1ncm_code: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    frx_db_NCM: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
  private
    ncm_cod: string;
  public
    { Public declarations }
    procedure ExibirRegistros;

end;


var
  frm_ncm: Tfrm_ncm;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_ncm.Action_cancelExecute(Sender: TObject);
begin
  inherited;
   if result = false then
    exit;

 if (qryncm_id.AsInteger = 0) then
  begin
   with frm_dm.qry,sql do
    begin
      Close;
      Text:= ' delete from ncm ' +
             ' where ncm_cod = unhex('+ QuotedStr(ncm_cod)+')' ;
      Prepare;
      ExecSQL;
    end;
  end;

   ExibirRegistros ;
end;

procedure Tfrm_ncm.Action_deleteExecute(Sender: TObject);
begin
  inherited;
    if (result = false) then
      exit;

     qry.Edit;
     qryncm_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     Application.MessageBox('Unidade do produto excluída com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);

    ExibirRegistros;
end;

procedure Tfrm_ncm.Action_editExecute(Sender: TObject);
begin
  inherited;
   dbComboxStatus.Enabled := True;
   ncm_cod := qryCodNCM.AsString;
end;

procedure Tfrm_ncm.Action_insertExecute(Sender: TObject);
begin
  inherited;
    dbComboxStatus.ItemIndex := 0;
    dbComboxStatus.Enabled := false;
end;

procedure Tfrm_ncm.Action_saveExecute(Sender: TObject);
begin

//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

 inherited;
 if ds.DataSet.State in [dsEdit] then
    Exit;

if (qryncm_id.AsInteger = 0) then
 begin
   with frm_dm.qry,sql do
   begin
     close;     // -- SQL para retornar o ultimo ID da tabela brand---
     Text:= ' select case when max(ncm_id) is null then 1 ' +
            '      else (max(ncm_id) + 1) end as maxID from ncm '+
            ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
     Prepare;
     Open;

     if not (qry.State in [dsInsert,dsEdit])  then
      qry.Edit;

     if qryncm_id.AsInteger = 0 then
       qryncm_id.AsInteger:=Fields[0].AsInteger;

       qry.Post;
       qry.ApplyUpdates(0);
   end;
 end;

  ExibirRegistros;


end;

procedure Tfrm_ncm.ExibirRegistros;
begin

  qry.Close;
  qry.SQL.Text:= ' select ncm.*, hex(ncm_cod)as CodNCM from ncm                            '+
                 ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')'+
                 ' and ncm_deleted_at is null   ';
  qry.Prepare;
  qry.Open;

end;

procedure Tfrm_ncm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ncm.Destroy;
  frm_ncm := Nil;
end;

procedure Tfrm_ncm.FormShow(Sender: TObject);
begin
  inherited;
   ExibirRegistros;
end;

procedure Tfrm_ncm.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 //SQL para obter Número do Cod ID em Hex--------
   With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   ncm_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
   Text:= 'insert into ncm (ncm_id,ncm_cod,contract_ctr_cod, ncm_dt_registration) ' +
          ' select 0,unhex('+QuotedStr(ncm_cod)+'), unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:= ' select ncm.*, hex(ncm_cod)as CodNCM from ncm ' +
                  ' where ncm_cod = unhex('+QuotedStr(ncm_cod)+') and ncm_deleted_at is null';
   qry.Prepare;
   qry.open;

   qry.Edit;
end;

end.

