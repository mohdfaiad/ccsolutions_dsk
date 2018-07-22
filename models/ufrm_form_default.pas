unit ufrm_form_default;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.ImgList,
  Vcl.Forms,
  Vcl.ActnList,
  Vcl.Dialogs,
  Vcl.Menus,
  Vcl.ExtCtrls,

  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
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
  dxBarBuiltInMenu,
  cxPC,
  dxSkinsdxBarPainter,
  cxClasses,
  dxBar,
  dxLayoutContainer,
  dxLayoutControl,
  cxContainer,
  dxLayoutcxEditAdapters,
  cxLabel,
  cxMaskEdit,
  cxDropDownEdit,
  cxCalendar,
  cxDBEdit,
  cxTextEdit,
  dxLayoutLookAndFeels,
  cxDBData,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  dxSkinsForm,
  dxRibbon,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxBarExtItems,
  cxShellComboBox,
  cxBarEditItem,
  cxDBLookupComboBox,
  cxLocalization,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList,

  Data.DB,

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

  ACBrBase,
  ACBrEnterTab,
  ACBrSocket,

  QExport4Dialog,
  QImport3Wizard,

  frxDesgn,
  frxClass,

  uthred_logged;
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
    schadapter: TFDSchemaAdapter;
    frxReport_1: TfrxReport;
    cxlooComBoxRep: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
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
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxlooComBoxRepPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Result : Boolean;
  end;

var
  frm_form_default: Tfrm_form_default;

implementation

{$R *.dfm}

uses ufrm_main_default, ufrm_dm, class_report, ufrm_dm_report;

