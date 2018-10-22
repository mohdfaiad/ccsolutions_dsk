unit ufrm_exam;

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
  Vcl.DBCtrls,
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
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxMemo,
  cxShellComboBox,
  cxBarEditItem,
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

  dxLayoutLookAndFeels,

  QImport3Wizard,
  QExport4Dialog,

  frxClass,

  ufrm_form_default,

  u_class_connection,
  u_class_rest_product,
  u_class_rest_material;

type
  Tfrm_exam = class(Tfrm_form_default)
    cxGrid_1DBTableView1pro_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_type: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_tag: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_gender: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn;
    dbedt_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_tag: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbcmb_gender: TcxDBComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dbcmb_type: TcxDBComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dbedt_initials: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dbmem_description: TcxDBMemo;
    dxLayoutItem11: TdxLayoutItem;

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
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    dblookupcmb_mat_cod: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxGrid_1DBTableView1pro_status: TcxGridDBColumn;
    cxGrid_1DBTableView1material_name: TcxGridDBColumn;
    memmaterial_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_saveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_exam: Tfrm_exam;

implementation

{$R *.dfm}

uses
  ufrm_dm;

procedure Tfrm_exam.Action_saveExecute(Sender: TObject);
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
            strproc_update.ParamByName('p_pro_cod').AsString                    := mempro_cod.AsString;
            strproc_update.ParamByName('p_material_mat_cod').AsString           := memmaterial_mat_cod.AsString;
            strproc_update.ParamByName('p_supplier_sup_cod').AsString           := ''; //dbedt_last_name.Text;
            strproc_update.ParamByName('p_product_class_prc_cod').AsString      := ''; //dbedt_last_name.Text;
            strproc_update.ParamByName('p_product_class_sub_prs_cod').AsString  := ''; //dbedt_email.Text;
            strproc_update.ParamByName('p_manufacturer_man_cod').AsString       := ''; //dbedt_cpfcnpj.Text;
            strproc_update.ParamByName('p_brand_bra_cod').AsString              := ''; //dbedt_rgie.Text;
            strproc_update.ParamByName('p_ncm_ncm_cod').AsString                := ''; //dbedt_im.Text;
            strproc_update.ParamByName('p_product_unit_pru_cod').AsString       := ''; //dbedt_suframa.Text;
            strproc_update.ParamByName('p_pro_type').AsString                   := dbcmb_type.Text;
            strproc_update.ParamByName('p_pro_name').AsString                   := dbedt_name.Text;
            strproc_update.ParamByName('p_pro_initials').AsString               := dbedt_initials.Text;
            strproc_update.ParamByName('p_pro_tag').AsString                    := dbedt_tag.Text;
            strproc_update.ParamByName('p_pro_description').AsMemo              := ''; //dbmem_description.Text;
            strproc_update.ParamByName('p_pro_gender').AsString                 := dbcmb_gender.Text;
            strproc_update.ParamByName('p_pro_annotation').AsMemo               := dbmem_description.Text;
            strproc_update.ParamByName('p_pro_barcod').AsString                 := ''; //dbedt_barcod.Text;
            strproc_update.ParamByName('p_pro_barcod_manufacturer').AsString    := ''; //dbedt_barcod_manufacturer.Text;
            strproc_update.ParamByName('p_pro_height').AsBCD                    := 0; //dbedt_height.Value;
            strproc_update.ParamByName('p_pro_width').AsBCD                     := 0; //dbedt_width.Value;
            strproc_update.ParamByName('p_pro_length').AsBCD                    := 0; // dbedt_length.Value;
            strproc_update.ParamByName('p_pro_weight').AsBCD                    := 0; //dbedt_weight.Value;
            strproc_update.ParamByName('p_pro_liter').AsBCD                     := 0; //dbedt_liter.Value;
            strproc_update.ParamByName('p_pro_delivery_term').AsInteger         := 0; //dbedt_add_bil_country.Text;
            strproc_update.ParamByName('p_pro_status').AsShortInt               := dbchk_status.Checked.ToInteger;
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
          strproc_create.ParamByName('p_material_mat_cod').AsString           := memmaterial_mat_cod.AsString;
          strproc_create.ParamByName('p_supplier_sup_cod').AsString           := ''; //dbedt_last_name.Text;
          strproc_create.ParamByName('p_product_class_prc_cod').AsString      := ''; //dbedt_last_name.Text;
          strproc_create.ParamByName('p_product_class_sub_prs_cod').AsString  := ''; //dbedt_email.Text;
          strproc_create.ParamByName('p_manufacturer_man_cod').AsString       := ''; //dbedt_cpfcnpj.Text;
          strproc_create.ParamByName('p_brand_bra_cod').AsString              := ''; //dbedt_rgie.Text;
          strproc_create.ParamByName('p_ncm_ncm_cod').AsString                := ''; //dbedt_im.Text;
          strproc_create.ParamByName('p_product_unit_pru_cod').AsString       := ''; //dbedt_suframa.Text;
          strproc_create.ParamByName('p_pro_type').AsString                   := dbcmb_type.Text;
          strproc_create.ParamByName('p_pro_name').AsString                   := dbedt_name.Text;
          strproc_create.ParamByName('p_pro_initials').AsString               := dbedt_initials.Text;
          strproc_create.ParamByName('p_pro_tag').AsString                    := dbedt_tag.Text;
          strproc_create.ParamByName('p_pro_description').AsMemo              := ''; //dbmem_description.Text;
          strproc_create.ParamByName('p_pro_gender').AsString                 := dbcmb_gender.Text;
          strproc_create.ParamByName('p_pro_annotation').AsMemo               := dbmem_description.Text;
          strproc_create.ParamByName('p_pro_barcod').AsString                 := ''; //dbedt_barcod.Text;
          strproc_create.ParamByName('p_pro_barcod_manufacturer').AsString    := ''; //dbedt_barcod_manufacturer.Text;
          strproc_create.ParamByName('p_pro_height').AsBCD                    := 0; //dbedt_height.Value;
          strproc_create.ParamByName('p_pro_width').AsBCD                     := 0; //dbedt_width.Value;
          strproc_create.ParamByName('p_pro_length').AsBCD                    := 0; // dbedt_length.Value;
          strproc_create.ParamByName('p_pro_weight').AsBCD                    := 0; //dbedt_weight.Value;
          strproc_create.ParamByName('p_pro_liter').AsBCD                     := 0; //dbedt_liter.Value;
          strproc_create.ParamByName('p_pro_delivery_term').AsInteger         := 0; //dbedt_add_bil_country.Text;
          strproc_create.ParamByName('p_pro_status').AsShortInt               := dbchk_status.Checked.ToInteger;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_exam.afterInsert;
begin
  ShowMessage('Registro Inserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_product.GetProduct(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_exam.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_product.GetProduct(mem);
end;

procedure Tfrm_exam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_exam.Destroy;
  frm_exam := Nil;
end;

procedure Tfrm_exam.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_product.GetProduct(mem);
//  Trest_material.GetMaterial(memMaterial)
end;

end.
