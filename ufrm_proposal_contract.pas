unit ufrm_proposal_contract;

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
  cxDBNavigator,
  cxLookupEdit,
  cxDBLookupEdit,
  cxCurrencyEdit,
  dxBevel,
  dxSkinTheBezier,

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
  u_class_rest_product,
  u_class_rest_client,
  u_class_rest_proposal_contract,
  u_class_rest_proposal_contract_iten;

type
  Tfrm_proposal_contract = class(Tfrm_form_default)
    memreq_cod: TStringField;
    memclient_cli_cod: TStringField;
    memreq_id: TLongWordField;
    memreq_deleted_at: TDateTimeField;
    memreq_dt_registration: TDateTimeField;
    memProposalContractIten: TFDMemTable;
    dsProposalContractIten: TDataSource;
    memProposalContractItenrequisition_req_cod: TStringField;
    memProposalContractItenproduct_pro_cod: TStringField;
    memProposalContractItenrei_value: TBCDField;
    memProposalContractItenrei_quant: TBCDField;
    memProposalContractItenrei_discount: TBCDField;
    memProposalContractItenrei_value_total: TBCDField;
    memProposalContractItenrei_deleted_at: TDateTimeField;
    memProposalContractItenrei_dt_registration: TDateTimeField;
    dxBevel1: TdxBevel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid_1DBTableView1req_id: TcxGridDBColumn;
    cxGrid_1DBTableView1req_dt_registration: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem4: TdxLayoutItem;
    gridview: TcxGridDBTableView;
    gridlvl: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_value: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_quant: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbedt_discount: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbedt_value_total: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    dblookupcmb_product: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    gridviewrei_value: TcxGridDBColumn;
    gridviewrei_quant: TcxGridDBColumn;
    gridviewrei_discount: TcxGridDBColumn;
    gridviewrei_value_total: TcxGridDBColumn;
    memProposalContractItenproduct_cod: TStringField;
    gridviewproduct_cod: TcxGridDBColumn;
    memclient_first_name: TStringField;
    cxGrid_1DBTableView1client_first_name: TcxGridDBColumn;
    memProposalContractItenrei_cod: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    procedure afterInsert;
    procedure afterUpdate;

  public

  end;

var
  frm_proposal_contract: Tfrm_proposal_contract;

implementation

uses
  ufrm_dm,
  ufrm_dm_ds;

{$R *.dfm}

procedure Tfrm_proposal_contract.Action_saveExecute(Sender: TObject);
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
          strproc_update.StoredProcName := 'proc_proposal_contract_update';
          strproc_update.Prepare;

          if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
            strproc_update.ParamByName('p_ctr_token').AsString                  := Tconnection.ctr_token;
            strproc_update.ParamByName('p_req_cod').AsString                    := memreq_cod.AsString;
            strproc_update.ParamByName('p_client_cli_cod').AsString             := memclient_cli_cod.AsString;
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
          strproc_create.StoredProcName := 'proc_proposal_contract_create';
          strproc_create.Prepare;

          strproc_create.ParamByName('p_ctr_token').AsString                  := Tconnection.ctr_token;
          strproc_create.ParamByName('p_client_cli_cod').AsString             := frm_dm_ds.memClientcli_cod.AsString;
          strproc_create.ExecProc;

          afterInsert;
        except on E: Exception do
          ShowMessage('Erro: ' + E.Message);
        end;
      finally
      end;
  end;
end;

procedure Tfrm_proposal_contract.afterInsert;
begin
  ShowMessage('Registro Iserido com Sucesso');
  cxTabSheet_3.Show;
  Trest_proposal_contract.GetProposalContract(mem);
  ds.DataSet.Last;
end;

procedure Tfrm_proposal_contract.afterUpdate;
begin
  ShowMessage('Registro Atualizado com sucesso');
  cxTabSheet_3.Show;
  Trest_proposal_contract.GetProposalContract(mem);
end;

procedure Tfrm_proposal_contract.cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  inherited;
  case AButtonIndex of
    NBDI_POST:
      case dsProposalContractIten.State of
        dsEdit:
          try
            try
              strproc_update := TFDStoredProc.Create(Self);
              strproc_update.Connection := frm_dm.connCCS;
              strproc_update.StoredProcName := 'proc_proposal_contract_iten_update';
              strproc_update.Prepare;

              strproc_update.ParamByName('p_ctr_token').AsString            := Tconnection.ctr_token;
              strproc_update.ParamByName('p_rei_cod').AsString              := memProposalContractItenrei_cod.AsString;
              strproc_update.ParamByName('p_product_pro_cod').AsString      := memProposalContractItenproduct_pro_cod.AsString;
              strproc_update.ParamByName('p_rei_value').AsBCD               := dbedt_value.Value;
              strproc_update.ParamByName('p_rei_quant').AsBCD               := dbedt_quant.Value;
              strproc_update.ParamByName('p_rei_discount').AsBCD            := dbedt_discount.Value;
              strproc_update.ParamByName('p_rei_value_total').AsBCD         := dbedt_value_total.Value;
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
              strproc_create.StoredProcName := 'proc_proposal_contract_iten_create';
              strproc_create.Prepare;

              strproc_create.ParamByName('p_ctr_token').AsString            := Tconnection.ctr_token;
              strproc_create.ParamByName('p_requisition_req_cod').AsString  := memProposalContractItenrequisition_req_cod.AsString;
              strproc_create.ParamByName('p_product_pro_cod').AsString      := memProposalContractItenproduct_pro_cod.AsString;
              strproc_create.ParamByName('p_rei_value').AsBCD               := dbedt_value.Value;
              strproc_create.ParamByName('p_rei_quant').AsBCD               := dbedt_quant.Value;
              strproc_create.ParamByName('p_rei_discount').AsBCD            := dbedt_discount.Value;
              strproc_create.ParamByName('p_rei_value_total').AsBCD         := dbedt_value_total.Value;
              strproc_create.ExecProc;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
      end;
  end;
end;

procedure Tfrm_proposal_contract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_proposal_contract.Destroy;
  frm_proposal_contract := Nil;
end;

procedure Tfrm_proposal_contract.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_client.GetClient(frm_dm_ds.memClient);
  Trest_product.GetProduct(frm_dm_ds.memProduct);
  Trest_proposal_contract.GetProposalContract(mem);
  Trest_proposal_contract_iten.GetProposalContractIten(memProposalContractIten);
end;

end.
