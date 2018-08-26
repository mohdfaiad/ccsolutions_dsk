unit ufrm_enterprise;

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
  Vcl.ExtDlgs,
  Vcl.DBCtrls,
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
  cxShellComboBox,
  cxBarEditItem,
  dxBarExtItems,
  cxImage,
  dxLayoutControlAdapters,
  cxButtons,
  cxGeometry,
  cxDBLookupComboBox,
  cxDataControllerConditionalFormattingRulesManagerDialog,
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
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  QExport4Dialog,
  QImport3Wizard,

  ACBrSocket,
  ACBrCEP,
  ACBrBase,
  ACBrEnterTab,

  frxClass,
  frxDBSet,

  ufrm_dm,
  ufrm_form_default,

  u_class_connection,
  u_class_rest_enterprise;

type
  Tfrm_enterprise = class(Tfrm_form_default)
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_email: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_dt_open: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbcmb_type: TcxDBComboBox;
    dxLayoutItem13: TdxLayoutItem;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl_address: TdxLayoutControl;
    dbedt_add_bus_address: TcxDBTextEdit;
    dbedt_add_bus_street: TcxDBTextEdit;
    dbedt_add_bus_city: TcxDBTextEdit;
    dbedt_add_bus_state: TcxDBTextEdit;
    dbedt_add_bus_country: TcxDBTextEdit;
    dbedt_add_bus_zipcode: TcxDBButtonEdit;
    dbedt_add_bus_number: TcxDBTextEdit;
    dbedt_add_bus_complement: TcxDBTextEdit;
    dxLayoutControl_addressGroup_Root: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dbedt_cnpj: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_ie: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbedt_im: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dbedt_suframa: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dbedt_nickname: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dbimg_image1: TcxDBImage;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_type: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_nickname: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_im: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_status: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_dt_registration: TcxGridDBColumn;
    mement_cod: TStringField;
    mement_id: TLongWordField;
    mement_type: TStringField;
    mement_first_name: TStringField;
    mement_last_name: TStringField;
    mement_nickname: TStringField;
    mement_email: TStringField;
    mement_cnpj: TStringField;
    mement_ie: TStringField;
    mement_im: TStringField;
    mement_suframa: TStringField;
    mement_add_bus_zipcode: TStringField;
    mement_add_bus_address: TStringField;
    mement_add_bus_number: TStringField;
    mement_add_bus_street: TStringField;
    mement_add_bus_complement: TStringField;
    mement_add_bus_city: TStringField;
    mement_add_bus_state: TStringField;
    mement_add_bus_country: TStringField;
    mement_phone1: TStringField;
    mement_phone2: TStringField;
    mement_phone3: TStringField;
    mement_phone4: TStringField;
    mement_contact: TStringField;
    mement_dt_open: TDateField;
    mement_status: TShortintField;
    mement_image1: TBlobField;
    mement_deleted_at: TDateTimeField;
    mement_dt_registration: TDateTimeField;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem19: TdxLayoutItem;
    tbsht_contact: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dbedt_phone1: TcxDBTextEdit;
    dbedt_phone2: TcxDBTextEdit;
    dbedt_phone3: TcxDBTextEdit;
    dbedt_phone4: TcxDBTextEdit;
    dbedt_contact: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    function GetEnterprise : Boolean;
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_enterprise: Tfrm_enterprise;

implementation

{$R *.dfm}

