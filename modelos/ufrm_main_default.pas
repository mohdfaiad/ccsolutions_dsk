unit ufrm_main_default;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus,
  Vcl.ExtCtrls, dxGDIPlusClasses;

type
  Tfrm_main_default = class(TForm)
    MainMenu_1: TMainMenu;
    StatusBar_1: TStatusBar;
    ToolBar1: TToolBar;
    ActionList_1: TActionList;
    ImageList_1: TImageList;
    Sistema1: TMenuItem;
    Cotnrato1: TMenuItem;
    Relatrios1: TMenuItem;
    Relatrios2: TMenuItem;
    Utilitrios1: TMenuItem;
    Ajuda1: TMenuItem;
    Action_sair: TAction;
    SairdoSistema1: TMenuItem;
    Bevel_1: TBevel;
    Image_1: TImage;
    procedure Action_sairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main_default: Tfrm_main_default;

implementation

{$R *.dfm}

procedure Tfrm_main_default.Action_sairExecute(Sender: TObject);
begin
  Close;
end;

end.
