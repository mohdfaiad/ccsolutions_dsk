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

  Data.DB, cxEdit;

type
  Tfrm_import_default = class(TForm)
    dxBarDockControl_1: TdxBarDockControl;
    dxBarManager_1: TdxBarManager;
    dxBarManager_1Bar1: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarButton_close: TdxBarButton;
    ActionList_1: TActionList;
    Action_import: TAction;
    Action_close: TAction;
    cxImageList_1: TcxImageList;
    QImport3Wizard_1: TQImport3Wizard;
    qry: TFDQuery;
    ds: TDataSource;
    Action_save: TAction;
    mem: TFDMemTable;
    popup_1: TdxRibbonPopupMenu;
    dxBarSubItem1: TdxBarSubItem;
    pgctrl_import: TcxPageControl;
    tbsht_data: TcxTabSheet;
    grid_dataview: TcxGridDBTableView;
    grid_datalvl: TcxGridLevel;
    grid_data: TcxGrid;
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);
  private

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

procedure Tfrm_import_default.Action_importExecute(Sender: TObject);
begin
  QImport3Wizard_1.Execute;
end;

end.
