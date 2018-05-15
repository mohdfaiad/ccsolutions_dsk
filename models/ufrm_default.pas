unit ufrm_default;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, dxBar, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, dxStatusBar,
  dxRibbonStatusBar, dxBarBuiltInMenu, cxPC, Vcl.ExtCtrls, Vcl.Menus, ACBrBase, ACBrEnterTab, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, QExport4Dialog,
  QImport3Wizard, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxShellComboBox, cxBarEditItem,
  cxContainer, cxGroupBox, cxTextEdit, cxLabel, dxSkinsdxStatusBarPainter, dxSkinsForm;

type
  Tfrm_default = class(TForm)
    actlist_1: TActionList;
    bardck_1: TdxBarDockControl;
    barman_1: TdxBarManager;
    pgctrl_1: TcxPageControl;
    tbsht_1: TcxTabSheet;
    tbsht_2: TcxTabSheet;
    barman_bar_other: TdxBar;
    barman_bar_report: TdxBar;
    barman_bar_manager: TdxBar;
    barman_bar_form: TdxBar;
    popmenu_1: TPopupMenu;
    acbr_enter_1: TACBrEnterTab;
    qry: TFDQuery;
    ds: TDataSource;
    schadp_1: TFDSchemaAdapter;
    impw_1: TQImport3Wizard;
    expw_1: TQExport4Dialog;
    pgctrl_2: TcxPageControl;
    tbsht_3: TcxTabSheet;
    tbsht_4: TcxTabSheet;
    popmenu_2: TPopupMenu;
    grid_2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    bnt_first: TdxBarButton;
    bnt_last: TdxBarButton;
    bnt_next: TdxBarButton;
    bnt_prior: TdxBarButton;
    pgctrl_3: TcxPageControl;
    tbsht_5: TcxTabSheet;
    imglist_1: TcxImageList;
    Action_first: TAction;
    Action_prior: TAction;
    Action_next: TAction;
    Action_last: TAction;
    Action_insert: TAction;
    Action_edit: TAction;
    Action_cancel: TAction;
    Action_save: TAction;
    Action_delete: TAction;
    Action_refresh: TAction;
    Action_close: TAction;
    bnt_close: TdxBarButton;
    bnt_insert: TdxBarButton;
    bnt_edit: TdxBarButton;
    bnt_cancel: TdxBarButton;
    bnt_save: TdxBarButton;
    bnt_delete: TdxBarButton;
    bnt_refresh: TdxBarButton;
    barman_import_export: TdxBar;
    Action_import: TAction;
    Action_export: TAction;
    Action_print_preview: TAction;
    Action_print: TAction;
    bnt_print_preview: TdxBarButton;
    bnt_print: TdxBarButton;
    bnt_import: TdxBarButton;
    bnt_export: TdxBarButton;
    edt_report: TcxBarEditItem;
    Primeiro1: TMenuItem;
    Anterior1: TMenuItem;
    Prximo1: TMenuItem;
    ltimo1: TMenuItem;
    N1: TMenuItem;
    Inserir1: TMenuItem;
    Editar1: TMenuItem;
    Cancelar1: TMenuItem;
    Salvar1: TMenuItem;
    Excluir1: TMenuItem;
    N2: TMenuItem;
    Atualizar1: TMenuItem;
    N3: TMenuItem;
    Fechar1: TMenuItem;
    Action_restore: TAction;
    Restaurar1: TMenuItem;
    Action_active: TAction;
    Action_deleted: TAction;
    N4: TMenuItem;
    RegistrosDeletados1: TMenuItem;
    N5: TMenuItem;
    RegistrosAtivos1: TMenuItem;
    grid_1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    edt_codid: TcxTextEdit;
    cxLabel2: TcxLabel;
    edt_dt_registration: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    dxStatusBar1: TdxStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_default: Tfrm_default;

implementation

{$R *.dfm}

end.
