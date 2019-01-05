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
  ACBrEnterTab, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls;

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
    PopupMenu_1: TPopupMenu;
    Primeiro1: TMenuItem;
    Anterior1: TMenuItem;
    Prximo1: TMenuItem;
    ltimo1: TMenuItem;
    N1: TMenuItem;
    Inserir1: TMenuItem;
    Editar1: TMenuItem;
    Cancelar1: TMenuItem;
    Salvar1: TMenuItem;
    Excluir1: TMenuItem;
    Atualizar1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Label1: TLabel;
    dbedt_id: TDBEdit;
    dbedt_data_registro: TDBEdit;
    Label2: TLabel;
    procedure Action_fecharExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Action_primeiroExecute(Sender: TObject);
    procedure Action_anteriorExecute(Sender: TObject);
    procedure Action_proximoExecute(Sender: TObject);
    procedure Action_ultimoExecute(Sender: TObject);
    procedure Action_inserirExecute(Sender: TObject);
    procedure Action_editarExecute(Sender: TObject);
    procedure Action_cancelarExecute(Sender: TObject);
    procedure Action_salvarExecute(Sender: TObject);
    procedure Action_excluirExecute(Sender: TObject);
    procedure Action_atualizarExecute(Sender: TObject);
    procedure Action_filtrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_form_default: Tfrm_form_default;

implementation

{$R *.dfm}

procedure Tfrm_form_default.Action_anteriorExecute(Sender: TObject);
begin
  datasource.DataSet.Prior;
end;

procedure Tfrm_form_default.Action_atualizarExecute(Sender: TObject);
begin
  datasource.DataSet.Refresh;
end;

procedure Tfrm_form_default.Action_cancelarExecute(Sender: TObject);
begin
  datasource.DataSet.Cancel;
end;

procedure Tfrm_form_default.Action_editarExecute(Sender: TObject);
begin
    datasource.DataSet.Edit;
end;

procedure Tfrm_form_default.Action_excluirExecute(Sender: TObject);
begin
  datasource.DataSet.Delete;
end;

procedure Tfrm_form_default.Action_fecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_form_default.Action_filtrarExecute(Sender: TObject);
begin
//
end;

procedure Tfrm_form_default.Action_inserirExecute(Sender: TObject);
begin
  datasource.DataSet.Insert;
end;

procedure Tfrm_form_default.Action_primeiroExecute(Sender: TObject);
begin
  datasource.DataSet.First;
end;

procedure Tfrm_form_default.Action_proximoExecute(Sender: TObject);
begin
  datasource.DataSet.Next;
end;

procedure Tfrm_form_default.Action_salvarExecute(Sender: TObject);
begin
  datasource.DataSet.Post;
end;

procedure Tfrm_form_default.Action_ultimoExecute(Sender: TObject);
begin
  datasource.DataSet.Last;
end;

procedure Tfrm_form_default.DBGrid1DblClick(Sender: TObject);
begin
  TabSheet_dados.Show;
end;

end.
