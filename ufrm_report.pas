unit ufrm_report;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, ACBrBase,
  ACBrEnterTab, System.ImageList, Vcl.ImgList, cxGraphics, Vcl.Menus,
  System.Actions, Vcl.ActnList, dxBar, cxClasses, frxClass, frxDesgn,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  Vcl.ComCtrls, cxContainer, cxEdit, cxTreeView, Winapi.ShlObj, cxShellCommon,
  cxShellTreeView, cxShellComboBox, cxBarEditItem;

type
  Tfrm_report = class(TForm)
    dxBarDockControl_1: TdxBarDockControl;
    dxBarManager_1: TdxBarManager;
    dxBarManager_1Bar1: TdxBar;
    dxBarManager_1Bar2: TdxBar;
    dxBarManager_1Bar3: TdxBar;
    dxBarManager_1Bar4: TdxBar;
    dxBarManager_1Bar5: TdxBar;
    dxBarButton_insert: TdxBarButton;
    dxBarButton_edit: TdxBarButton;
    dxBarButton_delete: TdxBarButton;
    dxBarButton_close: TdxBarButton;
    dxBarSubItem_print: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    ActionList_1: TActionList;
    Action_insert: TAction;
    Action_edit: TAction;
    Action_delete: TAction;
    Action_refresh: TAction;
    Action_close: TAction;
    PopupMenu_1: TPopupMenu;
    Primeiro1: TMenuItem;
    Anterior1: TMenuItem;
    Prximo1: TMenuItem;
    ltimo1: TMenuItem;
    N1: TMenuItem;
    Inserir1: TMenuItem;
    Editar1: TMenuItem;
    Excluir1: TMenuItem;
    N2: TMenuItem;
    Atualizar1: TMenuItem;
    cxImageList_1: TcxImageList;
    ACBrEnterTab_1: TACBrEnterTab;
    frxdesigner: TfrxDesigner;
    frxreport: TfrxReport;
    cxShellTreeView1: TcxShellTreeView;
    Action_preview: TAction;
    dxBarButton1: TdxBarButton;
    procedure Action_closeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_insertExecute(Sender: TObject);
    procedure editReport;
    procedure newReport;
    procedure previewReport;
    procedure deleteReport;
    procedure cxShellTreeView1DblClick(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_previewExecute(Sender: TObject);
    procedure cxBarEditItem1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_report: Tfrm_report;

implementation

{$R *.dfm}

uses ufrm_dm_report;

procedure Tfrm_report.Action_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_report.Action_deleteExecute(Sender: TObject);
begin
  deleteReport;
end;

procedure Tfrm_report.Action_editExecute(Sender: TObject);
begin
  editReport;
end;

procedure Tfrm_report.Action_insertExecute(Sender: TObject);
begin
  newReport;
end;

procedure Tfrm_report.Action_previewExecute(Sender: TObject);
begin
  previewReport;
end;

procedure Tfrm_report.cxBarEditItem1Change(Sender: TObject);
begin
  frxdesigner.SaveDir := cxShellTreeView1.Path;
  frxdesigner.OpenDir := cxShellTreeView1.Path;
  frxreport.LoadFromFile(cxShellTreeView1.Path, True);
  frxreport.DesignReport();
end;

procedure Tfrm_report.cxShellTreeView1DblClick(Sender: TObject);
begin
  editReport;
end;

procedure Tfrm_report.deleteReport;
begin
  if Application.MessageBox
    ('Ao excluir o registro, o mesmo não poderá ser recuperado novamente!',
    'Deseja excluir o Registro?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
  begin
    DeleteFile(cxShellTreeView1.Path);
  end;
end;

procedure Tfrm_report.editReport;
begin
  frxdesigner.SaveDir := cxShellTreeView1.Path;
  frxdesigner.OpenDir := cxShellTreeView1.Path;
  frxreport.LoadFromFile(cxShellTreeView1.Path, True);
  frxreport.DesignReport();
end;

procedure Tfrm_report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_report.Destroy;
  frm_report := Nil;
end;

procedure Tfrm_report.newReport;
begin
  frxreport.DesignReport();
end;

procedure Tfrm_report.previewReport;
begin
  frxreport.LoadFromFile(cxShellTreeView1.Path);
  frxreport.ShowReport(True);
end;

end.
