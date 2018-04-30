unit ufrm_product_class;

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
  Tfrm_product_class = class(Tfrm_form_default)
    qryprc_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryprc_name: TStringField;
    qryprc_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1prc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prc_name: TcxGridDBColumn;
    cxGrid_1DBTableView1prc_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    qry_product_class_sub: TFDQuery;
    ds_product_class_sub: TDataSource;
    qry_product_class_subprs_id: TFDAutoIncField;
    qry_product_class_subcontract_ctr_id: TIntegerField;
    qry_product_class_subproduct_class_prc_id: TIntegerField;
    qry_product_class_subprs_name: TStringField;
    qry_product_class_subprs_dt_registration: TDateTimeField;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1DBTableView1prs_id: TcxGridDBColumn;
    cxGrid1DBTableView1prs_name: TcxGridDBColumn;
    cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_product_class_subAfterInsert(DataSet: TDataSet);
    procedure qryAfterDelete(DataSet: TDataSet);
    procedure qry_product_class_subAfterDelete(DataSet: TDataSet);
    procedure Action_deleteExecute(Sender: TObject);
    procedure qry_product_class_subAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
  end;

var
  frm_product_class: Tfrm_product_class;

implementation

{$R *.dfm}

uses ufrm_dm, Casse.Funcoes;

procedure Tfrm_product_class.Action_deleteExecute(Sender: TObject);
begin
   if qry_product_class_sub.RecordCount >=1 then
     begin
       Application.MessageBox('Não é possível deletar esta classe de produtos, pos existe sub classe ligadas a ela !','AVISO DO SISTEMA', MB_OK+MB_ICONINFORMATION);
       Exit;
     end;
  inherited;

end;

procedure Tfrm_product_class.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_product_class.Destroy;
  frm_product_class := Nil;
end;

procedure Tfrm_product_class.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_product_class.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
   qry_product_class_sub.CommitUpdates();
end;

procedure Tfrm_product_class.qryAfterDelete(DataSet: TDataSet);
begin
  inherited;
   qry.ApplyUpdates(0);

end;

procedure Tfrm_product_class.qryAfterInsert(DataSet: TDataSet);
begin

  inherited;

   qryprc_dt_registration.Value := Now;
   qry.Post;
   qry.Edit;
end;

procedure Tfrm_product_class.qryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qry.ApplyUpdates(0);
end;

procedure Tfrm_product_class.qryBeforePost(DataSet: TDataSet);
begin
  inherited;
      if (qry_product_class_sub.State in [dsEdit,dsInsert]) then
   begin
     qry_product_class_sub.Post;
   end;
end;

procedure Tfrm_product_class.qry_product_class_subAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  qry_product_class_sub.ApplyUpdates(0);
end;

procedure Tfrm_product_class.qry_product_class_subAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  qry_product_class_subprs_dt_registration.Value := Now;
end;

procedure Tfrm_product_class.qry_product_class_subAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qry_product_class_sub.ApplyUpdates(0);
end;

end.
