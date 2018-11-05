unit ufrm_contract_user;

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
  dxBarExtItems,
  cxCheckListBox,
  cxDBCheckListBox,
  cxCheckBox,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBLookupComboBox,
  cxCustomListBox,
  cxImageList,
  cxCheckComboBox,
  cxDBCheckComboBox,

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
  ACBrValidador,

  frxDesgn,
  frxClass,

  QExport4Dialog,
  QImport3Wizard,

  ufrm_form_default,

  u_class_connection,
  u_class_rest_contract_user, dxSkinTheBezier;

type
  Tfrm_contract_user = class(Tfrm_form_default)
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_email: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_username: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_dt_birth: TcxDBDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    N3: TMenuItem;
    cxGrid_1DBTableView1ctr_usr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_username: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_status: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    memctr_usr_cod: TStringField;
    memctr_usr_id: TLongWordField;
    memctr_usr_first_name: TStringField;
    memctr_usr_last_name: TStringField;
    memctr_usr_username: TStringField;
    memctr_usr_email: TStringField;
    memctr_usr_dt_birth: TDateField;
    memctr_usr_status: TShortintField;
    memctr_usr_deleted_at: TDateTimeField;
    memctr_usr_dt_registration: TDateTimeField;
    Action_alter_password: TAction;
    Actionalterpassword1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_alter_passwordExecute(Sender: TObject);
  private
    function getContract_User : Boolean;
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_contract_user: Tfrm_contract_user;

implementation

uses
  ufrm_dm, ufrm_login;

{$R *.dfm}

procedure Tfrm_contract_user.Action_alter_passwordExecute(Sender: TObject);
begin
  inherited;
  frm_login := Tfrm_login.Create(Self);
  frm_login.Tag := 98;
  frm_login.ctr_usr_cod := memctr_usr_cod.AsString;
  frm_login.ShowModal;
end;

procedure Tfrm_contract_user.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_contract_user_update';
          strproc_update.Prepare;

          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update.ParamByName('p_ctr_token').AsString          := Tconnection.ctr_token;
            strproc_update.ParamByName('p_ctr_usr_cod').AsString        := memctr_usr_cod.AsString;
            strproc_update.ParamByName('p_ctr_usr_first_name').AsString := dbedt_first_name.Text;
            strproc_update.ParamByName('p_ctr_usr_last_name').AsString  := dbedt_last_name.Text;
            strproc_update.ParamByName('p_ctr_usr_email').AsString      := dbedt_email.Text;
            strproc_update.ParamByName('p_ctr_usr_username').AsString   := dbedt_username.Text;
            strproc_update.ParamByName('p_ctr_usr_dt_birth').AsDate     := dbedt_dt_birth.Date;
            strproc_update.ParamByName('p_ctr_usr_status').AsShortInt   := dbchk_status.Checked.ToInteger;
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
          strproc_create.StoredProcName := 'proc_contract_user_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString          := Tconnection.ctr_token;
          strproc_create.ParamByName('p_ctr_usr_first_name').AsString := dbedt_first_name.Text;
          strproc_create.ParamByName('p_ctr_usr_last_name').AsString  := dbedt_last_name.Text;
          strproc_create.ParamByName('p_ctr_usr_email').AsString      := dbedt_email.Text;
          strproc_create.ParamByName('p_ctr_usr_username').AsString   := dbedt_username.Text;
          strproc_create.ParamByName('p_ctr_usr_dt_birth').AsDate     := dbedt_dt_birth.Date;
          strproc_create.ParamByName('p_ctr_usr_status').AsShortInt   := dbchk_status.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_contract_user.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  getContract_User;
  ds.DataSet.Last;
end;

procedure Tfrm_contract_user.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  getContract_User;
end;

procedure Tfrm_contract_user.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_contract_user.Destroy;
  frm_contract_user := Nil;
end;

procedure Tfrm_contract_user.FormCreate(Sender: TObject);
begin
  inherited;
  getContract_User;
end;

function Tfrm_contract_user.getContract_User: Boolean;
begin
  Trest_contract_user.GetContractUser(mem);
end;

end.
