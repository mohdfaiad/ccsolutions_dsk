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
  Contract_User.Model, Contract_User.Dao, ACBrSocket, ACBrCEP, cxCheckListBox, AdvOfficeTabSet, Vcl.Grids, Vcl.DBGrids,
  cxButtonEdit;

type
  Tfrm_contract_user = class(Tfrm_default)
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
    cxLabel3: TcxLabel;
    edtNome: TcxTextEdit;
    edtSobrenome: TcxTextEdit;
    cxLabel5: TcxLabel;
    edtDtNasc: TcxDateEdit;
    cxLabel6: TcxLabel;
    edtUsuario: TcxTextEdit;
    cxLabel7: TcxLabel;
    edtEmail: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    CheckBoxAdm: TcxCheckBox;
    cxLabel4: TcxLabel;
    grid_1DBTableView1ctr_usr_id: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_first_name: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_last_name: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_username: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_email: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_logged: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_admin: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_status: TcxGridDBColumn;
    grid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn;
    memEnterprise: TFDMemTable;
    memcodUser: TStringField;
    memEnterpriseCodEmp: TStringField;
    memEnterpriseent_cod: TBytesField;
    memEnterpriseent_first_name: TStringField;
    memEnterprisecte_usr_ent_id: TLongWordField;
    memEnterpriseenterprise_ent_cod: TBytesField;
    memEnterprisecodUserEmpresa: TStringField;
    memEnterprisecontract_user_ctr_usr_cod: TBytesField;
    memEnterprisecte_usr_ent_cod: TBytesField;
    memEnterpriseCodContracUser: TStringField;
    memSystem_Action: TFDMemTable;
    memSystem_Actionsys_act_subtitle: TStringField;
    memSystem_Actionsys_Act_name: TStringField;
    memAction: TFDMemTable;
    memActioncta_cod: TBytesField;
    memActioncontract_user_ctr_usr_cod: TBytesField;
    memActioncta_action_name: TStringField;
    memActioncta_deleted_at: TDateTimeField;
    memActioncta_dt_registration: TDateTimeField;
    memActionCodAction: TStringField;
    edt_password: TcxButtonEdit;
    edt_password_confirmar: TcxButtonEdit;
    comboxStatus: TcxComboBox;
    cxLabel1: TcxLabel;
    BloquearUsurio1: TMenuItem;
    DesbloquearUsurio1: TMenuItem;
    ResetarSenha1: TMenuItem;
    DesconectarUsurio1: TMenuItem;
    N4: TMenuItem;
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
    procedure cxListMenuClickCheck(Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
    procedure edt_passwordPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_password_confirmarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BloquearUsurio1Click(Sender: TObject);
    procedure DesbloquearUsurio1Click(Sender: TObject);
    procedure ResetarSenha1Click(Sender: TObject);
    procedure DesconectarUsurio1Click(Sender: TObject);
  private
    { Private declarations }
      listEmp,listAction:TStrings;
      modulo: string;
  public
    { Public declarations }

    procedure LimpaCampos;
    procedure PreecherCampos;
    procedure ExibirGrid;

  end;

var
  frm_contract_user: Tfrm_contract_user;

implementation

{$R *.dfm}

uses Contract_User_Enterprise.Dao, Contract_User_Enterprise.Model, Contract_User_Action.Dao;

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
   edt_password.Enabled:=False;
   edt_password_confirmar.Enabled:=False;
   PreecherCampos;
end;

procedure Tfrm_contract_user.Action_insertExecute(Sender: TObject);
begin
  inherited;
  //Se tag = 1 é para inserir
    Self.Tag := 1;
    edt_password.Enabled:=True;
    edt_password_confirmar.Enabled:=True;
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
      if (Trim(edt_password.Text)= Trim(edt_password_confirmar.Text)) then
       begin

        if Self.Tag = 1 then
         begin
           Contract_User.ctr_id             := frm_dm.qry_contractctr_id.Value;
           Contract_User.ctr_usr_first_name := edtNome.Text;
           Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
           Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
           Contract_User.ctr_usr_username   := edtUsuario.Text;
           Contract_User.ctr_usr_email      := edtEmail.Text;
           Contract_User.ctr_usr_password   := edt_password.Text;
           if CheckBoxAdm.Checked then
           Contract_User.ctr_usr_admin      := 'S'
           else Contract_User.ctr_usr_admin := 'N';

           Dao.Contract_User_Create(Contract_User);
         end       //Tag = 2 para Alterar
         else if Self.Tag = 2 then
         begin
           Contract_User.ctr_usr_cod        := memcodUser.AsString;
           Contract_User.ctr_usr_first_name := edtNome.Text;
           Contract_User.ctr_usr_last_name  := edtSobrenome.Text;
           Contract_User.ctr_usr_dt_birth   := edtDtNasc.Date;
           Contract_User.ctr_usr_username   := edtUsuario.Text;
           Contract_User.ctr_usr_email      := edtEmail.Text;
           Contract_User.ctr_usr_status     := copy(comboxStatus.Text,0,1) ;
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
  Dao : TContract_User_Action_Dao;
begin
//  subs := TStringList.Create;

   Dao := TContract_User_Action_Dao.Create;
   try

     memSystem_Action.Close;
     memSystem_Action.Data:= Dao.ExibirActionMudulo(AdvOfficeTabSet1.AdvOfficeTabs[AdvOfficeTabSet1.ActiveTabIndex].Caption,modulo);

     memSystem_Action.First;
     cxListMenu.Items.clear;
     listAction.Clear;
     c:=0;
    //    subs.clear;
     while not memSystem_Action.Eof do
      begin
       cxListMenu.AddItem(memSystem_Action.FieldByName('sys_act_subtitle').AsString);
       listAction.Add(memSystem_Action.FieldByName('sys_Act_name').AsString);
    //      subs.add((qvi2.FieldByName('menu_cod').AsString));
        memAction.Close;
        memAction.Data := Dao.listaMudulo(memcodUser.AsString,memSystem_Actionsys_Act_name.AsString);

        TcxCheckListBoxItem(cxListMenu.Items[c]).Checked:= not memAction.IsEmpty;
    //      qvi.close;
        c:=c + 1;
        memAction.Close;
        memSystem_Action.Next;
      end;
   finally
     Dao.Free;
   end;

end;

procedure Tfrm_contract_user.BloquearUsurio1Click(Sender: TObject);
begin
  inherited;
 if Application.MessageBox('Deseja bloquer o usuário selecionado?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
  begin
   with frm_dm.qry,sql do
    begin
     close;
     text:=' update contract_user ' +
           ' set ctr_usr_logged = ''B'' '+
           ' where hex(ctr_usr_cod) = ' + QuotedStr(mem.FieldByName('codUser').AsString);
     prepare;
     ExecSQL;
    Application.MessageBox('Usuário bloqueado com sucesso!','AVISO', MB_OK + MB_ICONWARNING)
  end;
  end;
end;

procedure Tfrm_contract_user.cxListEmpsClick(Sender: TObject);
 var
   Dao : TContract_User_Enterprise_Dao;
begin
  inherited;
     Dao := TContract_User_Enterprise_Dao.Create;
    try
    // Memtable recebe sql para localizar a empresa selecionada Verifica se usuário tem acesso aos dados
      memEnterprise.Close;
      memEnterprise.Data := Dao.ListarEmpresasDeUserAcesso(memcodUser.AsString);
      memEnterprise.Locate('codUserEmpresa',listEmp[cxListEmps.ItemIndex],[]);
    finally
      Dao.Free;
    end;

end;

procedure Tfrm_contract_user.cxListEmpsClickCheck(Sender: TObject; AIndex: Integer; APrevState,
  ANewState: TcxCheckBoxState);
 var
  cdusu,cdemp:string;
  User_Enterprise : TContract_User_Enterprise_Model;
  Dao             : TContract_User_Enterprise_Dao;
begin

  User_Enterprise := TContract_User_Enterprise_Model.Create;
  Dao             := TContract_User_Enterprise_Dao.Create;
  try

  if TcxCheckListBoxItem(cxListEmps.Items[cxListEmps.ItemIndex]).Checked then
   begin
    if not  memEnterprise.Locate('codUserEmpresa', listEmp[cxListEmps.ItemIndex],[]) then
      begin
       //Ao click caso não esteja checked SQL para Inserir na tabela "contract_user_enterprise"
         User_Enterprise.contract_user_ctr_usr_cod := memcodUser.AsString;
         User_Enterprise.enterprise_ent_cod        := listEmp[cxListEmps.ItemIndex];
         Dao.Contract_User_Enterprise_Create(User_Enterprise);

      end;
   end;

  if not TcxCheckListBoxItem(cxListEmps.Items[cxListEmps.ItemIndex]).Checked then
   begin
     //Localiza os dados para updade de cte_usr_ent_deleted_at "Delete"
      memEnterprise.Locate('codUserEmpresa', listEmp[cxListEmps.ItemIndex],[]);
    //Ao click se checked SQL para Delete na tabela "contract_user_enterprise"
      User_Enterprise.cte_usr_ent_cod        := memEnterpriseCodContracUser.AsString;
      Dao.Contract_User_Enterprise_Delete(User_Enterprise);

   end;

   finally
     User_Enterprise.Free;
     Dao.Free;
   end;

end;

procedure Tfrm_contract_user.cxListMenuClickCheck(Sender: TObject; AIndex: Integer; APrevState,
  ANewState: TcxCheckBoxState);
  var
    Dao : TContract_User_Action_Dao;
begin
  inherited;
  Dao := TContract_User_Action_Dao.Create;
  try
    if TcxCheckListBoxItem(cxListMenu.Items[cxListMenu.ItemIndex]).Checked then
    begin
    // Iseri na tebelas contract_user_action "Onde delega permicionamento ao usuário"
      Dao.Contract_User_Action_Create(memcodUser.AsString,listAction[cxListMenu.ItemIndex]);
    end;

   if not TcxCheckListBoxItem(cxListMenu.Items[cxListMenu.ItemIndex]).Checked then
    begin
     // Updades na tebelas contract_user_action "Onde informa cta_deleted_at Negando permicionamento"
       memAction.Close;
       memAction.Data:= Dao.LocalizarAction(listAction[cxListMenu.ItemIndex]);
       Dao.Contract_User_Action_Delete(memActionCodAction.AsString);
    end;
   finally
    Dao.Free;
   end;

end;

procedure Tfrm_contract_user.DesbloquearUsurio1Click(Sender: TObject);
begin
  inherited;
 if Application.MessageBox('Deseja desbloquer o usuário selecionado?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
   with frm_dm.qry,sql do
    begin
     close;
     text:=' update contract_user ' +
           ' set ctr_usr_logged = ''N'' '+
           ' where hex(ctr_usr_cod) = ' + QuotedStr(mem.FieldByName('codUser').AsString);
     prepare;
     ExecSQL;
    Application.MessageBox('Usuário desbloqueado com sucesso!','AVISO', MB_OK + MB_ICONWARNING)
  end;
end;

procedure Tfrm_contract_user.DesconectarUsurio1Click(Sender: TObject);
begin
  inherited;
 if Application.MessageBox('Deseja desconectar o usuário selecionado?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
  with frm_dm.qry,sql do
   begin
    close;
    text:=' update contract_user ' +
          ' set ctr_usr_logged = ''N'' '+
          ' where hex(ctr_usr_cod) = ' + QuotedStr(mem.FieldByName('codUser').AsString);
    prepare;
    ExecSQL;
    Application.MessageBox('Usuário desconectado com sucesso!','AVISO', MB_OK + MB_ICONWARNING)
  end;
end;

procedure Tfrm_contract_user.edt_passwordPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if TcxButtonEdit(Sender).Properties.EchoMode <> eemPassword then
      TcxButtonEdit(Sender).Properties.EchoMode := eemPassword

  else
    TcxButtonEdit(Sender).Properties.EchoMode := eemNormal;
end;

procedure Tfrm_contract_user.edt_password_confirmarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if TcxButtonEdit(Sender).Properties.EchoMode <> eemPassword then
      TcxButtonEdit(Sender).Properties.EchoMode := eemPassword
  else
    TcxButtonEdit(Sender).Properties.EchoMode := eemNormal;
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
var
  c: Integer;
begin

  AdvOfficeTabSet1.AdvOfficeTabs.Clear;

  with frm_dm.qry,sql do
  begin
    close;
    Text := 'SELECT distinct sys_act_option FROM system_action '+
                ' where sys_act_class = ''A'' '+
                ' and sys_act_module = ' + QuotedStr(modulo) +
                ' order by sys_act_option';
    Prepared;
    Open;
    First;
    while not Eof do
     begin
      //ShowMessage( AdvOfficeTabSet1.AdvOfficeTabs.AdvOfficeTabSet.AddTab(FieldByName('sys_act_option').AsString));
      AdvOfficeTabSet1.AdvOfficeTabs.AdvOfficeTabSet.AddTab(FieldByName('sys_act_option').AsString);
      Next;
    end;
  end;

  ExibirGrid;

 inherited;
end;

procedure Tfrm_contract_user.grid_1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
IndiceCampo: Integer;
Valor      : Variant;
begin
  inherited;
   if (AViewInfo <> nil) and ((Sender as TcxGridDBTableView).DataController.Dataset.Active ) then begin
      IndiceCampo := (Sender as
      TcxGridDBTableView).GetColumnByFieldName('ctr_usr_logged').Index;
      Valor       := AViewInfo.GridRecord.Values[IndiceCampo];

      if (Valor = 'S') then
         ACanvas.Font.Color  := clGreen;
   end;


    if (AViewInfo <> nil) and ((Sender as TcxGridDBTableView).DataController.Dataset.Active ) then begin
      IndiceCampo := (Sender as
      TcxGridDBTableView).GetColumnByFieldName('ctr_usr_status').Index;
      Valor       := AViewInfo.GridRecord.Values[IndiceCampo];

      if (Valor = 'D') then
         ACanvas.Font.Color  := clRed;
   end;




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

    if Components[i] is TcxButtonEdit then
      TcxButtonEdit(Components[i]).Clear;

    if Components[i] is TcxComboBox then
      TcxComboBox(Components[i]).Clear;

    end;


   edtNome.SetFocus;
   comboxStatus.ItemIndex := 0;
   comboxStatus.Enabled := False;

end;

procedure Tfrm_contract_user.montar_empresa;
var
i:Integer;
  Dao : TContract_User_Enterprise_Dao;
begin

    Dao := TContract_User_Enterprise_Dao.Create;
 try
  //MemTable recebe o sql para exibir nomes das empresas
    memEnterprise.Close;
    memEnterprise.Data := Dao.ListarEmpresasDeUserAcesso(memcodUser.AsString);
   with memEnterprise do
   begin
    while not Eof do
     begin
      First;
      i:=0;
      cxlistEmps.Items.clear;
      listEmp.Clear;
      while not Eof do
      begin
      // Varrendo a Memtable para variavel do tipo TStrings receber os valores na posiçao do Fields
        cxlistEmps.AddItem(Fields[2].Text);
       if trim(Fields[3].AsString) <> '' then
        TcxCheckListBoxItem(cxlistEmps.Items[i]).Checked:=True;
        listEmp.Add(Fields[0].AsString);
        i:=i+1;
        Next;
      end;
    end;
   end;
  finally
   Dao.Free;
 end;

end;

procedure Tfrm_contract_user.PreecherCampos;
begin

   edt_codid.Text              := IntToStr(memctr_usr_id.AsInteger);
   edt_dt_registration.Text    := DateToStr(memctr_usr_dt_registration.AsDateTime);
   edtNome.Text                := memctr_usr_first_name.AsString;
   edtSobrenome.Text           := memctr_usr_last_name.AsString;
   edtDtNasc.Date              := memctr_usr_dt_birth.AsDateTime;
   edtUsuario.Text             := memctr_usr_username.AsString;
   edtEmail.Text               := memctr_usr_email.AsString;
   edt_password.Text           := memctr_usr_password.AsString;
   edt_password_confirmar.Text := memctr_usr_password.AsString;
   comboxStatus.Enabled := True;
   if (memctr_usr_status.AsString = 'A') then
       comboxStatus.ItemIndex := 0
   else comboxStatus.ItemIndex := 1;

   if memctr_usr_admin.AsString = 'S' then
      CheckBoxAdm.Checked   := True
   else CheckBoxAdm.Checked := False;

   edtNome.SetFocus;

end;

procedure Tfrm_contract_user.ResetarSenha1Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja zerar a senha do usuario selecionado ?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
   with frm_dm.qry,sql do
    begin
     close;
     text:=' update contract_user ' +
           ' set ctr_usr_password =  unhex(md5(''CCS''))'  +
           ' where hex(ctr_usr_cod) = ' + QuotedStr(mem.FieldByName('codUser').AsString);
     prepare;
     ExecSQL;
    Application.MessageBox('A senha do usuário selecionado foi alterado para a senha padrão do sistema que é CCS, altere no próximo login!','AVISO', MB_OK + MB_ICONWARNING)
  end;
end;

procedure Tfrm_contract_user.tbsht_2Show(Sender: TObject);
begin
  inherited;
  PreecherCampos;
end;

procedure Tfrm_contract_user.tbsht_6Show(Sender: TObject);
begin
  inherited;
  //Exibe a lista das empresas do contrato
     montar_empresa;

     AdvOfficeTabSet1.ActiveTabIndex:=1;
     AdvOfficeTabSet1.ActiveTabIndex:=0;
end;

end.
