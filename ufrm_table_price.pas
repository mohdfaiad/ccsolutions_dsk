unit ufrm_table_price;

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
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, cxDBLookupComboBox,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxRadioGroup, cxCurrencyEdit,
  Vcl.ExtCtrls, cxListBox, cxCheckListBox,class_table_price, cxLookupEdit,
  cxDBLookupEdit, cxLabel;

type
  Tfrm_table_price = class(Tfrm_form_default)
    qrytbp_name: TStringField;
    qrytbp_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1tbp_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1tbp_name: TcxGridDBColumn;
    cxGrid_1DBTableView1tbp_dt_registration: TcxGridDBColumn;
    dbedit_nome: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxTabExames: TcxTabSheet;
    qry_table_price_product: TFDQuery;
    ds_table_price_product: TDataSource;
    qry_table_price_producttpp_value: TBCDField;
    qry_table_price_producttpp_dt_registration: TDateTimeField;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    qry_table_price_productvlrAntigo: TBCDField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    cxGrid2DBTableView1tpp_id: TcxGridDBColumn;
    cxGrid2DBTableView1table_price_tbp_id: TcxGridDBColumn;
    cxGrid2DBTableView1product_pro_id: TcxGridDBColumn;
    cxGrid2DBTableView1tpp_value: TcxGridDBColumn;
    cxGrid2DBTableView1tpp_dt_registration: TcxGridDBColumn;
    cxTabAlterarPreco: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxRadioDesconto: TcxRadioButton;
    cxEditPercentual: TcxTextEdit;
    cxRadioAcrescimo: TcxRadioButton;
    cxEditValor: TcxTextEdit;
    cxButtonConfirma: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    cxGridDBTableView1tpp_id: TcxGridDBColumn;
    cxGridDBTableView1table_price_tbp_id: TcxGridDBColumn;
    cxGridDBTableView1product_pro_id: TcxGridDBColumn;
    cxGridDBTableView1tpp_value: TcxGridDBColumn;
    cxGridDBTableView1tpp_dt_registration: TcxGridDBColumn;
    cxGridDBTableView1vlrAntigo: TcxGridDBColumn;
    butonAlterarPreco: TdxBarButton;
    qrytbp_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qrytbp_status: TStringField;
    qrytbp_deleted_at: TDateTimeField;
    qry_table_price_producttpp_cod: TBytesField;
    qry_table_price_producttable_price_tbp_cod: TBytesField;
    qry_table_price_productproduct_pro_cod: TBytesField;
    qry_table_price_producttpp_deleted_at: TDateTimeField;
    qrytbp_id: TLongWordField;
    qry_table_price_producttpp_id: TLongWordField;
    qryconcat0xhextbp_cod: TStringField;
    qry_table_price_productpro_cod: TStringField;
    dxLayoutGroup3: TdxLayoutGroup;
    cxTextEditValor: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxLookupComboBoxExame: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    qry_productproCod: TStringField;
    qry_productpro_name: TStringField;
    qry_productpro_cod: TBytesField;
    qry_table_price_productpro_name: TStringField;
    qry_table_price_producttppCod: TStringField;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qry_table_price_productAfterInsert(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure butonAlterarPrecoClick(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxTabAlterarPrecoShow(Sender: TObject);
    procedure cxTabExamesShow(Sender: TObject);
    procedure qry_table_price_productBeforePost(DataSet: TDataSet);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure cxGrid2DBTableView1product_pro_idPropertiesCloseUp(
      Sender: TObject);
    procedure cxLookupComboBoxExamePropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBoxExamePropertiesPopup(Sender: TObject);
    procedure qry_table_price_productAfterPost(DataSet: TDataSet);
  private
    FTable_price:TTable_price;
    tbp_cod,tpp_cod:string;
  procedure limpaCache(Sender:TObject);
  public
    { Public declarations }
  end;

var
  frm_table_price: Tfrm_table_price;

implementation

{$R *.dfm}

procedure Tfrm_table_price.Action_cancelExecute(Sender: TObject);
begin
  inherited;
if (qrytbp_id.AsInteger = 0) and (not(qry.State in [dsEdit])) then
 with frm_dm.qry,sql do
 begin
  Close;
  Text:= ' delete from table_price ' +
         ' where tbp_cod = ' + tbp_cod;
  Prepare;
  ExecSQL;

  qry.Close;
  qry.sql.text:= ' select table_price.*,concat(''0x'',hex(tbp_cod)) from table_price' +
                 ' where tbp_deleted_at is null';
  qry.Prepare;
  qry.open;
 end;
end;

procedure Tfrm_table_price.Action_deleteExecute(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir o Registro?','DELETE', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2)
    = IDYES then
    begin
     qry.Edit;
     qrytbp_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);

     qry.Close;
     qry.sql.text:= ' select table_price.*,concat(''0x'',hex(tbp_cod)) from table_price ' +
                    ' where tbp_deleted_at is null ';
     qry.Prepare;
     qry.open;
    end;
end;

procedure Tfrm_table_price.Action_editExecute(Sender: TObject);
begin
  inherited;
 tbp_cod:=qryconcat0xhextbp_cod.AsString;
end;

procedure Tfrm_table_price.Action_saveExecute(Sender: TObject);
begin
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(tbp_id) is null then 1 ' +
          '      else (max(tbp_id) + 1) end as maxID from table_price '+
          ' where contract_ctr_cod = ' + frm_dm.v_contract_ctr_cod;
   Prepare;
   Open;
   if not (qry.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qrytbp_id.AsInteger = 0 then
    qrytbp_id.AsInteger:=Fields[0].AsInteger;
  end;

  inherited;
       qry.Close;
       qry.sql.text:= ' select table_price.*,concat(''0x'',hex(tbp_cod)) from table_price ' +
                      ' where tbp_deleted_at is null ';
       qry.Prepare;
       qry.open;
  end;


procedure Tfrm_table_price.butonAlterarPrecoClick(Sender: TObject);
begin
  inherited;
 Action_editExecute(Sender);
 cxTabSheet_3.TabVisible:=False;
 cxTabExames.TabVisible:=False;
 cxTabAlterarPreco.TabVisible:=True;
 cxEditValor.Clear;
 cxEditPercentual.Clear;
 cxButtonConfirma.Caption:='Confirmar';
 cxRadioDesconto.Checked:=false;
 cxRadioAcrescimo.Checked:=false;
 cxTabAlterarPreco.Show;
end;

procedure Tfrm_table_price.cxButton1Click(Sender: TObject);
var
x:Double;
begin
if (not(cxRadioDesconto.Checked)) and (not(cxRadioAcrescimo.Checked)) then
 begin
   Application.MessageBox('Informe se a alteração do preço é um desconto ou um acréscimo!','AVISO', MB_OK + MB_ICONWARNING);
   Exit
 end;

 if Trim(cxEditPercentual.Text) <> '' then
 begin
 try
  x:= StrToFloat(cxEditPercentual.Text);
 Except
  begin
    Application.MessageBox('Valor do desconto informado é inválido!','AVISO', MB_OK + MB_ICONWARNING);
    cxEditPercentual.SetFocus;
  end;
 end;
 end;

 if Trim(cxEditValor.Text) <> '' then
 begin
 try
  x:= StrToFloat(cxEditValor.Text);
 Except
  begin
    Application.MessageBox('Valor informado é inválido!','AVISO', MB_OK + MB_ICONWARNING);
    cxEditValor.SetFocus;
  end;
 end;
 end;


if (trim(cxEditPercentual.Text) = '' ) and (trim(cxEditValor.Text) = '' ) then
 begin
   Application.MessageBox('Desconto ou Valor não!','AVISO', MB_OK + MB_ICONWARNING);
   Exit;
 end;


 if cxButtonConfirma.Caption = 'Confirmar' then
  begin
   if cxEditPercentual.Text <> ''  then
    begin
     qry_table_price_product.First;
      while not qry_table_price_product.Eof do
       begin
        qry_table_price_product.Edit;
        if cxRadioDesconto.Checked then
         qry_table_price_producttpp_value.AsFloat:=qry_table_price_productvlrAntigo.AsFloat * (1-(StrToFloat(cxEditPercentual.Text) / 100))
        else
        qry_table_price_producttpp_value.AsFloat:=qry_table_price_productvlrAntigo.AsFloat * (1+(StrToFloat(cxEditPercentual.Text) / 100));
        qry_table_price_product.Post;
        qry_table_price_product.Next;
       end;
     cxButtonConfirma.Caption:='Desfazer';
     cxEditValor.Clear;
     Exit;
    end;

   if cxEditValor.Text <> ''  then
    begin
     qry_table_price_product.First;
     while not qry_table_price_product.Eof do
       begin
        qry_table_price_product.Edit;
        qry_table_price_producttpp_value.AsFloat:=StrToFloat(cxEditValor.Text);
        qry_table_price_product.Post;
        qry_table_price_product.Next;
       end;
     cxButtonConfirma.Caption:='Desfazer';
     Exit;
    end;
  end;

 if cxButtonConfirma.Caption = 'Desfazer' then
  begin
   qry_table_price_product.First;
   while not qry_table_price_product.Eof do
    begin
     qry_table_price_product.Edit;
     qry_table_price_producttpp_value.AsFloat:=qry_table_price_productvlrAntigo.AsFloat;
     qry_table_price_product.Post;
     qry_table_price_product.Next;
    end;
   cxButtonConfirma.Caption:='Confirmar';
  end;
 end;

procedure Tfrm_table_price.cxGrid2DBTableView1product_pro_idPropertiesCloseUp(
  Sender: TObject);
var
i:integer;
begin
  inherited;

end;

procedure Tfrm_table_price.cxLookupComboBoxExamePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if not (qry_table_price_product.State in [dsEdit]) then
   qry_table_price_product.Edit;

   qry_product.Locate('pro_name',cxLookupComboBoxExame.Text,[]);


end;

procedure Tfrm_table_price.cxLookupComboBoxExamePropertiesPopup(
  Sender: TObject);
begin
  inherited;
  qry_product.Close;
  qry_product.Prepare;
  qry_product.Open;
end;

procedure Tfrm_table_price.cxTabAlterarPrecoShow(Sender: TObject);
begin
  inherited;
 dxLayoutGroup8.CaptionOptions.Text:='Exames da tabela '+ qrytbp_name.AsString;
end;

procedure Tfrm_table_price.cxTabExamesShow(Sender: TObject);
begin
  inherited;
cxGrid2.Top:=0;
cxGrid2.Height:=dxLayoutControl2.Height - 60;
end;

procedure Tfrm_table_price.FormCreate(Sender: TObject);
begin
  inherited;
if not Assigned(FTable_price) then
 FTable_price := TTable_price.Create;



FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
cxTabAlterarPreco.TabVisible:=false;
end;

procedure Tfrm_table_price.limpaCache(Sender: TObject);
begin
qry.CommitUpdates();
end;

procedure Tfrm_table_price.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   tbp_cod:=Fields[0].AsString;

   Close;
   Text:='insert into table_price (tbp_id,tbp_cod,contract_ctr_cod) ' +
         ' select 0,'+ tbp_cod + ',' +  frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;
  end;

   qry.Close;
   qry.sql.text:= ' select table_price.*,concat(''0x'',hex(tbp_cod)) from table_price ' +
                  ' where tbp_cod = ' + tbp_cod +
                  ' and tbp_deleted_at is null';
   qry.Prepare;
   qry.open;
   qry.Edit;
   qrytbp_dt_registration.AsDateTime:=Now;

end;

procedure Tfrm_table_price.qry_table_price_productAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   close;
   text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
   prepare;
   open;

   tpp_cod:=Fields[0].AsString;

   Close;
   Text:='insert into table_price_product(tpp_id,tpp_cod,table_price_tbp_cod) ' +
         ' select 0,'+ tpp_cod + ',' + tbp_cod;
   Prepare;
   ExecSQL;
  end;

   qry_table_price_product.Close;
   qry_table_price_product.sql.text:= 'select table_price_product.*,tpp_value as vlrAntigo, ' +
       ' concat(''0x'',hex(product_pro_cod)) as pro_cod,pro_name,  ' +
       ' concat(''0x'',hex(tpp_cod)) as tppCod from table_price_product ' +
       ' left join product on pro_cod = product_pro_cod ' +
       ' where tpp_deleted_at is null ' +
       ' and table_price_tbp_cod = ' + tbp_cod;
   qry_table_price_product.Prepare;
   qry_table_price_product.open;

   qry_table_price_product.Locate('tppCod',tpp_cod,[]);
   qry_table_price_product.Edit;
   qry_table_price_producttpp_dt_registration.AsDateTime:=Now;
end;

procedure Tfrm_table_price.qry_table_price_productAfterPost(DataSet: TDataSet);
begin
  inherited;
qry_table_price_product.Refresh;
cxLookupComboBoxExame.Text:='' ;
cxTextEditValor.Clear;
end;

procedure Tfrm_table_price.qry_table_price_productBeforePost(DataSet: TDataSet);
begin
  inherited;
with frm_dm.qry,sql do
 begin
   close;
   Text:= ' select case when max(tpp_id) is null then 1 ' +
          '      else (max(tpp_id) + 1) end as maxID from table_price_product '+
          ' where table_price_tbp_cod = ' + tbp_cod;
   Prepare;
   Open;

   if not (qry_table_price_product.State in [dsInsert,dsEdit])  then
    qry.Edit;

   if qry_table_price_producttpp_id.AsInteger = 0 then
    qry_table_price_producttpp_id.AsInteger:=Fields[0].AsInteger;
    qry_table_price_productproduct_pro_cod.Value:=qry_productpro_cod.Value;
    qry_table_price_producttpp_value.AsFloat:=StrToFloat(cxTextEditValor.Text);
  end;
end;

end.
