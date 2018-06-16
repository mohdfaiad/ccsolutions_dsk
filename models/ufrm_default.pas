unit ufrm_default;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, dxBar, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, dxStatusBar,
  dxRibbonStatusBar, dxBarBuiltInMenu, cxPC, Vcl.ExtCtrls, Vcl.Menus, ACBrBase,
  ACBrEnterTab, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, QExport4Dialog,
  QImport3Wizard, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxShellComboBox, cxBarEditItem,
  cxContainer, cxGroupBox, cxTextEdit, cxLabel, dxSkinsdxStatusBarPainter,
  dxSkinsForm, frxClass, frxExportDOCX, frxExportBaseDialog, frxExportPDF, cxCheckBox, ACBrSocket, ACBrCEP;

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
    ds: TDataSource;
    impw_1: TQImport3Wizard;
    expw_1: TQExport4Dialog;
    pgctrl_2: TcxPageControl;
    tbsht_3: TcxTabSheet;
    popmenu_2: TPopupMenu;
    btn_first: TdxBarButton;
    btn_last: TdxBarButton;
    btn_next: TdxBarButton;
    btn_prior: TdxBarButton;
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
    btn_close: TdxBarButton;
    btn_insert: TdxBarButton;
    btn_edit: TdxBarButton;
    btn_cancel: TdxBarButton;
    btn_save: TdxBarButton;
    btn_delete: TdxBarButton;
    btn_refresh: TdxBarButton;
    barman_import_export: TdxBar;
    Action_import: TAction;
    Action_export: TAction;
    Action_print_preview: TAction;
    Action_print: TAction;
    btn_print_preview: TdxBarButton;
    btn_print: TdxBarButton;
    btn_import: TdxBarButton;
    btn_export: TdxBarButton;
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
    Restaurar1: TMenuItem;
    Action_deleted: TAction;
    grid_1: TcxGrid;
    grid_1DBTableView1: TcxGridDBTableView;
    grid_1Level1: TcxGridLevel;
    grb_top: TcxGroupBox;
    lbl_cod_id: TcxLabel;
    edt_codid: TcxTextEdit;
    lbl_dt_registration: TcxLabel;
    edt_dt_registration: TcxTextEdit;
    grb_bottton: TcxGroupBox;
    stsbar_1: TdxStatusBar;
    frxReport_1: TfrxReport;
    frxPDFExport_1: TfrxPDFExport;
    frxDOCXExport_1: TfrxDOCXExport;
    stsbar_deleted_at: TdxStatusBarContainerControl;
    chkbox_1: TcxCheckBox;
    qry: TFDQuery;
    schadp: TFDSchemaAdapter;
    mem: TFDMemTable;
    ACBrCEP1: TACBrCEP;
     procedure dsStateChange(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);
    procedure Action_exportExecute(Sender: TObject);
    procedure actionButton(Status : BOOL);
    procedure FormShow(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure grid_1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grid_1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure Action_firstExecute(Sender: TObject);
    procedure Action_priorExecute(Sender: TObject);
    procedure Action_nextExecute(Sender: TObject);
    procedure Action_lastExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_refreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    result:Boolean;
  end;

var
  frm_default: Tfrm_default;

implementation

{$R *.dfm}

{ Tfrm_default }

procedure Tfrm_default.actionButton(Status : BOOL);
begin

  Action_first.Enabled   := Status;
  Action_prior.Enabled   := Status;
  Action_next.Enabled    := Status;
  Action_last.Enabled    := Status;
  Action_insert.Enabled  := Status;
  Action_edit.Enabled    := Status;
  Action_save.Enabled    := not Status;
  Action_cancel.Enabled  := not Status;
  Action_delete.Enabled  := Status;
  Action_refresh.Enabled := Status;
  Action_close.Enabled   := Status;

end;

procedure Tfrm_default.Action_cancelExecute(Sender: TObject);
begin
 result:=False;

  if Application.MessageBox('Deseja cancelar a manutenção no Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
   begin
   actionButton(True);
   tbsht_1.Show;
   result:=true;
   end;
end;

procedure Tfrm_default.Action_closeExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_default.Action_deleteExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    result:=true
    else
    result:=false;
  actionButton(True);
end;

procedure Tfrm_default.Action_editExecute(Sender: TObject);
begin
  actionButton(False);
  tbsht_5.Show;
end;

procedure Tfrm_default.Action_exportExecute(Sender: TObject);
begin
  expw_1.Execute;
end;

procedure Tfrm_default.Action_firstExecute(Sender: TObject);
begin
  mem.First;
end;

procedure Tfrm_default.Action_importExecute(Sender: TObject);
begin
  impw_1.Execute;
end;

procedure Tfrm_default.Action_insertExecute(Sender: TObject);
begin
   actionButton(False);
   tbsht_5.Show;

end;

procedure Tfrm_default.Action_lastExecute(Sender: TObject);
begin
   mem.Last;;
end;

procedure Tfrm_default.Action_nextExecute(Sender: TObject);
begin
  mem.Next;
end;

procedure Tfrm_default.Action_priorExecute(Sender: TObject);
begin
  mem.Prior;
end;

procedure Tfrm_default.Action_refreshExecute(Sender: TObject);
begin
  actionButton(True);
  qry.Refresh;
end;

procedure Tfrm_default.Action_saveExecute(Sender: TObject);
begin
  result:=False;
   if Application.MessageBox
    ('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!',
    'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION +
    MB_DEFBUTTON2) = IDYES then
  begin
  actionButton(True);
   tbsht_1.Show;
   result:=True;
end;
end;

procedure Tfrm_default.grid_1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Action_edit.Execute;
end;

procedure Tfrm_default.grid_1DBTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
     Action_edit.Execute;
end;

procedure Tfrm_default.dsStateChange(Sender: TObject);
begin
  case ds.State of
    dsInactive: ;
    dsBrowse: ;
    dsEdit: ;
    dsInsert: ;
    dsSetKey: ;
    dsCalcFields: ;
    dsFilter: ;
    dsNewValue: ;
    dsOldValue: ;
    dsCurValue: ;
    dsBlockRead: ;
    dsInternalCalc: ;
    dsOpening: ;
  end;
end;

procedure Tfrm_default.FormCreate(Sender: TObject);
begin
  tbsht_1.TabVisible := False;
  tbsht_2.TabVisible := False;
end;

procedure Tfrm_default.FormShow(Sender: TObject);
begin
  tbsht_1.Show;
  actionButton(True);
end;

end.
