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
  ACBrSocket, ACBrNCMs, cxMemo, cxButtonEdit, ACBrCEP, frxClass;

type
  Tfrm_ncm = class(Tfrm_form_default)
    qryncm_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
function TrataRequired(Que:TDataset):Boolean;

end;


var
  frm_ncm: Tfrm_ncm;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_ncm.Action_saveExecute(Sender: TObject);
begin
  TrataRequired(qry);
  inherited;

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
   qryncm_dt_registration.Value := Date + Time;
end;

function Tfrm_ncm.TrataRequired(Que: TDataset): Boolean;
var j:Byte;
    Msg:String;
begin
   Msg:='';
   Result:=False;
   with Que do
   begin
         for j:=0 to FieldCount -1 do
            if  ((Fields[j].Required) and  (Fields[j].Value = '' )) then
            begin
                 if Msg <> '' then
                 Msg:=Msg+' - ';
                 Msg:=Msg+Fields[j].FieldName;
            end;
   end;
   if Msg <> '' then
   begin
       ShowMessage('Atenção, o(s) campo(s) :'+ #13+Msg+#13+'Não pode(m)                                                               ficar sem preenchimento');
       Abort;
   end
   else
     Result:=True;
end;
end.

