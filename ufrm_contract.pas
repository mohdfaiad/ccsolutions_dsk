unit ufrm_contract;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,

  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,

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
  dxSkinscxPCPainter,
  dxBarBuiltInMenu,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  cxDBData,
  cxContainer,
  dxLayoutcxEditAdapters,
  dxSkinsdxBarPainter,
  dxLayoutLookAndFeels,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  dxBar,
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
  cxShellComboBox,
  cxBarEditItem,
  dxBarExtItems,
  cxDBLookupComboBox,
  cxDataControllerConditionalFormattingRulesManagerDialog,
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
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  ACBrBase,
  ACBrEnterTab,
  ACBrSocket,

  QExport4Dialog,
  QImport3Wizard,

  frxClass,
  frxDBSet,

  ufrm_form_default;

type
  Tfrm_contract = class(Tfrm_form_default)
    frx_db_contrato: TfrxDBDataset;
    qryctr_cod: TStringField;
    qryctr_id: TLargeintField;
    qryctr_first_name: TStringField;
    qryctr_last_name: TStringField;
    qryctr_email: TStringField;
    qryctr_phone1: TStringField;
    qryctr_dt_birth: TDateField;
    qryctr_user_license: TWordField;
    qryctr_status: TStringField;
    qryctr_deleted_at: TDateTimeField;
    qryctr_dt_registration: TDateTimeField;
    dbedt_first_name: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dbedt_phone1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dbedt_email: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dbedt_last_name: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dbedt_dt_birth: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    str_proc_contract_update: TFDStoredProc;
    cxGrid_1DBTableView1ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_email: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_dt_birth: TcxGridDBColumn;
    cxGrid_1DBTableView1ctr_dt_registration: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_editExecute(Sender: TObject);
    procedure qryBeforeOpen(DataSet: TDataSet);
    procedure Action_insertExecute(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      stats : Integer;
  end;

var
  frm_contract: Tfrm_contract;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_contract.Action_editExecute(Sender: TObject);
begin
  stats := 1;
  cxTabSheet_3.Show;
end;

procedure Tfrm_contract.Action_insertExecute(Sender: TObject);
begin
  inherited;
  stats := 0;
  qry.EmptyDataSet;
  cxTabSheet_3.Show;
end;

procedure Tfrm_contract.Action_saveExecute(Sender: TObject);
begin
  inherited;
  case stats of
    1 : begin
          try
            try
              if Application.MessageBox('Ao Salvar as alterações, as informações antigas não poderão ser recuperadas!', 'Deseja Salvar as Alterações?', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then begin
                str_proc_contract_update.ParamByName('p_ctr_cod').AsString        := qry.FieldByName('pho_cod').AsString;
                str_proc_contract_update.ParamByName('p_ctr_first_name').AsString := dbedt_first_name.Text;
                str_proc_contract_update.ParamByName('p_ctr_last_name').AsString  := dbedt_last_name.Text;
                str_proc_contract_update.ParamByName('p_ctr_phone1').AsString     := dbedt_phone1.Text;
                str_proc_contract_update.ParamByName('p_ctr_email').AsString      := dbedt_email.Text;
                str_proc_contract_update.ParamByName('p_ctr_dt_birth').AsString   := dbedt_dt_birth.Text;
                str_proc_contract_update.ExecProc;

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

procedure Tfrm_contract.Button1Click(Sender: TObject);
begin
  inherited;
   ShowMessage(IntToStr(dxBarManager_1Bar3.DockedLeft));
end;

procedure Tfrm_contract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_contract.Destroy;
  frm_contract := Nil;
end;

procedure Tfrm_contract.FormShow(Sender: TObject);
begin
  inherited;
  dxBarManager_1Bar3.DockedLeft := 122;
end;

procedure Tfrm_contract.qryBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry.Filtered := False;
  qry.ParamByName('ctr_cod').AsString := frm_dm.v_contract_ctr_cod;
  qry.Filter := 'ctr_deleted_at is null';
  qry.Filtered := True;
end;

end.