procedure Tfrm_enterprise.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_enterprise_update';
          strproc_update.Prepare;

          strproc_update.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
          strproc_update.ParamByName('p_ent_cod').AsString                := mement_cod.AsString;
          strproc_update.ParamByName('p_ent_type').AsString               := dbcmb_type.Text;
          strproc_update.ParamByName('p_ent_first_name').AsString         := dbedt_first_name.Text;
          strproc_update.ParamByName('p_ent_last_name').AsString          := dbedt_last_name.Text;
          strproc_update.ParamByName('p_ent_nickname').AsString           := dbedt_nickname.Text;
          strproc_update.ParamByName('p_ent_email').AsString              := dbedt_email.Text;
          strproc_update.ParamByName('p_ent_cnpj').AsString               := dbedt_cnpj.Text;
          strproc_update.ParamByName('p_ent_ie').AsString                 := dbedt_ie.Text;
          strproc_update.ParamByName('p_ent_im').AsString                 := dbedt_im.Text;
          strproc_update.ParamByName('p_ent_suframa').AsString            := dbedt_suframa.Text;
          strproc_update.ParamByName('p_ent_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
          strproc_update.ParamByName('p_ent_add_bus_address').AsString    := dbedt_add_bus_address.Text;
          strproc_update.ParamByName('p_ent_add_bus_number').AsString     := dbedt_add_bus_number.Text;
          strproc_update.ParamByName('p_ent_add_bus_street').AsString     := dbedt_add_bus_street.Text;
          strproc_update.ParamByName('p_ent_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
          strproc_update.ParamByName('p_ent_add_bus_city').AsString       := dbedt_add_bus_city.Text;
          strproc_update.ParamByName('p_ent_add_bus_state').AsString      := dbedt_add_bus_state.Text;
          strproc_update.ParamByName('p_ent_add_bus_country').AsString    := dbedt_add_bus_country.Text;
          strproc_update.ParamByName('p_ent_phone1').AsString             := dbedt_phone1.Text;
          strproc_update.ParamByName('p_ent_phone2').AsString             := dbedt_phone2.Text;
          strproc_update.ParamByName('p_ent_phone3').AsString             := dbedt_phone3.Text;
          strproc_update.ParamByName('p_ent_phone4').AsString             := dbedt_phone4.Text;
          strproc_update.ParamByName('p_ent_contact').AsString            := dbedt_contact.Text;
          strproc_update.ParamByName('p_ent_dt_open').AsDate              := dbedt_dt_open.Date;
          strproc_update.ParamByName('p_ent_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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
            strproc_create.StoredProcName := 'proc_enterprise_create';
            strproc_create.Prepare;

            strproc_create.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
            strproc_create.ParamByName('p_ent_type').AsString               := dbcmb_type.Text;
            strproc_create.ParamByName('p_ent_first_name').AsString         := dbedt_first_name.Text;
            strproc_create.ParamByName('p_ent_last_name').AsString          := dbedt_last_name.Text;
            strproc_create.ParamByName('p_ent_nickname').AsString           := dbedt_nickname.Text;
            strproc_create.ParamByName('p_ent_email').AsString              := dbedt_email.Text;
            strproc_create.ParamByName('p_ent_cnpj').AsString               := dbedt_cnpj.Text;
            strproc_create.ParamByName('p_ent_ie').AsString                 := dbedt_ie.Text;
            strproc_create.ParamByName('p_ent_im').AsString                 := dbedt_im.Text;
            strproc_create.ParamByName('p_ent_suframa').AsString            := dbedt_suframa.Text;
            strproc_create.ParamByName('p_ent_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
            strproc_create.ParamByName('p_ent_add_bus_address').AsString    := dbedt_add_bus_address.Text;
            strproc_create.ParamByName('p_ent_add_bus_number').AsString     := dbedt_add_bus_number.Text;
            strproc_create.ParamByName('p_ent_add_bus_street').AsString     := dbedt_add_bus_street.Text;
            strproc_create.ParamByName('p_ent_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
            strproc_create.ParamByName('p_ent_add_bus_city').AsString       := dbedt_add_bus_city.Text;
            strproc_create.ParamByName('p_ent_add_bus_state').AsString      := dbedt_add_bus_state.Text;
            strproc_create.ParamByName('p_ent_add_bus_country').AsString    := dbedt_add_bus_country.Text;
            strproc_create.ParamByName('p_ent_phone1').AsString             := dbedt_phone1.Text;
            strproc_create.ParamByName('p_ent_phone2').AsString             := dbedt_phone2.Text;
            strproc_create.ParamByName('p_ent_phone3').AsString             := dbedt_phone3.Text;
            strproc_create.ParamByName('p_ent_phone4').AsString             := dbedt_phone4.Text;
            strproc_create.ParamByName('p_ent_contact').AsString            := dbedt_contact.Text;
            strproc_create.ParamByName('p_ent_dt_open').AsDate              := dbedt_dt_open.Date;
            strproc_create.ParamByName('p_ent_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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

procedure Tfrm_enterprise.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  GetEnterprise;
  ds.DataSet.Last;
end;

procedure Tfrm_enterprise.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  GetEnterprise;
end;

procedure Tfrm_enterprise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_enterprise.Destroy;
  frm_enterprise := Nil;
end;

procedure Tfrm_enterprise.FormCreate(Sender: TObject);
begin
  inherited;
  GetEnterprise;
end;

function Tfrm_enterprise.GetEnterprise: Boolean;
begin
  try
    try
      Trest_enterprise.v_method        := '/api/rest/enterprises/Enterprise';
      Trest_enterprise.v_parameter     := Tconnection.ctr_token;
      Trest_enterprise.GetEnterprise(mem);

      Result := True;
    except on E: Exception do
      Result := False;
    end;
  finally
  end;
end;

end.
