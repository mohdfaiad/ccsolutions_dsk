unit ufrm_insurance;

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
  cxButtonEdit,
  cxSpinEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList,
  cxGraphics,
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

  QImport3Wizard,
  QExport4Dialog,

  ACBrBase,
  ACBrEnterTab,

  frxClass,

  ufrm_form_default,

  u_class_connection,
  u_class_rest_insurance;

type
  Tfrm_insurance = class(Tfrm_form_default)
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_email: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dbedt_cnpj: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_im: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dbedt_add_bus_zipcode: TcxDBButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbedt_add_bus_address: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dbedt_add_bus_number: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbedt_add_bus_street: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dbedt_add_bus_complement: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbedt_add_bus_city: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dbedt_add_bus_state: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dbedt_add_bus_country: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dbedt_dt_maturity_contract: TcxDBDateEdit;
    dxLayoutItem21: TdxLayoutItem;
    dbedt_day_maturity: TcxDBSpinEdit;
    dxLayoutItem22: TdxLayoutItem;
    dbedt_dt_open: TcxDBDateEdit;
    dxLayoutItem24: TdxLayoutItem;
    lookupComboBoxTable: TcxLookupComboBox;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dbedt_nickname: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    memins_cod: TStringField;
    memtable_price_tbp_cod: TStringField;
    memins_id: TLongWordField;
    memins_first_name: TStringField;
    memins_last_name: TStringField;
    memins_nickname: TStringField;
    memins_email: TStringField;
    memins_cnpj: TStringField;
    memins_im: TStringField;
    memins_add_bus_zipcode: TStringField;
    memins_add_bus_address: TStringField;
    memins_add_bus_number: TStringField;
    memins_add_bus_street: TStringField;
    memins_add_bus_complement: TStringField;
    memins_add_bus_city: TStringField;
    memins_add_bus_state: TStringField;
    memins_add_bus_country: TStringField;
    memins_phone1: TStringField;
    memins_phone2: TStringField;
    memins_phone3: TStringField;
    memins_phone4: TStringField;
    memins_contact: TStringField;
    memins_dt_maturity_contract: TDateField;
    memins_day_maturity: TByteField;
    memins_dt_open: TDateField;
    memins_status: TShortintField;
    memins_deleted_at: TDateTimeField;
    memins_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ins_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_nickname: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_im: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_maturity_contract: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_day_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_status: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_registration: TcxGridDBColumn;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem25: TdxLayoutItem;
    tbsht_contact: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dbedt_phone2: TcxDBTextEdit;
    dbedt_phone4: TcxDBTextEdit;
    dbedt_phone1: TcxDBTextEdit;
    dbedt_phone3: TcxDBTextEdit;
    dbedt_contact: TcxDBTextEdit;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_insurance: Tfrm_insurance;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_insurance.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_insurance_update';
          strproc_update.Prepare;

          strproc_update.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
          strproc_update.ParamByName('p_ins_cod').AsString                := memins_cod.AsString;
