unit ufrm_role;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  cxCurrencyEdit, cxShellComboBox, QExport4Dialog, cxBarEditItem, dxBarExtItems,
  QImport3Wizard, ACBrSocket, ACBrCEP, frxClass;

type
  Tfrm_role = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid_1DBTableView1rol_id: TcxGridDBColumn;
    cxGrid_1DBTableView1rol_name: TcxGridDBColumn;
    cxGrid_1DBTableView1rol_base_salary: TcxGridDBColumn;
    cxGrid_1DBTableView1rol_dt_registration: TcxGridDBColumn;
    qryrol_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryrol_id: TLongWordField;
    qryrol_name: TStringField;
    qryrol_base_salary: TBCDField;
    qryrol_status: TStringField;
    qryrol_deleted_at: TDateTimeField;
    qryrol_dt_registration: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure qry_sql(sql:string);
    procedure Action_deleteExecute(Sender: TObject);
  private
    { Private declarations }
    rol_cod:string;
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);

   function CampoSemPreencher(Que:TFDQuery):Boolean;

  end;

var
  frm_role: Tfrm_role;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_role.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qryrol_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from role ' +
         ' where rol_cod = ' + rol_cod;
  Prepare;
  ExecSQL;

  qry_sql('todos');
 end;
end;

procedure Tfrm_role.Action_deleteExecute(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qryrol_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     qry_sql('todos');

    end;
end;

procedure Tfrm_role.Action_saveExecute(Sender: TObject);
begin
if trim(cxDBTextEdit1.Text) = ''  then
 begin
   Application.MessageBox('Função não informada!','Tipo de Requisição', MB_OK + MB_ICONINFORMATION);
   exit;
 end;

  inherited;

  if ds.DataSet.State in [dsEdit] then
    Exit;


with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(rol_id) is null then 1 ' +
          '      else (max(rol_id) + 1) end as maxID from role '+
          ' where contract_ctr_cod = unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')';
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qryrol_id.AsInteger = 0 then
    qryrol_id.AsInteger:=Fields[0].AsInteger;
    qry.Post;
    qry.ApplyUpdates(0);
  end;

    qry_sql('todos');
end;

function Tfrm_role.CampoSemPreencher(Que: TFDQuery): Boolean;
var j:Byte;
    Msg:String;
begin
   Msg:='';
   Result:=False;
   with Que do
   begin
         for j:=0 to FieldCount -1 do
            if  ((Fields[j].Required) and  (Fields[j].AsString = '') and  (Fields[j].Tag = 0 )) then
            begin
                 if Msg <> '' then
                 Msg:=Msg+' - ';
                 Msg:=Msg+Fields[j].DisplayLabel;
            end;
   end;
   if Msg <> '' then
   begin
       ShowMessage('Atenção, o(s) campo(s) :'+ #13+Msg+#13+'Não pode ficar sem preenchimento');
       Abort;
   end
   else
     Result:=True;

end;

procedure Tfrm_role.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    frm_role.Destroy;
    frm_role := Nil;
end;

procedure Tfrm_role.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
end;

procedure Tfrm_role.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   rol_cod:=Fields[0].AsString;

   Close;
   Text:='insert into role (rol_id,rol_cod,contract_ctr_cod) ' +
         ' select 0,'+ rol_cod + ',unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')';
   Prepare;
   ExecSQL;
  end;

   qry_sql('insert');
   qry.Edit;
   qryrol_dt_registration.AsDateTime:=Now;


  qryrol_dt_registration.Value:= Date + Time;
end;

procedure Tfrm_role.qry_sql(sql: string);
begin
  qry.Close;
  if sql = 'todos' then
   qry.sql.text:= ' select * from role ' +
           ' where rol_deleted_at is null';

  if sql = 'insert' then
   qry.sql.text:= ' select * from role ' +
                  ' where rol_cod = ' + rol_cod +
                  ' and rol_deleted_at is null';
   qry.Prepare;
   qry.open;
end;

end.
