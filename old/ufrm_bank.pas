unit ufrm_bank;

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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrEnterTab,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxButtonEdit, Vcl.StdCtrls, cxShellComboBox, QImport3Wizard, QExport4Dialog,
  cxBarEditItem, frxClass, cxLocalization, ACBrSocket, ACBrCEP;

type
  Tfrm_bank = class(Tfrm_form_default)
    cxTabSheet_address: TcxTabSheet;
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
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    Label1: TLabel;
    qrybnk_name: TStringField;
    qrybnk_code: TStringField;
    qrybnk_agency_number: TStringField;
    qrybnk_agency_digit: TStringField;
    qrybnk_account_number: TStringField;
    qrybnk_account_digit: TStringField;
    qrybnk_swift_code: TStringField;
    qrybnk_iban_code: TStringField;
    qrybnk_add_bus_address: TStringField;
    qrybnk_add_bus_number: TStringField;
    qrybnk_add_bus_street: TStringField;
    qrybnk_add_bus_complement: TStringField;
    qrybnk_add_bus_city: TStringField;
    qrybnk_add_bus_state: TStringField;
    qrybnk_add_bus_country: TStringField;
    qrybnk_phone1: TStringField;
    qrybnk_phone2: TStringField;
    qrybnk_phone3: TStringField;
    qrybnk_phone4: TStringField;
    qrybnk_contact: TStringField;
    qrybnk_dt_registration: TDateTimeField;
    qrybnk_add_bus_zipcode: TStringField;
    cxGrid_1DBTableView1bnk_id: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_name: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_code: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_agency_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_account_digit: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_swift_code: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_iban_code: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1bnk_dt_registration: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qrybnk_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrybnk_id: TLongWordField;
    qrybnk_code_transferor: TStringField;
    qrybnk_code_agreement: TStringField;
    qrybnk_status: TStringField;
    qrybnk_deleted_at: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure cxTabSheet_1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bank: Tfrm_bank;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_bank.ACBrCEP_1BuscaEfetuada(Sender: TObject);
var
i:Integer;
begin
  inherited;
    for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     qrybnk_add_bus_address.AsString    := ACBrCEP_1.Enderecos[i].Logradouro;
     qrybnk_add_bus_street.AsString     := ACBrCEP_1.Enderecos[i].Bairro;
     QRYbnk_add_bus_complement.AsString     := ACBrCEP_1.Enderecos[i].Complemento;
     QRYbnk_add_bus_city.AsString     	 := ACBrCEP_1.Enderecos[i].Municipio;
     qrybnk_add_bus_state.AsString     := ACBrCEP_1.Enderecos[i].UF;
     qrybnk_add_bus_country.AsString     := 'BRASIL';
     cxDBTextEdit22.SetFocus;
end;

end;

procedure Tfrm_bank.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qrybnk_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
  with frm_dm.qry,sql do
   begin
    Close;
    Text:= ' delete from bank ' +
           ' where contract_ctr_cod =:contract ' +
           ' and bnk_id = 0';
    ParamByName('contract').Value:=frm_dm.qry_contractctr_cod.Value;
    Prepare;
    ExecSQL;
   end;

end;

procedure Tfrm_bank.Action_saveExecute(Sender: TObject);
begin
 with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(bnk_id) is null then 1 ' +
          '      else (max(bnk_id) + 1) end as maxID from bank '+
          ' where contract_ctr_cod = (select ctr_cod from contract ' +
          ' where ctr_id =:ctr_id)';
   ParamByName('ctr_id').AsInteger:=frm_dm.qry_contractctr_id.AsInteger;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrybnk_id.AsInteger = 0 then
    qrybnk_id.AsInteger:=Fields[0].AsInteger;

  inherited;

end;
end;

procedure Tfrm_bank.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ACBrCEP_1.BuscarPorCEP(cxDBButtonEdit2.Text);

end;

procedure Tfrm_bank.cxTabSheet_1Show(Sender: TObject);
begin
  inherited;
   qry.Close;
   qry.sql.text:= ' select * from bank ';
   qry.Prepare;
   qry.open;

end;

procedure Tfrm_bank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   frm_bank.Free;
   frm_bank := nil;
end;

procedure Tfrm_bank.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
   With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into bank (bnk_cod, bnk_id, contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,(select ctr_cod from contract ' +
         ' where ctr_id = :contrato)';
   ParamByName('contrato').AsInteger:=frm_dm.qry_contractctr_id.AsInteger;
   Prepare;
   ExecSQL;
  end;
   qry.Close;
   qry.sql.text:= ' select * from bank ' +
                  ' where bnk_id = 0 ';
   qry.Prepare;
   qry.open;

  qry.Edit;

  qrybnk_dt_registration.Value:= Date + Time;
end;

end.
