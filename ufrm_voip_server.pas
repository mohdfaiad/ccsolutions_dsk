unit ufrm_voip_server;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.ImageList,
  System.Actions,

  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Menus,
  System.Classes,
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
  cxSpinEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBLookupComboBox,
  cxImageList,
  cxCheckBox,

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

  ACBrBase,
  ACBrEnterTab,

  frxClass,

  QImport3Wizard,
  QExport4Dialog,

  ufrm_form_default,

  u_class_connection,
  u_class_rest_voip_server;

type
  Tfrm_voip_server = class(Tfrm_form_default)
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dbedt_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_address: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_port: TcxDBSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_username: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbedt_api_address: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dbedt_api_port: TcxDBSpinEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbedt_api_webservice: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dbedt_api_username: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbedt_api_password: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dbedt_api_key: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dbcmb_type: TcxDBComboBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    memvps_cod: TStringField;
    memvps_id: TLongWordField;
    memvps_type: TStringField;
    memvps_name: TStringField;
    memvps_address: TStringField;
    memvps_port: TIntegerField;
    memvps_username: TStringField;
    memvps_api_address: TStringField;
    memvps_api_port: TIntegerField;
    memvps_api_webservice: TStringField;
    memvps_api_username: TStringField;
    memvps_api_key: TStringField;
    memvps_status: TShortintField;
    memvps_deleted_at: TDateTimeField;
    memvps_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1vps_id: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_type: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_name: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_address: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_port: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_username: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_api_address: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_api_port: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_api_webservice: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_api_username: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_api_key: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_status: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_deleted_at: TcxGridDBColumn;
    cxGrid_1DBTableView1vps_dt_registration: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    memvps_password: TStringField;
    memvps_api_password: TStringField;
    dbedt_password: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_voip_server: Tfrm_voip_server;

implementation

{$R *.dfm}

uses
  ufrm_dm;

procedure Tfrm_voip_server.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_voip_server_update';
          strproc_update.Prepare;

          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update.ParamByName('p_ctr_token').AsString          := Tconnection.ctr_token;
            strproc_update.ParamByName('p_vps_cod').AsString            := memvps_cod.AsString;
            strproc_update.ParamByName('p_vps_type').AsString           := dbcmb_type.Text;
            strproc_update.ParamByName('p_vps_name').AsString           := dbedt_name.Text;
            strproc_update.ParamByName('p_vps_address').AsString        := dbedt_address.Text;
            strproc_update.ParamByName('p_vps_port').AsInteger          := dbedt_port.Value;
            strproc_update.ParamByName('p_vps_username').AsString       := dbedt_username.Text;
            strproc_update.ParamByName('p_vps_password').AsString       := dbedt_password.Text;
            strproc_update.ParamByName('p_vps_api_address').AsString    := dbedt_api_address.Text;
            strproc_update.ParamByName('p_vps_api_port').AsInteger      := dbedt_api_port.Value;
            strproc_update.ParamByName('p_vps_api_webservice').AsString := dbedt_api_webservice.Text;
            strproc_update.ParamByName('p_vps_api_username').AsString   := dbedt_api_username.Text;
            strproc_update.ParamByName('p_vps_api_password').AsString   := dbedt_api_password.Text;
            strproc_update.ParamByName('p_vps_api_key').AsString        := dbedt_api_key.Text;
            strproc_update.ParamByName('p_vps_status').AsShortInt       := dbchk_status.Checked.ToInteger;
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
          strproc_create.StoredProcName := 'proc_voip_server_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString          := Tconnection.ctr_token;
          strproc_create.ParamByName('p_vps_type').AsString           := dbcmb_type.Text;
          strproc_create.ParamByName('p_vps_name').AsString           := dbedt_name.Text;
          strproc_create.ParamByName('p_vps_address').AsString        := dbedt_address.Text;
          strproc_create.ParamByName('p_vps_port').AsInteger          := dbedt_port.Value;
          strproc_create.ParamByName('p_vps_username').AsString       := dbedt_username.Text;
          strproc_create.ParamByName('p_vps_password').AsString       := dbedt_password.Text;
          strproc_create.ParamByName('p_vps_api_address').AsString    := dbedt_api_address.Text;
          strproc_create.ParamByName('p_vps_api_port').AsInteger      := dbedt_api_port.Value;
          strproc_create.ParamByName('p_vps_api_webservice').AsString := dbedt_api_webservice.Text;
          strproc_create.ParamByName('p_vps_api_username').AsString   := dbedt_api_username.Text;
          strproc_create.ParamByName('p_vps_api_password').AsString   := dbedt_api_password.Text;
          strproc_create.ParamByName('p_vps_api_key').AsString        := dbedt_api_key.Text;
          strproc_create.ParamByName('p_vps_status').AsShortInt       := dbchk_status.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_voip_server.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_voip_server.GetVoipServer(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_voip_server.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_voip_server.GetVoipServer(mem);
end;

procedure Tfrm_voip_server.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_voip_server.Destroy;
  frm_voip_server := Nil;
end;

procedure Tfrm_voip_server.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_voip_server.GetVoipServer(mem);
end;

end.
