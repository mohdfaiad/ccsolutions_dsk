unit ufrm_phonebook;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,

  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinBlack,
  dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle,
  dxSkinFoggy,
  dxSkinGlassOceans,
  dxSkinHighContrast,
  dxSkiniMaginary,
  dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis,
  dxSkinMetropolisDark,
  dxSkinMoneyTwins,
  dxSkinOffice2007Black,
  dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin,
  dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp,
  dxSkinSharpPlus,
  dxSkinSilver,
  dxSkinSpringTime,
  dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue,
  dxSkinscxPCPainter,
  dxBarBuiltInMenu,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDBData,
  cxContainer,
  dxLayoutcxEditAdapters,
  dxSkinsdxBarPainter,
  dxLayoutLookAndFeels,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  dxBar,
  cxClasses,
  dxLayoutContainer,
  cxMaskEdit,
  cxDropDownEdit,
  cxCalendar,
  cxDBEdit,
  cxTextEdit,
  dxLayoutControl,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxPC,
  cxShellComboBox,
  cxBarEditItem,
  dxBarExtItems,
  cxDBLookupComboBox,

  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  ACBrBase,
  ACBrEnterTab,
  ACBrSocket,
  ACBrCEP,

  QExport4Dialog,
  QImport3Wizard,

  frxClass,
  frxDBSet,

  class_required_field,
  ufrm_form_default;
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
    qrypho_name: TStringField;
    qrypho_contact: TStringField;
    qrypho_phone1: TStringField;
    qrypho_phone2: TStringField;
    qrypho_phone3: TStringField;
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
    frxds_phonebook: TfrxDBDataset;
    qrypho_id: TLongWordField;
    qrypho_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrypho_deleted_at: TDateTimeField;
    qryCodPhonebook: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxTabSheet_3Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
      pho_cod: string;
  public
    { Public declarations }
    procedure limpaCache(Sender:TObject);
    procedure ExibirRegistros;
  end;

var
  frm_phonebook: Tfrm_phonebook;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_phonebook.Action_cancelExecute(Sender: TObject);
begin
  inherited;
  if result = false then
    exit;

  if (qrypho_id.AsInteger = 0) then begin
    with frm_dm.qry2, sql do begin
      Close;
      Text:= 'delete from phonebook ' +
             'where pho_cod = unhex('+ QuotedStr(pho_cod)+')' ;
      Prepare;
      ExecSQL;
    end;
  end;

  ExibirRegistros;
end;

procedure Tfrm_phonebook.Action_deleteExecute(Sender: TObject);
begin
  inherited;
  if (result = false) then
    Exit;

  qry.Edit;
  qrypho_deleted_at.AsDateTime := Now;
  qry.Post;
  qry.ApplyUpdates(0);
  Application.MessageBox('Agenda Telefônica excluído com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);

  ExibirRegistros;

end;

procedure Tfrm_phonebook.Action_editExecute(Sender: TObject);
begin
  inherited;
   pho_cod:= qryCodPhonebook.AsString;
end;

procedure Tfrm_phonebook.Action_saveExecute(Sender: TObject);
 begin
//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

   inherited;
     if ds.DataSet.State in [dsEdit] then
        Exit;

  if (qrypho_id.AsInteger = 0) then
    begin
     with frm_dm.qry,sql do
      begin
       close;     // -- SQL para retornar o ultimo ID da tabela---
       Text:= ' select case when max(pho_id) is null then 1 ' +
              '      else (max(pho_id) + 1) end as maxID from phonebook '+
              ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
       Prepare;
       Open;

       if not (qry.State in [dsInsert,dsEdit])  then
        qry.Edit;

       if qrypho_id.AsInteger = 0 then
          qrypho_id.AsInteger:=Fields[0].AsInteger;

        qry.Post;
        qry.ApplyUpdates(0);

      end;
    end;


  ExibirRegistros;

end;

procedure Tfrm_phonebook.cxTabSheet_3Show(Sender: TObject);
begin
  inherited;
  cxDBTextEdit1.SetFocus;
end;

procedure Tfrm_phonebook.ExibirRegistros;
begin
  qry.Close;
  qry.SQL.Text := ' select phonebook.*, hex(pho_cod)as CodPhonebook from phonebook     ' +
                  ' where contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+') and pho_deleted_at is null ' ;
  qry.Prepare;
  qry.Open;
end;

procedure Tfrm_phonebook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_phonebook.Destroy;
  frm_phonebook := Nil;
end;

procedure Tfrm_phonebook.FormCreate(Sender: TObject);
begin
  inherited;
  //
end;

procedure Tfrm_phonebook.FormShow(Sender: TObject);
begin
  inherited;
   ExibirRegistros;
end;

procedure Tfrm_phonebook.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
end;

procedure Tfrm_phonebook.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
   //SQL para obter Número do Cod ID em Hex--------
   With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   pho_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
   Text:='insert into phonebook (pho_id,pho_cod,contract_ctr_cod,pho_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(pho_cod)+'), unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:= ' select phonebook.*, hex(pho_cod)as CodPhonebook from phonebook           ' +
                  ' where pho_cod =unhex('+QuotedStr(pho_cod)+') and pho_deleted_at is null ' ;
   qry.Prepare;
   qry.open;

   qry.Edit;
end;

end.