procedure Tfrm_form_default.Action_cancelExecute(Sender: TObject);
begin
  Result := False;

  if Application.MessageBox('Ao Cancelar as alterações, as informações digitadas não serão salvas!', 'Deseja Cancelar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
    ds.DataSet.Cancel;
    Result := True;
    cxTabSheet_1.Show;
  end;
end;

procedure Tfrm_form_default.Action_cancelUpdate(Sender: TObject);
begin
  if ds.State in [dsBrowse] then begin
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
  if Application.MessageBox('Ao excluir o registro, o mesmo não poderá ser recuperado novamente!', 'Deseja excluir o Registro?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
    Result := True
  end else begin
    Result := False;
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
  if ds.State in [dsInsert, dsEdit] then begin
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
 if (cxlooComBoxRep.EditValue <> '') then
   begin
    if Application.MessageBox('Deseja imprimir o relatório selecionado ?','AVISO DE IMPRESSÃO',MB_YESNO + MB_ICONQUESTION) = ID_YES then
     begin
     //SQL para abrir tabela da empresa para exibir o cabeçalho do relatório e LOGO da Empresa---
       frm_dm.qry_enterprise.Close;
       frm_dm.qry_enterprise.ParamByName('CTR_COD').Value       := frm_dm.qry_contractctr_cod.Value;
       frm_dm.qry_enterprise.ParamByName('CODUSUARIO').AsString := frm_dm.v_ctr_usr_cod;
       frm_dm.qry_enterprise.Prepare;
       frm_dm.qry_enterprise.open;

      frm_dm_report.qry_report.Close;
      frm_dm_report.qry_report.Open;
      if frm_dm_report.qry_report.locate('rep_name',cxlooComBoxRep.EditValue,[loCaseInsensitive, loPartialKey]) then
       begin
        frxReport_1.LoadFromStream(TReport.Read_Report(cxlooComBoxRep.EditValue, 'rep_report', frm_dm_report.qry_report));
        frxReport_1.ShowReport;
       end else
        begin
         frxReport_1.LoadFromFile(TcxShellComboBoxProperties(cxBarEditItem_1.Properties).Root.CurrentPath +'\'+cxBarEditItem_1.EditValue);
         frxReport_1.ShowReport;
        end;
     end;

  end else
   begin
      Application.MessageBox('Campo relatório está vazio, por favor selecione um relatório !','AVISO DO SISTEMA',MB_OK + MB_ICONWARNING);
   end;

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
  if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
    ds.DataSet.Post;

    if qry.CachedUpdates then begin
      schadapter.ApplyUpdates(0);
      Application.MessageBox('Registros salvos com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);
      cxTabSheet_1.Show;
    end;
  end;
end;

procedure Tfrm_form_default.cxGrid_1DBTableView1DblClick(Sender: TObject);
begin
  Action_edit.Execute;
  cxTabSheet_3.Show;
end;

procedure Tfrm_form_default.cxlooComBoxRepPropertiesPopup(Sender: TObject);
begin
  frm_dm_report.qry_report.Close;
  frm_dm_report.qry_report.ParamByName('reference').AsString := Self.Name;
  frm_dm_report.qry_report.Prepare;
  frm_dm_report.qry_report.Open;
end;

procedure Tfrm_form_default.dxBarButton1Click(Sender: TObject);
var
  rep_cod, NameReport: string;
  rep_id: Integer;
  sArq : TStream;
  mMem : TMemoryStream;
begin
  if cxBarEditItem_1.EditValue <> '' then
   begin
    frm_dm_report.qry_report.Close;
    frm_dm_report.qry_report.Open;

    NameReport :='';
    NameReport:= TcxShellComboBoxProperties(cxBarEditItem_1.Properties).Root.CurrentPath +'\'+cxBarEditItem_1.EditValue;

    mMem:=TMemoryStream.Create;
    sArq:= TFileStream.Create(NameReport, fmOpenRead);
    sArq.Position:=0;

    mMem.LoadFromStream(sArq);

    try

     if frm_dm_report.qry_report.locate('rep_name',cxBarEditItem_1.EditValue,[loCaseInsensitive, loPartialKey]) then
      begin

        frm_dm_report.qry_report.Edit;
        frm_dm_report.qry_reportrep_report.LoadFromStream(mMem);
        frm_dm_report.qry_report.Post;
        Application.MessageBox('Relatório salvo com sucesso !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);

      end else
       begin

         With frm_dm.qry,sql do
          begin
           close;   //SQL para obter o Codigo ID em Hex-----
           text:= 'select hex(uuid_to_bin(uuid()))';
           prepare;
           open;

           rep_cod:=Fields[0].AsString;


               close;  // SQL para Obter o proximo ID ta tabela-----
               Text:= ' select case when max(rep_id) is null then 1 ' +
                      '      else (max(rep_id) + 1) end as maxID from report '+
                      ' where contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
               Prepare;
               Open;

           rep_id:=Fields[0].AsInteger;

           Close;   //SQL para Inserir o produto do Pedido de Compra------
           Text:='insert into report (rep_id, rep_cod, contract_ctr_cod, rep_name,rep_reference, rep_status, rep_dt_registration ) ' +
                 ' values (:rep_id, unhex(:rep_cod), unhex(:contract_ctr_cod), :rep_name, :rep_reference, :rep_status, :rep_dt_registration) ';
           ParamByName('rep_id').AsInteger             := rep_id;
           ParamByName('rep_cod').AsString             := rep_cod;
           ParamByName('contract_ctr_cod').AsString    := frm_dm.v_contract_ctr_cod;
           ParamByName('rep_name').AsString            := cxBarEditItem_1.EditValue;
           ParamByName('rep_reference').AsString       := Self.Name;
           ParamByName('rep_status').AsString          := 'A';
           ParamByName('rep_dt_registration').AsDateTime:= Now;
           Prepare;
           ExecSQL;

           frm_dm_report.qry_report.Close;
           frm_dm_report.qry_report.Open;
           frm_dm_report.qry_report.locate('rep_name',cxBarEditItem_1.EditValue,[loCaseInsensitive, loPartialKey]);
           frm_dm_report.qry_report.Edit;
           frm_dm_report.qry_reportrep_report.LoadFromStream(mMem);
           frm_dm_report.qry_report.Post;
           Application.MessageBox('Relatório salvo com sucesso !','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);

          end;

       end;

     finally
      FreeAndNil(mMem);
      FreeAndNil(sArq);
    end;

   end else
    begin
      Application.MessageBox('Campo relatório está vazio, por favor selecione um relatório !','AVISO DO SISTEMA',MB_OK + MB_ICONWARNING);
    end;
end;

procedure Tfrm_form_default.dxLayoutControl_1DblClick(Sender: TObject);
begin
  dxLayoutControl_1.Customization := True;
end;

procedure Tfrm_form_default.FormCreate(Sender: TObject);
begin
  cxPageControl_1.ActivePageIndex := 0;
  cxTabSheet_1.TabVisible := False;
  cxTabSheet_2.TabVisible := False;
  cxTabSheet_1.Show;
end;

end.
