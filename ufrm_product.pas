unit ufrm_product;

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
  cxCurrencyEdit,
  cxMemo,
  cxShellComboBox,
  cxBarEditItem,
  dxBarExtItems,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  dxLayoutControlAdapters,
  cxButtons,
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

  ufrm_form_default,

  u_class_rest_product, u_class_connection;

type
  Tfrm_product = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbComboxPro_type: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    loopComboxNCM: TcxLookupComboBox;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    looComboxUnidMedida: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    looCombxMarca: TcxLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    looComboxFornecedor: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    looComboxFabricante: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    looComboxClasse: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    looComboxSub_Classe: TcxLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    mempro_cod: TStringField;
    memmaterial_mat_cod: TStringField;
    memsupplier_sup_cod: TStringField;
    memproduct_class_prc_cod: TStringField;
    memproduct_class_sub_prs_cod: TStringField;
    memmanufacturer_man_cod: TStringField;
    membrand_bra_cod: TStringField;
    memncm_ncm_cod: TStringField;
    memproduct_unit_pru_cod: TStringField;
    mempro_id: TLongWordField;
    mempro_type: TStringField;
    mempro_name: TStringField;
    mempro_initials: TStringField;
    mempro_tag: TStringField;
    mempro_description: TMemoField;
    mempro_gender: TStringField;
    mempro_annotation: TMemoField;
    mempro_barcod: TStringField;
    mempro_barcod_manufacturer: TStringField;
    mempro_height: TBCDField;
    mempro_width: TBCDField;
    mempro_length: TBCDField;
    mempro_weight: TBCDField;
    mempro_liter: TBCDField;
    mempro_delivery_term: TIntegerField;
    mempro_status: TShortintField;
    mempro_deleted_at: TDateTimeField;
    mempro_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1pro_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_type: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_initials: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_tag: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_gender: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_barcod: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_barcod_manufacturer: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_height: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_width: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_length: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_weight: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_liter: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_delivery_term: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_status: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_deleted_at: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem11: TdxLayoutItem;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton_saveClick(Sender: TObject);
  private
    function GetProduct : Boolean;
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_product: Tfrm_product;

implementation

{$R *.dfm}

uses
  ufrm_dm;

procedure Tfrm_product.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  GetProduct;
  ds.DataSet.Last;
end;

procedure Tfrm_product.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  GetProduct;
end;

