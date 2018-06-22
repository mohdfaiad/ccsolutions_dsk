unit ufrm_product_department;

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
  ACBrSocket, ACBrCEP, frxClass, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons;

type
  Tfrm_product_department = class(Tfrm_form_default)
    qryprd_name: TStringField;
    qryprd_dt_registration: TDateTimeField;
    ds_product_sector: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid_1DBTableView1prd_id: TcxGridDBColumn;
    cxGrid_1DBTableView1prd_name: TcxGridDBColumn;
    cxGrid_1DBTableView1prd_dt_registration: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1DBTableView1prs_id: TcxGridDBColumn;
    cxGrid1DBTableView1prs_name: TcxGridDBColumn;
    cxGrid1DBTableView1prs_dt_registration: TcxGridDBColumn;
    qryprd_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryprd_id: TLongWordField;
    qryprd_deleted_at: TDateTimeField;
    edtSecoes: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    btnSalvar_Item: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    btnEditar_Item: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    btnCancel_Item: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    btnExcluir_Item: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    Action_Depart_Secoes: TActionList;
    act_save_depart_secoes: TAction;
    act_edit_depart_secoes: TAction;
    act_cancel_depart_secoes: TAction;
    act_delete_depart_secoes: TAction;
    qryCodDepartment: TStringField;
    qry_product_sector: TFDQuery;
    qry_product_sectorprs_cod: TBytesField;
    qry_product_sectorproduct_department_prd_cod: TBytesField;
    qry_product_sectorprs_id: TLongWordField;
    qry_product_sectorprs_name: TStringField;
    qry_product_sectorprs_deleted_at: TDateTimeField;
    qry_product_sectorprs_dt_registration: TDateTimeField;
    qry_product_sectorCodSetor: TStringField;
    pupMenuDepartment: TPopupMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    Cancelar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure act_save_depart_secoesExecute(Sender: TObject);
    procedure act_edit_depart_secoesExecute(Sender: TObject);
    procedure act_cancel_depart_secoesExecute(Sender: TObject);
    procedure act_delete_depart_secoesExecute(Sender: TObject);
    procedure edtSecoesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    prd_cod,prs_cod: string;
    iten_ID: Integer;
  public
    { Public declarations }
     procedure limpaCache(Sender:TObject);
     procedure ExibirRegistros;
     procedure ExibirProduct_Sector;
     procedure HabiliTarButtun(Status: Boolean);


end;

var
  frm_product_department: Tfrm_product_department;

implementation

{$R *.dfm}

uses ufrm_dm, class_required_field;

procedure Tfrm_product_department.Action_cancelExecute(Sender: TObject);
begin
  inherited;
    if result = false then
    exit;

 if (qryprd_id.AsInteger = 0) then
  begin
   if (qry_product_sector.RecordCount >0) then
    begin
      with frm_dm.qry,sql do
       begin

        Close;
        Text:= ' delete from product_sector ' +
               ' where product_department_prd_cod = unhex('+QuotedStr(prd_cod)+')' ;
        Prepare;
        ExecSQL;

        Close;
        Text:= ' delete from product_department ' +
           ' where prd_cod = unhex('+QuotedStr(prs_cod)+')' ;
        Prepare;
        ExecSQL;

       end;
    end else
     begin
       with frm_dm.qry2,sql do
        begin
         Close;
         Text:= ' delete from product_department ' +
           ' where prd_cod = unhex('+ QuotedStr(prd_cod)+')' ;
         Prepare;
         ExecSQL;
        end;
     end;

  end;

  ExibirRegistros;

end;

procedure Tfrm_product_department.Action_deleteExecute(Sender: TObject);
begin
  inherited;
   if (result = false) then
      exit;


 if Application.MessageBox('Tem certeza que deseja excluir este Departamento ? ','AVISO DE EXCLUSÃO',MB_YESNO + MB_ICONQUESTION) = mrYes then
   begin
     qry.Edit;
     qryprd_deleted_at.AsDateTime:=Now;
     qry.Post;
     qry.ApplyUpdates(0);
     Application.MessageBox('Departamento excluído com sucesso!','AVISO DO SISTEMA', MB_OK + MB_ICONINFORMATION);
   end;

    ExibirRegistros;
