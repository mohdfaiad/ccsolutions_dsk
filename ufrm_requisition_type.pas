unit ufrm_requisition_type;

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
  Tfrm_requisition_type = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    qryret_name: TStringField;
    qryret_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ret_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ret_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ret_dt_registration: TcxGridDBColumn;
    qryret_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryret_id: TLongWordField;
    qryret_status: TStringField;
    qryret_deleted_at: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
    ret_cod:string;
  public
    { Public declarations }
  end;

var
  frm_requisition_type: Tfrm_requisition_type;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_requisition_type.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qryret_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from requisition_type ' +
         ' where ret_cod = ' + ret_cod;
  Prepare;
  ExecSQL;

  qry.Close;
  qry.sql.text:= ' select * from requisition_type ' +
                 ' where ret_deleted_at is null';
  qry.Prepare;
  qry.open;
 end;
end;

procedure Tfrm_requisition_type.Action_deleteExecute(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qryret_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     qry.Close;
     qry.sql.text:= ' select * from requisition_type ' +
                    ' where ret_deleted_at is null ';
     qry.Prepare;
     qry.open;
    end;
end;

procedure Tfrm_requisition_type.Action_saveExecute(Sender: TObject);
begin
if trim(cxDBTextEdit1.Text) = ''  then
 begin
   Application.MessageBox('Descrição do tipo de Requisição!','Tipo de Requisição', MB_OK + MB_ICONINFORMATION);
   exit;
 end;

  inherited;

  if ds.DataSet.State in [dsEdit] then
    Exit;

with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(ret_id) is null then 1 ' +
          '      else (max(ret_id) + 1) end as maxID from requisition_type '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qryret_id.AsInteger = 0 then
    qryret_id.AsInteger:=Fields[0].AsInteger;
    qry.Post;
    qry.ApplyUpdates(0);
  end;

       qry.Close;
       qry.sql.text:= ' select * from requisition_type ' +
                      ' where ret_deleted_at is null ';
       qry.Prepare;
       qry.open;
end;

procedure Tfrm_requisition_type.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_requisition_type.Destroy;
  frm_requisition_type := Nil;
end;

procedure Tfrm_requisition_type.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   ret_cod:=Fields[0].AsString;

   Close;
   Text:='insert into requisition_type (ret_id,ret_cod,contract_ctr_cod) ' +
         ' select 0,'+ ret_cod + ',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry.Close;
   qry.sql.text:= ' select * from requisition_type ' +
                  ' where ret_cod = ' + ret_cod +
                  ' and ret_deleted_at is null';
   qry.Prepare;
   qry.open;
   qry.Edit;
   qryret_dt_registration.AsDateTime:=Now;
end;

end.
