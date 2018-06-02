unit ufrm_contract_user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_default, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDBData, cxContainer, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  cxShellComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.ImageList, Vcl.ImgList,
  QExport4Dialog, QImport3Wizard, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  ACBrBase, ACBrEnterTab, Vcl.Menus, dxBar, cxBarEditItem, cxClasses,
  System.Actions, Vcl.ActnList, dxStatusBar, cxTextEdit, cxLabel, cxGroupBox,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, ufrm_dm, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCheckBox, Vcl.StdCtrls, frxExportDOCX, frxClass, frxExportBaseDialog, frxExportPDF,
  Contract_User.Model, Contract_User.Dao, ACBrSocket, ACBrCEP, cxCheckListBox, AdvOfficeTabSet;

type
  Tfrm_contract_user = class(Tfrm_default)
    edtNome: TcxTextEdit;
    edtSobrenome: TcxTextEdit;
    edtUsuario: TcxTextEdit;
    edtEmail: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edtDtNasc: TcxDateEdit;
    CheckBoxAdm: TcxCheckBox;
    cxGridDBTable_ctr_usr_id: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_first_name: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_last_name: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_username: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_email: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_admin: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_status: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_logged: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_dt_registration: TcxGridDBColumn;
    cxGridDBTable_ctr_usr_dt_birth: TcxGridDBColumn;
    edtSenha: TcxTextEdit;
    edtConf_Senha: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    memctr_usr_cod: TBytesField;
    memcontract_ctr_cod: TBytesField;
    memctr_usr_id: TLongWordField;
    memctr_usr_first_name: TStringField;
    memctr_usr_last_name: TStringField;
    memctr_usr_username: TStringField;
    memctr_usr_password: TBytesField;
    memctr_usr_email: TStringField;
    memctr_usr_dt_birth: TDateField;
    memctr_usr_logged: TStringField;
    memctr_usr_admin: TStringField;
    memctr_usr_status: TStringField;
    memctr_usr_deleted_at: TDateTimeField;
    memctr_usr_dt_registration: TDateTimeField;
    tbsht_6: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    AdvOfficeTabSet1: TAdvOfficeTabSet;
    cxListMenu: TcxCheckListBox;
    cxListEmps: TcxCheckListBox;
    memContract_User_Enterprise: TFDMemTable;
    memContract_User_Enterprisecte_usr_ent_cod: TBytesField;
    memContract_User_Enterprisecontract_user_ctr_usr_cod: TBytesField;
    memContract_User_Enterpriseenterprise_ent_cod: TBytesField;
    memContract_User_Enterprisecte_usr_ent_id: TLongWordField;
    memContract_User_Enterprisecte_deleted_at: TDateTimeField;
    memContract_User_Enterprisecte_dt_registration: TDateTimeField;
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure Action_cancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbsht_2Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbsht_6Show(Sender: TObject);
    procedure montar_empresa;
    procedure AdvOfficeTabSet1Change(Sender: TObject);
    procedure cxListEmpsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxListEmpsClickCheck(Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
  private
    { Private declarations }
      listEmp,listAction:TStrings;
  public
    { Public declarations }

    procedure LimpaCampos;
    procedure PreecherCampos;
    procedure ExibirGrid;

  end;

var
  frm_contract_user: Tfrm_contract_user;
  modulo: string;

implementation

{$R *.dfm}

uses Contract_User_Enterprise.Dao, Contract_User_Enterprise.Model;

{ Tfrm_contract_user }

procedure Tfrm_contract_user.Action_cancelExecute(Sender: TObject);
begin
  inherited;
    ExibirGrid;
end;

procedure Tfrm_contract_user.Action_editExecute(Sender: TObject);
begin
  inherited;
  //Se tag = 2 é para alterar
   Self.Tag := 2;
   PreecherCampos;
end;

procedure Tfrm_contract_user.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //Se tag = 1 é para inserir
    Self.Tag := 1;
    LimpaCampos;
end;

procedure Tfrm_contract_user.Action_saveExecute(Sender: TObject);
 var
  Contract_User: TContract_user_Model;
  Dao          : TContract_User_Dao;
begin

     Contract_User:= TContract_user_Model.Create;
     Dao          := TContract_User_Dao.Create;

     try  //Tag = 1 para Inserir
      if (Trim(edtSenha.Text)= Trim(edtConf_Senha.Text)) then
       begin

        if Self.Tag = 1 then
         begin                         //#Falta pegar ID do Contrato
           Contract_User.ctr_id             := 1;
           Contract_User.ctr_usr_first_name := edtNome.Text;
           Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
           Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
           Contract_User.ctr_usr_username   := edtUsuario.Text;
           Contract_User.ctr_usr_email      := edtEmail.Text;
           Contract_User.ctr_usr_password   := edtSenha.Text;
           if CheckBoxAdm.Checked then
           Contract_User.ctr_usr_admin      := 'S'
           else Contract_User.ctr_usr_admin := 'N';

           Dao.Contract_User_Create(Contract_User);
         end       //Tag = 2 para Alterar
         else if Self.Tag = 2 then
         begin
           Contract_User.ctr_usr_id         := memctr_usr_id.AsInteger;
           Contract_User.ctr_usr_first_name := edtNome.Text;
           Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
           Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
           Contract_User.ctr_usr_username   := edtUsuario.Text;
           Contract_User.ctr_usr_password   := edtSenha.Text;
           Contract_User.ctr_usr_email      := edtEmail.Text;
           if CheckBoxAdm.Checked then
           Contract_User.ctr_usr_admin      := 'S'
           else Contract_User.ctr_usr_admin := 'N';

           Dao.Contract_User_Update(Contract_User);
         end;
       end else begin
         Application.MessageBox('Senha de usuário não conferem, por favor confirmar senha ! ','AVISO DO SISTEMA',MB_OK+MB_ICONERROR);
         Abort
       end;

     finally
       Contract_User.Free;
       Dao.Free;
       ExibirGrid;
     end;

   inherited;
end;

procedure Tfrm_contract_user.AdvOfficeTabSet1Change(Sender: TObject);
var
  c: Integer;
begin
//  subs := TStringList.Create;

 frm_dm.qry3.close;
 frm_dm.qry3.SQL.Clear;
 frm_dm.qry3.SQL.Text := ' select ctr_usr_act_action_name from contract_user_action ' +
            ' where ctr_usr_act_user_cod = ' +frm_dm.v_ctr_usr_cod +
            ' and ctr_usr_act_action_name =:menu';


  frm_dm.qry_action.Close;
  frm_dm.qry_action.ParamByName('sys_act_option').Value := AdvOfficeTabSet1.AdvOfficeTabs[AdvOfficeTabSet1.ActiveTabIndex].Caption;
  frm_dm.qry_action.ParamByName('sys_act_module').Value := Modulo;

   frm_dm.qry_action.Prepared;
   frm_dm.qry_action.Open;

   frm_dm.qry_action.First;
   cxListMenu.Items.clear;
   listAction.Clear;
   c:=0;
  //    subs.clear;
   while not frm_dm.qry_action.Eof do
    begin
     cxListMenu.AddItem(frm_dm.qry_action.FieldByName('sys_act_subtitle').AsString);
     listAction.Add(frm_dm.qry_action.FieldByName('sys_Act_name').AsString);
  //      subs.add((qvi2.FieldByName('menu_cod').AsString));
     frm_dm.qry3.ParamByName('menu').AsString :=frm_dm.qry_action.FieldByName('sys_Act_name').AsString;
     frm_dm.qry3.Prepare;
     frm_dm.qry3.Open;

      TcxCheckListBoxItem(cxListMenu.Items[c]).Checked:= not frm_dm.qry3.IsEmpty;
  //      qvi.close;
      c:=c + 1;
      frm_dm.qry3.Close;
      frm_dm.qry_action.Next;
    end;

end;

procedure Tfrm_contract_user.cxListEmpsClick(Sender: TObject);
begin
  inherited;
    memContract_User_Enterprise.Locate('enterprise_ent_cod',
    listEmp[cxListEmps.ItemIndex],[]);
end;

procedure Tfrm_contract_user.cxListEmpsClickCheck(Sender: TObject; AIndex: Integer; APrevState,
  ANewState: TcxCheckBoxState);
 var
  cdusu,cdemp:string;
  User_Enterprise : TContract_User_Enterprise_Model;
  Dao             : TContract_User_Enterprise_Dao;
begin
  if TcxCheckListBoxItem(cxListEmps.Items[cxListEmps.ItemIndex]).Checked then
   begin
    if not  memContract_User_Enterprise.Locate('enterprise_ent_cod',
     listEmp[cxListEmps.ItemIndex],[]) then
      begin
//       qry_contract_user_enterprise.Insert;
//       qry_contract_user_enterprisectr_usr_ent_ent_id.AsString:=listEmp[cxListEmps.ItemIndex];
//       qry_contract_user_enterprise.Post;
        try
          User_Enterprise := TContract_User_Enterprise_Model.Create;
          Dao             := TContract_User_Enterprise_Dao.Create;

          User_Enterprise.contract_user_ctr_usr_cod := frm_dm.p_ctr_usr_cod;
        //  User_Enterprise.enterprise_ent_cod        := ;

        finally
        end;


      end;
   end;

  if not TcxCheckListBoxItem(cxListEmps.Items[cxListEmps.ItemIndex]).Checked then
   begin
     memContract_User_Enterprise.Locate('enterprise_ent_cod',
     listEmp[cxListEmps.ItemIndex],[]);
   // qry_contract_user_enterprise.delete;
   end;


end;

procedure Tfrm_contract_user.ExibirGrid;
var
  Dao : TContract_User_Dao;
begin
   mem.Close;
   Dao :=TContract_User_Dao.Create;
   try
     mem.Data := Dao.QryRead;
   finally
     Dao.Free;
   end;

end;

procedure Tfrm_contract_user.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   FreeAndNil(frm_contract_user);
end;

procedure Tfrm_contract_user.FormCreate(Sender: TObject);
begin
  inherited;
   listEmp:=TStringList.Create;
   listAction:=TStringList.Create;
end;

procedure Tfrm_contract_user.FormShow(Sender: TObject);
begin
  inherited;
  ExibirGrid;
end;

procedure Tfrm_contract_user.LimpaCampos;
 var
  i: Integer;
begin

   for i := 0 to ComponentCount -1 do
    begin
    if Components[i] is TcxTextEdit then
      TcxTextEdit(Components[i]).Clear;

    if Components[i] is TcxDateEdit then
      TcxTextEdit(Components[i]).Clear;
    end;

   edtNome.SetFocus;

end;

procedure Tfrm_contract_user.montar_empresa;
var
i:Integer;
begin

   with frm_dm.qry,sql do
     begin
      close;
      text := ' select a.ent_cod, a.ent_first_name, a.ent_id, b.enterprise_ent_cod, b.contract_user_ctr_usr_cod from enterprise a ' +
              ' left join contract_user_enterprise b on a.ent_cod=b.enterprise_ent_cod                            ' +
              ' and b.contract_user_ctr_usr_cod = ' +frm_dm.v_ctr_usr_cod+
              ' order by 1  ';
      Prepared;
      Open;
      First;
      i:=0;
      cxlistEmps.Items.clear;
      listEmp.Clear;
      while not Eof do
      begin
        cxlistEmps.AddItem(Fields[1].Text);
       if trim(Fields[3].AsString) <> '' then
        TcxCheckListBoxItem(cxlistEmps.Items[i]).Checked:=True;
        listEmp.Add(Fields[2].AsString);
        i:=i+1;
        Next;
      end;
      Close;
     end;

end;

procedure Tfrm_contract_user.PreecherCampos;
begin

   edt_codid.Text           := IntToStr(memctr_usr_id.AsInteger);
   edt_dt_registration.Text := DateToStr(memctr_usr_dt_registration.AsDateTime);
   edtNome.Text             := memctr_usr_first_name.AsString;
   edtSobrenome.Text        := memctr_usr_last_name.AsString;
   edtDtNasc.Date           := memctr_usr_dt_birth.AsDateTime;
   edtUsuario.Text          := memctr_usr_username.AsString;
   edtEmail.Text            := memctr_usr_email.AsString;

    if memctr_usr_admin.AsString = 'S' then
       CheckBoxAdm.Checked   := True
    else CheckBoxAdm.Checked := False;

   edtNome.SetFocus;

end;

procedure Tfrm_contract_user.tbsht_2Show(Sender: TObject);
begin
  inherited;
  PreecherCampos;
end;

procedure Tfrm_contract_user.tbsht_6Show(Sender: TObject);
begin
  inherited;

     montar_empresa;

     AdvOfficeTabSet1.ActiveTabIndex:=1;
     AdvOfficeTabSet1.ActiveTabIndex:=0;
end;

end.
