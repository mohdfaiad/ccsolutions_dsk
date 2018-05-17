unit ufrm_contract_userOld;

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
  cxShellComboBox, frxDesgn, QExport4Dialog, cxBarEditItem, dxBarExtItems,
  QImport3Wizard, ACBrSocket, ACBrCEP, frxClass, ACBrValidador, cxCheckListBox,
  cxDBCheckListBox, cxCheckBox, AdvTabSet, AdvOfficeTabSet;

type
  Tfrm_contract_userOld = class(Tfrm_form_default)
    qryctr_usr_id: TFDAutoIncField;
    qryctr_usr_first_name: TStringField;
    qryctr_usr_last_name: TStringField;
    qryctr_usr_email: TStringField;
    qryctr_usr_username: TStringField;
    qryctr_usr_password: TStringField;
    qryctr_usr_dt_birth: TDateField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qrycontract_ctr_id: TIntegerField;
    qryctr_usr_dt_registration: TDateTimeField;
    cxGrid_1DBTableView1ctr_usr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_username: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn;
    ACBrValidador1: TACBrValidador;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    qry_contract_user_enterprise: TFDQuery;
    ds_contract_user_enterprise: TDataSource;
    qry_contract_user_enterprisectr_usr_ent_id: TFDAutoIncField;
    qry_contract_user_enterprisectr_usr_ent_user_id: TIntegerField;
    qry_contract_user_enterprisectr_usr_ent_ent_id: TIntegerField;
    dxLayoutGroup4: TdxLayoutGroup;
    cxListEmps: TcxCheckListBox;
    dxLayoutItem10: TdxLayoutItem;
    qryctr_usr_status: TStringField;
    qryctr_usr_logged: TStringField;
    cxGrid_1DBTableView1Column1: TcxGridDBColumn;
    DesconectarUsurio1: TMenuItem;
    BloquearUsurio1: TMenuItem;
    DesbloquearUsurio1: TMenuItem;
    qryctr_usr_admin: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    cxListMenu: TcxCheckListBox;
    dxLayoutItem9: TdxLayoutItem;
    AdvOfficeTabSet1: TAdvOfficeTabSet;
    dxLayoutItem11: TdxLayoutItem;
    qry_contract_user_action: TFDQuery;
    qry_contract_user_actionctr_usr_act_id: TFDAutoIncField;
    qry_contract_user_actionctr_usr_act_user_id: TIntegerField;
    qry_contract_user_actionctr_usr_act_action_name: TStringField;
    ZeraraSenha1: TMenuItem;
    N3: TMenuItem;
    MainMenu1: TMainMenu;
    FDStoredProc1: TFDStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_saveExecute(Sender: TObject);
    procedure ACBrValidador1MsgErro(Mensagem: string);
    procedure montar_empresa;
    procedure cxTabSheet1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxListEmpsClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure cxListEmpsClick(Sender: TObject);
    procedure cxGrid_1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure DesconectarUsurio1Click(Sender: TObject);
    procedure BloquearUsurio1Click(Sender: TObject);
    procedure PopupMenu_1Popup(Sender: TObject);
    procedure DesbloquearUsurio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvOfficeTabSet1Change(Sender: TObject);
    procedure cxListMenuClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure ZeraraSenha1Click(Sender: TObject);
  private
    { Private declarations }
    listEmp,listAction:TStrings;
  public
    { Public declarations }
  procedure limpaCache(Sender:TObject);
  end;

var
  frm_contract_userOld: Tfrm_contract_userOld;

implementation

{$R *.dfm}

uses ufrm_report, ufrm_dm, ufrm_main_default;

