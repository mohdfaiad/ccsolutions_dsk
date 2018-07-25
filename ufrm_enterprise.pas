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

  ufrm_form_default, Vcl.ExtCtrls;
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
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    OpenPictureDialog1: TOpenPictureDialog;
    PopupMenu1: TPopupMenu;
    Inserir2: TMenuItem;
    Deletar1: TMenuItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dbedt_phone1: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dbedt_phone2: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbedt_phone3: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    dbedt_phone4: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dbedt_contact: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbedt_nickname: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dbcmb_status: TcxDBComboBox;
    dxLayoutItem19: TdxLayoutItem;
    OpenDialogLogo: TOpenDialog;
    frx_db_empresa: TfrxDBDataset;
    acbr_cep: TACBrCEP;
    qrycontract_ctr_cod: TStringField;
    qryent_cod: TStringField;
    qryent_id: TLongWordField;
    qryent_type: TStringField;
    qryent_first_name: TStringField;
    qryent_last_name: TStringField;
    qryent_nickname: TStringField;
    qryent_email: TStringField;
    qryent_cnpj: TStringField;
    qryent_ie: TStringField;
    qryent_im: TStringField;
    qryent_suframa: TStringField;
    qryent_add_bus_zipcode: TStringField;
    qryent_add_bus_address: TStringField;
    qryent_add_bus_number: TStringField;
    qryent_add_bus_street: TStringField;
    qryent_add_bus_complement: TStringField;
    qryent_add_bus_city: TStringField;
    qryent_add_bus_state: TStringField;
    qryent_add_bus_country: TStringField;
    qryent_phone1: TStringField;
    qryent_phone2: TStringField;
    qryent_phone3: TStringField;
    qryent_phone4: TStringField;
    qryent_contact: TStringField;
    qryent_dt_open: TDateField;
    qryent_status: TStringField;
    qryent_image1: TBlobField;
    qryent_deleted_at: TDateTimeField;
    qryent_dt_registration: TDateTimeField;
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
    dbimg_image1: TcxDBImage;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbbtnedt_cepPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure acbr_cepBuscaEfetuada(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure qryBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
      status : Integer;
  public
    { Public declarations }
  end;

var
  frm_enterprise: Tfrm_enterprise;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_enterprise.acbr_cepBuscaEfetuada(Sender: TObject);
var
  i:Integer;
begin
  try
    try
      for i := 0 to acbr_cep.Enderecos.Count -1 do begin
      qryent_add_bus_address.AsString     := acbr_cep.Enderecos[i].Logradouro;
      qryent_add_bus_street.AsString      := acbr_cep.Enderecos[i].Bairro;
      qryent_add_bus_complement.AsString  := acbr_cep.Enderecos[i].Complemento;
      qryent_add_bus_city.AsString     	  := acbr_cep.Enderecos[i].Municipio;
      qryent_add_bus_state.AsString       := acbr_cep.Enderecos[i].UF;
      qryent_add_bus_country.AsString     := 'BRASIL';

      dbedt_add_bus_number.SetFocus;
  end;
    except on E: Exception do
      ShowMessage('Erro: ' + E.Message);
    end;
  finally
  end;
end;


procedure Tfrm_enterprise.Action_deleteExecute(Sender: TObject);
var
  strproc_delete : TFDStoredProc;
begin
  strproc_delete := TFDStoredProc.Create(Self);
  strproc_delete.Connection := frm_dm.connCCS;
  strproc_delete.StoredProcName := 'proc_enterprise_create';
  strproc_delete.Prepare;

  strproc_delete.ParamByName('p_ent_cod').AsString := qry.FieldByName('ent_cod').AsString;
  strproc_delete.ParamByName('p_ent_deleted_at').AsDateTime := Date + Time;

  strproc_delete.ExecProc;

  qry.Close;
  qry.Open;
end;

procedure Tfrm_enterprise.Action_editExecute(Sender: TObject);
begin
  status := 1;
  cxTabSheet_3.Show;
end;

procedure Tfrm_enterprise.Action_insertExecute(Sender: TObject);
begin
  status := 0;
  qry.EmptyDataSet;
  cxTabSheet_3.Show;
end;

procedure Tfrm_enterprise.Action_saveExecute(Sender: TObject);
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  case status of
    0 : begin
          try
            try
              strproc_create := TFDStoredProc.Create(Self);
              strproc_create.Connection := frm_dm.connCCS;
              strproc_create.StoredProcName := 'proc_enterprise_create';
              strproc_create.Prepare;

              strproc_create.ParamByName('p_contract_ctr_cod').AsString       := frm_dm.v_contract_ctr_cod;
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
              strproc_create.ParamByName('p_ent_dt_open').AsString            := dbedt_dt_open.Text;
              strproc_create.ParamByName('p_ent_image1').AsString             := 'Null';
              strproc_create.ParamByName('p_ent_status').AsString             := dbcmb_status.Text;
              strproc_create.ExecProc;

              ShowMessage('Registro inserido com sucesso');

              qry.Close;
              qry.Open;
              qry.Last;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
    end;

    1 : begin
          try
            try
              if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
                strproc_create := TFDStoredProc.Create(Self);
                strproc_create.Connection := frm_dm.connCCS;
                strproc_create.StoredProcName := 'proc_enterprise_create';
                strproc_create.Prepare;

                strproc_create.ParamByName('p_ent_cod').AsString                := qry.FieldByName('ent_cod').AsString;;
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
                strproc_create.ParamByName('p_ent_dt_open').AsString            := dbedt_dt_open.Text;
                strproc_create.ParamByName('p_ent_image1').AsString             := 'Null';
                strproc_create.ParamByName('p_ent_status').AsString             := dbcmb_status.Text;
                strproc_create.ExecProc;

                ShowMessage('Registro Salvo com sucesso');

                qry.UpdateRecord;
              end else begin
                qry.Cancel;
              end;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
    end;
  end;
end;

procedure Tfrm_enterprise.dbbtnedt_cepPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  acbr_cep.BuscarPorCEP(dbedt_add_bus_zipcode.Text);
end;

procedure Tfrm_enterprise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_enterprise.Destroy;
  frm_enterprise := Nil;
end;

procedure Tfrm_enterprise.qryBeforeOpen(DataSet: TDataSet);
begin
  qry.Filtered                                  := False;
  qry.ParamByName('contract_ctr_cod').AsString  := frm_dm.v_contract_ctr_cod;
  qry.Filter                                    := 'ent_deleted_at is null';
  qry.Filtered                                  := True;
end;

end.
