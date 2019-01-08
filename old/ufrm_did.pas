unit ufrm_did;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,

  Vcl.ImgList,
  Vcl.Menus,
  Vcl.ActnList,
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
  dxBarBuiltInMenu,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData,
  cxContainer,
  dxLayoutcxEditAdapters,
  cxDBLookupComboBox,
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
  dxLayoutLookAndFeels,
  dxSkinTheBezier,
  cxLookupEdit,
  cxDBLookupEdit,

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

  ufrm_form_default,

  u_class_connection,
  u_class_rest_did,
  u_class_rest_provider, uDWAbout, uRESTDWPoolerDB, uDWConstsData, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  Tfrm_did = class(Tfrm_form_default)
    memdid_cod: TStringField;
    memdid_id: TLongWordField;
    memdid_number: TStringField;
    memdid_deleted_at: TDateTimeField;
    memdid_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1did_id: TcxGridDBColumn;
    cxGrid_1DBTableView1did_number: TcxGridDBColumn;
    cxGrid_1DBTableView1did_dt_registration: TcxGridDBColumn;
    dbedt_did_number: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    memprovider_prv_cod: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_did: Tfrm_did;

implementation

uses
  ufrm_dm,
  ufrm_dm_ds;

{$R *.dfm}

procedure Tfrm_did.Action_saveExecute(Sender: TObject);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  case ds.State of
    dsEdit:
      try
        try
          if Application.MessageBox('Ao Salvar as altera��es, as informa��es antigas n�o poder�o ser recuperadas!', 'Deseja Salvar as Altera��es?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update := TFDStoredProc.Create(Self);
            strproc_update.Connection := frm_dm.connCCS;
            strproc_update.StoredProcName := 'proc_did_update';
            strproc_update.Prepare;

            strproc_update.ParamByName('p_ctr_token').AsString        := Tconnection.ctr_token;
            strproc_update.ParamByName('p_provider_prv_cod').AsString := frm_dm_ds.memProviderprv_cod.AsString;
            strproc_update.ParamByName('p_did_cod').AsString          := memdid_cod.AsString;
            strproc_update.ParamByName('p_did_number').AsString       := dbedt_did_number.Text;
            strproc_update.ExecProc;

            afterUpdate;
          end else begin
            ds.DataSet.Cancel;
          end;
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
          strproc_create.StoredProcName := 'proc_did_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString        := Tconnection.ctr_token;
          strproc_create.ParamByName('p_provider_prv_cod').AsString := frm_dm_ds.memProviderprv_cod.AsString;
          strproc_create.ParamByName('p_did_number').AsString       := dbedt_did_number.Text;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_did.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_did.GetDID(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_did.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_did.GetDID(mem);
end;

procedure Tfrm_did.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_did.Destroy;
  frm_did := Nil;
end;

procedure Tfrm_did.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_provider.GetProvider(frm_dm_ds.memProvider);
  Trest_did.GetDID(mem);
end;

end.