procedure Tfrm_contract_userOld.ACBrValidador1MsgErro(Mensagem: string);
begin
  inherited;
   Application.MessageBox('E-mail não informado ou está inváido ! ','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);
end;

procedure Tfrm_contract_userOld.Action_saveExecute(Sender: TObject);
begin
  //Condição para não permitir salvar o mesmo nome de usuário
  //Que utilize o mesmo número de contrato
     with frm_dm.qry,sql do
      begin
        Close;
        Text:='select * from contract_user '+
             'where contract_ctr_id =:ctr_id '+
             'and ctr_usr_username =:ctr_usr_username';
        ParamByName('CTR_ID').Value := qrycontract_ctr_id.Value;
        ParamByName('CTR_USR_USERNAME').AsString := cxDBTextEdit4.Text;
        Prepare;
        Open;
        if (RecordCount >=1) and (qry.State in [dsInsert]) then
         begin
          Application.MessageBox('Este nome de usuário já existe no sistema, por favor cadastre outro nome ! ','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);
         end
         else
          begin
             ACBrValidador1.Documento :=cxDBTextEdit3.Text;
             if ACBrValidador1.Validar then
              begin
                inherited;
              end
              else
               begin
                // Application.MessageBox('E-mail informado está inváido ! ','AVISO DO SISTEMA',MB_OK + MB_ICONINFORMATION);
                 exit;
               end;

          end;

      end;
  //
end;

procedure Tfrm_contract_userOld.AdvOfficeTabSet1Change(Sender: TObject);
var
  c: Integer;
begin
//  subs := TStringList.Create;

 frm_dm.qry3.close;
 frm_dm.qry3.SQL.Clear;
 frm_dm.qry3.SQL.Text := ' select ctr_usr_act_action_name from contract_user_action ' +
            ' where ctr_usr_act_user_id = ' +qryctr_usr_id.AsString +
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


procedure Tfrm_contract_userOld.BloquearUsurio1Click(Sender: TObject);
begin
  inherited;
 if Application.MessageBox('Deseja bloquer o usuário selecionado?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
  begin
    qry.Edit;
    qryctr_usr_logged.AsString:='B';
    qry.Post;
    qry.ApplyUpdates(0);
    Application.MessageBox('Usuário bloqueado com sucesso!','AVISO', MB_OK + MB_ICONWARNING)
  end;
end;

procedure Tfrm_contract_userOld.cxTabSheet1Show(Sender: TObject);
begin
  inherited;
    montar_empresa;

    AdvOfficeTabSet1.ActiveTabIndex:=1;
    AdvOfficeTabSet1.ActiveTabIndex:=0;

end;

procedure Tfrm_contract_userOld.DesbloquearUsurio1Click(Sender: TObject);
begin
  inherited;
 if Application.MessageBox('Deseja desbloquer o usuário selecionado?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
  begin
    qry.Edit;
    qryctr_usr_logged.AsString:='N';
    qry.Post;
    qry.ApplyUpdates(0);
    Application.MessageBox('Usuário desbloqueado com sucesso!','AVISO', MB_OK + MB_ICONWARNING)
  end;
end;

procedure Tfrm_contract_userOld.DesconectarUsurio1Click(Sender: TObject);
begin
  inherited;
 if Application.MessageBox('Deseja desconectar o usuário selecionado?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
  begin
    qry.Edit;
    qryctr_usr_logged.AsString:='N';
    qry.Post;
    qry.ApplyUpdates(0);
    Application.MessageBox('Usuário desconectado com sucesso!','AVISO', MB_OK + MB_ICONWARNING)
  end;

end;

procedure Tfrm_contract_userOld.cxGrid_1DBTableView1CustomDrawCell(
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
//      ACanvas.Font.Style  := [];
      if (Valor = 'S') then
         ACanvas.Font.Color  := clGreen;

      if (Valor = 'B') then
         ACanvas.Font.Color  := clRed;
   end;
end;

procedure Tfrm_contract_userOld.cxListEmpsClick(Sender: TObject);
begin
  inherited;
 qry_contract_user_enterprise.Locate('ctr_usr_ent_ent_id',
 listEmp[cxListEmps.ItemIndex],[]);

end;

procedure Tfrm_contract_userOld.cxListEmpsClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
 var
cdusu,cdemp:string;
begin
  inherited;

  if TcxCheckListBoxItem(cxListEmps.Items[cxListEmps.ItemIndex]).Checked then
   begin
    if not  qry_contract_user_enterprise.Locate('ctr_usr_ent_ent_id',
     listEmp[cxListEmps.ItemIndex],[]) then
      begin
       qry_contract_user_enterprise.Insert;
       qry_contract_user_enterprisectr_usr_ent_ent_id.AsString:=listEmp[cxListEmps.ItemIndex];
       qry_contract_user_enterprise.Post;
      end;
   end;

  if not TcxCheckListBoxItem(cxListEmps.Items[cxListEmps.ItemIndex]).Checked then
   begin
    qry_contract_user_enterprise.Locate('ctr_usr_ent_ent_id',
     listEmp[cxListEmps.ItemIndex],[]);
    qry_contract_user_enterprise.delete;
   end;

end;

procedure Tfrm_contract_userOld.cxListMenuClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
begin
  inherited;
if TcxCheckListBoxItem(cxListMenu.Items[cxListMenu.ItemIndex]).Checked then
 begin
  qry_contract_user_action.Insert;
  qry_contract_user_actionctr_usr_act_action_name.AsString:= listAction[cxListMenu.ItemIndex];
  qry_contract_user_action.Post;
 end;

if not TcxCheckListBoxItem(cxListMenu.Items[cxListMenu.ItemIndex]).Checked then
  begin
   qry_contract_user_action.Locate('ctr_usr_act_action_name',
     listAction[cxListMenu.ItemIndex],[]);
    qry_contract_user_action.delete;
 end;
end;

procedure Tfrm_contract_userOld.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  frm_contract_user.Destroy;
//  frm_contract_user := Nil;
end;

procedure Tfrm_contract_userOld.FormCreate(Sender: TObject);
begin
  inherited;
 FDSchemaAdapter_1.AfterApplyUpdate:=limpaCache;
 listEmp:=TStringList.Create;
 listAction:=TStringList.Create;
end;

procedure Tfrm_contract_userOld.FormShow(Sender: TObject);
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
  inherited;

end;


procedure Tfrm_contract_userOld.limpaCache(Sender: TObject);
begin
  qry.CommitUpdates();
  qry_contract_user_enterprise.CommitUpdates();
  qry_contract_user_action.CommitUpdates()
end;

procedure Tfrm_contract_userOld.montar_empresa;
var
i:Integer;
begin

   with frm_dm.qry,sql do
     begin
      close;
      text := 'select a.ent_first_name, a.ent_id,b.ctr_usr_ent_ent_id from enterprise a '+
              'left outer join contract_user_enterprise b on a.ent_id=b.ctr_usr_ent_ent_id '+
              'and b.ctr_usr_ent_user_id = ' + QuotedStr(qryctr_usr_id.AsString) +
              ' order by 1';
      Prepared;
      Open;
      First;
      i:=0;
      cxlistEmps.Items.clear;
      listEmp.Clear;
      while not Eof do
      begin
        cxlistEmps.AddItem(Fields[0].Text);
       if trim(Fields[2].AsString) <> '' then
        TcxCheckListBoxItem(cxlistEmps.Items[i]).Checked:=True;
        listEmp.Add(Fields[1].AsString);
        i:=i+1;
        Next;
      end;
      Close;
     end;

end;



procedure Tfrm_contract_userOld.PopupMenu_1Popup(Sender: TObject);
begin
  inherited;
 DesconectarUsurio1.Visible:=qryctr_usr_logged.AsString = 'S';
 DesbloquearUsurio1.Visible:=qryctr_usr_logged.AsString = 'B';
 BloquearUsurio1.Visible:=qryctr_usr_logged.AsString <> 'B';


 if qryctr_usr_logged.AsString = 'B' then
  BloquearUsurio1.Caption:='Desbloquear Usuário'
  else
  BloquearUsurio1.Caption:='Bloquear Usuário';
end;

procedure Tfrm_contract_userOld.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryctr_usr_dt_registration.Value := Date + Time;
  qryctr_usr_admin.AsString := 'N';
  qry.Post;
  qry.Edit;


end;

procedure Tfrm_contract_userOld.ZeraraSenha1Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja Zerar a senha do usuário selecionado?','AVISO', MB_YESNO + MB_ICONQUESTION) = mrYes  then
  begin
    qry.Edit;
    qryctr_usr_password.Clear;
    qry.Post;
    qry.ApplyUpdates(0);
    Application.MessageBox('Usuário desconectado com sucesso!','AVISO', MB_OK + MB_ICONWARNING)
  end;
end;

end.
