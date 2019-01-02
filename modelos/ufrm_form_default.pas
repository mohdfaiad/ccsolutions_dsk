unit ufrm_form_default;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, uDWAbout, uRESTDWPoolerDB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uDWConstsData, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, ACBrBase,
  ACBrEnterTab;

type
  Tfrm_form_default = class(TForm)
    ToolBar1: TToolBar;
    PageControl_1: TPageControl;
    TabSheet_pesquisar: TTabSheet;
    TabSheet_manutencao: TTabSheet;
    imglist: TImageList;
    actlist: TActionList;
    clientSQL: TRESTDWClientSQL;
    storedProc: TRESTDWStoredProc;
    datasource: TDataSource;
    DBGrid1: TDBGrid;
    Panel_button: TPanel;
    btn_primeiro: TToolButton;
    btn_anterior: TToolButton;
    btn_proximo: TToolButton;
    btn_ultimo: TToolButton;
    ToolButton5: TToolButton;
    btn_inserir: TToolButton;
    btn_editar: TToolButton;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    btn_excluir: TToolButton;
    ToolButton11: TToolButton;
    btn_atualizar: TToolButton;
    Panel_top: TPanel;
    lbl_texto: TLabel;
    edt_texto: TEdit;
    cmbbox_campo: TComboBox;
    lbl_campo: TLabel;
    spdbtn_filtrar: TSpeedButton;
    Action_primeiro: TAction;
    Action_anterior: TAction;
    Action_proximo: TAction;
    Action_ultimo: TAction;
    Action_inserir: TAction;
    Action_editar: TAction;
    Action_salvar: TAction;
    Action_cancelar: TAction;
    Action_excluir: TAction;
    Action_fechar: TAction;
    Action_atualizar: TAction;
    Action_filtrar: TAction;
    bnt_fechar: TToolButton;
    PageControl_2: TPageControl;
    TabSheet_dados: TTabSheet;
    acbr_enter: TACBrEnterTab;
    procedure Action_fecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_form_default: Tfrm_form_default;

implementation

{$R *.dfm}

procedure Tfrm_form_default.Action_fecharExecute(Sender: TObject);
begin
  Close;
end;

end.
