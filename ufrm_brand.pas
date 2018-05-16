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
    cxGrid_1DBTableView1bra_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bra_name: TcxGridDBColumn;
    cxGrid_1DBTableView1bra_dt_registration: TcxGridDBColumn;
    Image1: TImage;
    qrybra_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrybra_id: TLongWordField;
    qrybra_name: TStringField;
    qrybra_status: TStringField;
    qrybra_deleted_at: TDateTimeField;
    qrybra_dt_registration: TDateTimeField;
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
  frm_brand: Tfrm_brand;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_brand.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qrybra_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from brand ' +
         ' where contract_ctr_cod =:contract ' +
         ' and bra_id = 0';
  ParamByName('contract').Value:=frm_dm.qry_signinctr_cod.Value;
  Prepare;
  ExecSQL;
end;
end;

procedure Tfrm_brand.Action_saveExecute(Sender: TObject);

begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(bra_id) is null then 1 ' +
          '      else (max(bra_id) + 1) end as maxID from brand '+
          ' where contract_ctr_cod = (select ctr_cod from contract ' +
          ' where ctr_id =:ctr_id)';
   ParamByName('ctr_id').AsInteger:=frm_dm.qry_signinctr_id.AsInteger;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrybra_id.AsInteger = 0 then
    qrybra_id.AsInteger:=Fields[0].AsInteger;
 end;


 //--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

  inherited;

end;

procedure Tfrm_brand.cxTabSheet_1Show(Sender: TObject);
begin
  inherited;
   qry.Close;
   qry.sql.text:= ' select * from brand ';
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_brand.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_brand.Destroy;
  frm_brand := Nil;
end;

procedure Tfrm_brand.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into brand (bra_cod,bra_id,contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,(select ctr_cod from contract ' +
         ' where ctr_id = :contrato)';
   ParamByName('contrato').AsInteger:=frm_dm.qry_signinctr_id.AsInteger;
   Prepare;
   ExecSQL;
  end;
   qry.Close;
   qry.sql.text:= ' select * from brand ' +
                  ' where bra_id = 0 ';
   qry.Prepare;
   qry.open;

  qry.Edit;
  qrybra_dt_registration.Value := Date + Time;
end;

end.
