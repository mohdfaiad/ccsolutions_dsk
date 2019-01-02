unit ufrm_cliente;

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
  cxCheckBox,
  cxSpinEdit,
  cxCurrencyEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBNavigator,
  dxSkinTheBezier,

  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  ACBrEnterTab,
  ACBrBase,

  frxChart,
  frxDesgn,
  frxClass,

  ufrm_form_default,

  u_class_connection,

  uDWAbout,
  uRESTDWPoolerDB,
  uDWConstsData;

type
  Tfrm_cliente = class(Tfrm_form_default)
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_dt_birthopen: TcxDBDateEdit;
    lbl_data: TdxLayoutItem;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dbedt_cpfcnpj: TcxDBTextEdit;
    lbl_cpfcnpj: TdxLayoutItem;
    dbedt_rgie: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    dbedt_im: TcxDBTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    dbedt_suframa: TcxDBTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    dbcmb_tipo: TcxDBComboBox;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxBarButton5: TdxBarButton;
    Action_consult_cpf: TAction;
    Action_consult_cnpj: TAction;
    Label1: TLabel;
    dbchk_status: TcxDBCheckBox;
    dxLayoutItem41: TdxLayoutItem;
    dbspn_day_maturity: TcxDBSpinEdit;
    dxLayoutItem42: TdxLayoutItem;
    dxBarButton2: TdxBarButton;
    clientSQLcli_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLcli_id: TLongWordField;
    clientSQLcli_nome: TStringField;
    clientSQLcli_nome_fantasia: TStringField;
    clientSQLcli_tipo: TStringField;
    clientSQLcli_rgie: TStringField;
    clientSQLcli_cpfcnpj: TStringField;
    clientSQLcli_data_deletado: TDateTimeField;
    clientSQLcli_data_registro: TDateTimeField;
    clientSQLcli_im: TStringField;
    clientSQLcli_suframa: TStringField;
    clientSQLcli_data: TDateField;
    clientSQLcli_status: TShortintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public

  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

uses
  ufrm_dm;

procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_cliente.Destroy;
  frm_cliente := Nil;
end;

end.
