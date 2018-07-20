unit ufrm_import_default;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, frxClass,
  frxDesgn, ACBrBase, ACBrEnterTab, System.ImageList, Vcl.ImgList, cxGraphics,
  Vcl.Menus, System.Actions, Vcl.ActnList, dxBar, cxClasses, QImport3Wizard,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, dxBarExtItems;

type
  Tfrm_import_default = class(TForm)
    dxBarDockControl_1: TdxBarDockControl;
    dxBarManager_1: TdxBarManager;
    dxBarManager_1Bar1: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarButton_insert: TdxBarButton;
    dxBarButton_close: TdxBarButton;
    ActionList_1: TActionList;
    Action_import: TAction;
    Action_close: TAction;
    cxImageList_1: TcxImageList;
    ACBrEnterTab_1: TACBrEnterTab;
    QImport3Wizard_1: TQImport3Wizard;
    qry: TFDQuery;
    ds: TDataSource;
    DBGrid_1: TDBGrid;
    Action_save: TAction;
    dxBarButton2: TdxBarButton;
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

procedure Tfrm_import_default.Action_saveExecute(Sender: TObject);
begin
  ds.DataSet.Post
end;

end.
