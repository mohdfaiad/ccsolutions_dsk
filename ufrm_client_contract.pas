unit ufrm_client_contract;

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
  cxShellComboBox,
  cxDBLookupComboBox,
  dxLayoutLookAndFeels,
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
  cxCheckBox,
  cxLookupEdit,
  cxDBLookupEdit,
  dxLayoutControlAdapters,
  cxCurrencyEdit,

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
  u_class_rest_client,
  u_class_rest_product,
  u_class_rest_reseller,
  u_class_rest_client_contract,
  u_class_rest_client_contract_iten;

type
  Tfrm_client_contract = class(Tfrm_form_default)
    memcli_ctr_cod: TStringField;
    memclient_cli_cod: TStringField;
    memreseller_res_cod: TStringField;
    memcli_ctr_id: TLongWordField;
    memcli_ctr_status: TShortintField;
    memcli_ctr_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1cli_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_ctr_status: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_ctr_dt_registration: TcxGridDBColumn;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    memProduct: TFDMemTable;
    dsProduct: TDataSource;
    memReseller: TFDMemTable;
    memResellerres_cod: TStringField;
    memResellerres_id: TLongWordField;
    memResellerres_type: TStringField;
    memResellerres_first_name: TStringField;
    memResellerres_last_name: TStringField;
    memResellerres_email: TStringField;
    memResellerres_cpfcnpj: TStringField;
    memResellerres_rgie: TStringField;
    memResellerres_im: TStringField;
    memResellerres_suframa: TStringField;
    memResellerres_add_bus_zipcode: TStringField;
    memResellerres_add_bus_address: TStringField;
    memResellerres_add_bus_number: TStringField;
    memResellerres_add_bus_street: TStringField;
    memResellerres_add_bus_complement: TStringField;
    memResellerres_add_bus_city: TStringField;
    memResellerres_add_bus_state: TStringField;
    memResellerres_add_bus_country: TStringField;
    memResellerres_phone1: TStringField;
    memResellerres_phone2: TStringField;
    memResellerres_phone3: TStringField;
    memResellerres_phone4: TStringField;
    memResellerres_contact: TStringField;
    memResellerres_dt_birthopen: TDateField;
    memResellerres_status: TShortintField;
    memResellerres_deleted_at: TDateTimeField;
    memResellerres_dt_registration: TDateTimeField;
    memreseller_name: TStringField;
    cxGrid_1DBTableView1reseller_name: TcxGridDBColumn;
    dsReseller: TDataSource;
    memClient: TFDMemTable;
    dsClient: TDataSource;
    memClientcli_cod: TStringField;
    memClienttable_price_tbp_cod: TStringField;
    memClientcli_id: TLongWordField;
    memClientcli_type: TStringField;
    memClientcli_first_name: TStringField;
    memClientcli_last_name: TStringField;
    memClientcli_email: TStringField;
    memClientcli_cpfcnpj: TStringField;
    memClientcli_rgie: TStringField;
    memClientcli_im: TStringField;
    memClientcli_suframa: TStringField;
    memClientcli_add_bus_zipcode: TStringField;
    memClientcli_add_bus_address: TStringField;
    memClientcli_add_bus_number: TStringField;
    memClientcli_add_bus_street: TStringField;
    memClientcli_add_bus_complement: TStringField;
    memClientcli_add_bus_city: TStringField;
    memClientcli_add_bus_state: TStringField;
    memClientcli_add_bus_country: TStringField;
    memClientcli_add_bil_zipcode: TStringField;
    memClientcli_add_bil_address: TStringField;
    memClientcli_add_bil_number: TStringField;
    memClientcli_add_bil_street: TStringField;
    memClientcli_add_bil_complement: TStringField;
    memClientcli_add_bil_city: TStringField;
    memClientcli_add_bil_state: TStringField;
    memClientcli_add_bil_country: TStringField;
    memClientcli_add_del_zipcode: TStringField;
    memClientcli_add_del_address: TStringField;
    memClientcli_add_del_number: TStringField;
    memClientcli_add_del_street: TStringField;
    memClientcli_add_del_complement: TStringField;
    memClientcli_add_del_city: TStringField;
    memClientcli_add_del_state: TStringField;
    memClientcli_add_del_country: TStringField;
    memClientcli_phone1: TStringField;
    memClientcli_phone2: TStringField;
    memClientcli_phone3: TStringField;
    memClientcli_phone4: TStringField;
    memClientcli_contact: TStringField;
    memClientcli_day_maturity: TIntegerField;
    memClientcli_dt_birthopen: TDateField;
    memClientcli_weight: TBCDField;
    memClientcli_height: TBCDField;
    memClientcli_blood_type: TStringField;
    memClientcli_rh_factor: TStringField;
    memClientcli_du_factor: TStringField;
    memClientcli_cns: TStringField;
    memClientcli_gender: TStringField;
    memClientcli_skin_color: TStringField;
    memClientcli_status: TShortintField;
    memClientcli_image1: TBlobField;
    memClientcli_deleted_at: TDateTimeField;
    memClientcli_dt_registration: TDateTimeField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    memclient_name: TStringField;
    cxGrid_1DBTableView1client_name: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    griddb: TcxGridDBTableView;
    gridlvl: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    memClientContractIten: TFDMemTable;
    dsClientContractIten: TDataSource;
    memClientContractItencci_cod: TStringField;
    memClientContractItenclient_contract_cli_ctr_cod: TStringField;
    memClientContractItenproduct_pro_cod: TStringField;
    memClientContractItencci_value: TBCDField;
    memClientContractItencci_quant: TBCDField;
    memClientContractItencci_dt_registration: TDateTimeField;
    griddbcci_value: TcxGridDBColumn;
    griddbcci_quant: TcxGridDBColumn;
    memProductpro_cod: TStringField;
    memProductmaterial_mat_cod: TStringField;
    memProductsupplier_sup_cod: TStringField;
    memProductproduct_class_prc_cod: TStringField;
    memProductproduct_class_sub_prs_cod: TStringField;
    memProductmanufacturer_man_cod: TStringField;
    memProductbrand_bra_cod: TStringField;
    memProductncm_ncm_cod: TStringField;
    memProductproduct_unit_pru_cod: TStringField;
    memProductpro_id: TLongWordField;
    memProductpro_type: TStringField;
    memProductpro_name: TStringField;
    memProductpro_initials: TStringField;
    memProductpro_tag: TStringField;
    memProductpro_description: TMemoField;
    memProductpro_gender: TStringField;
    memProductpro_annotation: TMemoField;
    memProductpro_barcod: TStringField;
    memProductpro_barcod_manufacturer: TStringField;
    memProductpro_height: TBCDField;
    memProductpro_width: TBCDField;
    memProductpro_length: TBCDField;
    memProductpro_weight: TBCDField;
    memProductpro_liter: TBCDField;
    memProductpro_delivery_term: TIntegerField;
    memProductpro_status: TShortintField;
    memProductpro_deleted_at: TDateTimeField;
    memProductpro_dt_registration: TDateTimeField;
    memClientContractItenproduct_name: TStringField;
    griddbproduct_pro_cod: TcxGridDBColumn;
    memcli_ctr_value_reseller: TBCDField;
    memClientContractItencci_value_reseller: TBCDField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    griddbcci_value_reseller: TcxGridDBColumn;
    memClientContractItencci_value_total: TBCDField;
    griddbcci_value_total: TcxGridDBColumn;
    memClientContractItencci_value_discount: TBCDField;
    griddbcci_value_discount: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure griddbNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    procedure afterInsert;
    procedure afterUpdate;
    procedure calcProductIten;

  public

  end;

