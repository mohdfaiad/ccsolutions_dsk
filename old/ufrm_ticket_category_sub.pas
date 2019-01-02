unit ufrm_ticket_category_sub;

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
  Vcl.Menus,
  Vcl.ImgList,
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
  dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp,
  dxSkinSharpPlus,
  dxSkinSilver,
  dxSkinSpringTime,
  dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinTheBezier,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue,
  dxBarBuiltInMenu,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB,
  cxDBData,
  cxContainer,
  dxLayoutcxEditAdapters,
  cxDBLookupComboBox,
  dxLayoutLookAndFeels,
  cxImageList,
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
  cxLookupEdit,
  cxDBLookupEdit,
  cxCheckBox,

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

  ufrm_form_default,
  u_class_connection,
  u_class_rest_ticket_category,
  u_class_rest_ticket_category_sub;

type
  Tfrm_ticket_category_sub = class(Tfrm_form_default)
    memtks_cod: TStringField;
    memticket_category_tkc_cod: TStringField;
    memtks_id: TLongWordField;
    memtks_name: TStringField;
    memtks_status: TShortintField;
    memtks_deleted_at: TDateTimeField;
    memtks_dt_registration: TDateTimeField;
    dbedt_tks_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dblookupcmb_ticket_category_tkc_cod: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid_1DBTableView1tks_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tks_name: TcxGridDBColumn;
    cxGrid_1DBTableView1tks_status: TcxGridDBColumn;
    cxGrid_1DBTableView1tks_dt_registration: TcxGridDBColumn;
    dbchk_status_sub: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    memtkc_name: TStringField;
    cxGrid_1DBTableView1tkc_name: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_ticket_category_sub: Tfrm_ticket_category_sub;

implementation

uses
  ufrm_dm,
  ufrm_dm_ds;

{$R *.dfm}

procedure Tfrm_ticket_category_sub.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_ticket_category_sub_update';
          strproc_update.Prepare;

          strproc_update.ParamByName('p_ctr_token').AsString                := Tconnection.ctr_token;
          strproc_update.ParamByName('p_tks_cod').AsString                  := memtks_cod.AsString;
          strproc_update.ParamByName('p_ticket_category_tkc_cod').AsString  := frm_dm_ds.memTicketCategorytkc_cod.AsString;
          strproc_update.ParamByName('p_tks_name').AsString                 := dbedt_tks_name.Text;
          strproc_update.ParamByName('p_tks_status').AsShortInt             := dbchk_status_sub.Checked.ToInteger;
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
          strproc_create := TFDStoredProc.Create(Self);
          strproc_create.Connection := frm_dm.connCCS;
          strproc_create.StoredProcName := 'proc_ticket_category_sub_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString                := Tconnection.ctr_token;
          strproc_create.ParamByName('p_ticket_category_tkc_cod').AsString  := frm_dm_ds.memTicketCategorytkc_cod.AsString;
          strproc_create.ParamByName('p_tks_name').AsString                 := dbedt_tks_name.Text;
          strproc_create.ParamByName('p_tks_status').AsShortInt             := dbchk_status_sub.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_ticket_category_sub.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_ticket_category_sub.GetTicketCategorySub(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_ticket_category_sub.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_ticket_category_sub.GetTicketCategorySub(mem);
end;

procedure Tfrm_ticket_category_sub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ticket_category_sub.Destroy;
  frm_ticket_category_sub := Nil;
end;

procedure Tfrm_ticket_category_sub.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_ticket_category.GetTicketCategory(frm_dm_ds.memTicketCategory);
  Trest_ticket_category_sub.GetTicketCategorySub(mem);
end;

end.
