unit ufrm_ticket_category;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,

  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

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
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDBData,
  cxContainer,
  dxLayoutcxEditAdapters,
  dxSkinsdxBarPainter,
  cxShellComboBox,
  dxLayoutLookAndFeels,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  dxBar,
  cxBarEditItem,
  cxClasses,
  dxLayoutContainer,
  cxMaskEdit,
  cxDropDownEdit,
  cxCalendar,
  cxDBEdit,
  cxTextEdit,
  dxLayoutControl,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxPC,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBLookupComboBox,
  cxImageList,
  cxCheckBox,
  cxDBNavigator,
  dxBevel,

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
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,

  frxClass,

  QImport3Wizard,
  QExport4Dialog,

  ACBrBase,
  ACBrEnterTab,

  ufrm_dm,
  ufrm_form_default,

  u_class_connection,
  u_class_rest_category,
  u_class_rest_category_sub;

type
  Tfrm_ticket_category = class(Tfrm_form_default)
    dbedt_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    gridview: TcxGridDBTableView;
    gridlvl: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    memtkc_cod: TStringField;
    memtkc_id: TLongWordField;
    memtkc_name: TStringField;
    memtkc_status: TShortintField;
    memtkc_deleted_at: TDateTimeField;
    memtkc_dt_registration: TDateTimeField;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    memSub: TFDMemTable;
    dsSub: TDataSource;
    cxGrid_1DBTableView1tkc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tkc_name: TcxGridDBColumn;
    cxGrid_1DBTableView1tkc_status: TcxGridDBColumn;
    cxGrid_1DBTableView1tkc_dt_registration: TcxGridDBColumn;
    memSubtks_cod: TStringField;
    memSubticket_category_tkc_cod: TStringField;
    memSubtks_name: TStringField;
    memSubtks_status: TShortintField;
    memSubtks_deleted_at: TDateTimeField;
    memSubtks_dt_registration: TDateTimeField;
    dxBarButton1: TdxBarButton;
    dbedt_sub_name: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbchk_status_sub: TcxDBCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxBevel1: TdxBevel;
    dxLayoutItem7: TdxLayoutItem;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem8: TdxLayoutItem;
    gridviewtks_name: TcxGridDBColumn;
    gridviewtks_status: TcxGridDBColumn;
    gridviewtks_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_ticket_category: Tfrm_ticket_category;

implementation

{$R *.dfm}

procedure Tfrm_ticket_category.Action_saveExecute(Sender: TObject);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  inherited;
  case ds.State of
    dsEdit:
      try
        try
          strproc_update := TFDStoredProc.Create(Self);
          strproc_update.Connection := frm_dm.connCCS;
          strproc_update.StoredProcName := 'proc_ticket_category_update';
          strproc_update.Prepare;

          strproc_update.ParamByName('p_ctr_token').AsString      := Tconnection.ctr_token;
          strproc_update.ParamByName('p_tkc_cod').AsString        := memtkc_cod.AsString;
          strproc_update.ParamByName('p_tkc_name').AsString       := dbedt_name.Text;
          strproc_update.ParamByName('p_tkc_status').AsShortInt   := dbchk_status.Checked.ToInteger;
          strproc_update.ExecProc;

          afterUpdate;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;

    dsInsert:
      try
        try
          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_create := TFDStoredProc.Create(Self);
            strproc_create.Connection := frm_dm.connCCS;
            strproc_create.StoredProcName := 'proc_ticket_category_create';
            strproc_create.Prepare;

            strproc_create.ParamByName('p_ctr_token').AsString    := Tconnection.ctr_token;
            strproc_create.ParamByName('p_tkc_name').AsString     := dbedt_name.Text;
            strproc_create.ParamByName('p_tkc_status').AsShortInt := dbchk_status.Checked.ToInteger;
            strproc_create.ExecProc;

            afterInsert;
          end else begin
            ds.DataSet.Cancel;
          end;
          except on E: Exception do
            ShowMessage('Erro: ' + E.Message);
          end;
      finally
      end;
  end;
end;

procedure Tfrm_ticket_category.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_ticket_category.GetTicketCategory(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_ticket_category.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_ticket_category.GetTicketCategory(mem);
end;

procedure Tfrm_ticket_category.cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  inherited;
  case AButtonIndex of
    NBDI_POST:
      case dsSub.State of
        dsEdit:
          try
            try
              strproc_update := TFDStoredProc.Create(Self);
              strproc_update.Connection := frm_dm.connCCS;
              strproc_update.StoredProcName := 'proc_ticket_category_sub_update';
              strproc_update.Prepare;

              strproc_update.ParamByName('p_ctr_token').AsString                := Tconnection.ctr_token;
              strproc_update.ParamByName('p_tks_cod').AsString                  := memSubtks_cod.AsString;
              strproc_update.ParamByName('p_tks_name').AsString                 := dbedt_sub_name.Text;
              strproc_update.ParamByName('p_tks_status').AsShortInt             := dbchk_status_sub.Checked.ToInteger;
              strproc_update.ExecProc;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;

        dsInsert:
          try
            try
              strproc_create := TFDStoredProc.Create(Self);
              strproc_create.Connection := frm_dm.connCCS;
              strproc_create.StoredProcName := 'proc_ticket_category_sub_create';
              strproc_create.Prepare;

              strproc_create.ParamByName('p_ctr_token').AsString                := Tconnection.ctr_token;
              strproc_create.ParamByName('p_ticket_category_tkc_cod').AsString  := memtkc_cod.AsString;
              strproc_create.ParamByName('p_tks_name').AsString                 := dbedt_sub_name.Text;
              strproc_create.ParamByName('p_tks_status').AsShortInt             := dbchk_status_sub.Checked.ToInteger;
              strproc_create.ExecProc;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
      end;
  end;
end;

procedure Tfrm_ticket_category.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ticket_category.Destroy;
  frm_ticket_category := Nil;
end;

procedure Tfrm_ticket_category.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_ticket_category.GetTicketCategory(mem);
  Trest_ticket_category_sub.GetTicketCategorySub(memSub)
end;

end.
