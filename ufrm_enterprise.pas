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

  ufrm_form_default;
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
    dbedt_address: TcxDBTextEdit;
    dbedt_street: TcxDBTextEdit;
    dbedt_city: TcxDBTextEdit;
    dbedt_state: TcxDBTextEdit;
    dbedt_country: TcxDBTextEdit;
    dbedt_zipcode: TcxDBButtonEdit;
    dbedt_number: TcxDBTextEdit;
    dbedt_complement: TcxDBTextEdit;
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
    Action_insert_image: TAction;
    Action_delete_image: TAction;
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
    cxImgLogo: TcxImage;
    dxLayoutItem20: TdxLayoutItem;
    OpenDialogLogo: TOpenDialog;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    btnLogo: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    frx_db_empresa: TfrxDBDataset;
    acbr_cep: TACBrCEP;
    str_proc_enterprise_create: TFDStoredProc;
    str_proc_enterprise_update: TFDStoredProc;
    str_proc_enterprise_delete: TFDStoredProc;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure Action_insert_imageExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbbtnedt_cepPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure acbr_cepBuscaEfetuada(Sender: TObject);
    procedure btnLogoClick(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
  private
    { Private declarations }
    status : string;
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
  inherited;
//    for i := 0 to acbr_cep.Enderecos.Count -1 do
//    begin
//     qryent_add_bus_address.AsString    := acbr_cep.Enderecos[i].Logradouro;
//     qryent_add_bus_street.AsString     := acbr_cep.Enderecos[i].Bairro;
//     qryent_add_bus_complement.AsString     := acbr_cep.Enderecos[i].Complemento;
//     qryent_add_bus_city.AsString     	 := acbr_cep.Enderecos[i].Municipio;
//     qryent_add_bus_state.AsString     := acbr_cep.Enderecos[i].UF;
//     qryent_add_bus_country.AsString     := 'BRASIL';
//     dbtxtedt_number.SetFocus;
//end;
end;

procedure Tfrm_enterprise.Action_editExecute(Sender: TObject);
// var
//   vStream:TMemoryStream;
begin
//   if qry.IsEmpty then
//   exit;
//
//  inherited;
//     vStream :=TMemoryStream.Create;
//     qryent_image1.savetostream(vStream);
//     vStream.Position :=0;
//     cxImgLogo.Picture.LoadFromStream(vStream);
end;

procedure Tfrm_enterprise.Action_insert_imageExecute(Sender: TObject);
begin
  inherited;
//  imgObj := TCompress_image.Create;
//  imgObj.imgCompress(DBImage1, OpenPictureDialog1);
end;

procedure Tfrm_enterprise.btnLogoClick(Sender: TObject);
// var
//   sArq:TStream;
//   mMem:TMemoryStream;
//   lPath: string;
begin
//  inherited;
//
// if OpenDialogLogo.Execute then
//  begin
//    lPath := OpenDialogLogo.FileName;
//
//
//    try
//      mMem:=TMemoryStream.Create;
//      sArq:= TFileStream.Create(lPath, fmOpenRead);
//      sArq.Position:=0;
//      mMem.LoadFromStream(sArq);
//
//     if mMem.Size < 100000 then
//      begin
//       cxImgLogo.Picture.LoadFromStream(mMem);
//       qry.Edit;
//       qryent_image1.LoadFromStream(mMem);
//       qry.Post;
//       qry.ApplyUpdates(0);
//      end else
//       begin
//         cxImgLogo.Picture := nil;
//         Application.MessageBox('A Imagem escolhida é maior que o permitidoo !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
//       end;
//
//    finally
//      FreeAndNil(mMem);
//      FreeAndNil(sArq);
//    end;
//
//   end;
//  qry.Edit;
end;

procedure Tfrm_enterprise.dbbtnedt_cepPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
// acbr_cep.BuscarPorCEP(dbbtnedt_cep.Text);
end;

procedure Tfrm_enterprise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_enterprise.Destroy;
  frm_enterprise := Nil;
end;

end.
