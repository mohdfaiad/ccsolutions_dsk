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
  cxShellTreeView, cxShellComboBox, cxBarEditItem, FireDAC.Stan.Param;

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
    dxBarSubItem_Salvar: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    cxEdt_Item_rep: TcxBarEditItem;
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
    procedure dxBarButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_report: Tfrm_report;

implementation

{$R *.dfm}

uses ufrm_dm_report, ufrm_dm;

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

procedure Tfrm_report.dxBarButton2Click(Sender: TObject);
 var
  rep_cod, NameReport: string;
  rep_id: Integer;
  sArq:TStream;
  mMem:TMemoryStream;
begin
  if cxEdt_Item_rep.EditValue <> '' then
   begin

    frm_dm_report.qry_report.Open;

    NameReport :='';
    NameReport := TcxShellComboBoxProperties(cxEdt_Item_rep.Properties).Root.CurrentPath +'\'+cxEdt_Item_rep.EditValue;
   // NameReport:= cxShellTreeView1.AbsolutePath;

    mMem:=TMemoryStream.Create;
    sArq:= TFileStream.Create(NameReport, fmOpenRead);
    sArq.Position:=0;

    mMem.LoadFromStream(sArq);

    try

     if frm_dm_report.qry_report.locate('rep_name',cxEdt_Item_rep.EditValue,[]) then
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
           ParamByName('rep_name').AsString            := NameReport;
           ParamByName('rep_reference').AsString       := Self.Name;
           ParamByName('rep_status').AsString          := 'A';
           ParamByName('rep_dt_registration').AsDateTime:= Now;
           Prepare;
           ExecSQL;

           frm_dm_report.qry_report.Close;
           frm_dm_report.qry_report.Open;
           frm_dm_report.qry_report.locate('rep_name',cxEdt_Item_rep.EditValue,[]);
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
