unit ufrm_enterprise;

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
  QImport3Wizard, cxImage, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  Vcl.ExtDlgs, Vcl.DBCtrls, ACBrSocket, ACBrCEP, frxClass;

type
  Tfrm_enterprise = class(Tfrm_form_default)
    qryent_type: TStringField;
    qryent_first_name: TStringField;
    qryent_last_name: TStringField;
    qryent_email: TStringField;
    qryent_phone1: TStringField;
    qryent_phone2: TStringField;
    qryent_phone3: TStringField;
    qryent_phone4: TStringField;
    qryent_contact: TStringField;
    qryent_dt_open: TDateField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem13: TdxLayoutItem;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl_address: TdxLayoutControl;
    dbtxtedt_address: TcxDBTextEdit;
    dbtxtedt_street: TcxDBTextEdit;
    dbtxtedt_city: TcxDBTextEdit;
    dbtxtedt_state: TcxDBTextEdit;
    dbtxtedt_country: TcxDBTextEdit;
    dbbtnedt_cep: TcxDBButtonEdit;
    dbtxtedt_number: TcxDBTextEdit;
    dbtxtedt_complement: TcxDBTextEdit;
    dxLayoutControl_addressGroup_Root: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
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
    qryent_ie: TStringField;
    qryent_im: TStringField;
    qryent_suframa: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    qryent_cnpj: TStringField;
    qryent_dt_registration: TDateTimeField;
    qryent_add_bus_zipcode: TStringField;
    qryent_add_bus_address: TStringField;
    qryent_add_bus_number: TStringField;
    qryent_add_bus_street: TStringField;
    qryent_add_bus_complement: TStringField;
    qryent_add_bus_city: TStringField;
    qryent_add_bus_state: TStringField;
    qryent_add_bus_country: TStringField;
    cxGrid_1DBTableView1ent_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_type: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_cnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_ie: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_im: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_dt_open: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1ent_dt_registration: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    OpenPictureDialog1: TOpenPictureDialog;
    PopupMenu1: TPopupMenu;
    Action_insert_image: TAction;
    Action_delete_image: TAction;
    Inserir2: TMenuItem;
    Deletar1: TMenuItem;
    qryent_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryent_deleted_at: TDateTimeField;
    qryent_id: TLongWordField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_insert_imageExecute(Sender: TObject);
    procedure Action_delete_imageExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbbtnedt_cepPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
  private
    { Private declarations }
   ent_cod:string;
  public
    { Public declarations }
  end;

var
  frm_enterprise: Tfrm_enterprise;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_enterprise.ACBrCEP_1BuscaEfetuada(Sender: TObject);
 var
i:Integer;
begin
  inherited;
    for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     qryent_add_bus_address.AsString    := ACBrCEP_1.Enderecos[i].Logradouro;
     qryent_add_bus_street.AsString     := ACBrCEP_1.Enderecos[i].Bairro;
     qryent_add_bus_complement.AsString     := ACBrCEP_1.Enderecos[i].Complemento;
     qryent_add_bus_city.AsString     	 := ACBrCEP_1.Enderecos[i].Municipio;
     qryent_add_bus_state.AsString     := ACBrCEP_1.Enderecos[i].UF;
     qryent_add_bus_country.AsString     := 'BRASIL';
     dbtxtedt_number.SetFocus;
end;
end;

procedure Tfrm_enterprise.Action_delete_imageExecute(Sender: TObject);
begin
  inherited;
  ds.DataSet.FieldByName('ent_image').Value := Null;
end;

procedure Tfrm_enterprise.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qryent_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from enterprise ' +
         ' where ent_cod = ' + ent_cod;
  Prepare;
  ExecSQL;

  qry.Close;
  qry.sql.text:= ' select * from enterprise ' +
                 ' where ent_deleted_at is null';
  qry.Prepare;
  qry.open;
 end;
end;

procedure Tfrm_enterprise.Action_deleteExecute(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qryent_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     qry.Close;
     qry.sql.text:= ' select * from enterprise ' +
                    ' where ent_deleted_at is null ';
     qry.Prepare;
     qry.open;
    end;

end;

procedure Tfrm_enterprise.Action_insert_imageExecute(Sender: TObject);
begin
  inherited;
//  imgObj := TCompress_image.Create;
//  imgObj.imgCompress(DBImage1, OpenPictureDialog1);
end;

procedure Tfrm_enterprise.Action_saveExecute(Sender: TObject);
begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(ent_id) is null then 1 ' +
          '      else (max(ent_id) + 1) end as maxID from enterprise '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qryent_id.AsInteger = 0 then
    qryent_id.AsInteger:=Fields[0].AsInteger;

  end;

  inherited;
       qry.Close;
       qry.sql.text:= ' select * from enterprise ' +
                      ' where ent_deleted_at is null ';
       qry.Prepare;
       qry.open;
end;

procedure Tfrm_enterprise.dbbtnedt_cepPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 ACBrCEP_1.BuscarPorCEP(dbbtnedt_cep.Text);
end;

procedure Tfrm_enterprise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_enterprise.Destroy;
  frm_enterprise := Nil;
end;

procedure Tfrm_enterprise.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   ent_cod:=Fields[0].AsString;

   Close;
   Text:='insert into enterprise (ent_id,ent_cod,contract_ctr_cod) ' +
         ' select 0,'+ ent_cod + ',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;


   qry.Unprepare;
   qry.Close;
   qry.sql.text:= ' select * from enterprise ' +
                  ' where ent_cod = ' + ent_cod +
                  ' and ent_deleted_at is null ';
   qry.Prepare;
   qry.open;
   qry.Edit;
   qryent_dt_registration.AsDateTime:=Now;
end;

end.
