unit ufrm_phonebook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxShellComboBox, QExport4Dialog, cxBarEditItem, dxBarExtItems, QImport3Wizard,
  frxClass, frxDBSet, ACBrSocket, ACBrCEP;

type
  Tfrm_phonebook = class(Tfrm_form_default)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    qrypho_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qrypho_name: TStringField;
    qrypho_contact: TStringField;
    qrypho_phone1: TStringField;
    qrypho_phone2: TStringField;
    qrypho_phone3: TStringField;
    qrypho_annotation: TStringField;
    qrypho_dt_registration: TDateTimeField;
    qrypho_phone4: TStringField;
    cxGrid_1DBTableView1pho_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_dt_registration: TcxGridDBColumn;
    frxDBD_Lista_Telefonica: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxTabSheet_3Show(Sender: TObject);
    procedure qryAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
  end;

var
  frm_phonebook: Tfrm_phonebook;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_phonebook.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;
  cxDBTextEdit1.SetFocus;
end;

procedure Tfrm_phonebook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_phonebook.Destroy;
  frm_phonebook := Nil;
end;

procedure Tfrm_phonebook.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
end;

procedure Tfrm_phonebook.qryAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qry.ApplyUpdates(0);
end;

procedure Tfrm_phonebook.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrypho_dt_registration.Value := Date + Time;
end;

end.
