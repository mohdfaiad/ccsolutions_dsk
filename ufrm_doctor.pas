unit ufrm_doctor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_default, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxShellComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.ImageList, Vcl.ImgList, QExport4Dialog, QImport3Wizard, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, ACBrBase, ACBrEnterTab, Vcl.Menus, dxBar, cxBarEditItem, cxClasses, System.Actions,
  Vcl.ActnList, dxStatusBar, cxTextEdit, cxLabel, cxGroupBox, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, Vcl.StdCtrls, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, frxExportDOCX, frxClass, frxExportBaseDialog, frxExportPDF, cxCheckBox;

type
  Tfrm_doctor = class(Tfrm_default)
    cxDBLookupComb_Doctor: TcxDBLookupComboBox;
    DBComBox_Status: TDBComboBox;
    qry_doctor: TFDQuery;
    ds_Doctor: TDataSource;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qry_role_employee: TFDQuery;
    ds_role_employee: TDataSource;
    qry_role_employeeroe_cod: TBytesField;
    qry_role_employeecontract_ctr_cod: TBytesField;
    qry_role_employeeemployee_emp_cod: TBytesField;
    qry_role_employeerole_rol_cod: TBytesField;
    qry_role_employeeroe_id: TLongWordField;
    qry_role_employeeroe_deleted_at: TDateTimeField;
    qry_role_employeeroe_dt_registration: TDateTimeField;
    qrydoc_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qryrole_rol_cod: TBytesField;
    qrydoc_id: TLongWordField;
    qryemp_type: TStringField;
    qryemp_status: TStringField;
    qrydoc_dt_registration: TDateTimeField;
    qryrec_name: TStringField;
    qryrec_nickname: TStringField;
    qryrec_sex: TStringField;
    cxGrid1DBTableView1roe_cod: TcxGridDBColumn;
    cxGrid1DBTableView1contract_ctr_cod: TcxGridDBColumn;
    cxGrid1DBTableView1employee_emp_cod: TcxGridDBColumn;
    cxGrid1DBTableView1role_rol_cod: TcxGridDBColumn;
    cxGrid1DBTableView1roe_id: TcxGridDBColumn;
    cxGrid1DBTableView1roe_deleted_at: TcxGridDBColumn;
    cxGrid1DBTableView1roe_dt_registration: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_doctor: Tfrm_doctor;

implementation

{$R *.dfm}

uses ufrm_dm;

end.
