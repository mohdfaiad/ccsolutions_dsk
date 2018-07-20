unit ufrm_main_default_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter,
  dxRibbon, cxClasses, dxSkinsForm, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, dxStatusBar, Vcl.Menus, cxContainer, cxEdit,
  cxImage, dxBevel, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, dxGDIPlusClasses,
  AdvMenus;

type
  Tfrm_main_default_2 = class(TForm)
    dxStatusBar1: TdxStatusBar;
    ActionList_1: TActionList;
    cxImageList_1: TcxImageList;
    dxSkinController_1: TdxSkinController;
    ToolBar1: TToolBar;
    Action_exit: TAction;
    Bevel_1: TBevel;
    Image_1: TImage;
    ToolButton1: TToolButton;
    AdvMainMenu_1: TAdvMainMenu;
    Systema1: TMenuItem;
    Cadastros1: TMenuItem;
    SairdoSistema1: TMenuItem;
    procedure Action_exitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main_default_2: Tfrm_main_default_2;

implementation

{$R *.dfm}

procedure Tfrm_main_default_2.Action_exitExecute(Sender: TObject);
begin
  Close;
end;

end.
