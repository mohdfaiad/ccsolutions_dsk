unit ufrm_product_class;

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
  ACBrSocket, ACBrCEP, frxClass, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, frxDBSet, cxDBLookupComboBox;

type
  Tfrm_product_class = class(Tfrm_form_default)
    qryprc_name: TStringField;
    qryprc_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1prc_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prc_name: TcxGridDBColumn;
    cxGrid_1DBTableView1prc_dt_registration: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    ds_product_class_sub: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    qryprc_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryprc_id: TLongWordField;
    qryprc_status: TStringField;
    qryprc_deleted_at: TDateTimeField;
    qryCodProdClass: TStringField;
    edtSubClasse: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    btnSalvar_Item: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnEditar_Item: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    btnCancel_Item: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    btnExcluir_Item: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    qry_product_class_sub: TFDQuery;
    qry_product_class_subprs_cod: TBytesField;
    qry_product_class_subcontract_ctr_cod: TBytesField;
    qry_product_class_subproduct_class_prc_cod: TBytesField;
    qry_product_class_subprs_id: TLongWordField;
    qry_product_class_subprs_name: TStringField;
    qry_product_class_subprs_deleted_at: TDateTimeField;
    qry_product_class_subprs_dt_registration: TDateTimeField;
    qry_product_class_subCodSubClass: TStringField;
    cxGrid1DBTableView1prs_id: TcxGridDBColumn;
    cxGrid1DBTableView1prs_name: TcxGridDBColumn;
    cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn;
    Action_product_class_sub: TActionList;
    act_save_product_class_sub: TAction;
    act_edit_product_class_sub: TAction;
    act_cancel_product_class_sub: TAction;
    act_delete_product_class_sub: TAction;
    dbComboxStatus: TcxDBComboBox;
    dxLayoutItem10: TdxLayoutItem;
    pupMenuProduct_Class: TPopupMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    Cancelar1: TMenuItem;
    cxGrid_1DBTableView1prc_status: TcxGridDBColumn;
    frx_db_classe: TfrxDBDataset;
    frx_db_sub_classe: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_deleteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_save_product_class_subExecute(Sender: TObject);
    procedure act_edit_product_class_subExecute(Sender: TObject);
    procedure act_cancel_product_class_subExecute(Sender: TObject);
    procedure act_delete_product_class_subExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure edtSubClasseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Action_printExecute(Sender: TObject); private
     prc_cod,prs_cod: string;
     iten_ID: Integer;
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
     procedure ExibirRegistros;
     procedure ExibirSubClasse;
     procedure HabiliTarButtun(Status: Boolean);

  end;

var
  frm_product_class: Tfrm_product_class;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_product_class.Action_cancelExecute(Sender: TObject);
begin
  inherited;
 if result = false then
    exit;

 if (qryprc_id.AsInteger = 0) then
  begin
   if (qry_product_class_sub.RecordCount >0) then
    begin
      with frm_dm.qry,sql do
       begin

        Close;
        Text:= ' delete from product_class_sub ' +
               ' where product_class_prc_cod = unhex('+QuotedStr(prc_cod)+')' ;
        Prepare;
        ExecSQL;

        Close;
        Text:= ' delete from product_class ' +
           ' where prc_cod = unhex('+QuotedStr(prc_cod)+')' ;
        Prepare;
        ExecSQL;

       end;
    end else
     begin
       with frm_dm.qry2,sql do
        begin
         Close;
         Text:= ' delete from product_class ' +
           ' where prc_cod = unhex('+ QuotedStr(prc_cod)+')' ;
         Prepare;
         ExecSQL;
        end;
     end;

  end;

  ExibirRegistros;

end;