end;

procedure Tfrm_product_department.Action_editExecute(Sender: TObject);
begin
  inherited;
    btnSalvar_Item.Tag := 1; // Para Inserir
    prd_cod := qryCodDepartment.AsString;
    ExibirProduct_Sector;
    HabiliTarButtun(true);
end;

procedure Tfrm_product_department.Action_insertExecute(Sender: TObject);
begin
  inherited;
    btnSalvar_Item.Tag := 1; // Para Inserir
    ExibirProduct_Sector;
    HabiliTarButtun(true);
end;

procedure Tfrm_product_department.Action_saveExecute(Sender: TObject);
 begin
//--Comando para tirar o focus de todos os componentes da tela-----
   ActiveControl := nil;
  //--Cama a função para verificar se existe campos requeridos em branco----
  TCampoRequerido.TratarRequerido(qry);

   inherited;
     if ds.DataSet.State in [dsEdit] then
        Exit;

  if (qryprd_id.AsInteger = 0) then
    begin
     with frm_dm.qry,sql do
      begin
       close;     // -- SQL para retornar o ultimo ID da tabela---
       Text:= ' select case when max(prd_id) is null then 1 ' +
              '      else (max(prd_id) + 1) end as maxID from product_department '+
              ' where contract_ctr_cod = unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')';
       Prepare;
       Open;

       if not (qry.State in [dsInsert,dsEdit])  then
        qry.Edit;

       if qryprd_id.AsInteger = 0 then
          qryprd_id.AsInteger:=Fields[0].AsInteger;

        qry.Post;
        qry.ApplyUpdates(0);

      end;
    end;


  ExibirRegistros;

 end;

procedure Tfrm_product_department.act_cancel_depart_secoesExecute(Sender: TObject);
begin
  inherited;
   btnSalvar_Item.Tag := 1;
   edtSecoes.Clear;
   cxGrid1.SetFocus;
   HabiliTarButtun(true);
end;

procedure Tfrm_product_department.act_delete_depart_secoesExecute(Sender: TObject);
begin
  inherited;

  if Application.MessageBox('Deseja excluir esta Seção ?','AVISO DE EXCLUSÃO',MB_YESNO+MB_ICONQUESTION)=mrYes then
   begin
     with frm_dm.qry,sql do
       begin
       Close;      //--SQL para excluir uma Sub-Classe da Classe----
       Text:= 'Delete from product_sector where prs_cod =unhex(:prs_cod)';
       ParamByName('prs_cod').AsString := qry_product_sectorCodSetor.AsString;
       Prepare;
       ExecSQL;

       Application.MessageBox('Seção excluído com sucesso!','AVISO DE EXCLUSÃO', MB_OK + MB_ICONINFORMATION);
     end;
   end;

   btnSalvar_Item.Tag :=1;
   ExibirProduct_Sector;
   HabiliTarButtun(true);
end;

procedure Tfrm_product_department.act_edit_depart_secoesExecute(Sender: TObject);
begin
  inherited;

  btnSalvar_Item.Tag := 2; ////button com Tag = 2 -- condição onde sei que estou alterando ----
  edtSecoes.Text := qry_product_sectorprs_name.AsString;
  edtSecoes.SetFocus;
  HabiliTarButtun(true);
end;

