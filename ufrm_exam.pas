unit ufrm_exam;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxShellComboBox,
  QImport3Wizard, QExport4Dialog, cxBarEditItem, ACBrSocket, ACBrCEP, frxClass,
  Vcl.DBCtrls, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList;

type
  Tfrm_exam = class(Tfrm_form_default)
    qrypro_type: TStringField;
    qrypro_name: TStringField;
    qrypro_tag: TStringField;
    qrypro_gender: TStringField;
    qrypro_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1pro_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_type: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_tag: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_gender: TcxGridDBColumn;
    cxGrid_1DBTableView1pro_dt_registration: TcxGridDBColumn;
    cxDBTextNome: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCombTipo: TcxDBComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    qry_material: TFDQuery;
    ds_material: TDataSource;
    qrypro_initials: TStringField;
    qrypro_annotation: TMemoField;
    qrypro_status: TStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCombStatus: TcxDBComboBox;
    dxLayoutItem12: TdxLayoutItem;
    qrypro_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrymaterial_mat_cod: TBytesField;
    qrysupplier_sup_cod: TBytesField;
    qryproduct_class_prc_cod: TBytesField;
    qryproduct_class_sub_prs_cod: TBytesField;
    qrymanufacturer_man_cod: TBytesField;
    qrybrand_bra_cod: TBytesField;
    qryncm_ncm_cod: TBytesField;
    qryproduct_unit_pru_cod: TBytesField;
    qrypro_id: TLongWordField;
    qrypro_barcod: TStringField;
    qrypro_barcod_manufacturer: TStringField;
    qrypro_height: TBCDField;
    qrypro_width: TBCDField;
    qrypro_length: TBCDField;
    qrypro_weight: TBCDField;
    qrypro_liter: TBCDField;
    qrypro_deleted_at: TDateTimeField;
    qrypro_description: TMemoField;
    qry_materialmat_id: TLongWordField;
    qry_materialmat_name: TStringField;
    qry_materialcontract_ctr_cod: TBytesField;
    qry_materialmat_cod: TBytesField;
    lookupComboBoxMaterial: TcxLookupComboBox;
    dxLayoutItem16: TdxLayoutItem;
    qrycodMaterial: TStringField;
    qry_materialcodMaterial: TStringField;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    qrypro_delivery_term: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure cxTabSheet_2Show(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure lookupComboBoxMaterialPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
    pro_cod:string;
  public
    { Public declarations }
  end;

var
  frm_exam: Tfrm_exam;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_exam.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if (qrypro_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from product ' +
         ' where pro_cod = ' + pro_cod;
  Prepare;
  ExecSQL;

  qry.Close;
  qry.sql.text:= ' select product.*,concat(''0x'',hex(material_mat_cod)) as codMaterial from product ' +
                 ' where pro_deleted_at is null';
  qry.Prepare;
  qry.open;
end;
end;

procedure Tfrm_exam.Action_deleteExecute(Sender: TObject);
begin
 if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrypro_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     qry.Close;
     qry.sql.text:= ' select product.*,concat(''0x'',hex(material_mat_cod)) as codMaterial from product ' +
                    ' where pro_deleted_at is null ';
     qry.Prepare;
     qry.open;
    end;
end;

procedure Tfrm_exam.Action_saveExecute(Sender: TObject);
begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(pro_id) is null then 1 ' +
          '      else (max(pro_id) + 1) end as maxID from product '+
          ' where contract_ctr_cod = unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')';
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrypro_id.AsInteger = 0 then
    qrypro_id.AsInteger:=Fields[0].AsInteger;

  end;

  inherited;
  if ds.DataSet.State in [dsEdit] then
      Exit;

       qry.Close;
       qry.sql.text:= ' select product.*,concat(''0x'',hex(material_mat_cod)) as codMaterial from product ' +
                      ' where pro_deleted_at is null ';
       qry.Prepare;
       qry.open;
end;

procedure Tfrm_exam.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  //qry_material.Locate('mat_name',lookupComboBoxMaterial.Text,[]);
  qrymaterial_mat_cod.Value:=qry_materialmat_cod.Value;
end;

procedure Tfrm_exam.cxTabSheet_2Show(Sender: TObject);
begin
  inherited;
   qry_material.Locate('codMaterial',  qrycodMaterial.AsString,[]);
   lookupComboBoxMaterial.Text:=qry_materialmat_name.AsString;
  //--Setar os referidos valores por padrão--
  cxDBCombTipo.ItemIndex   :=1;
  cxDBCombStatus.ItemIndex :=0;
  //--Necessário atribuir os valores dos comboBox na Qry por motivo da validação dos campos Requido--
  qrypro_status.AsString   := cxDBCombStatus.Text;
  qrypro_type.AsString     := cxDBCombTipo.Text;
  cxDBTextNome.SetFocus;

end;

procedure Tfrm_exam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_exam.Destroy;
  frm_exam := Nil;
end;

procedure Tfrm_exam.lookupComboBoxMaterialPropertiesPopup(Sender: TObject);
begin
  inherited;
  qry_material.Close;
  qry_material.Prepare;
  qry_material.Open;
end;

procedure Tfrm_exam.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   pro_cod:=Fields[0].AsString;

   Close;
   Text:='insert into product (pro_id,pro_cod,contract_ctr_cod) ' +
         ' select 0,'+ pro_cod + ', unhex(' + QuotedStr(frm_dm.v_contract_ctr_cod) + ')';
   Prepare;
   ExecSQL;
  end;

   qry.Close;
   qry.sql.text:= ' select product.*,concat(''0x'',hex(material_mat_cod)) as codMaterial from product ' +
                  ' where pro_cod = ' + pro_cod +
                  ' and pro_deleted_at is null ' +
                  ' and pro_type = ''S''';

   qry.Prepare;
   qry.open;
   qry.Edit;
   qrypro_dt_registration.AsDateTime:=Now;
end;

end.
