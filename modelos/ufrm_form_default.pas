unit ufrm_form_default;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ToolWin,
  Vcl.ComCtrls,
  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Menus,
  Vcl.Mask,
  Vcl.DBCtrls,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.DApt,

  Data.DB,

  uDWAbout,
  uRESTDWPoolerDB,
  uDWConstsData,

  ACBrBase,
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
    ds: TDataSource;
    DBGrid_1: TDBGrid;
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
    schadp: TFDSchemaAdapter;
    Panel_top: TPanel;
    lbl_texto: TLabel;
    lbl_campo: TLabel;
    cmbbox_campo: TComboBox;
    btnedt_texto: TButtonedEdit;
    procedure Action_fecharExecute(Sender: TObject);
    procedure DBGrid_1DblClick(Sender: TObject);
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
    procedure DBGrid_1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
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
  ds.DataSet.Prior;
end;

procedure Tfrm_form_default.Action_atualizarExecute(Sender: TObject);
begin
  ds.DataSet.Refresh;
end;

procedure Tfrm_form_default.Action_cancelarExecute(Sender: TObject);
begin
  ds.DataSet.Cancel;
end;

procedure Tfrm_form_default.Action_editarExecute(Sender: TObject);
begin
  ds.DataSet.Edit;
  TabSheet_dados.Show;
end;

procedure Tfrm_form_default.Action_excluirExecute(Sender: TObject);
begin
  ds.DataSet.Delete;
end;

procedure Tfrm_form_default.Action_fecharExecute(Sender: TObject);
begin
  if TabSheet_pesquisar.Visible then  begin
    Close;
  end else begin
    TabSheet_pesquisar.Show;
  end;
end;

procedure Tfrm_form_default.Action_inserirExecute(Sender: TObject);
begin
  TabSheet_dados.Show;
  ds.DataSet.Insert;
end;

procedure Tfrm_form_default.Action_primeiroExecute(Sender: TObject);
begin
  ds.DataSet.First;
end;

procedure Tfrm_form_default.Action_proximoExecute(Sender: TObject);
begin
  ds.DataSet.Next;
end;

procedure Tfrm_form_default.Action_salvarExecute(Sender: TObject);
begin
  ds.DataSet.Post;
end;

procedure Tfrm_form_default.Action_ultimoExecute(Sender: TObject);
begin
  ds.DataSet.Last;
end;

procedure Tfrm_form_default.DBGrid_1DblClick(Sender: TObject);
begin
  TabSheet_dados.Show;
end;

procedure Tfrm_form_default.DBGrid_1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  vLinha: integer;
begin
  vLinha := DBGrid_1.DataSource.DataSet.RecNo;

  if Odd(vLinha) then begin
    DBGrid_1.Canvas.Brush.Color := clMenu;
  end else begin
    DBGrid_1.Canvas.Brush.Color := clSkyBlue;
  end;

  DBGrid_1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_form_default.FormShow(Sender: TObject);
begin
  TabSheet_pesquisar.Show;
end;

end.
