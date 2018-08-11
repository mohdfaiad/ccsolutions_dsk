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
  
  Vcl.Menus,
  Vcl.ActnList,   
  Vcl.ImgList,   
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
  dxBarBuiltInMenu, 
  cxStyles, 
  cxCustomData, 
  cxFilter,
  cxData, 
  cxDataStorage, 
  cxEdit, 
  cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBar,
  cxBarEditItem, 
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
  cxDBData,
  cxContainer, 
  dxLayoutcxEditAdapters, 
  cxShellComboBox, 
  cxDBLookupComboBox,
  dxLayoutLookAndFeels, 
  cxGridCustomPopupMenu, 
  cxGridPopupMenu,
  cxImageList,
   
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
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  
  QImport3Wizard, 
  QExport4Dialog, 
  
  ACBrBase, 
  ACBrEnterTab, 
  
  frxClass,

  u_class_rest_method,
  u_class_phonebook,
  u_class_connection,

  ufrm_form_default;

type
  Tfrm_phonebook = class(Tfrm_form_default)
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
    mempho_cod: TStringField;
    mempho_id: TIntegerField;
    mempho_name: TStringField;
    mempho_phone1: TStringField;
    mempho_phone2: TStringField;
    mempho_phone3: TStringField;
    mempho_phone4: TStringField;
    mempho_contact: TStringField;
    mempho_deleted_at: TStringField;
    mempho_dt_registration: TStringField;
    cxGrid_1DBTableView1pho_id: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_name: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1pho_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
    procedure Action_deleteExecute(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure cxGrid_1DBTableView1DblClick(Sender: TObject);
    procedure qryBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    status : Integer;
  public
    { Public declarations }
  end;

var
  frm_phonebook: Tfrm_phonebook;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_phonebook.Action_deleteExecute(Sender: TObject);
var
  strproc_delete : TFDStoredProc;
begin
  try
    try
      strproc_delete := TFDStoredProc.Create(Self);
      strproc_delete.Connection := frm_dm.connCCS;
      strproc_delete.StoredProcName := 'proc_phonebook_delete';
      strproc_delete.Prepare;

      strproc_delete.ParamByName('p_pho_cod').AsString := qry.FieldByName('pho_cod').AsString;
      strproc_delete.ParamByName('p_pho_deleted_at').AsDateTime := Date + Time;
      strproc_delete.ExecProc;

      qry.Close;
      qry.Open;
    except on E: Exception do
      ShowMessage('Erro: ' + E.Message);
    end;
  finally
  end;
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
var
  strproc_create, strproc_update : TFDStoredProc;
begin
  case status of
    0 : begin         
          try
            try
              strproc_create := TFDStoredProc.Create(Self);
              strproc_create.Connection := frm_dm.connCCS;
              strproc_create.StoredProcName := 'proc_phonebook_create';
              strproc_create.Prepare;

//              strproc_create.ParamByName('p_contract_ctr_cod').AsString  := frm_dm.v_contract_ctr_cod;
              strproc_create.ParamByName('p_pho_name').AsString          := dbedt_name.Text;
              strproc_create.ParamByName('p_pho_contact').AsString       := dbedt_contact.Text;
              strproc_create.ParamByName('p_pho_phone1').AsString        := dbedt_phone1.Text;
              strproc_create.ParamByName('p_pho_phone2').AsString        := dbedt_phone2.Text;
              strproc_create.ParamByName('p_pho_phone3').AsString        := dbedt_phone3.Text;
              strproc_create.ParamByName('p_pho_phone4').AsString        := dbedt_phone4.Text;
              strproc_create.ExecProc;

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
                strproc_update := TFDStoredProc.Create(Self);
                strproc_update.Connection := frm_dm.connCCS;
                strproc_update.StoredProcName := 'proc_phonebook_update';
                strproc_update.Prepare;

                strproc_update.ParamByName('p_pho_cod').AsString           := qry.FieldByName('pho_cod').AsString;
                strproc_update.ParamByName('p_pho_name').AsString          := dbedt_name.Text;
                strproc_update.ParamByName('p_pho_contact').AsString       := dbedt_contact.Text;
                strproc_update.ParamByName('p_pho_phone1').AsString        := dbedt_phone1.Text;
                strproc_update.ParamByName('p_pho_phone2').AsString        := dbedt_phone2.Text;
                strproc_update.ParamByName('p_pho_phone3').AsString        := dbedt_phone3.Text;
                strproc_update.ParamByName('p_pho_phone4').AsString        := dbedt_phone4.Text;
                strproc_update.ExecProc;

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

procedure Tfrm_phonebook.FormCreate(Sender: TObject);
begin
  inherited;
  Trest_methods.v_method        := 'get_phonebook';
  Trest_methods.v_parameter     := Tconnection.ctr_token;
  Trest_methods.v_root_element  := 'phonebook';

  Trest_phonebook.get_phonebook(mem);
end;

procedure Tfrm_phonebook.qryBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry.Filtered                                  := False;
//  qry.ParamByName('contract_ctr_cod').AsString  := frm_dm.v_contract_ctr_cod;
  qry.Filter                                    := 'pho_deleted_at is null';
  qry.Filtered                                  := True;
end;

end.
