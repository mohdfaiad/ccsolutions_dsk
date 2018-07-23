unit ufrm_phonebook;

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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxContainer, dxLayoutcxEditAdapters, cxShellComboBox, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, FireDAC.Comp.Client,
  QImport3Wizard, QExport4Dialog, ACBrBase, ACBrEnterTab, FireDAC.Comp.DataSet,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, cxImageList, Vcl.Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, System.Actions, Vcl.ActnList, dxBar,
  cxBarEditItem, cxClasses, dxLayoutContainer, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, dxLayoutControl, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC;

type
  Tfrm_phonebook = class(Tfrm_form_default)
    qrypho_cod: TStringField;
    qrycontract_ctr_cod: TStringField;
    qrypho_id: TLongWordField;
    qrypho_name: TStringField;
    qrypho_phone1: TStringField;
    qrypho_phone2: TStringField;
    qrypho_phone3: TStringField;
    qrypho_phone4: TStringField;
    qrypho_contact: TStringField;
    qrypho_deleted_at: TDateTimeField;
    qrypho_dt_registration: TDateTimeField;
    dbedt_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_phone4: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_phone3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_phone2: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_phone1: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbedt_contact: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxGrid_1DBTableView1pho_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_dt_registration: TcxGridDBColumn;
    str_proc_phonebook_create: TFDStoredProc;
    str_proc_phonebook_delete: TFDStoredProc;
    str_proc_phonebook_update: TFDStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryBeforeOpen(DataSet: TDataSet);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure cxGrid_1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      status : Integer;
  end;

var
  frm_phonebook: Tfrm_phonebook;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_phonebook.Action_deleteExecute(Sender: TObject);
begin
  str_proc_phonebook_delete.ParamByName('p_pho_cod').AsString := qry.FieldByName('pho_cod').AsString;
  str_proc_phonebook_delete.ParamByName('p_pho_deleted_at').AsDateTime := Date + Time;

  str_proc_phonebook_delete.ExecProc;

  qry.Close;
  qry.Open;
end;

procedure Tfrm_phonebook.Action_editExecute(Sender: TObject);
begin
  inherited;
  status := 1;
  cxTabSheet_3.Show;
end;

procedure Tfrm_phonebook.Action_insertExecute(Sender: TObject);
begin
  status := 0;
  qry.EmptyDataSet;
  cxTabSheet_3.Show;
end;

procedure Tfrm_phonebook.Action_saveExecute(Sender: TObject);
begin
  case status of
    0 : begin
          try
            try
              str_proc_phonebook_create.ParamByName('p_contract_ctr_cod').AsString  := frm_dm.v_contract_ctr_cod;
              str_proc_phonebook_create.ParamByName('p_pho_name').AsString          := dbedt_name.Text;
              str_proc_phonebook_create.ParamByName('p_pho_contact').AsString       := dbedt_contact.Text;
              str_proc_phonebook_create.ParamByName('p_pho_phone1').AsString        := dbedt_phone1.Text;
              str_proc_phonebook_create.ParamByName('p_pho_phone2').AsString        := dbedt_phone2.Text;
              str_proc_phonebook_create.ParamByName('p_pho_phone3').AsString        := dbedt_phone3.Text;
              str_proc_phonebook_create.ParamByName('p_pho_phone4').AsString        := dbedt_phone4.Text;
              str_proc_phonebook_create.ExecProc;

              ShowMessage('Registro inserido com sucesso');

              qry.Close;
              qry.Open;
              qry.Last;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
    end;

    1 : begin
          try
            try
              if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
                str_proc_phonebook_update.ParamByName('p_pho_cod').AsString           := qry.FieldByName('pho_cod').AsString;
                str_proc_phonebook_update.ParamByName('p_pho_name').AsString          := dbedt_name.Text;
                str_proc_phonebook_update.ParamByName('p_pho_contact').AsString       := dbedt_contact.Text;
                str_proc_phonebook_update.ParamByName('p_pho_phone1').AsString        := dbedt_phone1.Text;
                str_proc_phonebook_update.ParamByName('p_pho_phone2').AsString        := dbedt_phone2.Text;
                str_proc_phonebook_update.ParamByName('p_pho_phone3').AsString        := dbedt_phone3.Text;
                str_proc_phonebook_update.ParamByName('p_pho_phone4').AsString        := dbedt_phone4.Text;
                str_proc_phonebook_update.ExecProc;

                ShowMessage('Registro Salvo com sucesso');

                qry.UpdateRecord;
              end else begin
                qry.Cancel;
              end;
            except on E: Exception do
              ShowMessage('Erro: ' + E.Message);
            end;
          finally
          end;
    end;
  end;
end;

procedure Tfrm_phonebook.cxGrid_1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  status := 1;
end;

procedure Tfrm_phonebook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_phonebook.Free;
  frm_phonebook := nil;
end;

procedure Tfrm_phonebook.qryBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry.Filtered                                  := False;
  qry.ParamByName('contract_ctr_cod').AsString  := frm_dm.v_contract_ctr_cod;
  qry.Filter                                    := 'pho_deleted_at is null';
  qry.Filtered                                  := True;
end;

end.
