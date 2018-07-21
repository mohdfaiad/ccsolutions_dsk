unit ufrm_scheduling_clinical2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_search, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxStatusBar, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ufrm_dm, Vcl.ExtCtrls, AdvPanel,
  cxContainer, cxTextEdit, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxSpinEdit, cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls;

type
  Tfrm_scheduling_clinical2 = class(Tfrm_search)
    AdvPanel1: TAdvPanel;
    qrysch_cod: TBytesField;
    qrycontract_ctr_cod: TBytesField;
    qryemployee_emp_cod: TBytesField;
    qrysch_id: TLongWordField;
    qrysch_datetime: TDateTimeField;
    qrysch_description: TStringField;
    qrysch_dt_registration: TDateTimeField;
    cxLabel1: TcxLabel;
    cxTextEditDoctor: TcxTextEdit;
    cxGrid_1DBTableView1sch_cod: TcxGridDBColumn;
    cxGrid_1DBTableView1contract_ctr_cod: TcxGridDBColumn;
    cxGrid_1DBTableView1employee_emp_cod: TcxGridDBColumn;
    cxGrid_1DBTableView1sch_id: TcxGridDBColumn;
    cxGrid_1DBTableView1sch_datetime: TcxGridDBColumn;
    cxGrid_1DBTableView1sch_description: TcxGridDBColumn;
    cxGrid_1DBTableView1sch_dt_registration: TcxGridDBColumn;
    labelDataAgendamento: TLabel;
    cxDate: TcxDateEdit;
    cxTime: TcxTimeEdit;
    labelHora: TLabel;
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    sch_cod:string;
  public
    { Public declarations }
  end;

var
  frm_scheduling_clinical2: Tfrm_scheduling_clinical2;

implementation

{$R *.dfm}

procedure Tfrm_scheduling_clinical2.FormCreate(Sender: TObject);
begin
  inherited;
cxDate.Date:=Now;
cxTime.Time:=Now;
end;

procedure Tfrm_scheduling_clinical2.qryAfterInsert(DataSet: TDataSet);
begin
  inherited;
 With frm_dm.qry,sql do
  begin
   Close;
   Text:='insert into scheduling (sch_cod,sch_id,contract_ctr_cod) ' +
         ' select unhex(replace(uuid(),''-'','''')),0,'+ frm_dm.v_contract_ctr_cod;
   Prepare;
   ExecSQL;

   Close;
   text:= ' select concat(''0x'', hex(sch_cod)) from scheduling ' +
          ' where sch_id = 0 ';
   Prepare;
   open;
   sch_cod:=Fields[0].AsString;
  end;

   qry.Unprepare;
   qry.Close;
   qry.sql.text:= ' select scheduling.*,rec_name from scheduling '+
                  ' left join employee  on emp_cod = employee_emp_cod ' +
                  ' left join record  on rec_cod =  record_rec_cod ' +
                  ' where sch_cod = ' + sch_cod ;
   qry.Prepare;
   qry.open;

   qry.Edit;
   qrysch_dt_registration.AsDateTime:=Now;

end;

end.
