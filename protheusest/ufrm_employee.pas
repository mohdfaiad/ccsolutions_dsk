unit ufrm_employee;

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
  cxGridDBTableView, cxGrid, cxPC;

type
  Tfrm_employee = class(Tfrm_form_default)
    cxGrid_1DBTableView1rec_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_name: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_nickname: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_sex: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_birth: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_admission: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_resignation: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_cpf_number: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_rg_number: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_ctps_number: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_ctps_serial: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_state: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_date: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_cam_number: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_cnh_number: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_chn_category: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_cnh_dt_expiration: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_te_number: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_te_zone: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_te_section: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_crm: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_status_marital: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_nationality: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_naturalness_uf: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_naturalness_city: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_father_name: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_mother_name: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_address: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_number: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_street: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_city: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_state: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_add_country: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_image: TcxGridDBColumn;
    cxGrid_1DBTableView1rec_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    qryrec_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryrec_name: TStringField;
    qryrec_nickname: TStringField;
    qryrec_sex: TStringField;
    qryrec_dt_birth: TDateField;
    qryrec_cpf_number: TStringField;
    qryrec_rg_number: TStringField;
    qryrec_ctps_number: TStringField;
    qryrec_ctps_serial: TStringField;
    qryrec_ctps_state: TStringField;
    qryrec_ctps_date: TDateField;
    qryrec_cam_number: TStringField;
    qryrec_cnh_number: TStringField;
    qryrec_chn_category: TStringField;
    qryrec_cnh_dt_expiration: TDateField;
    qryrec_te_number: TStringField;
    qryrec_te_zone: TStringField;
    qryrec_te_section: TStringField;
    qryrec_crm_number: TStringField;
    qryrec_status_marital: TStringField;
    qryrec_nationality: TStringField;
    qryrec_naturalness_uf: TStringField;
    qryrec_naturalness_city: TStringField;
    qryrec_father_name: TStringField;
    qryrec_mother_name: TStringField;
    qryrec_add_zipcode: TStringField;
    qryrec_add_address: TStringField;
    qryrec_add_number: TStringField;
    qryrec_add_street: TStringField;
    qryrec_add_complement: TStringField;
    qryrec_add_city: TStringField;
    qryrec_add_state: TStringField;
    qryrec_add_country: TStringField;
    qryrec_phone1: TStringField;
    qryrec_phone2: TStringField;
    qryrec_phone3: TStringField;
    qryrec_phone4: TStringField;
    qryrec_contact: TStringField;
    qryrec_image: TBlobField;
    qryrec_dt_registration: TDateTimeField;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxDBTextEdit26: TcxDBTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    cxDBTextEdit27: TcxDBTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit28: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit30: TcxDBTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_employee: Tfrm_employee;

implementation

{$R *.dfm}

uses ufrm_dm;

end.