//          strproc_update.ParamByName('p_table_price_tbp_cod').AsString    := memins_cod.AsString;
          strproc_update.ParamByName('p_ins_first_name').AsString         := dbedt_first_name.Text;
          strproc_update.ParamByName('p_ins_last_name').AsString          := dbedt_last_name.Text;
          strproc_update.ParamByName('p_ins_nickname').AsString           := dbedt_nickname.Text;
          strproc_update.ParamByName('p_ins_email').AsString              := dbedt_email.Text;
          strproc_update.ParamByName('p_ins_cnpj').AsString               := dbedt_cnpj.Text;
          strproc_update.ParamByName('p_ins_im').AsString                 := dbedt_im.Text;
          strproc_update.ParamByName('p_ins_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
          strproc_update.ParamByName('p_ins_add_bus_address').AsString    := dbedt_add_bus_address.Text;
          strproc_update.ParamByName('p_ins_add_bus_number').AsString     := dbedt_add_bus_number.Text;
          strproc_update.ParamByName('p_ins_add_bus_street').AsString     := dbedt_add_bus_street.Text;
          strproc_update.ParamByName('p_ins_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
          strproc_update.ParamByName('p_ins_add_bus_city').AsString       := dbedt_add_bus_city.Text;
          strproc_update.ParamByName('p_ins_add_bus_state').AsString      := dbedt_add_bus_state.Text;
          strproc_update.ParamByName('p_ins_add_bus_country').AsString    := dbedt_add_bus_country.Text;
          strproc_update.ParamByName('p_ins_phone1').AsString             := dbedt_phone1.Text;
          strproc_update.ParamByName('p_ins_phone2').AsString             := dbedt_phone2.Text;
          strproc_update.ParamByName('p_ins_phone3').AsString             := dbedt_phone3.Text;
          strproc_update.ParamByName('p_ins_phone4').AsString             := dbedt_phone4.Text;
          strproc_update.ParamByName('p_ins_contact').AsString            := dbedt_contact.Text;
          strproc_update.ParamByName('p_ins_dt_maturity_contract').AsDate := dbedt_dt_maturity_contract.Date;
          strproc_update.ParamByName('p_ins_day_maturity').AsInteger      := dbedt_day_maturity.Value;
          strproc_update.ParamByName('p_ins_dt_open').AsDate              := dbedt_dt_open.Date;
          strproc_update.ParamByName('p_ins_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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
            strproc_create.StoredProcName := 'proc_insurance_create';
            strproc_create.Prepare;

            strproc_create.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
//            strproc_create.ParamByName('p_table_price_tbp_cod').AsString    := memins_cod.AsString;
            strproc_create.ParamByName('p_ins_first_name').AsString         := dbedt_first_name.Text;
            strproc_create.ParamByName('p_ins_last_name').AsString          := dbedt_last_name.Text;
            strproc_create.ParamByName('p_ins_nickname').AsString           := dbedt_nickname.Text;
            strproc_create.ParamByName('p_ins_email').AsString              := dbedt_email.Text;
            strproc_create.ParamByName('p_ins_cnpj').AsString               := dbedt_cnpj.Text;
            strproc_create.ParamByName('p_ins_im').AsString                 := dbedt_im.Text;
            strproc_create.ParamByName('p_ins_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
            strproc_create.ParamByName('p_ins_add_bus_address').AsString    := dbedt_add_bus_address.Text;
            strproc_create.ParamByName('p_ins_add_bus_number').AsString     := dbedt_add_bus_number.Text;
            strproc_create.ParamByName('p_ins_add_bus_street').AsString     := dbedt_add_bus_street.Text;
            strproc_create.ParamByName('p_ins_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
            strproc_create.ParamByName('p_ins_add_bus_city').AsString       := dbedt_add_bus_city.Text;
            strproc_create.ParamByName('p_ins_add_bus_state').AsString      := dbedt_add_bus_state.Text;
            strproc_create.ParamByName('p_ins_add_bus_country').AsString    := dbedt_add_bus_country.Text;
            strproc_create.ParamByName('p_ins_phone1').AsString             := dbedt_phone1.Text;
            strproc_create.ParamByName('p_ins_phone2').AsString             := dbedt_phone2.Text;
            strproc_create.ParamByName('p_ins_phone3').AsString             := dbedt_phone3.Text;
            strproc_create.ParamByName('p_ins_phone4').AsString             := dbedt_phone4.Text;
            strproc_create.ParamByName('p_ins_contact').AsString            := dbedt_contact.Text;
            strproc_create.ParamByName('p_ins_dt_maturity_contract').AsDate := dbedt_dt_maturity_contract.Date;
            strproc_create.ParamByName('p_ins_day_maturity').AsInteger      := dbedt_day_maturity.Value;
            strproc_create.ParamByName('p_ins_dt_open').AsDate              := dbedt_dt_open.Date;
            strproc_create.ParamByName('p_ins_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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

procedure Tfrm_insurance.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_insurance.GetInsurance(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_insurance.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_insurance.GetInsurance(mem);
end;

procedure Tfrm_insurance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_insurance.Destroy;
  frm_insurance := Nil;
end;

procedure Tfrm_insurance.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_insurance.GetInsurance(mem);
end;

end.
