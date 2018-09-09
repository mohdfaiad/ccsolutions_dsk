unit ufrm_supplier;

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
  cxButtonEdit,
  cxShellComboBox,
  cxBarEditItem,
  dxBarExtItems,
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

  ACBrBase,
  ACBrEnterTab,

  QExport4Dialog,
  QImport3Wizard,

  frxClass,
  frxDBSet,

  ufrm_dm,
  ufrm_form_default,

  u_class_rest_supplier,
  u_class_connection;

type
  Tfrm_supplier = class(Tfrm_form_default)
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dbedt_add_bus_address: TcxDBTextEdit;
    dbedt_add_bus_street: TcxDBTextEdit;
    dbedt_add_bus_city: TcxDBTextEdit;
    dbedt_add_bus_state: TcxDBTextEdit;
    dbedt_add_bus_country: TcxDBTextEdit;
    dbedt_add_bus_zipcode: TcxDBButtonEdit;
    dbedt_add_bus_number: TcxDBTextEdit;
    dbedt_add_bus_complement: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
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
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_email: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_dt_open: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_cnpj: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbedt_ie: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbedt_im: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dbedt_suframa: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    memsup_cod: TStringField;
    memsup_id: TLongWordField;
    memsup_first_name: TStringField;
    memsup_last_name: TStringField;
    memsup_email: TStringField;
    memsup_cnpj: TStringField;
    memsup_ie: TStringField;
    memsup_im: TStringField;
    memsup_suframa: TStringField;
    memsup_add_bus_zipcode: TStringField;
    memsup_add_bus_address: TStringField;
    memsup_add_bus_number: TStringField;
    memsup_add_bus_street: TStringField;
    memsup_add_bus_complement: TStringField;
    memsup_add_bus_city: TStringField;
    memsup_add_bus_state: TStringField;
    memsup_add_bus_country: TStringField;
    memsup_phone1: TStringField;
    memsup_phone2: TStringField;
    memsup_phone3: TStringField;
    memsup_phone4: TStringField;
    memsup_contact: TStringField;
    memsup_dt_open: TDateField;
    memsup_status: TShortintField;
    memsup_deleted_at: TDateTimeField;
    memsup_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1sup_id: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_email: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_im: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_status: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_dt_registration: TcxGridDBColumn;
    tbsht_contact: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    dbedt_phone1: TcxDBTextEdit;
    dbedt_contact: TcxDBTextEdit;
    dbedt_phone2: TcxDBTextEdit;
    dbedt_phone3: TcxDBTextEdit;
    dbedt_phone4: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_supplier: Tfrm_supplier;

implementation

{$R *.dfm}

