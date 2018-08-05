unit ufrm_client;

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
  cxButtonEdit,
  cxImage,
  cxShellComboBox,
  cxBarEditItem,
  dxBarExtItems,
  dxLayoutControlAdapters,
  cxButtons,
  cxDBLookupComboBox,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList,

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
  ACBrSocket,
  ACBrCEP,

  QExport4Dialog,
  QImport3Wizard,

  frxClass,
  frxDBSet,

  ufrm_main_default,
  ufrm_form_default;

type
  Tfrm_client = class(Tfrm_form_default)
    qrycli_first_name: TStringField;
    qrycli_last_name: TStringField;
    qrycli_email: TStringField;
    edtClient: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    cxDBTextEdit26: TcxDBTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    cxDBTextEdit27: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem31: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBButtonEdit3: TcxDBButtonEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    qrycli_cpfcnpj: TStringField;
    qrycli_suframa: TStringField;
    edt_cpfcnpj: TcxDBTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    cxDBTextEdit28: TcxDBTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem36: TdxLayoutItem;
    qrycli_phone1: TStringField;
    qrycli_phone2: TStringField;
    qrycli_phone3: TStringField;
    qrycli_rgie: TStringField;
    qrycli_dt_birthopen: TDateField;
    qrycli_phone4: TStringField;
    qrycli_dt_registration: TDateTimeField;
    qrycli_type: TStringField;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    qrycli_contact: TStringField;
    qrycli_add_bus_zipcode: TStringField;
    qrycli_add_bus_address: TStringField;
    qrycli_add_bus_number: TStringField;
    qrycli_add_bus_street: TStringField;
    qrycli_add_bus_complement: TStringField;
    qrycli_add_bus_city: TStringField;
    qrycli_add_bus_state: TStringField;
    qrycli_add_bus_country: TStringField;
    qrycli_add_bil_zipcode: TStringField;
    qrycli_add_bil_address: TStringField;
    qrycli_add_bil_number: TStringField;
    qrycli_add_bil_street: TStringField;
    qrycli_add_bil_complement: TStringField;
    qrycli_add_bil_city: TStringField;
    qrycli_add_bil_state: TStringField;
    qrycli_add_bil_country: TStringField;
    qrycli_add_del_zipcode: TStringField;
    qrycli_add_del_address: TStringField;
    qrycli_add_del_number: TStringField;
    qrycli_add_del_street: TStringField;
    qrycli_add_del_complement: TStringField;
    qrycli_add_del_city: TStringField;
    qrycli_add_del_state: TStringField;
    qrycli_add_del_country: TStringField;
    qrycli_day_maturity: TIntegerField;
    cxGrid_1DBTableView1cli_type: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_email: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_cpfcnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_rgie: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_im: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_dt_birthopen: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_day_maturity: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBTextEdit38: TcxDBTextEdit;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxBarButton5: TdxBarButton;
    Action_consult_cpf: TAction;
    Action_consult_cnpj: TAction;
    tabTelefonia: TcxTabSheet;
    Label1: TLabel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutGroup11: TdxLayoutGroup;
    qrycli_status: TStringField;
    qry_insurance: TFDQuery;
    qry_insuranceins_first_name: TStringField;
    tabLaboratorio: TcxTabSheet;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutGroup12: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem43: TdxLayoutItem;
    qry_client_insirance: TFDQuery;
    ds_client_insirance: TDataSource;
    ds_insurance: TDataSource;
    qrycontract_ctr_cod: TBytesField;
    qrytable_price_tbp_cod: TBytesField;
    qry_insuranceins_id: TLongWordField;
    qry_insurancecontract_ctr_cod: TBytesField;
    qry_client_insirancecin_deleted_at: TDateTimeField;
    qry_client_insirancecin_dt_registration: TDateTimeField;
    qry_client_sippulse: TFDQuery;
    qry_client_sippulsecls_cod: TBytesField;
    qry_client_sippulsecls_account_sippulse: TStringField;
    qry_client_sippulsecls_deleted_at: TDateTimeField;
    qry_client_sippulsecls_dt_registration: TDateTimeField;
    dxLayoutGroup13: TdxLayoutGroup;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutItem41: TdxLayoutItem;
    ds_client_sippulse: TDataSource;
    cxGrid2DBTableView1cls_account_sippulse: TcxGridDBColumn;
    cxGrid2DBTableView1cls_dt_registration: TcxGridDBColumn;
    cxEditCodsippulse: TcxTextEdit;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    cxEditCodastpp: TcxTextEdit;
    dxLayoutItem44: TdxLayoutItem;
    ds_client_astpp: TDataSource;
    qry_client_astpp: TFDQuery;
    qry_client_astppcla_cod: TBytesField;
    qry_client_astppcla_account_astpp: TStringField;
    qry_client_astppcla_deleted_at: TDateTimeField;
    qry_client_astppcla_dt_registration: TDateTimeField;
    dxLayoutGroup15: TdxLayoutGroup;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutItem46: TdxLayoutItem;
    qry_client_sippulseclient_cli_cod: TBytesField;
    cxGrid3DBTableView1cla_account_astpp: TcxGridDBColumn;
    cxGrid3DBTableView1cla_dt_registration: TcxGridDBColumn;
    qry_client_astppclient_cli_cod: TBytesField;
    qrycli_cod: TBytesField;
    qrycli_id: TLongWordField;
    qrycli_im: TStringField;
    qrycli_deleted_at: TDateTimeField;
    qryCodClient: TStringField;
    qry_client_insiranceclient_cli_cod: TBytesField;
    qry_client_insirancecodCliInsirance: TStringField;
    qry_client_insirancecin_cod: TBytesField;
    qry_client_insiranceinsurance_ins_cod: TBytesField;
    qry_client_insirancecin_id: TLongWordField;
    qry_insuranceins_cod: TBytesField;
    qry_insurancetable_price_tbp_cod: TBytesField;
    qry_insurancecodInsurance: TStringField;
    qry_client_insiranceClientCod: TStringField;
    qryClientCod: TStringField;
    qry_client_insiranceins_first_name: TStringField;
    cxGrid1DBTableView1cin_id: TcxGridDBColumn;
    cxGrid1DBTableView1ins_first_name: TcxGridDBColumn;
    cxGrid1DBTableView1cin_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1Column1: TcxGridDBColumn;
    cxDBImage1: TcxDBImage;
    dxLayoutItem47: TdxLayoutItem;
    qrycli_image1: TBlobField;
    PopupMenu1: TPopupMenu;
    Localizar1: TMenuItem;
    frx_db_client: TfrxDBDataset;
    frx_db_client_insirance: TfrxDBDataset;
    acbr_cep: TACBrCEP;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_consult_cnpjExecute(Sender: TObject);
    procedure Action_consult_cpfExecute(Sender: TObject);
    procedure changeType;
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxTabSheet_addressShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qry_client_insiranceAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure edt_cpfcnpjExit(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure cxEditCodsippulseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxEditCodastppKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tabLaboratorioShow(Sender: TObject);
    procedure cxGrid1DBTableView1insurance_ins_idPropertiesCloseUp(Sender: TObject);
    procedure qry_client_insiranceBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1ins_first_namePropertiesCloseUp(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
  private
    { Private declarations }
    cep : Integer;
    cli_cod, cls_cod, cin_cod, cpf_cnpj : string;
    procedure limpaCache(Sender: TObject);
  public
    { Public declarations }
    procedure AtualizarGrid;
    procedure AtualizarConvenios;
    procedure ExibirConvenios;
  end;

var
  frm_client: Tfrm_client;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_consult_cnpj, ufrm_consult_cpf;

procedure Tfrm_client.ACBrCEP_1BuscaEfetuada(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  if cep = 1 then begin
    for i := 0 to acbr_cep.Enderecos.Count -1 do begin
     qrycli_add_bus_address.AsString    := acbr_cep.Enderecos[i].Logradouro;
     qrycli_add_bus_street.AsString     := acbr_cep.Enderecos[i].Bairro;
     qrycli_add_bus_complement.AsString := acbr_cep.Enderecos[i].Complemento;
     qrycli_add_bus_city.AsString     	:= acbr_cep.Enderecos[i].Municipio;
     qrycli_add_bus_state.AsString      := acbr_cep.Enderecos[i].UF;
     qrycli_add_bus_country.AsString    := 'BRASIL';
     cxDBTextEdit22.SetFocus;
    end;
  end;

  if cep = 2 then begin
    for i := 0 to acbr_cep.Enderecos.Count -1 do begin
      qrycli_add_bil_address.AsString    := acbr_cep.Enderecos[i].Logradouro;
      qrycli_add_bil_street.AsString     := acbr_cep.Enderecos[i].Bairro;
      qrycli_add_bil_complement.AsString := acbr_cep.Enderecos[i].Complemento;
      qrycli_add_bus_city.AsString     	 := acbr_cep.Enderecos[i].Municipio;
      qrycli_add_bil_city.AsString       := acbr_cep.Enderecos[i].UF;
      qrycli_add_bil_country.AsString    := 'BRASIL';
      cxDBTextEdit14.SetFocus;
    end;
  end;

  if cep = 3 then begin
    for i := 0 to acbr_cep.Enderecos.Count -1 do begin
      qrycli_add_del_address.AsString    := acbr_cep.Enderecos[i].Logradouro;
      qrycli_add_del_street.AsString     := acbr_cep.Enderecos[i].Bairro;
      qrycli_add_del_complement.AsString := acbr_cep.Enderecos[i].Complemento;
      qrycli_add_del_city.AsString     	 := acbr_cep.Enderecos[i].Municipio;
      qrycli_add_bil_city.AsString       := acbr_cep.Enderecos[i].UF;
      qrycli_add_del_country.AsString    := 'BRASIL';
      cxDBTextEdit6.SetFocus;
    end;
  end;
 end;

procedure Tfrm_client.Action_cancelExecute(Sender: TObject);
begin
  inherited;
//  if (qrycli_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
//    with frm_dm.qry,sql do begin
//      Close;
//      Text := ' delete from client ' +
//             ' where cli_cod = ' + cli_cod;
//      Prepare;
//      ExecSQL;
//
//      qry.Close;
//      qry.sql.text:= ' select client.*,concat(''0x'',hex(cli_cod))as CodClient, hex(cli_cod)as ClientCod from client' +
//                     ' where contract_ctr_cod =:ctr_cod and cli_deleted_at is null ';
//      qry.ParamByName('CTR_COD').Value := frm_dm.qry_contractctr_cod.Value;
//      qry.Prepare;
//      qry.open;
//    end;
end;

procedure Tfrm_client.Action_consult_cnpjExecute(Sender: TObject);
begin
  inherited;
  frm_consult_cnpj := Tfrm_consult_cnpj.Create(Self);
  frm_consult_cnpj.Show;
end;

procedure Tfrm_client.Action_consult_cpfExecute(Sender: TObject);
begin
  inherited;
  frm_consult_cpf := Tfrm_consult_cpf.Create(Self);
  frm_consult_cpf.Show;
end;

procedure Tfrm_client.Action_deleteExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
    qry.Edit;
    qrycli_deleted_at.AsDateTime:=Now;
    qry.Post;
    qry.ApplyUpdates(0);

    qry.Close;
    qry.sql.text:= ' select client.*,concat(''0x'',hex(cli_cod)) from client ' +
                   ' where cli_deleted_at is null ';
    qry.Prepare;
    qry.open;
  end;
 end;

procedure Tfrm_client.Action_editExecute(Sender: TObject);
begin
  if qry.IsEmpty then
    exit;

  inherited;
    cli_cod:=qryCodClient.AsString;
    cpf_cnpj:=qrycli_cpfcnpj.AsString;
end;

procedure Tfrm_client.Action_saveExecute(Sender: TObject);
begin
//  if ((trim(edt_cpfcnpj.Text)<> '') and (qrycli_id.AsInteger = 0)) or (cpf_cnpj <> edt_cpfcnpj.Text) then begin
//    with frm_dm.qry,sql do begin
//      close;
//      text:=' select * from client ' +
//            ' where cli_cpfcnpj = ' + edt_cpfcnpj.Text;
//      prepare;
//      open;
//
//      if not IsEmpty then begin
//        Application.MessageBox(PWideChar('Já existe um cliente com esse CPF/CNPJ cadastrado no sistema!' + #13+
//                                         'Cliente: '+ FieldByName('cli_first_name').AsString + #13 +
//                                         'CPF/CNPJ: ' + FieldByName('cli_cpfcnpj').AsString + #13 +
//                                         'O sistema irá localizar o cliente agora'),'CLIENTE',MB_OK + MB_ICONWARNING);
//        qry.Locate('cli_cpfcnpj',edt_cpfcnpj.Text,[]);
//        qry.Edit;
//        Exit;
//      end;
//    end;
//  end;
//
//  if trim(edtClient.Text) = ''  then begin
//   Application.MessageBox('Nome do Cliente não informado!','Cadastro de Empresa', MB_OK + MB_ICONINFORMATION);
//   exit;
//  end;
//
//  inherited;
//
//  if ds.DataSet.State in [dsEdit] then
//    Exit;
//
//  with frm_dm.qry,sql do begin
//      close;
//      Text:= ' select case when max(cli_id) is null then 1 ' +
//          '      else (max(cli_id) + 1) end as maxID from client '+
//          ' where contract_ctr_cod = unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')';
//      Prepare;
//      Open;
//      if not (qry.State in [dsInsert,dsEdit])  then
//        qry.Edit;
//
//      if qrycli_id.AsInteger = 0 then
//        qrycli_id.AsInteger:=Fields[0].AsInteger;
//
//
//        qry.Post;
//        qry.ApplyUpdates(0);
//    end;
//
//   AtualizarGrid;

end;


procedure Tfrm_client.AtualizarConvenios;
begin

  //Select para Atualizadr a Grid de Convenios do cliente----------------
   qry_client_insirance.Close;
   qry_client_insirance.sql.Text:= ' select client_insurance.*, ins_first_name, hex(cin_cod) as codCliInsirance,  '+
                                   ' hex(client_cli_cod)as ClientCod from client_insurance                        '+
                                   ' left join insurance on insurance_ins_cod = ins_cod                           '+
                                   ' where client_cli_cod =:cli_cod and cin_deleted_at is null ';
   qry_client_insirance.ParamByName('CLI_COD').Value :=qrycli_cod.Value;
   qry_client_insirance.prepare;
   qry_client_insirance.open;

end;

procedure Tfrm_client.AtualizarGrid;
begin
   qry.Close;
   qry.SQL.Text:= ' select client.*,concat(''0x'',hex(cli_cod))as CodClient, hex(cli_cod)as ClientCod from client '+
                 ' where contract_ctr_cod =:ctr_cod and cli_deleted_at is null ';
//   qry.ParamByName('CTR_COD').Value := frm_dm.qry_contractctr_cod.Value;
   qry.Prepare;
   qry.open;
end;

procedure Tfrm_client.changeType;
begin
  if cxDBComboBox1.ItemIndex = 0 then
  begin
    dxLayoutItem6.Caption := 'Dt. Nasc.';
    dxLayoutItem3.Caption := 'Nome';
    dxLayoutItem4.Caption := 'Sobrenome';
    dxLayoutItem32.Caption := 'CPF';
    dxLayoutItem33.Caption := 'RG';
    dxLayoutItem34.Visible := False;
    dxLayoutItem35.Visible := False;

  end
  else
  begin
    dxLayoutItem6.Caption := 'Dt. Aber.';
    dxLayoutItem3.Caption := 'Razão';
    dxLayoutItem4.Caption := 'Fantasia';
    dxLayoutItem32.Caption := 'CNPJ';
    dxLayoutItem33.Caption := 'IE';
    dxLayoutItem34.Visible := True;
    dxLayoutItem35.Visible := True;
  end;
end;

procedure Tfrm_client.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  cep:=2;
  acbr_cep.BuscarPorCEP(cxDBButtonEdit1.Text);
end;

procedure Tfrm_client.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 cep:=1;
 acbr_cep.BuscarPorCEP(cxDBButtonEdit2.Text);
end;

procedure Tfrm_client.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  cep:=3;
  acbr_cep.BuscarPorCEP(cxDBButtonEdit3.Text);
end;

procedure Tfrm_client.cxDBComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  changeType;
end;

procedure Tfrm_client.edt_cpfcnpjExit(Sender: TObject);
//var
//x:string;
begin
  inherited;
  // -----Irmão eu Sivaney --- pois esse código para o botão salvar-- e fiz umas adaptações---
// with frm_dm.qry,sql do
//  begin
//   close;
//   text:=' select * from client '+
//         ' where cli_cpfcnpj = ' + qrycli_cpfcnpj.AsString;
//   prepare;
//   open;
//
//   if ((edtClient.Text <> FieldByName('cli_first_name').AsString) and (edt_cpfcnpj.Text = FieldByName('cli_cpfcnpj').AsString)) then
//    begin
//     Application.MessageBox('Já existe um cliente com esse CPF/CNPJ cadastrado no sistema!','CLIENTE',MB_OK + MB_ICONWARNING);
//     x:=qrycli_cpfcnpj.AsString;
//
//     if qrycli_id.AsInteger = 0 then
//      begin
//       Close;
//       Text:= ' delete from client ' +
//              ' where cli_cod = ' + cli_cod;
//       Prepare;
//       ExecSQL;
//
//       qry.Cancel;
//       qry.sql.Text:=' select client.*,concat(''0x'',hex(cli_cod)) from client ' +
//                     ' where cli_cpfcnpj = ' + x;
//       qry.Prepare;
//       qry.Open;
//       qry.Edit;
//      end;
//    end;
//  end;
end;

procedure Tfrm_client.ExibirConvenios;
begin
   qry_insurance.Close;
   qry_insurance.SQL.Text := ' select ins_cod, concat(''0x'',hex(ins_cod)) as codInsurance, table_price_tbp_cod, ins_id,contract_ctr_cod,ins_first_name from insurance  ' +
                             ' where contract_ctr_cod = :ctr_cod and ins_deleted_at is null                               '+
                             ' order by ins_first_name  ';
//   qry_insurance.ParamByName('CTR_COD').Value := frm_dm.qry_contractctr_cod.Value;
   qry_insurance.Prepare;
   qry_insurance.Open;
end;

procedure Tfrm_client.cxEditCodastppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
// if key = 13 then
//if Application.MessageBox('Deseja associar esse código Astpp para este cliente?',
//'CLIENTE', MB_YESNO + MB_ICONQUESTION) = mrYes       then
// begin
// With frm_dm.qry,sql do
//  begin
//   close;
//   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
//   prepare;
//   open;
//
//   cls_cod:=Fields[0].AsString;
//
//   Close;
//   Text:='insert into client_astpp (cla_cod,client_cli_cod,cla_account_astpp,cla_dt_registration) ' +
//         ' select '+ cls_cod + ',' +  cli_cod + ',' +  QuotedStr(cxEditCodastpp.Text) + ', now()' ;
//   Prepare;
//   ExecSQL;
//  end;
//
//  qry_client_astpp.Close;
//  qry_client_astpp.Prepare;
//  qry_client_astpp.Open;
//  cxEditCodastpp.Clear;
//  cxEditCodastpp.SetFocus;
//end;
end;

procedure Tfrm_client.cxEditCodsippulseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
// if key = 13 then
//if Application.MessageBox('Deseja associar esse código sippulse para este cliente?',
//'CLIENTE', MB_YESNO + MB_ICONQUESTION) = mrYes       then
// begin
// With frm_dm.qry,sql do
//  begin
//   close;
//   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
//   prepare;
//   open;
//
//   cls_cod:=Fields[0].AsString;
//
//   Close;
//   Text:='insert into client_sippulse (cls_cod,client_cli_cod,cls_account_sippulse,cls_dt_registration) ' +
//         ' select '+ cls_cod + ',' +  cli_cod + ',' +  QuotedStr(cxEditCodsippulse.Text) + ', now()' ;
//   Prepare;
//   ExecSQL;
//  end;
//
//  qry_client_sippulse.Close;
//  qry_client_sippulse.Prepare;
//  qry_client_sippulse.Open;
//  cxEditCodsippulse.Clear;
//  cxEditCodsippulse.SetFocus;
//end;
end;

procedure Tfrm_client.cxGrid1DBTableView1insurance_ins_idPropertiesCloseUp(Sender: TObject);
begin
  inherited;
//   with frm_dm.qry3,sql do
//     begin
//       close;
//       Text :=' select client_insurance.*, hex(cin_cod) as codCliInsirance from client_insurance            ' +
//              ' where client_cli_cod =:cli_cod and insurance_ins_cod =:ins_cod and cin_deleted_at is null ';
//       ParamByName('cli_cod').Value := cli_cod;
//       ParamByName('ins_cod').Value := qry_insuranceins_cod.Value;
//       Prepare;
//       Open;
//
//       if RecordCount >0 then
//        begin
//          Application.MessageBox('A Convênio selecionada já existe para este cliente !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
//
//           with frm_dm.qry,sql do
//           begin
//            Close;
//            Text:= ' delete from client_insurance ' +
//                   ' where cin_cod = ' + cin_cod;
//            Prepare;
//            ExecSQL;
//           end;
//        end else
//        begin
//          if not (qry_client_insirance.State in [dsEdit]) then
//           qry_client_insirance.Edit;
//           qry_client_insiranceinsurance_ins_cod.Value := qry_insuranceins_cod.Value;
//           qry_client_insirance.Post;
//           qry_client_insirance.ApplyUpdates(0);
//        end;
//
//     end;
//    //--------------------------------------
//    AtualizarConvenios;

end;

procedure Tfrm_client.cxGrid1DBTableView1ins_first_namePropertiesCloseUp(Sender: TObject);
begin
  inherited;
//      with frm_dm.qry3,sql do
//     begin
//       close;
//       Text :=' select * from client_insurance            ' +
//              ' where client_cli_cod ='+qryCodClient.AsString+' and insurance_ins_cod = '+qry_insurancecodInsurance.AsString+' and cin_deleted_at is null ';
//       Prepare;
//       Open;
//
//       if RecordCount >0 then
//        begin
//          Application.MessageBox('A Convênio selecionada já existe para este cliente !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
//
//           with frm_dm.qry,sql do
//           begin
//            Close;
//            Text:= ' delete from client_insurance ' +
//                   ' where cin_cod = ' + cin_cod;
//            Prepare;
//            ExecSQL;
//           end;
//        end else
//        begin
//          if not (qry_client_insirance.State in [dsEdit]) then
//           qry_client_insirance.Edit;
//           qry_client_insiranceinsurance_ins_cod.Value := qry_insuranceins_cod.Value;
//           qry_client_insirance.Post;
//           qry_client_insirance.ApplyUpdates(0);
//        end;
//
//     end;
//    //--------------------------------------
//    AtualizarConvenios;
end;

procedure Tfrm_client.cxTabSheet_addressShow(Sender: TObject);
begin
  inherited;
  dxLayoutControl1Group_Root.ItemIndex:=0;
end;

procedure Tfrm_client.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_client.Destroy;
  frm_client := Nil;
end;

procedure Tfrm_client.FormCreate(Sender: TObject);
begin
  inherited;
  schadapter.AfterApplyUpdate:=limpaCache;
//  tabLaboratorio.TabVisible:=modulo = 'LABORATORIO';
  tabTelefonia.TabVisible:=modulo = 'TELEFONIA';
end;

procedure Tfrm_client.FormShow(Sender: TObject);
begin
  inherited;
  AtualizarGrid;
end;

procedure Tfrm_client.limpaCache(Sender: TObject);
begin
 qry.CommitUpdates();
end;

procedure Tfrm_client.Localizar1Click(Sender: TObject);
var
cod:string;
begin
cod:=InputBox('Código Sippulse:','Cliente',cod);
if Trim(cod) <> '' then
 qry_client_sippulse.Locate('cls_account_sippulse',cod, [loCaseInsensitive, loPartialKey]);

  inherited;

end;

procedure Tfrm_client.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
// With frm_dm.qry,sql do
//  begin
//   close;
//   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
//   prepare;
//   open;
//
//   cli_cod:=Fields[0].AsString;
//
//   Close;
//   Text:='insert into client (cli_id,cli_cod,contract_ctr_cod,cli_dt_registration) ' +
//         ' select 0,'+ cli_cod + ', unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')' +',now()';
//
//   Prepare;
//   ExecSQL;
//  end;
//
//   qry.Close;
//   qry.SQL.Text:= ' select client.*,concat(''0x'',hex(cli_cod))as CodClient, hex(cli_cod)as ClientCod from client '+
//                 ' where contract_ctr_cod =:ctr_cod and cli_deleted_at is null and cli_cod ='+cli_cod;
//   qry.ParamByName('CTR_COD').Value := frm_dm.qry_contractctr_cod.Value;
//   qry.Prepare;
//   qry.open;
//   qry.Edit;
end;

procedure Tfrm_client.qry_client_insiranceAfterInsert(DataSet: TDataSet);
begin
  inherited;
// //Inicializar as variaveis vazias---------------------------------
//  cin_cod := '';
//  //Select para criar o Código Hexadecimal Primary Key--------------
// With frm_dm.qry,sql do
//  begin
//   close;
//   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
//   prepare;
//   open;
//   //Setando o Código Hexadecimal na Variável-----------------------
//   cin_cod:=Fields[0].AsString;
//   //Comando para Inserir o registro no banco com (código) (ID) (contrato)(data do registro)
//   Close;
//   Text:='insert into client_insurance (cin_id, cin_cod, client_cli_cod, cin_dt_registration) ' +
//         ' select 0,'+ cin_cod + ',' + cli_cod  + ',Now()';
//   Prepare;
//   ExecSQL;
//  end;
//
//   //Select para Atualizadr a Grid de Convenios do cliente----------------
//    AtualizarConvenios;
end;

procedure Tfrm_client.qry_client_insiranceBeforePost(DataSet: TDataSet);
begin
  inherited;
//   with frm_dm.qry,sql do
//   begin
//    close;
//     Text:= ' select case when max(cin_id) is null then 1 ' +
//          '      else (max(cin_id) + 1) end as maxID from client_insurance '+
//          ' where client_cli_cod = ' + cli_cod;
//     Prepare;
//     Open;
//
//    if not (qry_client_insirance.State in [dsInsert,dsEdit])  then
//       qry_client_insirance.Edit;
//
//    if qry_client_insirancecin_id.Value = 0 then
//       qry_client_insirancecin_id.Value  := Fields[0].Value;
//   end;

end;

procedure Tfrm_client.tabLaboratorioShow(Sender: TObject);
begin
  inherited;
  //Select para Atualizadr a Grid de Convenios do cliente-------
   AtualizarConvenios;
  //Select para Exibir os Convenios cadastrados ----------------
   ExibirConvenios;
end;

end.
