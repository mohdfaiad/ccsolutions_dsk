unit ufrm_ticket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_form_default, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, dxLayoutcxEditAdapters, dxSkinsdxBarPainter,
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrSocket, ACBrCEP, frxClass,
  FireDAC.Comp.Client, QImport3Wizard, QExport4Dialog, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList,
  Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions,
  Vcl.ActnList, dxBar, cxBarEditItem, cxClasses, dxLayoutContainer, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo;

type
  Tfrm_ticket = class(Tfrm_form_default)
    qrytkt_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryclient_cli_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    qryreseller_res_id: TIntegerField;
    qryticket_type_tky_id: TIntegerField;
    qryticket_category_tkc_id: TIntegerField;
    qrytkt_dt_open: TDateTimeField;
    qrytkt_dt_close: TDateTimeField;
    qrytkt_status: TStringField;
    qrytkt_dt_registration: TDateTimeField;
    qrytkt_dt_maturity: TDateTimeField;
    cxGrid_1DBTableView1tkt_id: TcxGridDBColumn;
    cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1reseller_res_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ticket_type_tky_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ticket_category_tkc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_close: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_status: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_registration: TcxGridDBColumn;
    qry_client: TFDQuery;
    ds_client: TDataSource;
    ds_reseller: TDataSource;
    qry_reseller: TFDQuery;
    qry_ticket_type: TFDQuery;
    ds_ticket_type: TDataSource;
    ds_ticket_category: TDataSource;
    qry_ticket_category: TFDQuery;
    qrytkt_reason: TMemoField;
    qry_ticket_interaction: TFDQuery;
    ds_ticket_interaction: TDataSource;
    qry_ticket_interactiontki_id: TFDAutoIncField;
    qry_ticket_interactionticket_tkt_id: TIntegerField;
    qry_ticket_interactiontki_reason: TMemoField;
    qry_ticket_interactiontki_dt_registration: TDateTimeField;
    qryticket_category_sub_tks_id: TIntegerField;
    qryticket_priority_tkp_id: TIntegerField;
    qry_ticket_priority: TFDQuery;
    ds_ticket_priority: TDataSource;
    qry_ticket_category_sub: TFDQuery;
    ds_ticket_category_sub: TDataSource;
    qrytkt_phone1: TStringField;
    qrytkt_phone2: TStringField;
    qrytkt_contact: TStringField;
    cxPageControl1: TcxPageControl;
    dxLayoutItem5: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem15: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutItem16: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutItem19: TdxLayoutItem;
    ds_enterprise: TDataSource;
    qry_enterprise: TFDQuery;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    qrycontract_user_ctr_usr_id: TIntegerField;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    qry_contract_user: TFDQuery;
    ds_contract_user: TDataSource;
    cxGrid_1DBTableView1contract_user_ctr_usr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1ticket_category_sub_tks_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ticket_priority_tkp_id: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ticket: Tfrm_ticket;

implementation

{$R *.dfm}

procedure Tfrm_ticket.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ticket.Destroy;
  frm_ticket := Nil;
end;

procedure Tfrm_ticket.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrytkt_dt_registration.Value := Date + Time;
  qrytkt_dt_open.Value := Date + Time;
  qrycontract_user_ctr_usr_id.Value := frm_dm.qry_signinctr_usr_id.Value;
end;

end.
