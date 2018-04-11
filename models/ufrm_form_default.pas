unit ufrm_form_default;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  dxSkinsdxBarPainter, cxClasses, dxBar, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxSkinsForm, dxRibbon, cxGridCustomPopupMenu, cxGridPopupMenu,
  Vcl.Menus, dxLayoutContainer, dxLayoutControl, cxContainer,
  dxLayoutcxEditAdapters, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, dxLayoutLookAndFeels, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrEnterTab,
  QExport4Dialog, dxBarExtItems, cxShellComboBox, cxBarEditItem, frxDesgn,
  QImport3Wizard, frxClass, cxLocalization, ACBrSocket, ACBrCEP;

type
  Tfrm_form_default = class(TForm)
    cxPageControl_1: TcxPageControl;
    cxTabSheet_1: TcxTabSheet;
    cxTabSheet_2: TcxTabSheet;
    dxBarDockControl_1: TdxBarDockControl;
    dxBarManager_1: TdxBarManager;
    dxBarManager_1Bar1: TdxBar;
    ActionList_1: TActionList;
    Action_first: TAction;
    Action_prior: TAction;
    Action_next: TAction;
    Action_last: TAction;
    Action_insert: TAction;
    Action_edit: TAction;
    Action_save: TAction;
    Action_cancel: TAction;
    Action_delete: TAction;
    dxBarManager_1Bar2: TdxBar;
    cxGrid_1DBTableView1: TcxGridDBTableView;
    cxGrid_1Level1: TcxGridLevel;
    cxGrid_1: TcxGrid;
    cxPageControl_2: TcxPageControl;
    cxTabSheet_3: TcxTabSheet;
    Action_refresh: TAction;
    Action_filter: TAction;
    Action_close: TAction;
    dxBarButton_first: TdxBarButton;
    dxBarButton_prior: TdxBarButton;
    dxBarButton_cancel: TdxBarButton;
    dxBarButton_save: TdxBarButton;
    dxBarButton_edit: TdxBarButton;
    dxBarButton_insert: TdxBarButton;
    dxBarButton_last: TdxBarButton;
    dxBarButton_next: TdxBarButton;
    dxBarButton_delete: TdxBarButton;
    dxBarButton_refresh: TdxBarButton;
    dxBarManager_1Bar3: TdxBar;
    dxBarButton_close: TdxBarButton;
    ds: TDataSource;
    dxBarSubItem_print: TdxBarSubItem;
    cxGridPopupMenu_1: TcxGridPopupMenu;
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
    dxBarManager_1Bar4: TdxBar;
    dxBarManager_1Bar5: TdxBar;
    dxBarSubItem_1: TdxBarSubItem;
    dxBarSubItem_2: TdxBarSubItem;
    dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList;
    qry: TFDQuery;
    dxLayoutControl_1Group_Root: TdxLayoutGroup;
    dxLayoutControl_1: TdxLayoutControl;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dbedt_id: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dbedt_dt_registration: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    ACBrEnterTab_1: TACBrEnterTab;
    QExport4Dialog_1: TQExport4Dialog;
    Action_export: TAction;
    dxBarButton_export: TdxBarButton;
    cxBarEditItem_1: TcxBarEditItem;
    Action_print: TAction;
    dxBarButton_report_edit: TdxBarButton;
    Action_print_edit: TAction;
    dxBarButton_report_preview: TdxBarButton;
    dxBarManager_1Bar6: TdxBar;
    QImport3Wizard_1: TQImport3Wizard;
    Action_import: TAction;
    dxBarButton_import: TdxBarButton;
    FDSchemaAdapter_1: TFDSchemaAdapter;
    frxReport_1: TfrxReport;
    ACBrCEP_1: TACBrCEP;
    procedure cxGrid_1DBTableView1DblClick(Sender: TObject);
    procedure Action_insertUpdate(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_firstExecute(Sender: TObject);
    procedure Action_priorExecute(Sender: TObject);
    procedure Action_nextExecute(Sender: TObject);
    procedure Action_lastExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_refreshExecute(Sender: TObject);
    procedure Action_closeExecute(Sender: TObject);
    procedure Action_cancelUpdate(Sender: TObject);
    procedure dxLayoutControl_1DblClick(Sender: TObject);
    procedure Action_exportExecute(Sender: TObject);
    procedure Action_importExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_printExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_form_default: Tfrm_form_default;

implementation

{$R *.dfm}

procedure Tfrm_form_default.Action_cancelExecute(Sender: TObject);
begin
  if Application.MessageBox
    ('Ao Cancelar as alterações, as informações digitadas não serão salvas!',
    'Deseja Cancelar as Alterações?', MB_YESNO + MB_ICONINFORMATION +
    MB_DEFBUTTON2) = IDYES then
  begin
    ds.DataSet.Cancel;
    if qry.CachedUpdates then
     FDSchemaAdapter_1.CancelUpdates;
    cxTabSheet_1.Show;
  end;
end;

procedure Tfrm_form_default.Action_cancelUpdate(Sender: TObject);
begin
  if ds.State in [dsBrowse] then
  begin
    Action_first.Enabled := True;
    Action_prior.Enabled := True;
    Action_next.Enabled := True;
    Action_last.Enabled := True;
    Action_insert.Enabled := True;
    Action_edit.Enabled := True;
    Action_save.Enabled := False;
    Action_cancel.Enabled := False;
    Action_delete.Enabled := True;
    Action_refresh.Enabled := True;
    Action_close.Enabled := True;
  end;
end;

procedure Tfrm_form_default.Action_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_form_default.Action_deleteExecute(Sender: TObject);
begin
  if Application.MessageBox
    ('Ao excluir o registro, o mesmo não poderá ser recuperado novamente!',
    'Deseja excluir o Registro?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
  begin
    ds.DataSet.Delete;
  end;
end;

procedure Tfrm_form_default.Action_editExecute(Sender: TObject);
begin
  ds.DataSet.Edit;
  cxTabSheet_3.Show;
end;

procedure Tfrm_form_default.Action_exportExecute(Sender: TObject);
begin
  QExport4Dialog_1.Execute;
end;

procedure Tfrm_form_default.Action_firstExecute(Sender: TObject);
begin
  ds.DataSet.First;
end;

procedure Tfrm_form_default.Action_importExecute(Sender: TObject);
begin
  QImport3Wizard_1.Execute;
end;

procedure Tfrm_form_default.Action_insertExecute(Sender: TObject);
begin
  ds.DataSet.Insert;
  cxTabSheet_3.Show;
end;

procedure Tfrm_form_default.Action_insertUpdate(Sender: TObject);
begin
  if ds.State in [dsInsert, dsEdit] then
  begin
    Action_first.Enabled := False;
    Action_prior.Enabled := False;
    Action_next.Enabled := False;
    Action_last.Enabled := False;
    Action_insert.Enabled := False;
    Action_edit.Enabled := False;
    Action_save.Enabled := True;
    Action_cancel.Enabled := True;
    Action_delete.Enabled := False;
    Action_refresh.Enabled := False;
    Action_close.Enabled := False;
  end;
end;

procedure Tfrm_form_default.Action_lastExecute(Sender: TObject);
begin
  ds.DataSet.Last;
end;

procedure Tfrm_form_default.Action_nextExecute(Sender: TObject);
begin
  ds.DataSet.Next;
end;

procedure Tfrm_form_default.Action_printExecute(Sender: TObject);
begin

   frxReport_1.LoadFromFile(TcxShellComboBoxProperties(cxBarEditItem_1.Properties).Root.CurrentPath +'\'+cxBarEditItem_1.EditValue);
   frxReport_1.ShowReport;

end;

procedure Tfrm_form_default.Action_priorExecute(Sender: TObject);
begin
  ds.DataSet.Prior;
end;

procedure Tfrm_form_default.Action_refreshExecute(Sender: TObject);
begin
  ds.DataSet.Refresh;
end;

procedure Tfrm_form_default.Action_saveExecute(Sender: TObject);
begin
  if Application.MessageBox
    ('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!',
    'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION +
    MB_DEFBUTTON2) = IDYES then
  begin
    ds.DataSet.Post;
    if qry.CachedUpdates then
      FDSchemaAdapter_1.ApplyUpdates(0);

      Application.MessageBox('Registros salvos com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);
     cxTabSheet_1.Show;
  end;
end;

procedure Tfrm_form_default.cxGrid_1DBTableView1DblClick(Sender: TObject);
begin
  cxTabSheet_3.Show;
  Action_edit.Execute;
end;

procedure Tfrm_form_default.dxLayoutControl_1DblClick(Sender: TObject);
begin
  dxLayoutControl_1.Customization := True;
end;

procedure Tfrm_form_default.FormCreate(Sender: TObject);
var
i:Integer;
begin

//procedimento criado dia 26/03/2018 para verificar se tem alguma query fechado
//caso esteja fechado ele abre...   e se caso o pagecontrol está em "Manutençào"
//coloca automáticamente em "Pesquisa"
//autor: Elizeu Souza
for I := 0 to Self.ComponentCount -1 do
  if Self.Components[i] is TFDQuery then
   begin
    TFDQuery(Self.Components[i]).Prepare;
    TFDQuery(Self.Components[i]).Open;
   end;
 cxPageControl_1.ActivePageIndex:=0;

  cxTabSheet_1.TabVisible:=False;
  cxTabSheet_2.TabVisible:=False;
  cxTabSheet_1.Show;
end;

end.
