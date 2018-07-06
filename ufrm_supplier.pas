unit ufrm_supplier;

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
  cxButtonEdit, cxShellComboBox, QExport4Dialog, cxBarEditItem, dxBarExtItems,
  QImport3Wizard, ACBrSocket, ACBrCEP, frxClass, frxDBSet;

type
  Tfrm_supplier = class(Tfrm_form_default)
    qrysup_first_name: TStringField;
    qrysup_last_name: TStringField;
    qrysup_email: TStringField;
    qrysup_phone1: TStringField;
    qrysup_phone2: TStringField;
    qrysup_phone3: TStringField;
    qrysup_phone4: TStringField;
    qrysup_contact: TStringField;
    qrysup_dt_open: TDateField;
    qrysup_ie: TStringField;
    qrysup_im: TStringField;
    qrysup_suframa: TStringField;
    cxTabSheet_address: TcxTabSheet;
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
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    qrysup_cnpj: TStringField;
    qrysup_dt_registration: TDateTimeField;
    qrysup_add_bus_zipcode: TStringField;
    qrysup_add_bus_address: TStringField;
    qrysup_add_bus_number: TStringField;
    qrysup_add_bus_street: TStringField;
    qrysup_add_bus_complement: TStringField;
    qrysup_add_bus_city: TStringField;
    qrysup_add_bus_state: TStringField;
    qrysup_add_bus_country: TStringField;
    cxGrid_1DBTableView1sup_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_email: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_im: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_dt_registration: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qrysup_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrysup_id: TLongWordField;
    qrysup_status: TStringField;
    qrysup_deleted_at: TDateTimeField;
    qryCodSupplier: TStringField;
    cxGrid_1DBTableView1sup_id: TcxGridDBColumn;
    cxGrid_1DBTableView1sup_status: TcxGridDBColumn;
    frx_db_fornecedor: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
    sup_cod:string;
  public
    { Public declarations }
     procedure ExibirRegistros;
  end;

var
  frm_supplier: Tfrm_supplier;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_supplier.ACBrCEP_1BuscaEfetuada(Sender: TObject);
 var
i:Integer;
begin
  inherited;
  for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     qrysup_add_bus_address.AsString    := ACBrCEP_1.Enderecos[i].Logradouro;
     qrysup_add_bus_street.AsString     := ACBrCEP_1.Enderecos[i].Bairro;
     qrysup_add_bus_complement.AsString     := ACBrCEP_1.Enderecos[i].Complemento;
     qrysup_add_bus_city.AsString     	 := ACBrCEP_1.Enderecos[i].Municipio;
     qrysup_add_bus_state.AsString     := ACBrCEP_1.Enderecos[i].UF;
     qrysup_add_bus_country.AsString     := 'BRASIL';
     cxDBTextEdit22.SetFocus;
    end;
end;

procedure Tfrm_supplier.Action_cancelExecute(Sender: TObject);
begin
  inherited;
  if result = false then
    exit;

 if (qrysup_id.AsInteger = 0) then
  with frm_dm.qry,sql do
  begin
    Close;
    Text:= ' delete from supplier ' +
           ' where sup_cod = unhex('+QuotedStr(sup_cod)+')';
    Prepare;
    ExecSQL;
  end;

  ExibirRegistros;
end;

procedure Tfrm_supplier.Action_deleteExecute(Sender: TObject);
begin
  inherited;
  if (result = false) then
    exit;

     qry.Edit;
     qrysup_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     Application.MessageBox('Fornecedor excluída com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);

    ExibirRegistros;

end;

procedure Tfrm_supplier.Action_saveExecute(Sender: TObject);
begin
//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

  inherited;
  if ds.DataSet.State in [dsEdit] then
   Exit;

if (qrysup_id.AsInteger = 0) then
 begin
   with frm_dm.qry,sql do
   begin
     close;     // -- SQL para retornar o ultimo ID da tabela brand---
     Text:= ' select case when max(sup_id) is null then 1 ' +
            '      else (max(sup_id) + 1) end as maxID from supplier '+
            ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
     Prepare;
     Open;

     if not (qry.State in [dsInsert,dsEdit])  then
      qry.Edit;

     if qrysup_id.AsInteger = 0 then
       qrysup_id.AsInteger:=Fields[0].AsInteger;

      qry.Post;
      qry.ApplyUpdates(0);

   end;
 end;

  ExibirRegistros;
end;

procedure Tfrm_supplier.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 ACBrCEP_1.BuscarPorCEP(cxDBButtonEdit2.Text);
end;

procedure Tfrm_supplier.ExibirRegistros;
begin
      qry.Close;
      qry.SQL.Text:= ' select supplier.*,hex(sup_cod)as CodSupplier from supplier '+
                     ' where contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+') and sup_deleted_at is null ';
      qry.Prepare;
      qry.Open;
end;

procedure Tfrm_supplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_supplier.Destroy;
  frm_supplier := Nil;
end;

procedure Tfrm_supplier.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid())) ';
   prepare;
   open;

   sup_cod:=Fields[0].AsString;

   Close;
   Text:='insert into supplier (sup_id,sup_cod,contract_ctr_cod, sup_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(sup_cod)+'), unhex('+ QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;
   qry.sql.text:= ' select supplier.*,hex(sup_cod)as CodSupplier from supplier ' +
                  ' where sup_cod =unhex('+QuotedStr(sup_cod)+') and sup_deleted_at is null ';
   qry.Prepare;
   qry.open;
   qry.Edit;

end;

end.
