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
  Vcl.ExtCtrls, cxListBox, cxCheckListBox;

type
  Tfrm_table_price = class(Tfrm_form_default)
    qrytbp_id: TFDAutoIncField;
    qrycontract_ctr_id: TIntegerField;
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
    qry_table_price_producttpp_id: TFDAutoIncField;
    qry_table_price_producttable_price_tbp_id: TIntegerField;
    qry_table_price_productproduct_pro_id: TIntegerField;
    qry_table_price_producttpp_value: TBCDField;
    qry_table_price_producttpp_dt_registration: TDateTimeField;
    qry_product: TFDQuery;
    ds_product: TDataSource;
    qry_productpro_id: TFDAutoIncField;
    qry_productpro_name: TStringField;
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
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qry_table_price_productAfterInsert(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure butonAlterarPrecoClick(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure cxTabAlterarPrecoShow(Sender: TObject);
    procedure cxTabExamesShow(Sender: TObject);
  private

  procedure limpaCache(Sender:TObject);
  public
    { Public declarations }
  end;

var
  frm_table_price: Tfrm_table_price;

implementation

{$R *.dfm}

procedure Tfrm_table_price.Action_saveExecute(Sender: TObject);
begin
  inherited;
 cxTabSheet_3.TabVisible:=True;
 cxTabExames.TabVisible:=True;
 cxTabAlterarPreco.TabVisible:=False;

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
   Application.MessageBox('Informe se a altera��o do pre�o � um desconto ou um acr�scimo!','AVISO', MB_OK + MB_ICONWARNING);
   Exit
 end;

 if Trim(cxEditPercentual.Text) <> '' then
 begin
 try
  x:= StrToFloat(cxEditPercentual.Text);
 Except
  begin
    Application.MessageBox('Valor do desconto informado � inv�lido!','AVISO', MB_OK + MB_ICONWARNING);
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
    Application.MessageBox('Valor informado � inv�lido!','AVISO', MB_OK + MB_ICONWARNING);
    cxEditValor.SetFocus;
  end;
 end;
 end;


if (trim(cxEditPercentual.Text) = '' ) and (trim(cxEditValor.Text) = '' ) then
 begin
   Application.MessageBox('Desconto ou Valor n�o!','AVISO', MB_OK + MB_ICONWARNING);
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
FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
cxTabAlterarPreco.TabVisible:=false;
end;

procedure Tfrm_table_price.limpaCache(Sender: TObject);
begin
qry.CommitUpdates();
qry_table_price_product.CommitUpdates();
end;

procedure Tfrm_table_price.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
qrytbp_dt_registration.AsDateTime:=Date;
qry.Post;
qry.Edit;

end;

procedure Tfrm_table_price.qry_table_price_productAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
 qry_table_price_producttpp_dt_registration.AsDateTime:=Now;
end;

end.
