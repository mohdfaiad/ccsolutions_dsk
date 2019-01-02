unit ufrm_parameter_slip;

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
  cxGridDBTableView, cxGrid, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxSpinEdit, cxCheckBox, cxMemo;

type
  Tfrm_parameter_slip = class(Tfrm_form_default)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    qry_bank: TFDQuery;
    ds_bank: TDataSource;
    qry_bankbnk_name: TStringField;
    qry_bankbnk_code: TStringField;
    qry_bankbnk_agency_number: TStringField;
    qry_bankbnk_agency_digit: TStringField;
    qry_bankbnk_account_number: TStringField;
    qry_bankbnk_account_digit: TStringField;
    qry_bankbnk_swift_code: TStringField;
    qry_bankbnk_iban_code: TStringField;
    qry_bankbnk_add_bus_zipcode: TStringField;
    qry_bankbnk_add_bus_address: TStringField;
    qry_bankbnk_add_bus_number: TStringField;
    qry_bankbnk_add_bus_street: TStringField;
    qry_bankbnk_add_bus_complement: TStringField;
    qry_bankbnk_add_bus_city: TStringField;
    qry_bankbnk_add_bus_state: TStringField;
    qry_bankbnk_add_bus_country: TStringField;
    qry_bankbnk_phone1: TStringField;
    qry_bankbnk_phone2: TStringField;
    qry_bankbnk_phone3: TStringField;
    qry_bankbnk_phone4: TStringField;
    qry_bankbnk_contact: TStringField;
    qry_bankbnk_code_transferor: TStringField;
    qry_bankbnk_code_agreement: TStringField;
    qry_bankbnk_dt_registration: TDateTimeField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    qryprs_species_document: TStringField;
    qryprs_species_coin: TStringField;
    qryprs_acceptance: TStringField;
    qryprs_wallet: TStringField;
    qryprs_our_number: TIntegerField;
    qryprs_value_fine: TBCDField;
    qryprs_value_interest: TBCDField;
    qryprs_value_discount: TBCDField;
    qryprs_day_interest: TIntegerField;
    qryprs_day_discount: TIntegerField;
    qryprs_day_protest: TIntegerField;
    qryprs_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1prs_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bank_bnk_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_document: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_species_coin: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_acceptance: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_wallet: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_our_number: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_fine: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_interest: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_value_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_day_interest: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_day_discount: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_day_protest: TcxGridDBColumn;
    cxGrid_1DBTableView1prs_dt_registration: TcxGridDBColumn;
    qryprs_instruction1: TStringField;
    qryprs_instruction2: TStringField;
    qryprs_instruction3: TStringField;
    qryprs_description: TStringField;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBSpinEdit3: TcxDBSpinEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem15: TdxLayoutItem;
    qryprs_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrybank_bnk_cod: TBytesField;
    qryprs_id: TLongWordField;
    qryprs_deleted_at: TDateTimeField;
    qry_bankbnk_cod: TBytesField;
    qry_bankcontract_ctr_cod: TBytesField;
    qry_bankbnk_id: TLongWordField;
    qry_bankbnk_status: TStringField;
    qry_bankbnk_deleted_at: TDateTimeField;
    qry_bankbnkCod: TStringField;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox1PropertiesPopup(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure qryAfterDelete(DataSet: TDataSet);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure qry_sql(sql:string);
  private
    { Private declarations }
    prs_cod:string;
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
  end;

var
  frm_parameter_slip: Tfrm_parameter_slip;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_parameter_slip.Action_cancelExecute(Sender: TObject);
begin
  inherited;
// if (qryprs_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
// begin
//  with frm_dm.qry,sql do
//   begin
//    Close;
//    Text:= ' delete from doctor ' +
//           ' where doc_cod = ' + doc_cod;
//    Prepare;
//    ExecSQL;
//     end;
//
//   if emp_cod <>'' then
//    begin
//     with frm_dm.qry2,sql do
//      begin
//       Close;
//       Text:= ' delete from role_employee ' +
//             ' where employee_emp_cod = ' + emp_cod ;
//       Prepare;
//       ExecSQL;
//      end;
//    end;                              //   unhex(p_cte_usr_ent_cod);
//
//  qry_sql('todos');
//  end;

end;

procedure Tfrm_parameter_slip.Action_deleteExecute(Sender: TObject);
begin
  inherited;
  qry.Close;
  qry.Open;
end;

procedure Tfrm_parameter_slip.Action_saveExecute(Sender: TObject);
begin
  //--Comando para tirar o focus de todos os componentes da tela-----
  ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

  with frm_dm.qry3,sql do
    begin
      Close;
      Clear;
      Text := ' select * from parameter_slip ' +
              ' where  hex(bank_bnk_cod) = ' + qry_bankbnkCod.AsString;
      Prepare;
      Open;
      if (RecordCount > 0) then
      begin
        Application.MessageBox('Parametros do Banco Selecionado já está cadastrada !','AVISO DO SISTEMA', MB_OK+MB_ICONINFORMATION);
        Exit
       end else
       inherited;
     end;
end;

procedure Tfrm_parameter_slip.cxDBLookupComboBox1PropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //Comando para atualização do combobox
  qry_bank.Refresh;
end;

procedure Tfrm_parameter_slip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_parameter_slip.Free;
  frm_parameter_slip := Nil;
end;

procedure Tfrm_parameter_slip.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate := limpaCache;
end;

procedure Tfrm_parameter_slip.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
end;

procedure Tfrm_parameter_slip.qryAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qry.ApplyUpdates(0);
end;

procedure Tfrm_parameter_slip.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryprs_dt_registration.Value := now;
end;

procedure Tfrm_parameter_slip.qry_sql(sql: string);
begin
  qry.Close;
  if sql = 'todos' then
   qry.sql.text:= ' select * from parameter_slip ';

  if sql = 'insert' then
   qry.sql.text:= ' select * from parameter_slip ' +
                  ' where hex(prs_cod) = ' + prs_cod ;
   qry.Prepare;
   qry.open;
end;

end.
