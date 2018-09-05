unit ufrm_import_default;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,

  Vcl.ImgList,
  Vcl.Menus,
  Vcl.ActnList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids,

  dxSkinsCore,
  dxSkinBlack,
  dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinFoggy,
  dxSkinGlassOceans,
  dxSkinHighContrast,
  dxSkiniMaginary,
  dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis,
  dxSkinMetropolisDark,
  dxSkinMoneyTwins,
  dxSkinOffice2007Black,
  dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin,
  dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp,
  dxSkinSharpPlus,
  dxSkinSilver,
  dxSkinSpringTime,
  dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue,
  dxSkinscxPCPainter,
  dxSkinsdxBarPainter,
  cxGraphics,
  dxBar,
  cxClasses,
  dxBarExtItems,
  cxImageList,
  dxRibbon,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxBarBuiltInMenu,
  cxPC,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,

  ACBrBase,
  ACBrEnterTab,

  QImport3Wizard,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Data.DB;

type
  Tfrm_import_default = class(TForm)
    dxBarDockControl_1: TdxBarDockControl;
    dxBarManager_1: TdxBarManager;
    dxBarManager_1Bar1: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarButton_close: TdxBarButton;
    ActionList_1: TActionList;
    Action_close: TAction;
    cxImageList_1: TcxImageList;
    QImport3Wizard_1: TQImport3Wizard;
    qry: TFDQuery;
    ds: TDataSource;
    mem: TFDMemTable;
    popup_1: TdxRibbonPopupMenu;
    dxBarSubItem_1: TdxBarSubItem;
    pgctrl_import: TcxPageControl;
    tbsht_data: TcxTabSheet;
    DBGrid_1: TDBGrid;
    procedure Action_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure QImport3Wizard_1AfterImport(Sender: TObject);
  private
    procedure FixDBGridColumnsWidth(const xDBGrid: TDBGrid);

  public

  end;

var
  frm_import_default: Tfrm_import_default;

implementation

{$R *.dfm}

procedure Tfrm_import_default.Action_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_import_default.FixDBGridColumnsWidth(const xDBGrid: TDBGrid);
var
  I, TotalWidht, VarWidth, QtdTotalColuna : Integer;
  xColumn : TColumn;
begin
// Largura total de todas as colunas antes de redimensionar
  TotalWidht := 0;
// Como dividir todo o espaço extra na grade
  VarWidth := 0;
// Quantas colunas devem ser auto-redimensionamento
  QtdTotalColuna := 0;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    TotalWidht := TotalWidht + xDBGrid.Columns[I].Width;
    if xDBGrid.Columns[I].Field.Tag <> 0 then
      Inc(QtdTotalColuna);
  end;

// Adiciona 1px para a linha de separador de coluna
  if dgColLines in xDBGrid.Options then
    TotalWidht := TotalWidht + xDBGrid.Columns.Count;

// Adiciona a largura da coluna indicadora
  if dgIndicator in xDBGrid.Options then
    TotalWidht := TotalWidht + IndicatorWidth;

// width vale "Left"
  VarWidth :=  xDBGrid.ClientWidth - TotalWidht;


// Da mesma forma distribuir VarWidth para todas as colunas auto-resizable
  if QtdTotalColuna > 0 then
    VarWidth := varWidth div QtdTotalColuna;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    xColumn := xDBGrid.Columns[I];
    if xColumn.Field.Tag <> 0 then
    begin
      xColumn.Width := xColumn.Width + VarWidth;
      if xColumn.Width < xColumn.Field.Tag then
        xColumn.Width := xColumn.Field.Tag;
    end;
  end;
end;

procedure Tfrm_import_default.FormCreate(Sender: TObject);
var
    I: Integer;
begin
    For I := 0 to ds.DataSet.FieldCount - 1 do
        ds.DataSet.Fields[i].Tag := 30;
    FixDBGridColumnsWidth(DBGrid_1);
end;

procedure Tfrm_import_default.FormResize(Sender: TObject);
begin
  FixDBGridColumnsWidth(DBGrid_1);
end;

procedure Tfrm_import_default.QImport3Wizard_1AfterImport(Sender: TObject);
begin
  FixDBGridColumnsWidth(DBGrid_1);
end;

end.
