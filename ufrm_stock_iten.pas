unit ufrm_stock_iten;

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
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, QImport3Wizard,
  QExport4Dialog, ACBrBase, ACBrEnterTab, FireDAC.Comp.Client,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar,
  cxBarEditItem, cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxLabel,
  Vcl.Buttons, cxCurrencyEdit, frxClass, ACBrSocket, ACBrCEP, frxDBSet;

type
  Tfrm_stock_iten = class(Tfrm_form_default)
    qrysto_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    qrysto_name: TStringField;
    qrysto_status: TStringField;
    qrysto_dt_registration: TDateTimeField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    qry_stock_iten: TFDQuery;
    ds_qry_stock_iten: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid_1DBTableView1sto_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_status: TcxGridDBColumn;
    cxGrid_1DBTableView1sto_dt_registration: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    ExibirItensabaixodoestoqueminmo1: TMenuItem;
    ExibirtodososItens1: TMenuItem;
    frxDBD_Estoque: TfrxDBDataset;
    frxDBD_Estoque_Itens: TfrxDBDataset;
    qryEmpresa: TStringField;
    cxGrid1DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid1DBTableView1pru_name: TcxGridDBColumn;
    cxGrid1DBTableView1sti_product_quant: TcxGridDBColumn;
    cxGrid1DBTableView1sti_product_quant_min: TcxGridDBColumn;
    qry_stock_itenproduct_pro_id: TIntegerField;
    qry_stock_itenpro_name: TStringField;
    qry_stock_itenpru_name: TStringField;
    qry_stock_itensti_product_quant: TBCDField;
    qry_stock_itensti_product_quant_min: TBCDField;
    qry_stock_itenstock_sto_id: TIntegerField;
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure cxPageControl_1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure ExibirItensabaixodoestoqueminmo1Click(Sender: TObject);
    procedure ExibirtodososItens1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    estMin: Boolean;
  public
    { Public declarations }
  end;

var
  frm_stock_iten: Tfrm_stock_iten;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_stock_iten.Action_editExecute(Sender: TObject);
begin
  application.MessageBox
    ('Nao � permitido incluir/alterar estoque por esta op��o!', 'Estoque',
    MB_OK + MB_ICONWARNING);
  Exit;
  inherited;

end;

procedure Tfrm_stock_iten.Action_insertExecute(Sender: TObject);
begin
  application.MessageBox
    ('Nao � permitido incluir/alterar estoque por esta op��o!', 'Estoque',
    MB_OK + MB_ICONWARNING);
  Exit;
  inherited;

end;

procedure Tfrm_stock_iten.cxPageControl_1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if cxPageControl_1.ActivePage = cxTabSheet_1 then
  begin
    estMin := false;
    qry_stock_iten.First;
    while not qry_stock_iten.Eof do
    begin
      if qry_stock_itensti_product_quant.AsFloat <
        qry_stock_itensti_product_quant_min.AsFloat then
      begin
        estMin := True;
        application.MessageBox('Existe produtos abaixo do estoque minimo!',
          'Estoque', MB_OK + MB_ICONWARNING);
        qry_stock_iten.First;
        qry_stock_iten.Last;
        Break;
      end;
      qry_stock_iten.Next;
    end;
  end;
end;

procedure Tfrm_stock_iten.ExibirItensabaixodoestoqueminmo1Click
  (Sender: TObject);
begin
  inherited;
  qry_stock_iten.Filter := 'sti_product_quant < sti_product_quant_min';
  qry_stock_iten.Filtered := True;
end;

procedure Tfrm_stock_iten.ExibirtodososItens1Click(Sender: TObject);
begin
  inherited;
  qry_stock_iten.Filtered := false;
end;

procedure Tfrm_stock_iten.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_stock_iten.Destroy;
  frm_stock_iten := Nil
end;

procedure Tfrm_stock_iten.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  ExibirItensabaixodoestoqueminmo1.Visible := estMin;
end;

procedure Tfrm_stock_iten.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrysto_dt_registration.Value := Now;
end;

end.
