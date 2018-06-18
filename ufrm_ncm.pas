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
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_ncm = class(Tfrm_form_default)
    qryncm_code: TStringField;
    qryncm_description: TMemoField;
    qryncm_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ncm_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ncm_code: TcxGridDBColumn;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure cxTabSheet_1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


end;


var
  frm_ncm: Tfrm_ncm;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_ncm.Action_cancelExecute(Sender: TObject);
begin
  inherited;
// if (qrycli_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
// with frm_dm.qry,sql do
// begin
//  Close;
//  Text:= ' delete from client ' +
//         ' where cli_cod = ' + cli_cod;
//  Prepare;
//  ExecSQL;
//
//  qry.Close;
//  qry.sql.text:= ' select client.*,concat(''0x'',hex(cli_cod)) from client ' +
//                 ' where cli_deleted_at is null';
//  qry.Prepare;
//  qry.open;
// end;
end;

procedure Tfrm_ncm.Action_saveExecute(Sender: TObject);
begin
//with frm_dm.qry,sql do
// begin
//   close;
//   Text:= ' select case when max(cli_id) is null then 1 ' +
//          '      else (max(cli_id) + 1) end as maxID from client '+
//          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
//   Prepare;
//   Open;
//   if not (qry.State in [dsInsert,dsEdit])  then
//    qry.Edit;
//
//   if qrycli_id.AsInteger = 0 then
//    qrycli_id.AsInteger:=Fields[0].AsInteger;
//
//  end;
//
//  inherited;
//       qry.Close;
//       qry.sql.text:= ' select client.*,concat(''0x'',hex(cli_cod)) from client' +
//                      ' where cli_deleted_at is null ';
//       qry.Prepare;
//       qry.open;

end;

procedure Tfrm_ncm.cxTabSheet_1Show(Sender: TObject);
begin
  inherited;
   qry.Close;
   qry.sql.text:= ' select * from ncm ';
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_ncm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ncm.Destroy;
  frm_ncm := Nil;
end;

procedure Tfrm_ncm.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into ncm (ncm_cod,ncm_id,contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,(select ctr_cod from contract ' +
         ' where ctr_id = :contrato)';
   ParamByName('contrato').AsInteger:=frm_dm.qry_contractctr_id.AsInteger;
   Prepare;
   ExecSQL;
  end;
   qry.Close;
   qry.sql.text:= ' select * from ncm ' +
                  ' where ncm_id = 0 ';
   qry.Prepare;
   qry.open;

  qry.Edit;
  qryncm_dt_registration.Value := Date + Time;

end;

end.

