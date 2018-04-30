unit ufrm_client;

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
  cxButtonEdit, cxImage, cxShellComboBox, QExport4Dialog, cxBarEditItem,
  dxBarExtItems, QImport3Wizard, Vcl.StdCtrls, frxClass, ACBrSocket, ACBrCEP,
  dxLayoutControlAdapters, cxButtons;

type
  Tfrm_client = class(Tfrm_form_default)
    qrycli_id: TFDAutoIncField;
    qrycli_first_name: TStringField;
    qrycli_last_name: TStringField;
    qrycli_email: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxTabSheet_address: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    cxDBTextEdit26: TcxDBTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    cxDBTextEdit27: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem31: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBButtonEdit3: TcxDBButtonEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    qrycli_cpfcnpj: TStringField;
    qrycli_im: TStringField;
    qrycli_suframa: TStringField;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    cxDBTextEdit28: TcxDBTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem36: TdxLayoutItem;
    qrycli_phone1: TStringField;
    qrycli_phone2: TStringField;
    qrycli_phone3: TStringField;
    qrycli_rgie: TStringField;
    qrycli_dt_birthopen: TDateField;
    qrycontract_ctr_id: TIntegerField;
    qrycli_phone4: TStringField;
    qrycli_dt_registration: TDateTimeField;
    qrycli_type: TStringField;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    qrycli_contact: TStringField;
    qrycli_add_bus_zipcode: TStringField;
    qrycli_add_bus_address: TStringField;
    qrycli_add_bus_number: TStringField;
    qrycli_add_bus_street: TStringField;
    qrycli_add_bus_complement: TStringField;
    qrycli_add_bus_city: TStringField;
    qrycli_add_bus_state: TStringField;
    qrycli_add_bus_country: TStringField;
    qrycli_add_bil_zipcode: TStringField;
    qrycli_add_bil_address: TStringField;
    qrycli_add_bil_number: TStringField;
    qrycli_add_bil_street: TStringField;
    qrycli_add_bil_complement: TStringField;
    qrycli_add_bil_city: TStringField;
    qrycli_add_bil_state: TStringField;
    qrycli_add_bil_country: TStringField;
    qrycli_add_del_zipcode: TStringField;
    qrycli_add_del_address: TStringField;
    qrycli_add_del_number: TStringField;
    qrycli_add_del_street: TStringField;
    qrycli_add_del_complement: TStringField;
    qrycli_add_del_city: TStringField;
    qrycli_add_del_state: TStringField;
    qrycli_add_del_country: TStringField;
    qrycli_day_maturity: TIntegerField;
    cxGrid_1DBTableView1cli_id: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_type: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_first_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_last_name: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_email: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_cpfcnpj: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_rgie: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_im: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_suframa: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bus_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_bil_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_zipcode: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_address: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_number: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_street: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_complement: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_city: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_state: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_add_del_country: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone1: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone2: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone3: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_phone4: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_contact: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_dt_birthopen: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_dt_registration: TcxGridDBColumn;
    cxGrid_1DBTableView1cli_day_maturity: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBTextEdit38: TcxDBTextEdit;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem45: TdxLayoutItem;
    cxDBImage1: TcxDBImage;
    dxLayoutItem41: TdxLayoutItem;
    qrycli_image: TBlobField;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxBarButton5: TdxBarButton;
    Action_consult_cpf: TAction;
    Action_consult_cnpj: TAction;
    dxBarButton1: TdxBarButton;
    cxTabSheet3: TcxTabSheet;
    Label1: TLabel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutGroup11: TdxLayoutGroup;
    cxDBTextEdit34: TcxDBTextEdit;
    dxLayoutItem42: TdxLayoutItem;
    qrycli_status: TStringField;
    qrycli_account_code_sippulse: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure Action_consult_cnpjExecute(Sender: TObject);
    procedure Action_consult_cpfExecute(Sender: TObject);
    procedure changeType;
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ACBrCEP_1BuscaEfetuada(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxTabSheet_addressShow(Sender: TObject);
  private
    { Private declarations }
    cep:Integer;
  public
    { Public declarations }
  end;

var
  frm_client: Tfrm_client;

implementation

{$R *.dfm}

uses ufrm_dm, ufrm_consult_cnpj, ufrm_consult_cpf;

procedure Tfrm_client.ACBrCEP_1BuscaEfetuada(Sender: TObject);
 var
i:Integer;
begin
  inherited;
 if cep = 1 then
  begin
    for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     qrycli_add_bus_address.AsString    := ACBrCEP_1.Enderecos[i].Logradouro;
     qrycli_add_bus_street.AsString     := ACBrCEP_1.Enderecos[i].Bairro;
     qrycli_add_bus_complement.AsString     := ACBrCEP_1.Enderecos[i].Complemento;
     qrycli_add_bus_city.AsString     	 := ACBrCEP_1.Enderecos[i].Municipio;
     qrycli_add_bus_state.AsString     := ACBrCEP_1.Enderecos[i].UF;
     qrycli_add_bus_country.AsString     := 'BRASIL';
     cxDBTextEdit22.SetFocus;
    end;
  end;

  if cep = 2 then
  begin
    for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     qrycli_add_bil_address.AsString    := ACBrCEP_1.Enderecos[i].Logradouro;
     qrycli_add_bil_street.AsString     := ACBrCEP_1.Enderecos[i].Bairro;
     qrycli_add_bil_complement.AsString     := ACBrCEP_1.Enderecos[i].Complemento;
     qrycli_add_bus_city.AsString     	 := ACBrCEP_1.Enderecos[i].Municipio;
     qrycli_add_bil_city.AsString     := ACBrCEP_1.Enderecos[i].UF;
     qrycli_add_bil_country.AsString     := 'BRASIL';
     cxDBTextEdit14.SetFocus;
    end;
  end;

 if cep = 3 then
  begin
    for I := 0 to ACBrCEP_1.Enderecos.Count -1 do
    begiN
     qrycli_add_del_address.AsString    := ACBrCEP_1.Enderecos[i].Logradouro;
     qrycli_add_del_street.AsString     := ACBrCEP_1.Enderecos[i].Bairro;
     qrycli_add_del_complement.AsString     := ACBrCEP_1.Enderecos[i].Complemento;
     qrycli_add_del_city.AsString     	 := ACBrCEP_1.Enderecos[i].Municipio;
     qrycli_add_bil_city.AsString     := ACBrCEP_1.Enderecos[i].UF;
     qrycli_add_del_country.AsString     := 'BRASIL';
     cxDBTextEdit6.SetFocus;
    end;
  end;

 end;

procedure Tfrm_client.Action_consult_cnpjExecute(Sender: TObject);
begin
  inherited;
  frm_consult_cnpj := Tfrm_consult_cnpj.Create(Self);
  frm_consult_cnpj.Show;
end;

procedure Tfrm_client.Action_consult_cpfExecute(Sender: TObject);
begin
  inherited;
  frm_consult_cpf := Tfrm_consult_cpf.Create(Self);
  frm_consult_cpf.Show;
end;

procedure Tfrm_client.changeType;
begin
  if cxDBComboBox1.ItemIndex = 0 then
  begin
    dxLayoutItem6.Caption := 'Dt. Nasc.';
    dxLayoutItem3.Caption := 'Nome';
    dxLayoutItem4.Caption := 'Sobrenome';
    dxLayoutItem32.Caption := 'CPF';
    dxLayoutItem33.Caption := 'RG';
    dxLayoutItem34.Visible := False;
    dxLayoutItem35.Visible := False;

  end
  else
  begin
    dxLayoutItem6.Caption := 'Dt. Aber.';
    dxLayoutItem3.Caption := 'Razão';
    dxLayoutItem4.Caption := 'Fantasia';
    dxLayoutItem32.Caption := 'CNPJ';
    dxLayoutItem33.Caption := 'IE';
    dxLayoutItem34.Visible := True;
    dxLayoutItem35.Visible := True;
  end;
end;

procedure Tfrm_client.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  cep:=2;
  ACBrCEP_1.BuscarPorCEP(cxDBButtonEdit1.Text);
end;

procedure Tfrm_client.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 cep:=1;
 ACBrCEP_1.BuscarPorCEP(cxDBButtonEdit2.Text);
end;

procedure Tfrm_client.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  cep:=3;
  ACBrCEP_1.BuscarPorCEP(cxDBButtonEdit3.Text);
end;

procedure Tfrm_client.cxDBComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  changeType;
end;

procedure Tfrm_client.cxTabSheet_addressShow(Sender: TObject);
begin
  inherited;
 dxLayoutControl1Group_Root.ItemIndex:=0;
end;

procedure Tfrm_client.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_client.Destroy;
  frm_client := Nil;
end;

procedure Tfrm_client.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrycli_dt_registration.Value := Date + Time;
end;

end.
