unit ufrm_department;

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
  ACBrSocket, ACBrCEP, frxClass, Vcl.Grids, Vcl.DBGrids,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBLookupComboBox,
  cxImageList;

type
  Tfrm_department = class(Tfrm_form_default)
    qrydep_name: TStringField;
    qrydep_dt_registration: TDateTimeField;
    qry_sector: TFDQuery;
    ds_sector: TDataSource;
    cxGrid_1DBTableView1dep_id: TcxGridDBColumn;
    cxGrid_1DBTableView1dep_name: TcxGridDBColumn;
    cxGrid_1DBTableView1dep_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1DBTableView1sec_id: TcxGridDBColumn;
    cxGrid1DBTableView1sec_name: TcxGridDBColumn;
    cxGrid1DBTableView1sec_dt_registration: TcxGridDBColumn;
    qrydep_status: TStringField;
    qrydep_deleted_at: TDateTimeField;
    qry_sectorsec_cod: TBytesField;
    qry_sectorsec_id: TLongWordField;
    qry_sectorsec_name: TStringField;
    qry_sectorsec_status: TStringField;
    qry_sectorsec_deleted_at: TDateTimeField;
    qry_sectorsec_dt_registration: TDateTimeField;
    qrydep_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrydep_id: TLongWordField;
    qry_sectordepartment_dep_cod: TBytesField;
    qryconcat0xhexdep_cod: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_sectorAfterInsert(DataSet: TDataSet);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure qry_sectorBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    dep_cod,sec_cod:string;
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
  end;

var
  frm_department: Tfrm_department;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_department.Action_cancelExecute(Sender: TObject);
begin
  inherited;
// if (qrydep_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
// with frm_dm.qry,sql do
// begin
//  Close;
//  Text:= ' delete from department ' +
//         ' where dep_cod = ' + dep_cod;
//  Prepare;
//  ExecSQL;
//
//  qry.Close;
//  qry.sql.text:= ' select department.*,concat(''0x'',hex(dep_cod)) from department ' +
//                 ' where dep_deleted_at is null';
//  qry.Prepare;
//  qry.open;
//end;
end;

procedure Tfrm_department.Action_deleteExecute(Sender: TObject);
begin
 if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
   begin
    qry.Edit;
    qrydep_deleted_at.AsDateTime:=Now;
    qry.Post;
    qry.ApplyUpdates(0);

    qry.Close;
    qry.sql.text:= ' select department.*,concat(''0x'',hex(dep_cod)) from department '  +
                    ' where dep_deleted_at is null ';
    qry.Prepare;
    qry.open;
    end;

end;

procedure Tfrm_department.Action_editExecute(Sender: TObject);
begin
  inherited;
 dep_cod:=qryconcat0xhexdep_cod.AsString;
end;

procedure Tfrm_department.Action_saveExecute(Sender: TObject);
//VAR
//max:Integer;
begin
//with frm_dm.qry,sql do
// begin
//   close;
//   Text:= ' select case when max(dep_id) is null then 1 ' +
//          '      else (max(dep_id) + 1) end as maxID from department '+
//          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
//   Prepare;
//   Open;
//   if not (qry.State in [dsInsert,dsEdit])  then
//    qry.Edit;
//
//   if qrydep_id.AsInteger = 0 then
//    qrydep_id.AsInteger:=Fields[0].AsInteger;
//
//  end;
//
//  inherited;
//       qry.Close;
//       qry.sql.text:= ' select department.*,concat(''0x'',hex(dep_cod)) from department ' +
//                      ' where dep_deleted_at is null ';
//       qry.Prepare;
//       qry.open;
end;


procedure Tfrm_department.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_department.Destroy;
  frm_department := Nil;
end;

procedure Tfrm_department.FormCreate(Sender: TObject);
begin
  inherited;
// schadapter.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_department.limpaCache(Sender: TObject);
begin
 qry.CommitUpdates();
end;

procedure Tfrm_department.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
// With frm_dm.qry,sql do
//  begin
//   close;
//   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
//   prepare;
//   open;
//
//   dep_cod:=Fields[0].AsString;
//
//   Close;
//   Text:='insert into department (dep_id,dep_cod,contract_ctr_cod) ' +
//         ' select 0,'+ dep_cod + ',' +  frm_dm.v_contract_ctr_cod;
//   Prepare;
//   ExecSQL;
//  end;
//
//   qry.Close;
//   qry.sql.text:= ' select department.*,concat(''0x'',hex(dep_cod)) from department ' +
//                  ' where dep_cod = ' + dep_cod +
//                  ' and dep_deleted_at is null';
//   qry.Prepare;
//   qry.open;
//   qry.Edit;
//   qrydep_dt_registration.AsDateTime:=Now;
end;

procedure Tfrm_department.qry_sectorAfterInsert(DataSet: TDataSet);
begin
  inherited;
// With frm_dm.qry,sql do
//  begin
//   close;
//   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
//   prepare;
//   open;
//
//   sec_cod:=Fields[0].AsString;
//
//   Close;
//   Text:='insert into sector (sec_id,sec_cod,department_dep_cod) ' +
//         ' select 0,'+ sec_cod + ',' + dep_cod;
//   Prepare;
//   ExecSQL;
//  end;
//
//   qry_sector.Close;
//   qry_sector.sql.text:= ' select * from sector ' +
//                  ' where sec_deleted_at is null ' +
//                  ' and department_dep_cod = ' + dep_cod;
//   qry_sector.Prepare;
//   qry_sector.open;
//   qry_sector.Edit;
//   qry_sectorsec_dt_registration.AsDateTime:=Now;

end;

procedure Tfrm_department.qry_sectorBeforePost(DataSet: TDataSet);
begin
  inherited;
//with frm_dm.qry,sql do
// begin
//   close;
//   Text:= ' select case when max(sec_id) is null then 1 ' +
//          '      else (max(sec_id) + 1) end as maxID from sector '+
//          ' where department_dep_cod = ' + dep_cod;
//   Prepare;
//   Open;
//   if not (qry_sector.State in [dsInsert,dsEdit])  then
//    qry.Edit;
//
//   if qry_sectorsec_id.AsInteger = 0 then
//    qry_sectorsec_id.AsInteger:=Fields[0].AsInteger;
//  end;
end;

end.