procedure Tfrm_product_department.act_save_depart_secoesExecute(Sender: TObject);
begin
  inherited;

       //--Condição para não deixar inserir com campos em branco (vazio)------
   if (Trim(edtSecoes.Text)<>'') then
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
                    '      else (max(prs_id) + 1) end as maxID from product_sector '+
                    ' where product_department_prd_cod =unhex('+QuotedStr(prd_cod)+')';
             Prepare;
             Open;

         iten_ID:=Fields[0].AsInteger;

         Close;   //SQL para Inserir o produto do Pedido de Compra------
         Text:='insert into product_sector (prs_id, prs_cod, product_department_prd_cod, prs_name, prs_dt_registration) ' +
               ' values (:prs_id, unhex(:prs_cod), unhex(:product_department_prd_cod), :prs_name, :prs_dt_registration) ';
         ParamByName('prs_id').AsInteger                     := iten_ID;
         ParamByName('prs_cod').AsString                     := prs_cod;
         ParamByName('product_department_prd_cod').AsString  := prd_cod;
         ParamByName('prs_name').AsString                    := edtSecoes.Text;
         ParamByName('prs_dt_registration').AsDateTime       := Now;
         Prepare;
         ExecSQL;
        end;
      end else if (btnSalvar_Item.Tag = 2) then   //button com Tag = 2 -- condição onde sei que estou Alterando----
               begin
                qry_product_sector.Edit;
                qry_product_sectorprs_name.AsString := edtSecoes.Text;
                qry_product_sector.Post;
               end;




         ExibirProduct_Sector;

         edtSecoes.Clear;
         cxGrid1.SetFocus;
         btnSalvar_Item.Tag := 1;
         HabiliTarButtun(true);
    end else
    begin
      application.MessageBox('Não foi informado nenhuma Seção, Por Favor Digite um Nome !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION)
    end;
end;

procedure Tfrm_product_department.edtSecoesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key =13 then
    btnSalvar_Item.Click;
end;

Procedure Tfrm_product_department.ExibirProduct_Sector;
begin
   qry_product_sector.Close;
   qry_product_sector.SQL.Text:= ' select product_sector.*, hex(prs_cod)as CodSetor from product_sector ' +
                                 ' where product_department_prd_cod =unhex('+QuotedStr(prd_cod)+')  ' +
                                 ' and prs_deleted_at is null    ' ;
   qry_product_sector.Prepare;
   qry_product_sector.Open;

end;

procedure Tfrm_product_department.ExibirRegistros;
begin

  qry.Close;
  qry.SQL.Text:= ' select product_department.*, hex(prd_cod)as CodDepartment from product_department ' +
                 ' where contract_ctr_cod =unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+')' +
                 ' and prd_deleted_at is null    ';
  qry.Prepare;
  qry.Open;

end;

procedure Tfrm_product_department.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frm_product_department.Destroy;
  frm_product_department := Nil;
end;

procedure Tfrm_product_department.FormCreate(Sender: TObject);
begin
  inherited;
  FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
end;

procedure Tfrm_product_department.HabiliTarButtun(Status: Boolean);
begin
   btnSalvar_Item.Enabled  := Status ;
   if (qry_product_sector.IsEmpty) then
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
    if ((qry_product_sector.RecordCount >0) and (btnSalvar_Item.tag = 1)) then
     begin
      btnCancel_Item.Enabled  := not Status;
      btnExcluir_Item.Enabled := Status;
     end;
end;

procedure Tfrm_product_department.limpaCache(Sender: TObject);
 begin

  qry.CommitUpdates();
 end;

procedure Tfrm_product_department.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 //SQL para obter Número do Cod ID em Hex--------
   With frm_dm.qry,sql do
  begin
   close;
   text:= ' select hex(uuid_to_bin(uuid()))';
   prepare;
   open;

   prd_cod:=Fields[0].AsString;

   Close;          //---Insert na tabela brand inserindo os primeiros registros obrigatórios----
   Text:='insert into product_department (prd_id,prd_cod,contract_ctr_cod,prd_dt_registration) ' +
         ' select 0,unhex('+QuotedStr(prd_cod)+'), unhex('+QuotedStr(frm_dm.v_contract_ctr_cod)+'),Now()';
   Prepare;
   ExecSQL;
  end;

   qry.Close;      //--SQL para retornar o registro inserido  acima (ultimo registro)----
   qry.sql.text:= ' select product_department.*, hex(prd_cod)as CodDepartment from product_department ' +
                  ' where prd_cod = unhex('+QuotedStr(prd_cod)+') and prd_deleted_at is null';
   qry.Prepare;
   qry.open;

   qry.Edit;
end;

end.
