unit ufrm_client;

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
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,

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
  cxButtonEdit,
  cxImage,
  cxShellComboBox,
  cxBarEditItem,
  dxBarExtItems,
  dxLayoutControlAdapters,
  cxButtons,
  cxDBLookupComboBox,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList,
  cxCheckBox,
  cxSpinEdit,
  cxCurrencyEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBNavigator,

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

  ACBrEnterTab,
  ACBrBase,

  QExport4Dialog,
  QImport3Wizard,

  frxClass,
  frxDBSet,

  ufrm_form_default,
  ufrm_consult_cnpj,
  ufrm_consult_cpf,

  u_class_connection,
  u_class_rest_client,
  u_class_rest_client_astpp,
  u_class_rest_client_sippulse,
  u_class_rest_did,
  u_class_rest_provider,
  u_class_rest_client_did, dxSkinTheBezier;

type
  Tfrm_client = class(Tfrm_form_default)
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_email: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_dt_birthopen: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dbedt_add_del_address: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbedt_add_del_number: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dbedt_add_del_street: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbedt_add_del_complement: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dbedt_add_del_city: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbedt_add_del_country: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dbedt_add_bil_address: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbedt_add_bil_number: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dbedt_add_bil_street: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    dbedt_add_bil_complement: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    dbedt_add_bil_city: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dbedt_add_bil_country: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    dbedt_add_bus_address: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    dbedt_add_bus_number: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    dbedt_add_bus_street: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    dbedt_add_bus_complement: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    dbedt_add_bus_city: TcxDBTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    dbedt_add_bus_country: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dbedt_add_bil_zipcode: TcxDBButtonEdit;
    dxLayoutItem31: TdxLayoutItem;
    dbedt_add_bus_zipcode: TcxDBButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    dbedt_add_del_zipcode: TcxDBButtonEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dbedt_cpfcnpj: TcxDBTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    dbedt_rgie: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    dbedt_im: TcxDBTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    dbedt_suframa: TcxDBTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    dbcmb_type: TcxDBComboBox;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxBarButton5: TdxBarButton;
    Action_consult_cpf: TAction;
    Action_consult_cnpj: TAction;
    Label1: TLabel;
    cxGrid_1DBTableView1cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_type: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_email: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_cpfcnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_rgie: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_im: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_day_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_dt_birthopen: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_weight: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_height: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_blood_type: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_rh_factor: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_du_factor: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_cns: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_gender: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_skin_color: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_status: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_dt_registration: TcxGridDBColumn;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem41: TdxLayoutItem;
    dbspn_day_maturity: TcxDBSpinEdit;
    dxLayoutItem42: TdxLayoutItem;
    tbsht_contact: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    dbedt_phone1: TcxDBTextEdit;
    dbedt_phone2: TcxDBTextEdit;
    dbedt_phone3: TcxDBTextEdit;
    dbedt_phone4: TcxDBTextEdit;
    dbedt_contact: TcxDBTextEdit;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem65: TdxLayoutItem;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutItem68: TdxLayoutItem;
    dxLayoutItem69: TdxLayoutItem;
    dbedt_add_bus_state: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbedt_add_bil_state: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dbedt_add_del_state: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    dbimg: TcxDBImage;
    dxLayoutItem29: TdxLayoutItem;
    dxBarButton2: TdxBarButton;
    memcli_cod: TStringField;
    memtable_price_tbp_cod: TStringField;
    memcli_id: TLongWordField;
    memcli_type: TStringField;
    memcli_first_name: TStringField;
    memcli_last_name: TStringField;
    memcli_email: TStringField;
    memcli_cpfcnpj: TStringField;
    memcli_rgie: TStringField;
    memcli_im: TStringField;
    memcli_suframa: TStringField;
    memcli_add_bus_zipcode: TStringField;
    memcli_add_bus_address: TStringField;
    memcli_add_bus_number: TStringField;
    memcli_add_bus_street: TStringField;
    memcli_add_bus_complement: TStringField;
    memcli_add_bus_city: TStringField;
    memcli_add_bus_state: TStringField;
    memcli_add_bus_country: TStringField;
    memcli_add_bil_zipcode: TStringField;
    memcli_add_bil_address: TStringField;
    memcli_add_bil_number: TStringField;
    memcli_add_bil_street: TStringField;
    memcli_add_bil_complement: TStringField;
    memcli_add_bil_city: TStringField;
    memcli_add_bil_state: TStringField;
    memcli_add_bil_country: TStringField;
    memcli_add_del_zipcode: TStringField;
    memcli_add_del_address: TStringField;
    memcli_add_del_number: TStringField;
    memcli_add_del_street: TStringField;
    memcli_add_del_complement: TStringField;
    memcli_add_del_city: TStringField;
    memcli_add_del_state: TStringField;
    memcli_add_del_country: TStringField;
    memcli_phone1: TStringField;
    memcli_phone2: TStringField;
    memcli_phone3: TStringField;
    memcli_phone4: TStringField;
    memcli_contact: TStringField;
    memcli_day_maturity: TIntegerField;
    memcli_dt_birthopen: TDateField;
    memcli_weight: TBCDField;
    memcli_height: TBCDField;
    memcli_blood_type: TStringField;
    memcli_rh_factor: TStringField;
    memcli_du_factor: TStringField;
    memcli_cns: TStringField;
    memcli_gender: TStringField;
    memcli_skin_color: TStringField;
    memcli_status: TShortintField;
    memcli_image1: TBlobField;
    memcli_deleted_at: TDateTimeField;
    memcli_dt_registration: TDateTimeField;
    tbsht_telephony: TcxTabSheet;
    pgctrl_telephony: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    astppgrid: TcxGrid;
    astppgridview: TcxGridDBTableView;
    astppgridlvl: TcxGridLevel;
    sipgrid: TcxGrid;
    sipgridview: TcxGridDBTableView;
    sipgridlvl: TcxGridLevel;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    memClientASTPP: TFDMemTable;
    dsClientASTPP: TDataSource;
    memClientASTPPcla_cod: TStringField;
    memClientASTPPclient_cli_cod: TStringField;
    memClientASTPPcla_account_astpp: TStringField;
    memClientASTPPcla_dt_registration: TDateTimeField;
    astppgridviewcla_account_astpp: TcxGridDBColumn;
    memClientSIPPulse: TFDMemTable;
    dsClientSIPPulse: TDataSource;
    memClientSIPPulsecls_cod: TStringField;
    memClientSIPPulseclient_cli_cod: TStringField;
    memClientSIPPulsecls_account_sippulse: TStringField;
    memClientSIPPulsecls_dt_registration: TDateTimeField;
    sipgridviewcls_account_sippulse: TcxGridDBColumn;
    tbsht_dids: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    grid: TcxGrid;
    gridtblview: TcxGridDBTableView;
    gridlvl: TcxGridLevel;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem43: TdxLayoutItem;
    gridtblviewcld_dt_registration: TcxGridDBColumn;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem38: TdxLayoutItem;
    gridtblviewdid_number: TcxGridDBColumn;
    gridtblviewprv_name: TcxGridDBColumn;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dsClientDID: TDataSource;
    memClientDID: TFDMemTable;
    memClientDIDcld_cod: TStringField;
    memClientDIDclient_cli_cod: TStringField;
    memClientDIDdid_did_cod: TStringField;
    memClientDIDprovider_prv_cod: TStringField;
    memClientDIDcld_deleted_at: TDateTimeField;
    memClientDIDcld_dt_registration: TDateTimeField;
    memClientDIDdid_number: TStringField;
    memClientDIDprv_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_consult_cpfExecute(Sender: TObject);
    procedure Action_consult_cnpjExecute(Sender: TObject);
    procedure astppgridviewNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure sipgridviewNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_client: Tfrm_client;

