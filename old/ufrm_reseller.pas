unit ufrm_reseller;

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
  cxButtonEdit,
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

  ACBrEnterTab,
  ACBrBase,

  frxClass,

  QImport3Wizard,
  QExport4Dialog,

  ufrm_dm,
  ufrm_form_default,

  u_class_connection,
  u_class_rest_reseller, dxSkinTheBezier, frxChart, frxDesgn;

type
  Tfrm_reseller = class(Tfrm_form_default)
    dxLayoutGroup3: TdxLayoutGroup;
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_email: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_cpfcnpj: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_im: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbedt_rgie: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbedt_suframa: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dbedt_dt_birthopen: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dbedt_add_bus_address: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbedt_add_bus_number: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dbedt_add_bus_street: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dbedt_add_bus_complement: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dbedt_add_bus_city: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbedt_add_bus_state: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dbedt_add_bus_country: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    dbedt_add_bus_zipcode: TcxDBButtonEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    memres_cod: TStringField;
    memres_id: TLongWordField;
    memres_type: TStringField;
    memres_first_name: TStringField;
    memres_last_name: TStringField;
    memres_email: TStringField;
    memres_cpfcnpj: TStringField;
    memres_rgie: TStringField;
    memres_im: TStringField;
    memres_suframa: TStringField;
    memres_add_bus_zipcode: TStringField;
    memres_add_bus_address: TStringField;
    memres_add_bus_number: TStringField;
    memres_add_bus_street: TStringField;
    memres_add_bus_complement: TStringField;
    memres_add_bus_city: TStringField;
    memres_add_bus_state: TStringField;
    memres_add_bus_country: TStringField;
    memres_phone1: TStringField;
    memres_phone2: TStringField;
    memres_phone3: TStringField;
    memres_phone4: TStringField;
    memres_contact: TStringField;
    memres_dt_birthopen: TDateField;
    memres_status: TShortintField;
    memres_deleted_at: TDateTimeField;
    memres_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1res_id: TcxGridDBColumn;
    cxGrid_1DBTableView1res_type: TcxGridDBColumn;
    cxGrid_1DBTableView1res_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1res_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1res_email: TcxGridDBColumn;
    cxGrid_1DBTableView1res_cpfcnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1res_rgie: TcxGridDBColumn;
    cxGrid_1DBTableView1res_im: TcxGridDBColumn;
    cxGrid_1DBTableView1res_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1res_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1res_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1res_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1res_dt_birthopen: TcxGridDBColumn;
    cxGrid_1DBTableView1res_status: TcxGridDBColumn;
    cxGrid_1DBTableView1res_deleted_at: TcxGridDBColumn;
    cxGrid_1DBTableView1res_dt_registration: TcxGridDBColumn;
    dbcmb_type: TcxDBComboBox;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem25: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    dbedt_phone1: TcxDBTextEdit;
    dbedt_contact: TcxDBTextEdit;
    dbedt_phone2: TcxDBTextEdit;
    dbedt_phone3: TcxDBTextEdit;
    dbedt_phone4: TcxDBTextEdit;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
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
  frm_reseller: Tfrm_reseller;

implementation

{$R *.dfm}

