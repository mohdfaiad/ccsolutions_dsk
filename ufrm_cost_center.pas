unit ufrm_cost_center;

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
  Tfrm_cost_center = class(Tfrm_form_default)
    qrycoc_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrycoc_name: TStringField;
    qrycoc_status: TStringField;
    qrycod_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1coc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1coc_name: TcxGridDBColumn;
    cxGrid_1DBTableView1coc_status: TcxGridDBColumn;
    cxGrid_1DBTableView1cod_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    qry_cost_center_detail: TFDQuery;
    ds_cost_center_detail: TDataSource;
    qry_cost_center_detailcod_id: TFDAutoIncField;
    qry_cost_center_detailcontract_ctr_id: TIntegerField;
    qry_cost_center_detailcost_center_coc_id: TIntegerField;
    qry_cost_center_detailcod_name: TStringField;
    qry_cost_center_detailcod_status: TStringField;
    qry_cost_center_detailcod_dt_registration: TDateTimeField;
    cxGrid1DBTableView1cod_id: TcxGridDBColumn;
    cxGrid1DBTableView1cod_name: TcxGridDBColumn;
    cxGrid1DBTableView1cod_status: TcxGridDBColumn;
    cxGrid1DBTableView1cod_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qry_cost_center_detailAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure qry_cost_center_detailAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
  end;

var
  frm_cost_center: Tfrm_cost_center;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_cost_center.Action_saveExecute(Sender: TObject);
begin
   //--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
   //----Função para validar os campos obrigatorios-----------------
   TCampoRequerido.ValidarCampos(qry,qry_cost_center_detail);

    //----Condição para não deixar salvar a o Grupo sem os itens (sem os Sub-grupos)--
    if qry_cost_center_detail.IsEmpty then
   begin
     Application.MessageBox('Não é possível salvar, falta incluir os Sub-Gruos !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

  //Para salvar os intens os Sub - Grupos caso o usuário não faça
  if (qry_cost_center_detail.State in [dsEdit,dsInsert]) then
   begin
     qry_cost_center_detail.Post;
   end;

   inherited;


end;

procedure Tfrm_cost_center.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_cost_center.Destroy;
  frm_cost_center := Nil;
end;

procedure Tfrm_cost_center.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_cost_center.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
  qry_cost_center_detail.CommitUpdates();
end;

procedure Tfrm_cost_center.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrycod_dt_registration.AsDateTime := Now;
  qry.Post;
  qry.Edit;
end;

procedure Tfrm_cost_center.qry_cost_center_detailAfterInsert(DataSet: TDataSet);
begin
  inherited;
   qry_cost_center_detailcontract_ctr_id.AsInteger  := frm_dm.qry_signinctr_id.AsInteger;
   qry_cost_center_detailcod_dt_registration.AsDateTime := Now;

  //--Cama função para validar os campos da requisiçao não permite inserir itens
 // caso os campos do cabeçalho não estejam preenchido------
   TCampoRequerido.ValidarCampos(qry,qry_cost_center_detail);
end;

procedure Tfrm_cost_center.qry_cost_center_detailAfterPost(DataSet: TDataSet);
begin
  inherited;
   ShowMessage('Vamor do campo    '+ IntToStr(qry_cost_center_detailcost_center_coc_id.AsInteger));
end;

end.