implementation

{$R *.dfm}

uses
  ufrm_dm, ufrm_dm_ds;

procedure Tfrm_client.Action_consult_cnpjExecute(Sender: TObject);
begin
  inherited;
  frm_consult_cnpj := Tfrm_consult_cnpj.Create(Self);
  frm_consult_cnpj.ShowModal;
end;

procedure Tfrm_client.Action_consult_cpfExecute(Sender: TObject);
begin
  inherited;
  frm_consult_cpf := Tfrm_consult_cpf.Create(Self);
  frm_consult_cpf.ShowModal;
end;

procedure Tfrm_client.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_client_update';
          strproc_update.Prepare;

          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
            strproc_update.ParamByName('p_cli_cod').AsString                := memcli_cod.AsString;
            strproc_update.ParamByName('p_cli_type').AsString               := dbcmb_type.Text;
            strproc_update.ParamByName('p_cli_first_name').AsString         := dbedt_first_name.Text;
            strproc_update.ParamByName('p_cli_last_name').AsString          := dbedt_last_name.Text;
            strproc_update.ParamByName('p_cli_email').AsString              := dbedt_email.Text;
            strproc_update.ParamByName('p_cli_cpfcnpj').AsString            := dbedt_cpfcnpj.Text;
            strproc_update.ParamByName('p_cli_rgie').AsString               := dbedt_rgie.Text;
            strproc_update.ParamByName('p_cli_im').AsString                 := dbedt_im.Text;
            strproc_update.ParamByName('p_cli_suframa').AsString            := dbedt_suframa.Text;
            strproc_update.ParamByName('p_cli_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
            strproc_update.ParamByName('p_cli_add_bus_address').AsString    := dbedt_add_bus_address.Text;
            strproc_update.ParamByName('p_cli_add_bus_number').AsString     := dbedt_add_bus_number.Text;
            strproc_update.ParamByName('p_cli_add_bus_street').AsString     := dbedt_add_bus_street.Text;
            strproc_update.ParamByName('p_cli_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
            strproc_update.ParamByName('p_cli_add_bus_city').AsString       := dbedt_add_bus_city.Text;
            strproc_update.ParamByName('p_cli_add_bus_state').AsString      := dbedt_add_bus_state.Text;
            strproc_update.ParamByName('p_cli_add_bus_country').AsString    := dbedt_add_bus_country.Text;
            strproc_update.ParamByName('p_cli_add_bil_zipcode').AsString    := dbedt_add_bil_zipcode.Text;
            strproc_update.ParamByName('p_cli_add_bil_address').AsString    := dbedt_add_bil_address.Text;
            strproc_update.ParamByName('p_cli_add_bil_number').AsString     := dbedt_add_bil_number.Text;
            strproc_update.ParamByName('p_cli_add_bil_street').AsString     := dbedt_add_bil_street.Text;
            strproc_update.ParamByName('p_cli_add_bil_complement').AsString := dbedt_add_bil_complement.Text;
            strproc_update.ParamByName('p_cli_add_bil_city').AsString       := dbedt_add_bil_city.Text;
            strproc_update.ParamByName('p_cli_add_bil_state').AsString      := dbedt_add_bil_state.Text;
            strproc_update.ParamByName('p_cli_add_bil_country').AsString    := dbedt_add_bil_country.Text;
            strproc_update.ParamByName('p_cli_add_del_zipcode').AsString    := dbedt_add_del_zipcode.Text;
            strproc_update.ParamByName('p_cli_add_del_address').AsString    := dbedt_add_del_address.Text;
            strproc_update.ParamByName('p_cli_add_del_number').AsString     := dbedt_add_del_number.Text;
            strproc_update.ParamByName('p_cli_add_del_street').AsString     := dbedt_add_del_street.Text;
            strproc_update.ParamByName('p_cli_add_del_complement').AsString := dbedt_add_del_complement.Text;
            strproc_update.ParamByName('p_cli_add_del_city').AsString       := dbedt_add_del_city.Text;
            strproc_update.ParamByName('p_cli_add_del_state').AsString      := dbedt_add_del_state.Text;
            strproc_update.ParamByName('p_cli_add_del_country').AsString    := dbedt_add_del_country.Text;
            strproc_update.ParamByName('p_cli_phone1').AsString             := dbedt_phone1.Text;
            strproc_update.ParamByName('p_cli_phone2').AsString             := dbedt_phone2.Text;
            strproc_update.ParamByName('p_cli_phone3').AsString             := dbedt_phone3.Text;
            strproc_update.ParamByName('p_cli_phone4').AsString             := dbedt_phone4.Text;
            strproc_update.ParamByName('p_cli_contact').AsString            := dbedt_contact.Text;
            strproc_update.ParamByName('p_cli_day_maturity').AsInteger      := dbspn_day_maturity.Value;
            strproc_update.ParamByName('p_cli_dt_birthopen').AsDate         := dbedt_dt_birthopen.Date;
            strproc_update.ParamByName('p_cli_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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
          strproc_create.StoredProcName := 'proc_client_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
          strproc_create.ParamByName('p_cli_type').AsString               := dbcmb_type.Text;
          strproc_create.ParamByName('p_cli_first_name').AsString         := dbedt_first_name.Text;
          strproc_create.ParamByName('p_cli_last_name').AsString          := dbedt_last_name.Text;
          strproc_create.ParamByName('p_cli_email').AsString              := dbedt_email.Text;
          strproc_create.ParamByName('p_cli_cpfcnpj').AsString            := dbedt_cpfcnpj.Text;
          strproc_create.ParamByName('p_cli_rgie').AsString               := dbedt_rgie.Text;
          strproc_create.ParamByName('p_cli_im').AsString                 := dbedt_im.Text;
          strproc_create.ParamByName('p_cli_suframa').AsString            := dbedt_suframa.Text;
          strproc_create.ParamByName('p_cli_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
          strproc_create.ParamByName('p_cli_add_bus_address').AsString    := dbedt_add_bus_address.Text;
          strproc_create.ParamByName('p_cli_add_bus_number').AsString     := dbedt_add_bus_number.Text;
          strproc_create.ParamByName('p_cli_add_bus_street').AsString     := dbedt_add_bus_street.Text;
          strproc_create.ParamByName('p_cli_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
          strproc_create.ParamByName('p_cli_add_bus_city').AsString       := dbedt_add_bus_city.Text;
          strproc_create.ParamByName('p_cli_add_bus_state').AsString      := dbedt_add_bus_state.Text;
          strproc_create.ParamByName('p_cli_add_bus_country').AsString    := dbedt_add_bus_country.Text;
          strproc_create.ParamByName('p_cli_add_bil_zipcode').AsString    := dbedt_add_bil_zipcode.Text;
          strproc_create.ParamByName('p_cli_add_bil_address').AsString    := dbedt_add_bil_address.Text;
          strproc_create.ParamByName('p_cli_add_bil_number').AsString     := dbedt_add_bil_number.Text;
          strproc_create.ParamByName('p_cli_add_bil_street').AsString     := dbedt_add_bil_street.Text;
          strproc_create.ParamByName('p_cli_add_bil_complement').AsString := dbedt_add_bil_complement.Text;
          strproc_create.ParamByName('p_cli_add_bil_city').AsString       := dbedt_add_bil_city.Text;
          strproc_create.ParamByName('p_cli_add_bil_state').AsString      := dbedt_add_bil_state.Text;
          strproc_create.ParamByName('p_cli_add_bil_country').AsString    := dbedt_add_bil_country.Text;
          strproc_create.ParamByName('p_cli_add_del_zipcode').AsString    := dbedt_add_del_zipcode.Text;
          strproc_create.ParamByName('p_cli_add_del_address').AsString    := dbedt_add_del_address.Text;
          strproc_create.ParamByName('p_cli_add_del_number').AsString     := dbedt_add_del_number.Text;
          strproc_create.ParamByName('p_cli_add_del_street').AsString     := dbedt_add_del_street.Text;
          strproc_create.ParamByName('p_cli_add_del_complement').AsString := dbedt_add_del_complement.Text;
          strproc_create.ParamByName('p_cli_add_del_city').AsString       := dbedt_add_del_city.Text;
          strproc_create.ParamByName('p_cli_add_del_state').AsString      := dbedt_add_del_state.Text;
          strproc_create.ParamByName('p_cli_add_del_country').AsString    := dbedt_add_del_country.Text;
          strproc_create.ParamByName('p_cli_phone1').AsString             := dbedt_phone1.Text;
          strproc_create.ParamByName('p_cli_phone2').AsString             := dbedt_phone2.Text;
          strproc_create.ParamByName('p_cli_phone3').AsString             := dbedt_phone3.Text;
          strproc_create.ParamByName('p_cli_phone4').AsString             := dbedt_phone4.Text;
          strproc_create.ParamByName('p_cli_contact').AsString            := dbedt_contact.Text;
          strproc_create.ParamByName('p_cli_day_maturity').AsInteger      := dbspn_day_maturity.Value;
          strproc_create.ParamByName('p_cli_dt_birthopen').AsDate         := dbedt_dt_birthopen.Date;
          strproc_create.ParamByName('p_cli_status').AsShortInt           := dbchk_status.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_client.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_client.Destroy;
  frm_client := Nil;
end;

procedure Tfrm_client.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_client.GetClient(mem);
  Trest_client_astpp.GetClientATPP(memClientASTPP);
  Trest_client_sippulse.GetClientSIPPulse(memClientSIPPulse);
  Trest_did.GetDID(frm_dm_ds.memDID);
  Trest_provider.GetProvider(frm_dm_ds.memProvider);
  Trest_client_did.GetClientDID(memClientDID);
end;

procedure Tfrm_client.sipgridviewNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  inherited;
  case AButtonIndex of
    NBDI_POST:
      case dsClientSIPPulse.State of
        dsEdit:
          try
            try
              strproc_update := TFDStoredProc.Create(Self);
              strproc_update.Connection := frm_dm.connCCS;
              strproc_update.StoredProcName := 'proc_client_sippulse_update';
              strproc_update.Prepare;

              strproc_update.ParamByName('p_ctr_token').AsString            := Tconnection.ctr_token;
              strproc_update.ParamByName('p_cls_cod').AsString              := memClientSIPPulsecls_cod.AsString;
              strproc_update.ParamByName('p_cls_account_sippulse').AsString := memClientSIPPulsecls_account_sippulse.AsString;
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
              strproc_create.StoredProcName := 'proc_client_sippulse_create';
              strproc_create.Prepare;

              strproc_create.ParamByName('p_ctr_token').AsString            := Tconnection.ctr_token;
              strproc_create.ParamByName('p_client_cli_cod').AsString       := memcli_cod.AsString;
              strproc_create.ParamByName('p_cls_account_sippulse').AsString := memClientSIPPulsecls_account_sippulse.AsString;
              strproc_create.ExecProc;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
      end;
  end;
end;

procedure Tfrm_client.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_client.GetClient(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_client.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_client.GetClient(mem);
end;

procedure Tfrm_client.astppgridviewNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  inherited;
  case AButtonIndex of
    NBDI_POST:
      case dsClientASTPP.State of
        dsEdit:
          try
            try
              strproc_update := TFDStoredProc.Create(Self);
              strproc_update.Connection := frm_dm.connCCS;
              strproc_update.StoredProcName := 'proc_client_astpp_update';
              strproc_update.Prepare;

              strproc_update.ParamByName('p_ctr_token').AsString          := Tconnection.ctr_token;
              strproc_update.ParamByName('p_cla_cod').AsString            := memClientASTPPcla_cod.AsString;
              strproc_update.ParamByName('p_cla_account_astpp').AsString  := memClientASTPPcla_account_astpp.AsString;
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
              strproc_create.StoredProcName := 'proc_client_astpp_create';
              strproc_create.Prepare;

              strproc_create.ParamByName('p_ctr_token').AsString          := Tconnection.ctr_token;
              strproc_create.ParamByName('p_client_cli_cod').AsString     := memcli_cod.AsString;
              strproc_create.ParamByName('p_cla_account_astpp').AsString  := memClientASTPPcla_account_astpp.AsString;
              strproc_create.ExecProc;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
      end;
  end;
end;
 
procedure Tfrm_client.cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  strproc_create, strproc_update, strproc_delete : TFDStoredProc;
begin
  inherited;
  case AButtonIndex of
    NBDI_POST:
      case dsClientDID.State of
        dsEdit:
          try
            try
              strproc_update := TFDStoredProc.Create(Self);
              strproc_update.Connection := frm_dm.connCCS;
              strproc_update.StoredProcName := 'proc_client_did_update';
              strproc_update.Prepare;

              strproc_update.ParamByName('p_ctr_token').AsString         := Tconnection.ctr_token;
              strproc_update.ParamByName('p_cld_cod').AsString           := memClientDIDcld_cod.AsString;
              strproc_update.ParamByName('p_did_did_cod').AsString       := memClientDIDdid_did_cod.AsString;
              strproc_update.ParamByName('p_provider_prv_cod').AsString  := frm_dm_ds.memProviderprv_cod.AsString;
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
              strproc_create.StoredProcName := 'proc_client_did_create';
              strproc_create.Prepare;

              strproc_create.ParamByName('p_ctr_token').AsString          := Tconnection.ctr_token;
              strproc_create.ParamByName('p_client_cli_cod').AsString     := memcli_cod.AsString;
              strproc_create.ParamByName('p_did_did_cod').AsString        := memClientDIDdid_did_cod.AsString;
              strproc_create.ParamByName('p_provider_prv_cod').AsString   := frm_dm_ds.memProviderprv_cod.AsString;
              strproc_create.ExecProc;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
      end;

    NBDI_DELETE:
      try
        try
          strproc_delete := TFDStoredProc.Create(Self);
          strproc_delete.Connection := frm_dm.connCCS;
          strproc_delete.StoredProcName := 'proc_client_did_delete';
          strproc_delete.Prepare;

          strproc_delete.ParamByName('p_ctr_token').AsString  := Tconnection.ctr_token;
          strproc_delete.ParamByName('p_cld_cod').AsString    := memClientDIDcld_cod.AsString;
          strproc_delete.ExecProc;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

end.
