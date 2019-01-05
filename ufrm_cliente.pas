unit ufrm_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_form_default, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  uDWAbout, uRESTDWPoolerDB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uDWConstsData, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, ufrm_dm, ACBrBase, ACBrEnterTab, Vcl.Menus;

type
  Tfrm_cliente = class(Tfrm_form_default)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_cliente.Destroy;
  frm_cliente := Nil;
end;

end.