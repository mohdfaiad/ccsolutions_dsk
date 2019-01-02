unit ufrm_ticket_interaction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_form_default, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  dxLayoutcxEditAdapters, dxSkinsdxBarPainter, cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ACBrSocket, ACBrCEP, frxClass, FireDAC.Comp.Client,
  QImport3Wizard, QExport4Dialog, ACBrBase, ACBrEnterTab, FireDAC.Comp.DataSet, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxBarEditItem, cxClasses, dxLayoutContainer, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, Vcl.DBCtrls, cxMemo, cxDBLookupComboBox, Vcl.ExtCtrls;

type
  Tfrm_ticket_interaction = class(Tfrm_form_default)
    qry_ticket_interaction: TFDQuery;
    ds_ticket_interaction: TDataSource;
    qry_ticket_interactiontki_id: TFDAutoIncField;
    qry_ticket_interactionticket_tkt_id: TIntegerField;
    qry_ticket_interactiontki_reason: TMemoField;
    qry_ticket_interactiontki_dt_registration: TDateTimeField;
    qrytkt_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryclient_cli_id: TIntegerField;
    qryenterprise_ent_id: TIntegerField;
    qryreseller_res_id: TIntegerField;
    qryticket_type_tky_id: TIntegerField;
    qryticket_category_tkc_id: TIntegerField;
    qryticket_category_sub_tks_id: TIntegerField;
    qryticket_priority_tkp_id: TIntegerField;
    qrytkt_dt_open: TDateTimeField;
    qrytkt_dt_close: TDateTimeField;
    qrytkt_dt_maturity: TDateTimeField;
    qrytkt_reason: TMemoField;
    qrytkt_status: TStringField;
    qrytkt_phone1: TStringField;
    qrytkt_phone2: TStringField;
    qrytkt_contact: TStringField;
    qrytkt_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1tkt_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_close: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_maturity: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_status: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1tkt_dt_registration: TcxGridDBColumn;
    qry_client: TFDQuery;
    ds_client: TDataSource;
    qry_ticket_category_sub: TFDQuery;
    ds_ticket_category_sub: TDataSource;
    qry_enterprise: TFDQuery;
    ds_enterprise: TDataSource;
    ds_reseller: TDataSource;
    qry_reseller: TFDQuery;
    qry_ticket_type: TFDQuery;
    ds_ticket_type: TDataSource;
    qry_ticket_category: TFDQuery;
    ds_ticket_category: TDataSource;
    qry_ticket_priority: TFDQuery;
    ds_ticket_priority: TDataSource;
    qryfclient_name: TStringField;
    qryfenterprise_name: TStringField;
    qryfreseller_name: TStringField;
    qryfticket_type_name: TStringField;
    qryfticket_category_name: TStringField;
    qryfticket_category_sub_name: TStringField;
    qryfticket_priority_name: TStringField;
    cxGrid_1DBTableView1fclient_name: TcxGridDBColumn;
    cxGrid_1DBTableView1fenterprise_name: TcxGridDBColumn;
    cxGrid_1DBTableView1freseller_name: TcxGridDBColumn;
    cxGrid_1DBTableView1fticket_type_name: TcxGridDBColumn;
    cxGrid_1DBTableView1fticket_category_name: TcxGridDBColumn;
    cxGrid_1DBTableView1fticket_category_sub_name: TcxGridDBColumn;
    cxGrid_1DBTableView1fticket_priority_name: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qrycontract_user_ctr_usr_id: TIntegerField;
    qry_ticket_interactioncontract_user_ctr_usr_id: TIntegerField;
    qry_contract_user: TFDQuery;
    ds_contract_user: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    Timer1: TTimer;
    dbmem_reason: TcxDBMemo;
    dxLayoutItem11: TdxLayoutItem;
    cxGrid1DBTableView1tki_id: TcxGridDBColumn;
    cxGrid1DBTableView1tki_dt_registration: TcxGridDBColumn;
    cxGrid1DBTableView1contract_user_ctr_usr_id: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qry_ticket_interactionAfterInsert(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ticket_interaction: Tfrm_ticket_interaction;

implementation

{$R *.dfm}

procedure Tfrm_ticket_interaction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_ticket_interaction.Destroy;
  frm_ticket_interaction := Nil;
end;

procedure Tfrm_ticket_interaction.qry_ticket_interactionAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qry_ticket_interactiontki_dt_registration.Value := Date + Time;
//  qry_ticket_interactioncontract_user_ctr_usr_id.Value := frm_dm.qry_signinctr_usr_id.Value;
end;

procedure Tfrm_ticket_interaction.Timer1Timer(Sender: TObject);
begin
  inherited;
  if ds.State in [dsEdit, dsInsert]  then begin
    Null;
  end else begin
    TThread.Queue(Nil, procedure begin
    qry.Refresh;
    end);
  end;
end;

end.
