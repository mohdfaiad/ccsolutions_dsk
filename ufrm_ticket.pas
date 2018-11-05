unit ufrm_ticket;

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
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxMemo,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList,
  dxSkinTheBezier,

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
  u_class_rest_client,
  u_class_rest_reseller,
  u_class_rest_enterprise,
  u_class_rest_ticket_type,
  u_class_rest_ticket_priority,
  u_class_rest_ticket_category,
  u_class_rest_ticket_category_sub,
   u_class_rest_contract_user;

type
  Tfrm_ticket = class(Tfrm_form_default)
    memtkt_cod: TStringField;
    memclient_cli_cod: TStringField;
    mementerprise_ent_cod: TStringField;
    memreseller_res_cod: TStringField;
    memticket_type_tky_cod: TStringField;
    memticket_category_tkc_cod: TStringField;
    memticket_category_sub_tks_cod: TStringField;
    memticket_priority_tkp_cod: TStringField;
    memcontract_user_ctr_usr_cod: TStringField;
    memtkt_id: TLongWordField;
    memtkt_dt_open: TDateTimeField;
    memtkt_dt_close: TDateTimeField;
    memtkt_dt_maturity: TDateTimeField;
    memtkt_reason: TMemoField;
    memtkt_phone1: TStringField;
    memtkt_phone2: TStringField;
    memtkt_contact: TStringField;
    memtkt_email: TStringField;
    memtkt_deleted_at: TStringField;
    memtkt_dt_registration: TDateTimeField;
    memtkt_status: TStringField;
    cxGrid_1DBTableView1tkt_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_close: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_email: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_status: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_registration: TcxGridDBColumn;
    dbcmb_tkt_status: TcxDBComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dblookupcmb_contract_ctr_cod: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dblookupcmb_enterprise_ent_cod: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dblookupcmb_client_cli_cod: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dblookupcmb_reseller_res_cod: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dblookupcmb_ticket_type_tky_cod: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dblookupcmb_ticket_priority_tkp_cod: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dblookupcmb_ticket_category_tkc_cod: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dblookupcmb_ticket_category_sub_tks_cod: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dbmem_reason: TcxDBMemo;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frm_ticket: Tfrm_ticket;

implementation

{$R *.dfm}

uses
  ufrm_dm,
  ufrm_dm_ds;