var
  frm_client_contract: Tfrm_client_contract;

implementation

uses
  ufrm_dm;

{$R *.dfm}

procedure Tfrm_client_contract.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_client_contract_update';
          strproc_update.Prepare;

          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update.ParamByName('p_ctr_token').AsString            := Tconnection.ctr_token;
            strproc_update.ParamByName('p_cli_ctr_cod').AsString          := memcli_ctr_cod.AsString;
            strproc_update.ParamByName('p_client_cli_cod').AsString       := memClientcli_cod.AsString;
            strproc_update.ParamByName('p_reseller_res_cod').AsString     := memreseller_res_cod.AsString;
            strproc_update.ParamByName('p_cli_ctr_value_reseller').AsBCD  := memcli_ctr_value_reseller.AsCurrency;
            strproc_update.ParamByName('p_cli_ctr_status').AsShortInt     := dbchk_status.Checked.ToInteger;
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
          strproc_create.StoredProcName := 'proc_client_contract_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString            := Tconnection.ctr_token;
          strproc_create.ParamByName('p_client_cli_cod').AsString       := memClientcli_cod.AsString;
          strproc_create.ParamByName('p_reseller_res_cod').AsString     := memReseller_res_cod.AsString;
          strproc_create.ParamByName('p_cli_ctr_value_reseller').AsBCD  := memcli_ctr_value_reseller.AsCurrency;
          strproc_create.ParamByName('p_cli_ctr_status').AsShortInt     := dbchk_status.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_client_contract.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_client_contract.GetClientContract(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_client_contract.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_client_contract.GetClientContract(mem);
end;

procedure Tfrm_client_contract.calcProductIten;
begin
  memClientContractItencci_value_total.Value := memClientContractItencci_value_discount.Value - (memClientContractItencci_value.Value * memClientContractItencci_quant.Value);
end;

procedure Tfrm_client_contract.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_client_contract.Destroy;
  frm_client_contract := Nil;
end;

procedure Tfrm_client_contract.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_client.GetClient(memClient);
  Trest_product.GetProduct(memProduct);
  Trest_reseller.GetReseller(memReseller);
  Trest_client_contract.GetClientContract(mem);
  Trest_client_contract_iten.GetClientContractIten(memClientContractIten, memcli_ctr_cod.AsString);
end;

procedure Tfrm_client_contract.griddbNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  inherited;
  case AButtonIndex of
    NBDI_POST:
      case dsClientContractIten.State of
        dsEdit:
          try
            try
              strproc_update := TFDStoredProc.Create(Self);
              strproc_update.Connection := frm_dm.connCCS;
              strproc_update.StoredProcName := 'proc_client_contract_iten_update';
              strproc_update.Prepare;

              strproc_update.ParamByName('p_ctr_token').AsString        := Tconnection.ctr_token;
              strproc_update.ParamByName('p_cci_cod').AsString          := memClientContractItencci_cod.AsString;
              strproc_update.ParamByName('p_product_pro_cod').AsString  := memProductpro_cod.AsString;
              strproc_update.ParamByName('p_cci_value').AsBCD           := memClientContractItencci_value.AsCurrency;
              strproc_update.ParamByName('p_cci_value_discount').AsBCD  := memClientContractItencci_value_discount.AsCurrency;
              strproc_update.ParamByName('p_cci_value_total').AsBCD     := memClientContractItencci_value_total.AsCurrency;
              strproc_update.ParamByName('p_cci_value_reseller').AsBCD  := memClientContractItencci_value_reseller.AsCurrency;
              strproc_update.ParamByName('p_cci_quant').AsBCD           := memClientContractItencci_quant.AsCurrency;
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
              strproc_create.StoredProcName := 'proc_client_contract_iten_create';
              strproc_create.Prepare;

              strproc_create.ParamByName('p_ctr_token').AsString                    := Tconnection.ctr_token;
              strproc_create.ParamByName('p_client_contract_cli_ctr_cod').AsString  := memcli_ctr_cod.AsString;
              strproc_create.ParamByName('p_product_pro_cod').AsString              := memProductpro_cod.AsString;
              strproc_create.ParamByName('p_cci_value').AsBCD                       := memClientContractItencci_value.AsCurrency;
              strproc_create.ParamByName('p_cci_value_discount').AsBCD              := memClientContractItencci_value_discount.AsCurrency;
              strproc_create.ParamByName('p_cci_value_total').AsBCD                 := memClientContractItencci_value_total.AsCurrency;
              strproc_create.ParamByName('p_cci_value_reseller').AsBCD              := memClientContractItencci_value_reseller.AsCurrency;
              strproc_create.ParamByName('p_cci_quant').AsBCD                       := memClientContractItencci_quant.AsCurrency;
              strproc_create.ExecProc;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
      end;
  end;
end;

end.
