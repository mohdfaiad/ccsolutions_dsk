unit ufrm_material;

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
  Data.DB,
  cxDBData,
  cxContainer,
  dxLayoutcxEditAdapters,
  dxSkinsdxBarPainter,
  dxLayoutLookAndFeels,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  dxBar,
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
  cxShellComboBox,
  cxBarEditItem,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBLookupComboBox,
  cxImageList,
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
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  ACBrBase,
  ACBrEnterTab,

  QImport3Wizard,
  QExport4Dialog,

  frxClass,

  ufrm_form_default,

  u_class_connection,
  u_class_rest_material;

type
  Tfrm_material = class(Tfrm_form_default)
    dbedt_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    memmat_cod: TStringField;
    memmat_id: TLongWordField;
    memmat_name: TStringField;
    memmat_status: TShortintField;
    memmat_deleted_at: TDateTimeField;
    memmat_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1mat_id: TcxGridDBColumn;
    cxGrid_1DBTableView1mat_name: TcxGridDBColumn;
    cxGrid_1DBTableView1mat_status: TcxGridDBColumn;
    cxGrid_1DBTableView1mat_dt_registration: TcxGridDBColumn;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_material: Tfrm_material;

implementation

{$R *.dfm}

uses
  ufrm_dm;

procedure Tfrm_material.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_material_update';
          strproc_update.Prepare;

          strproc_update.ParamByName('p_ctr_token').AsString      := Tconnection.ctr_token;
          strproc_update.ParamByName('p_mat_cod').AsString        := memmat_cod.AsString;
          strproc_update.ParamByName('p_mat_name').AsString       := dbedt_name.Text;
          strproc_update.ParamByName('p_mat_status').AsShortInt   := dbchk_status.Checked.ToInteger;
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
            strproc_create.StoredProcName := 'proc_material_create';
            strproc_create.Prepare;

            strproc_create.ParamByName('p_ctr_token').AsString    := Tconnection.ctr_token;
            strproc_create.ParamByName('p_mat_name').AsString     := dbedt_name.Text;
            strproc_create.ParamByName('p_mat_status').AsShortInt := dbchk_status.Checked.ToInteger;
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

procedure Tfrm_material.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_material.GetMaterial(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_material.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_material.GetMaterial(mem);
end;

procedure Tfrm_material.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_material.Destroy;
  frm_material := Nil;
end;

procedure Tfrm_material.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_material.GetMaterial(mem);
end;

end.
