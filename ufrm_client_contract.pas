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
  cxDBNavigator,
  dxSkinTheBezier,
  cxMemo,

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
  u_class_rest_client_contract_iten,
  u_class_rest_proposal_contract, frxChart, frxDesgn, frxDBSet;

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
    memreseller_name: TStringField;
    cxGrid_1DBTableView1reseller_name: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    memclient_name: TStringField;
    cxGrid_1DBTableView1client_name: TcxGridDBColumn;
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
    memClientContractItenproduct_name: TStringField;
    griddbproduct_pro_cod: TcxGridDBColumn;
    memcli_ctr_value_reseller: TBCDField;
    memClientContractItencci_value_reseller: TBCDField;
    griddbcci_value_reseller: TcxGridDBColumn;
    memClientContractItencci_value_total: TBCDField;
    griddbcci_value_total: TcxGridDBColumn;
    memClientContractItencci_value_discount: TBCDField;
    griddbcci_value_discount: TcxGridDBColumn;
    dxLayoutGroup8: TdxLayoutGroup;
    dbedt_cci_value: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_cci_quant: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbedt_cci_value_discount: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbedt_cci_value_total: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    dbedt_cci_value_reseller: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    dblookupcmb_product_pro_cod: TcxDBLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem14: TdxLayoutItem;
    griddbcci_dt_registration: TcxGridDBColumn;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem15: TdxLayoutItem;
    memrequisition_req_cod: TStringField;
    dbedt_data_signature: TcxDBDateEdit;
    dxLayoutItem16: TdxLayoutItem;
    memcli_ctr_date_signature: TDateField;
    dxLayoutGroup9: TdxLayoutGroup;
    memcli_ctr_annotation: TStringField;
    dbmem_annotation: TcxDBMemo;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dblookupcmbReseller: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_value_reseller: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    memClientContractItenreseller_res_cod: TStringField;
    memClientContractItencci_annotation: TStringField;
    dblookupcmb_cci_reseller: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    dbmem_cci_annotation: TcxDBMemo;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    memcli_ctr_start_service: TDateField;
    dbedt_cli_ctr_start_service: TcxDBDateEdit;
    dxLayoutItem20: TdxLayoutItem;
    fdsClientContract: TfrxDBDataset;
    fdsClientContractIten: TfrxDBDataset;
    fdsReseller: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
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
  ufrm_dm, ufrm_dm_ds;

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
            strproc_update.ParamByName('p_client_cli_cod').AsString       := frm_dm_ds.memClientcli_cod.AsString;
            strproc_update.ParamByName('p_reseller_res_cod').AsString     := memreseller_res_cod.AsString;
            strproc_update.ParamByName('p_requisition_req_cod').AsString  := frm_dm_ds.memProposalContractreq_cod.AsString;
            strproc_update.ParamByName('p_cli_ctr_value_reseller').AsBCD  := dbedt_value_reseller.Value;
            strproc_update.ParamByName('p_cli_ctr_date_signature').AsDate := dbedt_data_signature.Date;
            strproc_update.ParamByName('p_cli_ctr_start_service').AsDate  := dbedt_cli_ctr_start_service.Date;
            strproc_update.ParamByName('p_cli_ctr_annotation').AsString   := dbmem_annotation.Lines.Text;
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
          strproc_create.ParamByName('p_client_cli_cod').AsString       := frm_dm_ds.memClientcli_cod.AsString;
          strproc_create.ParamByName('p_reseller_res_cod').AsString     := memReseller_res_cod.AsString;
          strproc_create.ParamByName('p_requisition_req_cod').AsString  := frm_dm_ds.memProposalContractreq_cod.AsString;
          strproc_create.ParamByName('p_cli_ctr_value_reseller').AsBCD  := dbedt_value_reseller.Value;
          strproc_create.ParamByName('p_cli_ctr_date_signature').AsDate := dbedt_data_signature.Date;
          strproc_create.ParamByName('p_cli_ctr_start_service').AsDate  := dbedt_cli_ctr_start_service.Date;
          strproc_create.ParamByName('p_cli_ctr_annotation').AsString   := dbmem_annotation.Lines.Text;
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

procedure Tfrm_client_contract.cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  strproc_create, strproc_update, strproc_delete : TFDStoredProc;
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
              strproc_update.ParamByName('p_product_pro_cod').AsString  := frm_dm_ds.memProductpro_cod.AsString;
              strproc_update.ParamByName('p_cci_value').AsBCD           := dbedt_cci_value.Value;
              strproc_update.ParamByName('p_cci_value_discount').AsBCD  := dbedt_cci_value_discount.Value;
              strproc_update.ParamByName('p_cci_value_total').AsBCD     := dbedt_cci_value_total.Value;
              strproc_update.ParamByName('p_cci_value_reseller').AsBCD  := dbedt_value_reseller.Value;
              strproc_update.ParamByName('p_cci_quant').AsBCD           := dbedt_cci_quant.Value;
              strproc_update.ParamByName('p_reseller_res_cod').AsString := frm_dm_ds.memResellerres_cod.AsString;
              strproc_update.ParamByName('p_cci_annotation').AsString   := dbmem_cci_annotation.Lines.Text;
              strproc_update.ExecProc;
              dblookupcmb_product_pro_cod.SetFocus
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
              strproc_create.ParamByName('p_product_pro_cod').AsString              := frm_dm_ds.memProductpro_cod.AsString;
              strproc_create.ParamByName('p_cci_value').AsBCD                       := dbedt_cci_value.Value;
              strproc_create.ParamByName('p_cci_value_discount').AsBCD              := dbedt_cci_value_discount.Value;
              strproc_create.ParamByName('p_cci_value_total').AsBCD                 := dbedt_cci_value_total.Value;
              strproc_create.ParamByName('p_cci_value_reseller').AsBCD              := dbedt_value_reseller.Value;
              strproc_create.ParamByName('p_cci_quant').AsBCD                       := dbedt_cci_quant.Value;
              strproc_create.ParamByName('p_reseller_res_cod').AsString             := frm_dm_ds.memResellerres_cod.AsString;
              strproc_create.ParamByName('p_cci_annotation').AsString               := dbmem_cci_annotation.Lines.Text;
              strproc_create.ExecProc;
              dblookupcmb_product_pro_cod.SetFocus
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
          strproc_delete.StoredProcName := 'proc_client_contract_iten_delete';
          strproc_delete.Prepare;

          strproc_delete.ParamByName('p_ctr_token').AsString  := Tconnection.ctr_token;
          strproc_delete.ParamByName('p_cci_cod').AsString    := memClientContractItencci_cod.AsString;
          strproc_delete.ExecProc;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_client_contract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_client_contract.Destroy;
  frm_client_contract := Nil;
end;

procedure Tfrm_client_contract.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_client.GetClient(frm_dm_ds.memClient);
  Trest_product.GetProduct(frm_dm_ds.memProduct);
  Trest_reseller.GetReseller(frm_dm_ds.memReseller);
  Trest_proposal_contract.GetProposalContract(frm_dm_ds.memProposalContract);
  Trest_client_contract.GetClientContract(mem);
  Trest_client_contract_iten.GetClientContractIten(memClientContractIten);
end;

end.