procedure Tfrm_product.dxBarButton_saveClick(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_product_update';
          strproc_update.Prepare;

          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update.ParamByName('p_ctr_token').AsString                  := Tconnection.ctr_token;
            strproc_update.ParamByName('p_ctr_cod').AsString                    := mempro_cod.AsString;
            strproc_update.ParamByName('p_material_mat_cod').AsString           := dbcmb_type.Text;
            strproc_update.ParamByName('p_supplier_sup_cod').AsString           := dbedt_last_name.Text;
            strproc_update.ParamByName('p_product_class_prc_cod').AsString      := dbedt_last_name.Text;
            strproc_update.ParamByName('p_product_class_sub_prs_cod').AsString  := dbedt_email.Text;
            strproc_update.ParamByName('p_manufacturer_man_cod').AsString       := dbedt_cpfcnpj.Text;
            strproc_update.ParamByName('p_brand_bra_cod').AsString              := dbedt_rgie.Text;
            strproc_update.ParamByName('p_ncm_ncm_cod').AsString                := dbedt_im.Text;
            strproc_update.ParamByName('p_product_unit_pru_cod').AsString       := dbedt_suframa.Text;
            strproc_update.ParamByName('p_pro_id').AsString                     := dbedt_add_bus_zipcode.Text;
            strproc_update.ParamByName('p_pro_type').AsString                   := dbedt_add_bus_address.Text;
            strproc_update.ParamByName('p_pro_name').AsString                   := dbedt_add_bus_number.Text;
            strproc_update.ParamByName('p_pro_initials').AsString               := dbedt_add_bus_street.Text;
            strproc_update.ParamByName('p_pro_tag').AsString                    := dbedt_add_bus_complement.Text;
            strproc_update.ParamByName('p_pro_description').AsString            := dbedt_add_bus_city.Text;
            strproc_update.ParamByName('p_pro_gender').AsString                 := dbedt_add_bus_state.Text;
            strproc_update.ParamByName('p_pro_annotation').AsString             := dbedt_add_bus_country.Text;
            strproc_update.ParamByName('p_pro_barcod').AsString                 := dbedt_add_bil_zipcode.Text;
            strproc_update.ParamByName('p_pro_barcod_manufacturer').AsString    := dbedt_add_bil_address.Text;
            strproc_update.ParamByName('p_pro_height').AsString                 := dbedt_add_bil_number.Text;
            strproc_update.ParamByName('p_pro_width').AsString                  := dbedt_add_bil_street.Text;
            strproc_update.ParamByName('p_pro_length').AsString                 := dbedt_add_bil_complement.Text;
            strproc_update.ParamByName('p_pro_weight').AsString                 := dbedt_add_bil_city.Text;
            strproc_update.ParamByName('p_pro_liter').AsString                  := dbedt_add_bil_state.Text;
            strproc_update.ParamByName('p_pro_delivery_term').AsString          := dbedt_add_bil_country.Text;
            strproc_update.ParamByName('p_pro_status').AsString                 := dbchk_status.Checked.ToInteger;
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
          strproc_create.StoredProcName := 'proc_product_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString                  := Tconnection.ctr_token;
          strproc_create.ParamByName('p_material_mat_cod').AsString           := dbcmb_type.Text;
          strproc_create.ParamByName('p_supplier_sup_cod').AsString           := dbedt_last_name.Text;
          strproc_create.ParamByName('p_product_class_prc_cod').AsString      := dbedt_last_name.Text;
          strproc_create.ParamByName('p_product_class_sub_prs_cod').AsString  := dbedt_email.Text;
          strproc_create.ParamByName('p_manufacturer_man_cod').AsString       := dbedt_cpfcnpj.Text;
          strproc_create.ParamByName('p_brand_bra_cod').AsString              := dbedt_rgie.Text;
          strproc_create.ParamByName('p_ncm_ncm_cod').AsString                := dbedt_im.Text;
          strproc_create.ParamByName('p_product_unit_pru_cod').AsString       := dbedt_suframa.Text;
          strproc_create.ParamByName('p_pro_id').AsString                     := dbedt_add_bus_zipcode.Text;
          strproc_create.ParamByName('p_pro_type').AsString                   := dbedt_add_bus_address.Text;
          strproc_create.ParamByName('p_pro_name').AsString                   := dbedt_add_bus_number.Text;
          strproc_create.ParamByName('p_pro_initials').AsString               := dbedt_add_bus_street.Text;
          strproc_create.ParamByName('p_pro_tag').AsString                    := dbedt_add_bus_complement.Text;
          strproc_create.ParamByName('p_pro_description').AsString            := dbedt_add_bus_city.Text;
          strproc_create.ParamByName('p_pro_gender').AsString                 := dbedt_add_bus_state.Text;
          strproc_create.ParamByName('p_pro_annotation').AsString             := dbedt_add_bus_country.Text;
          strproc_create.ParamByName('p_pro_barcod').AsString                 := dbedt_add_bil_zipcode.Text;
          strproc_create.ParamByName('p_pro_barcod_manufacturer').AsString    := dbedt_add_bil_address.Text;
          strproc_create.ParamByName('p_pro_height').AsString                 := dbedt_add_bil_number.Text;
          strproc_create.ParamByName('p_pro_width').AsString                  := dbedt_add_bil_street.Text;
          strproc_create.ParamByName('p_pro_length').AsString                 := dbedt_add_bil_complement.Text;
          strproc_create.ParamByName('p_pro_weight').AsString                 := dbedt_add_bil_city.Text;
          strproc_create.ParamByName('p_pro_liter').AsString                  := dbedt_add_bil_state.Text;
          strproc_create.ParamByName('p_pro_delivery_term').AsString          := dbedt_add_bil_country.Text;
          strproc_create.ParamByName('p_pro_status').AsString                 := dbchk_status.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_product.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_product.Destroy;
  frm_product := Nil;
end;

procedure Tfrm_product.FormCreate(Sender: TObject);
begin
  inherited;
  GetProduct;
end;

function Tfrm_product.GetProduct: Boolean;
begin
  try
    try
      Trest_product.v_method        := '/api/rest/products/Product';
      Trest_product.v_parameter     := Tconnection.ctr_token;
      Trest_product.GetProduct(mem);

      Result := True;
    except on E: Exception do
      Result := False;
    end;
  finally
  end;
end;

end.
