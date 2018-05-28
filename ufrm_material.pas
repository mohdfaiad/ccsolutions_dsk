unit ufrm_material;

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
  ACBrCEP, frxClass;

type
  Tfrm_material = class(Tfrm_form_default)
    qrymat_name: TStringField;
    qrymat_dt_registration: TDateTimeField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid_1DBTableView1mat_id: TcxGridDBColumn;
    cxGrid_1DBTableView1mat_name: TcxGridDBColumn;
    cxGrid_1DBTableView1mat_dt_registration: TcxGridDBColumn;
    qrymat_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrymat_id: TLongWordField;
    qrymat_status: TStringField;
    qrymat_deleted_at: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
    mat_cod:string;
  public
    { Public declarations }
  end;

var
  frm_material: Tfrm_material;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_material.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qrymat_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from material ' +
         ' where mat_cod = ' + mat_cod;
  Prepare;
  ExecSQL;

  qry.Close;
  qry.sql.text:= ' select * from material ' +
                 ' where mat_deleted_at is null';
  qry.Prepare;
  qry.open;
 end;
end;

procedure Tfrm_material.Action_deleteExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrymat_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     qry.Close;
     qry.sql.text:= ' select * from material ' +
                    ' where mat_deleted_at is null ';
     qry.Prepare;
     qry.open;
    end;

end;

procedure Tfrm_material.Action_saveExecute(Sender: TObject);
begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(mat_id) is null then 1 ' +
          '      else (max(mat_id) + 1) end as maxID from material '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrymat_id.AsInteger = 0 then
    qrymat_id.AsInteger:=Fields[0].AsInteger;

  end;

  inherited;
       qry.Close;
       qry.sql.text:= ' select * from material ' +
                      ' where mat_deleted_at is null ';
       qry.Prepare;
       qry.open;
end;

procedure Tfrm_material.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_material.Destroy;
  frm_material := Nil;
end;

procedure Tfrm_material.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   mat_cod:=Fields[0].AsString;

   Close;
   Text:='insert into material (mat_id,mat_cod,contract_ctr_cod) ' +
         ' select 0,'+ mat_cod + ',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry.Close;
   qry.sql.text:= ' select * from material ' +
                  ' where mat_cod = ' + mat_cod +
                  ' and mat_deleted_at is null';
   qry.Prepare;
   qry.open;
   qry.Edit;
   qrymat_dt_registration.AsDateTime:=Now;
end;

end.
