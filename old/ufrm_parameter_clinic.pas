unit ufrm_parameter_clinic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_search, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList, dxBar,
  cxClasses, dxStatusBar, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxLabel,
  dxLayoutContainer, cxGroupBox, dxLayoutLookAndFeels, dxLayoutControl;

type
  Tfrm_parameter_clinic = class(Tfrm_search)
    Action_save: TAction;
    btnSave: TdxBarButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxGroupBox1: TcxGroupBox;
    dxLayoutItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    edtTime: TcxTimeEdit;
    qryprc_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryprc_time_service: TTimeField;
    qryCodParameter: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_saveExecute(Sender: TObject);
  private
       prc_cod:string;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frm_parameter_clinic: Tfrm_parameter_clinic;

implementation

{$R *.dfm}

uses ufrm_dm;

procedure Tfrm_parameter_clinic.Action_saveExecute(Sender: TObject);
begin
  inherited;
  if (self.Tag = 1) then
   begin

    With frm_dm.qry,sql do
    begin
     close;
     text:='select concat(''0x'',hex(unhex(replace(uuid(),''-'',''''))))';
     prepare;
     open;

     prc_cod:=Fields[0].AsString;

     Close;
     Text:='insert into parameter_clinic (prc_cod,contract_ctr_cod,prc_time_service) ' +
           ' select '+ prc_cod + ',' +  frm_dm.v_contract_ctr_cod +','+ QuotedStr(FormatDateTime('hh:mm:ss',edtTime.Time));
     Prepare;
     ExecSQL;
    end;

    Application.MessageBox('Registro cadastrado com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);

   end else if (Self.Tag = 2) then
       begin
         qry.Edit;
         qryprc_time_service.AsDateTime := edtTime.Time;
         qry.Post;

         Application.MessageBox('Registro alterado com secesso !','AVISO DO SISTEMA',MB_OK+MB_ICONINFORMATION);
       end;



   
end;

procedure Tfrm_parameter_clinic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frm_parameter_clinic);
end;

procedure Tfrm_parameter_clinic.FormCreate(Sender: TObject);
begin
  inherited;
  cxGrid_1.Visible := False;
end;

procedure Tfrm_parameter_clinic.FormShow(Sender: TObject);
begin
  inherited;
   qry.Close;
//   qry.SQL.Text:= 'select parameter_clinic.*, hex(prc_cod)as CodParameter from parameter_clinic ' +
//                  ' where contract_ctr_cod =unhex('+QuotedStr(frm_dm.p_contract_ctr_cod)+')';
   qry.Open;
   if qry.RecordCount <=0 then
    begin
      Self.Tag := 1; //Para Inserir
    end else
    begin
       edtTime.Time := qryprc_time_service.AsDateTime;
       Self.Tag := 2; //Para Alterar
    end;

end;

end.