procedure Tfrm_reseller.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_reseller_update';
          strproc_update.Prepare;

          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
            strproc_update.ParamByName('p_res_cod').AsString                := memres_cod.AsString;
            strproc_update.ParamByName('p_res_type').AsString               := dbcmb_type.Text;
            strproc_update.ParamByName('p_res_first_name').AsString         := dbedt_first_name.Text;
            strproc_update.ParamByName('p_res_last_name').AsString          := dbedt_last_name.Text;
            strproc_update.ParamByName('p_res_email').AsString              := dbedt_email.Text;
            strproc_update.ParamByName('p_res_cpfcnpj').AsString            := dbedt_cpfcnpj.Text;
            strproc_update.ParamByName('p_res_rgie').AsString               := dbedt_rgie.Text;
            strproc_update.ParamByName('p_res_im').AsString                 := dbedt_im.Text;
            strproc_update.ParamByName('p_res_suframa').AsString            := dbedt_suframa.Text;
            strproc_update.ParamByName('p_res_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
            strproc_update.ParamByName('p_res_add_bus_address').AsString    := dbedt_add_bus_address.Text;
            strproc_update.ParamByName('p_res_add_bus_number').AsString     := dbedt_add_bus_number.Text;
            strproc_update.ParamByName('p_res_add_bus_street').AsString     := dbedt_add_bus_street.Text;
            strproc_update.ParamByName('p_res_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
            strproc_update.ParamByName('p_res_add_bus_city').AsString       := dbedt_add_bus_city.Text;
            strproc_update.ParamByName('p_res_add_bus_state').AsString      := dbedt_add_bus_state.Text;
            strproc_update.ParamByName('p_res_add_bus_country').AsString    := dbedt_add_bus_country.Text;
            strproc_update.ParamByName('p_res_phone1').AsString             := dbedt_phone1.Text;
            strproc_update.ParamByName('p_res_phone2').AsString             := dbedt_phone2.Text;
            strproc_update.ParamByName('p_res_phone3').AsString             := dbedt_phone3.Text;
            strproc_update.ParamByName('p_res_phone4').AsString             := dbedt_phone4.Text;
            strproc_update.ParamByName('p_res_contact').AsString            := dbedt_contact.Text;
            strproc_update.ParamByName('p_res_dt_birthopen').AsDate         := dbedt_dt_birthopen.Date;
            strproc_update.ParamByName('p_res_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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
          strproc_create.StoredProcName := 'proc_reseller_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
          strproc_create.ParamByName('p_res_type').AsString               := dbcmb_type.Text;
          strproc_create.ParamByName('p_res_first_name').AsString         := dbedt_last_name.Text;
          strproc_create.ParamByName('p_res_last_name').AsString          := dbedt_last_name.Text;
          strproc_create.ParamByName('p_res_email').AsString              := dbedt_email.Text;
          strproc_create.ParamByName('p_res_cpfcnpj').AsString            := dbedt_cpfcnpj.Text;
          strproc_create.ParamByName('p_res_rgie').AsString               := dbedt_rgie.Text;
          strproc_create.ParamByName('p_res_im').AsString                 := dbedt_im.Text;
          strproc_create.ParamByName('p_res_suframa').AsString            := dbedt_suframa.Text;
          strproc_create.ParamByName('p_res_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
          strproc_create.ParamByName('p_res_add_bus_address').AsString    := dbedt_add_bus_address.Text;
          strproc_create.ParamByName('p_res_add_bus_number').AsString     := dbedt_add_bus_number.Text;
          strproc_create.ParamByName('p_res_add_bus_street').AsString     := dbedt_add_bus_street.Text;
          strproc_create.ParamByName('p_res_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
          strproc_create.ParamByName('p_res_add_bus_city').AsString       := dbedt_add_bus_city.Text;
          strproc_create.ParamByName('p_res_add_bus_state').AsString      := dbedt_add_bus_state.Text;
          strproc_create.ParamByName('p_res_add_bus_country').AsString    := dbedt_add_bus_country.Text;
          strproc_create.ParamByName('p_res_phone1').AsString             := dbedt_phone1.Text;
          strproc_create.ParamByName('p_res_phone2').AsString             := dbedt_phone2.Text;
          strproc_create.ParamByName('p_res_phone3').AsString             := dbedt_phone3.Text;
          strproc_create.ParamByName('p_res_phone4').AsString             := dbedt_phone4.Text;
          strproc_create.ParamByName('p_res_contact').AsString            := dbedt_contact.Text;
          strproc_create.ParamByName('p_res_dt_birthopen').AsDate         := dbedt_dt_birthopen.Date;
          strproc_create.ParamByName('p_res_status').AsShortInt           := dbchk_status.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_reseller.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_reseller.GetReseller(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_reseller.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_reseller.GetReseller(mem);
end;

procedure Tfrm_reseller.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_reseller.Destroy;
  frm_reseller := Nil;
end;

procedure Tfrm_reseller.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_reseller.GetReseller(mem);
end;

end.