procedure Tfrm_product_class.Action_deleteExecute(Sender: TObject);
begin
  if (result = false) then
      exit;


 if Application.MessageBox('Tem certeza que deseja excluir esta Classe e Sub-Classe ? ','AVISO DE EXCLUSÃO',MB_YESNO + MB_ICONQUESTION) = mrYes then
   begin
     qry.Edit;
     qryprc_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     Application.MessageBox('Classe do produto excluída com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);
   end;

    ExibirRegistros;

end;

procedure Tfrm_product_class.Action_editExecute(Sender: TObject);
begin
  inherited;
   btnSalvar_Item.Tag := 1; // Para Inserir
   dbComboxStatus.Enabled := True;
   prc_cod := qryCodProdClass.AsString;
   ExibirSubClasse;
   HabiliTarButtun(true);

end;

procedure Tfrm_product_class.Action_insertExecute(Sender: TObject);
begin
  inherited;
    btnSalvar_Item.Tag := 1; // Para Inserir
    ExibirSubClasse;
    dbComboxStatus.ItemIndex := 0;
    dbComboxStatus.Enabled := false;
    HabiliTarButtun(true);
end;

procedure Tfrm_product_class.Action_printExecute(Sender: TObject);
begin
  prc_cod := qryCodProdClass.AsString;
  ExibirSubClasse;
  inherited;

end;

procedure Tfrm_product_class.Action_saveExecute(Sender: TObject);
begin

//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

  inherited;
  if ds.DataSet.State in [dsEdit] then
     Exit;

  if (qryprc_id.AsInteger = 0) then
   begin
     with frm_dm.qry,sql do
     begin
       close;     // -- SQL para retornar o ultimo ID da tabela brand---
       Text:= ' select case when max(prc_id) is null then 1 ' +
              '      else (max(prc_id) + 1) end as maxID from product_class '+
              ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
       Prepare;
       Open;

       if not (qry.State in [dsInsert,dsEdit])  then
        qry.Edit;

       if qryprc_id.AsInteger = 0 then
          qryprc_id.AsInteger:=Fields[0].AsInteger;

        qry.Post;
        qry.ApplyUpdates(0);

     end;
   end;


  ExibirRegistros;

end;

procedure Tfrm_product_class.act_cancel_product_class_subExecute(Sender: TObject);
begin
   btnSalvar_Item.Tag := 1;
   edtSubClasse.Clear;
   cxGrid1.SetFocus;
   HabiliTarButtun(true);
end;

procedure Tfrm_product_class.act_edit_product_class_subExecute(Sender: TObject);
begin
  //--Condição para só deixar Alterar produtos no Pedido em Status de Aberto ------
   if (qryprc_status.OldValue  <> 'A') and ((qryprc_status.Value  <> 'A') or (qryprc_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), Sub-Classe em Classe que estejam com Status de Aberto !','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     edtSubClasse.Clear;
     cxGrid1.SetFocus;
     exit;
   end;

  btnSalvar_Item.Tag := 2; ////button com Tag = 2 -- condição onde sei que estou alterando um produto do pedido----
  edtSubClasse.Text := qry_product_class_subprs_name.AsString;
  edtSubClasse.SetFocus;
  HabiliTarButtun(true);
end;

procedure Tfrm_product_class.act_delete_product_class_subExecute(Sender: TObject);
begin
  //--Condição para só deixar Excluir Sub-Classe da Classe em Status de Aberto ------
   if (qryprc_status.OldValue  <> 'A') and ((qryprc_status.Value  <> 'A') or (qryprc_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido ( Excluir ), Sub-Classe em Classe que estejam com Status de Aberto!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     edtSubClasse.Clear;
     cxGrid1.SetFocus;
     exit;
   end;

  if Application.MessageBox('Deseja excluir esta Sub-Classe ?','AVISO DE EXCLUSÃO',MB_YESNO+MB_ICONQUESTION)=mrYes then
   begin
     with frm_dm.qry,sql do
       begin
       Close;      //--SQL para excluir uma Sub-Classe da Classe----
       Text:= 'Delete from product_class_sub where prs_cod =unhex(:prs_cod)';
       ParamByName('prs_cod').AsString := qry_product_class_subCodSubClass.AsString;
       Prepare;
       ExecSQL;

       Application.MessageBox('Sub-Classe excluído com sucesso!','AVISO DE EXCLUSÃO', MB_OK + MB_ICONINFORMATION);
     end;
   end;

   btnSalvar_Item.Tag :=1;
   ExibirSubClasse;
   HabiliTarButtun(true);
end;

procedure Tfrm_product_class.act_save_product_class_subExecute(Sender: TObject);
begin

 //--Condição para só deixar inserir ou alterar sub-classe em classe em Status de Aberto ------

   if (qryprc_status.OldValue  <> 'A') and ((qryprc_status.Value  <> 'A') or (qryprc_status.Value  = ''))  then
   begin
     Application.MessageBox('Só é permitido (Inserir ou Alterar), Sub-Classe em Classe que estejam com Status de Aberto!','AVISO DO SISTEMA', MB_ICONINFORMATION + MB_OK);
     edtSubClasse.Clear;
     cxGrid1.SetFocus;
     exit;
   end;
       //--Condição para não deixar inserir com campos em branco (vazio)------
   if (Trim(edtSubClasse.Text)<>'') then
    begin
     if (btnSalvar_Item.Tag = 1) then  //button com Tag = 1 -- condição onde sei que estou inserindo----
      begin
        With frm_dm.qry,sql do
        begin
         close;   //SQL para obter o Codigo ID em Hex-----
         text:= 'select hex(uuid_to_bin(uuid()))';
         prepare;
         open;

         prs_cod:=Fields[0].AsString;


             close;  // SQL para Obter o proximo ID ta tabela-----
             Text:= ' select case when max(prs_id) is null then 1 ' +
                    '      else (max(prs_id) + 1) end as maxID from product_class_sub '+
                    ' where product_class_prc_cod =unhex('+QuotedStr(prc_cod)+')';
             Prepare;
             Open;

         iten_ID:=Fields[0].AsInteger;

         Close;   //SQL para Inserir o produto do Pedido de Compra------
         Text:='insert into product_class_sub (prs_id, prs_cod, contract_ctr_cod,product_class_prc_cod, prs_name, prs_dt_registration) ' +
               ' values (:prs_id, unhex(:prs_cod), unhex(:contract_ctr_cod), unhex(:product_class_prc_cod), :prs_name, :prs_dt_registration) ';
         ParamByName('prs_id').AsInteger               := iten_ID;
         ParamByName('prs_cod').AsString               := prs_cod;
         ParamByName('contract_ctr_cod').AsString      := frm_dm.v_contract_ctr_cod;
         ParamByName('product_class_prc_cod').AsString := qryCodProdClass.AsString;
         ParamByName('prs_name').AsString              := edtSubClasse.Text;
         ParamByName('prs_dt_registration').AsDateTime := Now;
         Prepare;
         ExecSQL;
        end;
      end else if (btnSalvar_Item.Tag = 2) then   //button com Tag = 2 -- condição onde sei que estou Alterando----
               begin
                qry_product_class_sub.Edit;
                qry_product_class_subprs_name.AsString := edtSubClasse.Text;
                qry_product_class_sub.Post;
               end;




         ExibirSubClasse;

         edtSubClasse.Clear;
         cxGrid1.SetFocus;
         btnSalvar_Item.Tag := 1;
         HabiliTarButtun(true);
    end else
    begin
      application.MessageBox('Não foi informado nenhum nome para Sub-Classe, Por Favor Digite um Nome !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION)
    end;

end;

procedure Tfrm_product_class.cxButton1Click(Sender: TObject);
begin
  inherited;
  //
end;

procedure Tfrm_product_class.edtSubClasseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key =13 then
   btnSalvar_Item.Click;
end;

procedure Tfrm_product_class.ExibirRegistros;
begin

  qry.close;
  qry.SQL.Text:= ' select product_class.*, hex(prc_cod)as CodProdClass from product_class  ' +
                 ' where contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+') ' +
                 ' and prc_deleted_at is null ';
  qry.Prepare;
  qry.Open;

end;

procedure Tfrm_product_class.ExibirSubClasse;
begin
  qry_product_class_sub.Close;
  qry_product_class_sub.SQL.Text:= ' select product_class_sub.*, hex(prs_cod)as CodSubClass from product_class_sub  ' +
                                   ' where product_class_prc_cod =unhex('+QuotedStr(prc_cod)+')'+
                                   ' and prs_deleted_at is null  ';
  qry_product_class_sub.Prepare;
  qry_product_class_sub.Open;
end;

procedure Tfrm_product_class.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_product_class.Destroy;
  frm_product_class := Nil;
end;

procedure Tfrm_product_class.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_product_class.FormShow(Sender: TObject);
begin
  inherited;
   ExibirRegistros;
end;

procedure Tfrm_product_class.HabiliTarButtun(Status: Boolean);
begin
    btnSalvar_Item.Enabled  := Status ;
   if (qry_product_class_sub.IsEmpty) then
    begin
      btnEditar_Item.Enabled  := not Status;
      btnExcluir_Item.Enabled := not Status;
      btnCancel_Item.Enabled  := not Status;
    end else
      begin
       btnCancel_Item.Enabled  := not Status;
       btnEditar_Item.Enabled  := Status;
       btnExcluir_Item.Enabled := not Status;
      end;
   if btnSalvar_Item.tag = 2 then
    begin
     btnEditar_Item.Enabled := not Status;
     btnCancel_Item.Enabled  := Status;
     btnExcluir_Item.Enabled := not Status;
    end;
    if ((qry_product_class_sub.RecordCount >0) and (btnSalvar_Item.tag = 1)) then
     begin
      btnCancel_Item.Enabled  := not Status;
      btnExcluir_Item.Enabled := Status;
     end;
end;

procedure Tfrm_product_class.limpaCache(Sender: TObject);
begin
   qry.CommitUpdates();
end;

procedure Tfrm_product_class.qryAfterInsert(DataSet: TDataSet);
begin
 inherited;
   //SQL para obter Número do Cod ID em Hex--------
   With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   prc_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
   Text:='insert into product_class (prc_id,prc_cod,contract_ctr_cod,prc_status,prc_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(prc_cod)+'), unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'), ''A'' , Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:= ' select product_class.*, hex(prc_cod)as CodProdClass from product_class ' +
                  ' where prc_cod = unhex('+QuotedStr(prc_cod)+') and prc_deleted_at is null';
   qry.Prepare;
   qry.open;

   qry.Edit;
end;

end.
