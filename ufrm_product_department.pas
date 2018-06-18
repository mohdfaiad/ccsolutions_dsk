unit ufrm_product_department;

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
  Tfrm_product_department = class(Tfrm_form_default)
    qryprd_name: TStringField;
    qryprd_dt_registration: TDateTimeField;
    qry_product_sector: TFDQuery;
    ds_product_sector: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid_1DBTableView1prd_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prd_name: TcxGridDBColumn;
    cxGrid_1DBTableView1prd_dt_registration: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1DBTableView1prs_id: TcxGridDBColumn;
    cxGrid1DBTableView1prs_name: TcxGridDBColumn;
    cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn;
    qryprd_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryprd_id: TLongWordField;
    qryprd_deleted_at: TDateTimeField;
    qry_product_sectorprs_cod: TBytesField;
    qry_product_sectorproduct_department_prd_cod: TBytesField;
    qry_product_sectorprs_id: TLongWordField;
    qry_product_sectorprs_name: TStringField;
    qry_product_sectorprs_deleted_at: TDateTimeField;
    qry_product_sectorprs_dt_registration: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_product_sectorAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure Action_deleteExecute(Sender: TObject);
    procedure qryAfterDelete(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure cxTabSheet_1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
  end;

var
  frm_product_department: Tfrm_product_department;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_product_department.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qryprd_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from product_department ' +
         ' where contract_ctr_cod =:contract ' +
         ' and prd_id = 0';
  ParamByName('contract').Value:=frm_dm.qry_contractctr_cod.Value;
  Prepare;
  ExecSQL;
end;
end;

procedure Tfrm_product_department.Action_deleteExecute(Sender: TObject);
begin
   if qry_product_sector.RecordCount >=1 then
     begin
       Application.MessageBox('Não é possível excluir este departamento, pos existe sub departamentos ligados a ele !','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
       Exit;
     end;
  inherited;

end;

procedure Tfrm_product_department.Action_saveExecute(Sender: TObject);
begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(prd_id) is null then 1 ' +
          '      else (max(prd_id) + 1) end as maxID from product_department '+
          ' where contract_ctr_cod = (select ctr_cod from contract ' +
          ' where ctr_id =:ctr_id)';
   ParamByName('ctr_id').AsInteger:=frm_dm.qry_contractctr_id.AsInteger;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qryprd_id.AsInteger = 0 then
    qryprd_id.AsInteger:=Fields[0].AsInteger;
 end;
  inherited;

end;

procedure Tfrm_product_department.cxTabSheet_1Show(Sender: TObject);
begin
  inherited;
   qry.Close;
   qry.sql.text:= ' select * from product_department';
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_product_department.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_product_department.Destroy;
  frm_product_department := Nil;
end;

procedure Tfrm_product_department.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_product_department.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
  qry_product_sector.CommitUpdates();
end;

procedure Tfrm_product_department.qryAfterDelete(DataSet: TDataSet);
begin
  inherited;
   qry.ApplyUpdates(0);
   FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_product_department.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into product_department (prd_cod,prd_id,contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,(select ctr_cod from contract ' +
         ' where ctr_id = :contrato)';
   ParamByName('contrato').AsInteger:=frm_dm.qry_contractctr_id.AsInteger;
   Prepare;
   ExecSQL;
  end;
   qry.Close;
   qry.sql.text:= ' select * from product_department ' +
                  ' where prd_id = 0 ';
   qry.Prepare;
   qry.open;
   qry.Edit;
   qryprd_dt_registration.Value := Date + Time;
   qry.Edit;
end;

procedure Tfrm_product_department.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qry_product_sector.State in [dsInsert,dsEdit] then
   begin
     qry_product_sector.Post;
   end;
end;

procedure Tfrm_product_department.qry_product_sectorAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  qry_product_sectorprs_dt_registration.Value := Date + Time;
end;

end.