procedure Tfrm_supplier.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_supplier_update';
          strproc_update.Prepare;

          strproc_update.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
          strproc_update.ParamByName('p_sup_cod').AsString                := memsup_cod.AsString;
          strproc_update.ParamByName('p_ent_first_name').AsString         := dbedt_first_name.Text;
          strproc_update.ParamByName('p_sup_last_name').AsString          := dbedt_last_name.Text;
          strproc_update.ParamByName('p_sup_email').AsString              := dbedt_email.Text;
          strproc_update.ParamByName('p_sup_cnpj').AsString               := dbedt_cnpj.Text;
          strproc_update.ParamByName('p_sup_ie').AsString                 := dbedt_ie.Text;
          strproc_update.ParamByName('p_sup_im').AsString                 := dbedt_im.Text;
          strproc_update.ParamByName('p_sup_suframa').AsString            := dbedt_suframa.Text;
          strproc_update.ParamByName('p_sup_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
          strproc_update.ParamByName('p_sup_add_bus_address').AsString    := dbedt_add_bus_address.Text;
          strproc_update.ParamByName('p_sup_add_bus_number').AsString     := dbedt_add_bus_number.Text;
          strproc_update.ParamByName('p_sup_add_bus_street').AsString     := dbedt_add_bus_street.Text;
          strproc_update.ParamByName('p_sup_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
          strproc_update.ParamByName('p_sup_add_bus_city').AsString       := dbedt_add_bus_city.Text;
          strproc_update.ParamByName('p_sup_add_bus_state').AsString      := dbedt_add_bus_state.Text;
          strproc_update.ParamByName('p_sup_add_bus_country').AsString    := dbedt_add_bus_country.Text;
          strproc_update.ParamByName('p_sup_phone1').AsString             := dbedt_phone1.Text;
          strproc_update.ParamByName('p_sup_phone2').AsString             := dbedt_phone2.Text;
          strproc_update.ParamByName('p_sup_phone3').AsString             := dbedt_phone3.Text;
          strproc_update.ParamByName('p_sup_phone4').AsString             := dbedt_phone4.Text;
          strproc_update.ParamByName('p_sup_contact').AsString            := dbedt_contact.Text;
          strproc_update.ParamByName('p_sup_dt_open').AsDate              := dbedt_dt_open.Date;
          strproc_update.ParamByName('p_sup_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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
            strproc_create.StoredProcName := 'proc_supplier_create';
            strproc_create.Prepare;

            strproc_create.ParamByName('p_ctr_token').AsString              := Tconnection.ctr_token;
            strproc_create.ParamByName('p_sup_first_name').AsString         := dbedt_first_name.Text;
            strproc_create.ParamByName('p_sup_last_name').AsString          := dbedt_last_name.Text;
            strproc_create.ParamByName('p_sup_email').AsString              := dbedt_email.Text;
            strproc_create.ParamByName('p_sup_cnpj').AsString               := dbedt_cnpj.Text;
            strproc_create.ParamByName('p_sup_ie').AsString                 := dbedt_ie.Text;
            strproc_create.ParamByName('p_sup_im').AsString                 := dbedt_im.Text;
            strproc_create.ParamByName('p_sup_suframa').AsString            := dbedt_suframa.Text;
            strproc_create.ParamByName('p_sup_add_bus_zipcode').AsString    := dbedt_add_bus_zipcode.Text;
            strproc_create.ParamByName('p_sup_add_bus_address').AsString    := dbedt_add_bus_address.Text;
            strproc_create.ParamByName('p_sup_add_bus_number').AsString     := dbedt_add_bus_number.Text;
            strproc_create.ParamByName('p_sup_add_bus_street').AsString     := dbedt_add_bus_street.Text;
            strproc_create.ParamByName('p_sup_add_bus_complement').AsString := dbedt_add_bus_complement.Text;
            strproc_create.ParamByName('p_sup_add_bus_city').AsString       := dbedt_add_bus_city.Text;
            strproc_create.ParamByName('p_sup_add_bus_state').AsString      := dbedt_add_bus_state.Text;
            strproc_create.ParamByName('p_sup_add_bus_country').AsString    := dbedt_add_bus_country.Text;
            strproc_create.ParamByName('p_sup_phone1').AsString             := dbedt_phone1.Text;
            strproc_create.ParamByName('p_sup_phone2').AsString             := dbedt_phone2.Text;
            strproc_create.ParamByName('p_sup_phone3').AsString             := dbedt_phone3.Text;
            strproc_create.ParamByName('p_sup_phone4').AsString             := dbedt_phone4.Text;
            strproc_create.ParamByName('p_sup_contact').AsString            := dbedt_contact.Text;
            strproc_create.ParamByName('p_sup_dt_open').AsDate              := dbedt_dt_open.Date;
            strproc_create.ParamByName('p_sup_status').AsShortInt           := dbchk_status.Checked.ToInteger;
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

procedure Tfrm_supplier.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_supplier.GetSupplier(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_supplier.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_supplier.GetSupplier(mem);
end;

procedure Tfrm_supplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_supplier.Destroy;
  frm_supplier := Nil;
end;

procedure Tfrm_supplier.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_supplier.GetSupplier(mem)
end;

end.
