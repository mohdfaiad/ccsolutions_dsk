unit ufrm_print_default;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.ImgList,
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
  dxBar,
  dxRibbon,
  cxImageList,
  cxGraphics,
  cxClasses,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxBarBuiltInMenu,
  cxPC,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,

  Data.DB,

  QExport4Dialog, cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid,
  cxDBPivotGrid, dxBevel, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  Tfrm_print_default = class(TForm)
    dxBarManager_1: TdxBarManager;
    dxBarManager_1Bar1: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarSubItem_1: TdxBarSubItem;
    cxImageList_1: TcxImageList;
    ds: TDataSource;
    qry: TFDQuery;
    mem: TFDMemTable;
    popup_1: TdxRibbonPopupMenu;
    ActionList_1: TActionList;
    Action_close: TAction;
    dxBarDockControl_1: TdxBarDockControl;
    pgctrl_import: TcxPageControl;
    tbsht_data: TcxTabSheet;
    QExport4Dialog_1: TQExport4Dialog;
    Bevel_1: TdxBevel;
    dxBarButton_close: TdxBarButton;
    cxGrid_1: TcxGrid;
    cxGrid_1DBTableView1: TcxGridDBTableView;
    cxGrid_1Level1: TcxGridLevel;
    procedure Action_closeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print_default: Tfrm_print_default;

implementation

{$R *.dfm}

procedure Tfrm_print_default.Action_closeExecute(Sender: TObject);
begin
  Close;
end;

end.