procedure Tfrm_ticket.Action_saveExecute(Sender: TObject);
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
//            strproc_update.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
//            strproc_update.ParamByName('p_cli_cod').AsString                := memcli_cod.AsString;
//            strproc_update.ParamByName('p_cli_type').AsString               := dbcmb_type.Text;
//            strproc_update.ParamByName('p_cli_first_name').AsString         := dbedt_first_name.Text;
//            strproc_update.ParamByName('p_cli_last_name').AsString          := dbedt_last_name.Text;
//            strproc_update.ParamByName('p_cli_email').AsString              := dbedt_email.Text;
//            strproc_update.ParamByName('p_cli_cpfcnpj').AsString            := dbedt_cpfcnpj.Text;
//            strproc_update.ParamByName('p_cli_rgie').AsString               := dbedt_rgie.Text;
//            strproc_update.ParamByName('p_cli_im').AsString                 := dbedt_im.Text;
//            strproc_update.ParamByName('p_cli_suframa').AsString            := dbedt_suframa.Text;
//            strproc_update.ParamByName('p_cli_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
//            strproc_update.ParamByName('p_cli_add_bus_address').AsString    := dbedt_add_bus_address.Text;
//            strproc_update.ParamByName('p_cli_add_bus_number').AsString     := dbedt_add_bus_number.Text;
//            strproc_update.ParamByName('p_cli_add_bus_street').AsString     := dbedt_add_bus_street.Text;
//            strproc_update.ParamByName('p_cli_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
//            strproc_update.ParamByName('p_cli_add_bus_city').AsString       := dbedt_add_bus_city.Text;
//            strproc_update.ParamByName('p_cli_add_bus_state').AsString      := dbedt_add_bus_state.Text;
//            strproc_update.ParamByName('p_cli_add_bus_country').AsString    := dbedt_add_bus_country.Text;
//            strproc_update.ParamByName('p_cli_add_bil_zipcode').AsString    := dbedt_add_bil_zipcode.Text;
//            strproc_update.ParamByName('p_cli_add_bil_address').AsString    := dbedt_add_bil_address.Text;
//            strproc_update.ParamByName('p_cli_add_bil_number').AsString     := dbedt_add_bil_number.Text;
//            strproc_update.ParamByName('p_cli_add_bil_street').AsString     := dbedt_add_bil_street.Text;
//            strproc_update.ParamByName('p_cli_add_bil_complement').AsString := dbedt_add_bil_complement.Text;
//            strproc_update.ParamByName('p_cli_add_bil_city').AsString       := dbedt_add_bil_city.Text;
//            strproc_update.ParamByName('p_cli_add_bil_state').AsString      := dbedt_add_bil_state.Text;
//            strproc_update.ParamByName('p_cli_add_bil_country').AsString    := dbedt_add_bil_country.Text;
//            strproc_update.ParamByName('p_cli_add_del_zipcode').AsString    := dbedt_add_del_zipcode.Text;
//            strproc_update.ParamByName('p_cli_add_del_address').AsString    := dbedt_add_del_address.Text;
//            strproc_update.ParamByName('p_cli_add_del_number').AsString     := dbedt_add_del_number.Text;
//            strproc_update.ParamByName('p_cli_add_del_street').AsString     := dbedt_add_del_street.Text;
//            strproc_update.ParamByName('p_cli_add_del_complement').AsString := dbedt_add_del_complement.Text;
//            strproc_update.ParamByName('p_cli_add_del_city').AsString       := dbedt_add_del_city.Text;
//            strproc_update.ParamByName('p_cli_add_del_state').AsString      := dbedt_add_del_state.Text;
//            strproc_update.ParamByName('p_cli_add_del_country').AsString    := dbedt_add_del_country.Text;
//            strproc_update.ParamByName('p_cli_phone1').AsString             := dbedt_phone1.Text;
//            strproc_update.ParamByName('p_cli_phone2').AsString             := dbedt_phone2.Text;
//            strproc_update.ParamByName('p_cli_phone3').AsString             := dbedt_phone3.Text;
//            strproc_update.ParamByName('p_cli_phone4').AsString             := dbedt_phone4.Text;
//            strproc_update.ParamByName('p_cli_contact').AsString            := dbedt_contact.Text;
//            strproc_update.ParamByName('p_cli_day_maturity').AsInteger      := dbspn_day_maturity.Value;
//            strproc_update.ParamByName('p_cli_dt_birthopen').AsDate         := dbedt_dt_birthopen.Date;
//            strproc_update.ParamByName('p_cli_status').AsShortInt           := dbchk_status.Checked.ToInteger;
//            strproc_update.ExecProc;
//
//            afterUpdate;
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

