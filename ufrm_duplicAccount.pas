unit ufrm_duplicAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels, cxClasses,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ComCtrls, dxSkinsdxBarPainter, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, dxBar;

type
  Tfrm_duplicAccount = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup1: TdxLayoutGroup;
    cxEditCodigo: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxEditDescricao: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxEditLancamento: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxEditNumDoc: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxEditVenc: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxEditValor: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxCbTipoDuplic: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxEditQuantidade: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem9: TdxLayoutItem;
    qry_duplicAccount: TFDQuery;
    ds_qry_duplicAccount: TDataSource;
    qry_duplicAccountnumDoc: TStringField;
    qry_duplicAccountparcela: TStringField;
    qry_duplicAccountdtVenc: TDateField;
    cxGrid1DBTableView1numDoc: TcxGridDBColumn;
    cxGrid1DBTableView1parcela: TcxGridDBColumn;
    cxGrid1DBTableView1dtVenc: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    cxImageList_1: TcxImageList;
    dxBarButton2: TdxBarButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_duplicAccount: Tfrm_duplicAccount;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_billpay;

procedure Tfrm_duplicAccount.cxButton1Click(Sender: TObject);
var
i:Integer;
begin
qry_duplicAccount.CancelUpdates;

for I := 1 to StrToInt(cxEditQuantidade.Text) do
 begin
  qry_duplicAccount.Insert;
  qry_duplicAccountnumDoc.AsString:=frm_billpay.qrybpy_document.AsString;
  qry_duplicAccountparcela.AsString:=frm_billpay.qrybpy_installment.AsString;
  qry_duplicAccountdtVenc.AsDateTime:=frm_billpay.qrybpy_dt_maturity.AsDateTime + (30* i);
  qry_duplicAccount.Post;
 end;
end;

end.
