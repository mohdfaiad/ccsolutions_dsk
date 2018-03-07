unit ufrm_employee;

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
  cxButtonEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxShellComboBox, QImport3Wizard, QExport4Dialog, cxBarEditItem, dxBarExtItems,
  cxImage;

type
  Tfrm_employee = class(Tfrm_form_default)
    cxTabSheet_documentation: TcxTabSheet;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl_documentationGroup_Root: TdxLayoutGroup;
    dxLayoutControl_documentation: TdxLayoutControl;
    dxLayoutControl_address: TdxLayoutControl;
    dxLayoutControl_addressGroup_Root: TdxLayoutGroup;
    qry_role: TFDQuery;
    ds_role: TDataSource;
    qry_employee_children: TFDQuery;
    ds_employee_children: TDataSource;
    qryemp_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
    qryrole_rol_id: TIntegerField;
    qryemp_type: TStringField;
    qryemp_name: TStringField;
    qryemp_nickname: TStringField;
    qryemp_sex: TStringField;
    qryemp_dt_birth: TDateField;
    qryemp_dt_registration: TDateTimeField;
    qryemp_cpf_number: TStringField;
    qryemp_rg_number: TStringField;
    qryemp_ctps_number: TStringField;
    qryemp_ctps_serial: TStringField;
    qryemp_ctps_state: TStringField;
    qryemp_ctps_date: TDateField;
    qryemp_cam_number: TStringField;
    qryemp_cnh_number: TStringField;
    qryemp_cnh_category: TStringField;
    qryemp_cnh_date_expiration: TDateField;
    qryemp_titulo_eleitor_number: TStringField;
    qryemp_titulo_eleitor_zone: TStringField;
    qryemp_titulo_eleitor_section: TStringField;
    qryemp_status_marital: TStringField;
    qryemp_nationality: TStringField;
    qryemp_naturalness_uf: TStringField;
    qryemp_naturalness_city: TStringField;
    qryemp_name_father: TStringField;
    qryemp_name_mother: TStringField;
    qryemp_add_zipcode: TStringField;
    qryemp_add_address: TStringField;
    qryemp_add_number: TStringField;
    qryemp_add_street: TStringField;
    qryemp_add_complement: TStringField;
    qryemp_add_city: TStringField;
    qryemp_add_state: TStringField;
    qryemp_add_country: TStringField;
    qryemp_phone1: TStringField;
    qryemp_phone2: TStringField;
    qryemp_phone3: TStringField;
    qryemp_phone4: TStringField;
    qryemp_contact: TStringField;
    qryemp_image: TBlobField;
    qryemp_dt_admission: TDateField;
    qryemp_dt_resignation: TDateField;
    cxGrid_1DBTableView1emp_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1role_rol_id: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_type: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_name: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_nickname: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_dt_admission: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_dt_resignation: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_sex: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_dt_birth: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_cpf_number: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_rg_number: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_ctps_number: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_ctps_serial: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_ctps_state: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_ctps_date: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_cam_number: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_cnh_number: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_cnh_category: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_cnh_date_expiration: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_titulo_eleitor_number: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_titulo_eleitor_zone: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_titulo_eleitor_section: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_status_marital: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_nationality: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_naturalness_uf: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_naturalness_city: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_name_father: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_name_mother: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_address: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_number: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_street: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_city: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_state: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_add_country: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1emp_image: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit26: TcxDBTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    cxDBTextEdit27: TcxDBTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    cxDBTextEdit28: TcxDBTextEdit;
    dxLayoutItem36: TdxLayoutItem;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    cxDBTextEdit30: TcxDBTextEdit;
    dxLayoutItem38: TdxLayoutItem;
    cxDBTextEdit31: TcxDBTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    qryemp_status: TStringField;
    cxDBTextEdit32: TcxDBTextEdit;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    cxDBImage1: TcxDBImage;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup11: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem43: TdxLayoutItem;
    cxGrid1DBTableView1emp_chi_id: TcxGridDBColumn;
    cxGrid1DBTableView1employee_emp_id: TcxGridDBColumn;
    cxGrid1DBTableView1emp_chi_name: TcxGridDBColumn;
    cxGrid1DBTableView1emp_chi_dt_birth: TcxGridDBColumn;
    cxGrid1DBTableView1emp_chi_sex: TcxGridDBColumn;
    cxGrid1DBTableView1emp_chi_dt_registration: TcxGridDBColumn;
    qry_employee_childrenemp_chi_id: TFDAutoIncField;
    qry_employee_childrenemployee_emp_id: TIntegerField;
    qry_employee_childrenemp_chi_name: TStringField;
    qry_employee_childrenemp_chi_dt_birth: TDateField;
    qry_employee_childrenemp_chi_sex: TStringField;
    qry_employee_childrenemp_chi_dt_registration: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
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

procedure Tfrm_employee.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_employee.Destroy;
  frm_employee := Nil;;
end;

procedure Tfrm_employee.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryemp_dt_registration.Value := Date + Time;
end;

end.