//          strproc_create.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
//          strproc_create.ParamByName('p_cli_type').AsString               := dbcmb_type.Text;
//          strproc_create.ParamByName('p_cli_first_name').AsString         := dbedt_first_name.Text;
//          strproc_create.ParamByName('p_cli_last_name').AsString          := dbedt_last_name.Text;
//          strproc_create.ParamByName('p_cli_email').AsString              := dbedt_email.Text;
//          strproc_create.ParamByName('p_cli_cpfcnpj').AsString            := dbedt_cpfcnpj.Text;
//          strproc_create.ParamByName('p_cli_rgie').AsString               := dbedt_rgie.Text;
//          strproc_create.ParamByName('p_cli_im').AsString                 := dbedt_im.Text;
//          strproc_create.ParamByName('p_cli_suframa').AsString            := dbedt_suframa.Text;
//          strproc_create.ParamByName('p_cli_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
//          strproc_create.ParamByName('p_cli_add_bus_address').AsString    := dbedt_add_bus_address.Text;
//          strproc_create.ParamByName('p_cli_add_bus_number').AsString     := dbedt_add_bus_number.Text;
//          strproc_create.ParamByName('p_cli_add_bus_street').AsString     := dbedt_add_bus_street.Text;
//          strproc_create.ParamByName('p_cli_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
//          strproc_create.ParamByName('p_cli_add_bus_city').AsString       := dbedt_add_bus_city.Text;
//          strproc_create.ParamByName('p_cli_add_bus_state').AsString      := dbedt_add_bus_state.Text;
//          strproc_create.ParamByName('p_cli_add_bus_country').AsString    := dbedt_add_bus_country.Text;
//          strproc_create.ParamByName('p_cli_add_bil_zipcode').AsString    := dbedt_add_bil_zipcode.Text;
//          strproc_create.ParamByName('p_cli_add_bil_address').AsString    := dbedt_add_bil_address.Text;
//          strproc_create.ParamByName('p_cli_add_bil_number').AsString     := dbedt_add_bil_number.Text;
//          strproc_create.ParamByName('p_cli_add_bil_street').AsString     := dbedt_add_bil_street.Text;
//          strproc_create.ParamByName('p_cli_add_bil_complement').AsString := dbedt_add_bil_complement.Text;
//          strproc_create.ParamByName('p_cli_add_bil_city').AsString       := dbedt_add_bil_city.Text;
//          strproc_create.ParamByName('p_cli_add_bil_state').AsString      := dbedt_add_bil_state.Text;
//          strproc_create.ParamByName('p_cli_add_bil_country').AsString    := dbedt_add_bil_country.Text;
//          strproc_create.ParamByName('p_cli_add_del_zipcode').AsString    := dbedt_add_del_zipcode.Text;
//          strproc_create.ParamByName('p_cli_add_del_address').AsString    := dbedt_add_del_address.Text;
//          strproc_create.ParamByName('p_cli_add_del_number').AsString     := dbedt_add_del_number.Text;
//          strproc_create.ParamByName('p_cli_add_del_street').AsString     := dbedt_add_del_street.Text;
//          strproc_create.ParamByName('p_cli_add_del_complement').AsString := dbedt_add_del_complement.Text;
//          strproc_create.ParamByName('p_cli_add_del_city').AsString       := dbedt_add_del_city.Text;
//          strproc_create.ParamByName('p_cli_add_del_state').AsString      := dbedt_add_del_state.Text;
//          strproc_create.ParamByName('p_cli_add_del_country').AsString    := dbedt_add_del_country.Text;
//          strproc_create.ParamByName('p_cli_phone1').AsString             := dbedt_phone1.Text;
//          strproc_create.ParamByName('p_cli_phone2').AsString             := dbedt_phone2.Text;
//          strproc_create.ParamByName('p_cli_phone3').AsString             := dbedt_phone3.Text;
//          strproc_create.ParamByName('p_cli_phone4').AsString             := dbedt_phone4.Text;
//          strproc_create.ParamByName('p_cli_contact').AsString            := dbedt_contact.Text;
//          strproc_create.ParamByName('p_cli_day_maturity').AsInteger      := dbspn_day_maturity.Value;
//          strproc_create.ParamByName('p_cli_dt_birthopen').AsDate         := dbedt_dt_birthopen.Date;
//          strproc_create.ParamByName('p_cli_status').AsShortInt           := dbchk_status.Checked.ToInteger;
//          strproc_create.ExecProc;
//
//          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_ticket.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ticket.Destroy;
  frm_ticket := Nil;
end;

procedure Tfrm_ticket.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_client.GetClient(frm_dm_ds.memClient);
  Trest_reseller.GetReseller(frm_dm_ds.memReseller);
  Trest_enterprise.GetEnterprise(frm_dm_ds.memEnterprise);
  Trest_ticket_type.GetTicketType(frm_dm_ds.memTicketType);
  Trest_contract_user.GetContractUser(frm_dm_ds.memContractUser);
  Trest_ticket_priority.GetTicketPriority(frm_dm_ds.memTicketPriority);
  Trest_ticket_category.GetTicketCategory(frm_dm_ds.memTicketCategory);
  Trest_ticket_category_sub.GetTicketCategorySub(frm_dm_ds.memTicketCategorySub);
end;

end.
