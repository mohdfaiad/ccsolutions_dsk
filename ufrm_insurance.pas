unit ufrm_insurance;

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
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, QImport3Wizard, QExport4Dialog, ACBrBase,
  ACBrEnterTab, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar, cxBarEditItem,
  cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxButtonEdit, cxSpinEdit, ACBrSocket, ACBrCEP, frxClass, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrm_insurance = class(Tfrm_form_default)
    qryins_first_name: TStringField;
    qryins_last_name: TStringField;
    qryins_email: TStringField;
    qryins_cnpj: TStringField;
    qryins_add_bus_zipcode: TStringField;
    qryins_add_bus_address: TStringField;
    qryins_add_bus_number: TStringField;
    qryins_add_bus_street: TStringField;
    qryins_add_bus_complement: TStringField;
    qryins_add_bus_city: TStringField;
    qryins_add_bus_state: TStringField;
    qryins_add_bus_country: TStringField;
    qryins_phone1: TStringField;
    qryins_phone2: TStringField;
    qryins_phone3: TStringField;
    qryins_phone4: TStringField;
    qryins_contact: TStringField;
    cxGrid_1DBTableView1ins_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_im: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_maturity_contract: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    btnEditCEP: TcxDBButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtRua: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtNumero_Casa: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtBairro: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtComplemento: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtCidade: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    edtUF_End: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    edtPais_End: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem24: TdxLayoutItem;
    qryins_status: TStringField;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1ins_status: TcxGridDBColumn;
    qry_table_price: TFDQuery;
    ds_table_price: TDataSource;
    qry_table_pricetbp_id: TLongWordField;
    qry_table_pricetbp_name: TStringField;
    qry_table_pricecontract_ctr_cod: TBytesField;
    qry_table_pricecodTabela: TStringField;
    lookupComboBoxTable: TcxLookupComboBox;
    dxLayoutItem26: TdxLayoutItem;
    qry_table_pricetbp_cod: TBytesField;
    qrycodTabela: TStringField;
    qryins_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrytable_price_tbp_cod: TBytesField;
    qryins_id: TLongWordField;
    qryins_nickname: TStringField;
    qryins_im: TStringField;
    qryins_dt_maturity_contract: TDateField;
    qryins_day_maturity: TByteField;
    qryins_dt_open: TDateField;
    qryins_deleted_at: TDateTimeField;
    qryins_dt_registration: TDateTimeField;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1ins_nickname: TcxGridDBColumn;
    cxGrid_1DBTableView1ins_day_maturity: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxTabSheet_1Show(Sender: TObject);
    procedure lookupComboBoxTablePropertiesCloseUp(Sender: TObject);
    procedure cxTabSheet_2Show(Sender: TObject);
    procedure lookupComboBoxTablePropertiesPopup(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
    procedure cxDBTextEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    ins_cod:string;
  public
    { Public declarations }

  end;

var
  frm_insurance: Tfrm_insurance;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_insurance.ACBrCEP_1BuscaEfetuada(Sender: TObject);
 var
  i:Integer;
begin
  inherited;
  for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     edtRua.Text            := ACBrCEP_1.Enderecos[i].Logradouro;
     edtBairro.Text         := ACBrCEP_1.Enderecos[i].Bairro;
     edtComplemento.Text    := ACBrCEP_1.Enderecos[i].Complemento;
     edtCidade.Text    	    := ACBrCEP_1.Enderecos[i].Municipio;
     edtUF_End.Text         := ACBrCEP_1.Enderecos[i].UF;
     edtPais_End.Text       := 'BRASIL';
     edtNumero_Casa.SetFocus;
    end;

end;

procedure Tfrm_insurance.Action_cancelExecute(Sender: TObject);
begin
  inherited;

 if not result then
 Exit;


 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from insurance ' +
         ' where ins_cod = ' + ins_cod;
  Prepare;
  ExecSQL;

  qry.Close;
  qry.sql.text:= ' select insurance.*,concat(''0x'',hex(table_price_tbp_cod)) as codTabela from insurance' +
                 ' where ins_deleted_at is null';
  qry.Prepare;
  qry.open;
 end;

end;


procedure Tfrm_insurance.Action_saveExecute(Sender: TObject);
begin
   inherited;
if ds.DataSet.State in [dsEdit] then
    Exit;


with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(ins_id) is null then 1 ' +
          '      else (max(ins_id) + 1) end as maxID from insurance '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qryins_id.AsInteger = 0 then
    qryins_id.AsInteger:=Fields[0].AsInteger;
    qry.Post;
    qry.ApplyUpdates(0);
 end;


    if ds.DataSet.State in [dsEdit] then
      Exit;

       qry.Close;
       qry.sql.text:= ' select insurance.*,concat(''0x'',hex(table_price_tbp_cod)) as codTabela from insurance' +
                      ' where ins_deleted_at is null ';
       qry.Prepare;
       qry.open;

end;

procedure Tfrm_insurance.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
    ACBrCEP_1.BuscarPorCEP(btnEditCEP.Text);
end;

procedure Tfrm_insurance.cxDBTextEdit1Exit(Sender: TObject);
begin
  inherited;
if Trim(cxDBTextEdit2.TExt) = ''  then
  qryins_last_name.AsString:=qryins_first_name.AsString;
end;

procedure Tfrm_insurance.cxTabSheet_1Show(Sender: TObject);
begin
  inherited;
   qry.Close;
   qry.sql.text:= ' select insurance.*,concat(''0x'',hex(table_price_tbp_cod)) as codTabela from insurance';
   qry.Prepare;
   qry.open;
   qry.Refresh;
end;

procedure Tfrm_insurance.cxTabSheet_2Show(Sender: TObject);
begin
  inherited;
  qry_table_price.Locate('codTabela', qrycodTabela.AsString,[]);
  lookupComboBoxTable.Text:=qry_table_pricetbp_name.AsString;
end;

procedure Tfrm_insurance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_insurance.Destroy;
  frm_insurance := Nil;
end;

procedure Tfrm_insurance.lookupComboBoxTablePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  qry_table_price.Locate('tbp_name',lookupComboBoxTable.Text,[]);
  qrytable_price_tbp_cod.Value:=qry_table_pricetbp_cod.Value;
end;

procedure Tfrm_insurance.lookupComboBoxTablePropertiesPopup(Sender: TObject);
begin
  inherited;
  qry_table_price.Close;
  qry_table_price.Prepare;
  qry_table_price.Open;
end;

procedure Tfrm_insurance.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;

 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   ins_cod:=Fields[0].AsString;

   Close;
   Text:='insert into insurance (ins_id,ins_cod,contract_ctr_cod) ' +
         ' select 0,'+ ins_cod + ',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry.Unprepare;
   qry.Close;
   qry.sql.text:= ' select insurance.*,concat(''0x'',hex(table_price_tbp_cod)) as codTabela from insurance ' +
                  ' where ins_cod = ' + ins_cod +
                  ' and ins_deleted_at is null ';
   qry.Prepare;
   qry.open;
   qry.Edit;
   qryins_dt_registration.AsDateTime:=Now;
end;

end.
